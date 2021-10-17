# Conclusions and Future Work

In this work, a description of the development process for an alert system was made. The importance of a system administration team that assures efficient resource management was illustrated in the beginning. The alert system consisted of several stages of procedures that were incorporated in a general workflow which performed the constant monitoring of a set of log files, then perform numerical analysis on the parsed log data, compare each system stat with the configured thresholds, decide on the normal/unusual behavior of each compute resource within the infrastructure, and then finally, create an automated e-mail message containing i) detailed text with the detected "anomaly" and ii) attachment files with graphical representations and tabulated data.

\par The current code-base used only open-source modules developed excursively in Python, assuring in this way a great degree of compatibility with most system architectures, operating systems, and environment type (i.e., bare-bone, virtualized). Moreover, the scalability of Python allows the current implementation to be deployed on large-scale clusters even through containerized approaches (i.e., Docker \cite{merkel2014docker}, K8s \cite{brewer2015kubernetes}). In fact, this is a major next step in the development process of the project.

\par Through the \texttt{watchdog} module, it was possible to monitor log files that receive new data constantly. The \texttt{smtplib} and \texttt{email} modules allowed for establishing secured connections to the Gmail server, encode files as attachments and finally send the final message (saved as a string object) to an entire list of e-mail addresses. The e-mails are sent securely, using the SSL/TLS protocols. The entire code-base is publicly available on GitHub \cite{github-codebase}.

\par The relationship between the scientific community and the sysadmin community within a research department was illustrated in the Introduction, emphasizing the reciprocal improvement cycle between the two, when proper actions are made on both sides.

\par With the current implementation, a sysadmin team will be able to have uninterrupted resource management and monitoring for the entire computing infrastructure, being able to quickly take action on the identified issues. By taking the proper actions on the computing resources (either the idle ones or the ones which execute jobs) an efficient pipeline is created, resulting in an optimal run-time of existing jobs, but also a proper execution of new incoming jobs.