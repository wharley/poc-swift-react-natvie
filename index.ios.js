import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  Alert
} from 'react-native';

class RNEventList extends Component {
  render() {
    const contacts = this.props['contacts'].map(
      contact => <Text key={contact.id}>`${contact.name} - ${contact.course}`</Text>
    );

    return (
      <View style={styles.container}>
        <Text style={styles.highContactsTitle}>
          Students
        </Text>
        <Text style={styles.contacts}>
          {contacts}
        </Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  highContactsTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  contacts: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent(
  'RNEventList',
  () => RNEventList
);
