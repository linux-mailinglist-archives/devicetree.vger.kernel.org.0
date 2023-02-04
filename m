Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1862668A732
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 01:20:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231593AbjBDAUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 19:20:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231526AbjBDAUG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 19:20:06 -0500
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com [IPv6:2607:f8b0:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF04A84B7E
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 16:20:03 -0800 (PST)
Received: by mail-il1-x12b.google.com with SMTP id m15so2747767ilh.9
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 16:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w3cQCzTKe/Qn0smejSDcASJ0WZTb/T5W5Y9oAHuHsfc=;
        b=Rd8RvQZnSXiw7ZeXUWv3KIJFd8zVmabk8hBYLSvQ9uh6850DkuO9aHjOuV8Wx6ePiZ
         FvZfsgrLDaVEOR3Sw0Mc9+vTSg3ouxfCatwE2kMztByngNlz+jOUJdOSYBsVwOI6MJZU
         Ip0dQfVZKnM1fAT2SdBGNvTGWTJnatjhhodWQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w3cQCzTKe/Qn0smejSDcASJ0WZTb/T5W5Y9oAHuHsfc=;
        b=FmtHQmKK9rsVpfYa3S3E+Ic+LBOtgltmTQmfL77NUi2JNKyD13aIvTymS2QqGAiYwu
         xKo3RfzwPsK0atOS7LnD9yKvPEST5ZmkNUzqANvHgSaLIuR5lc1mZHR/e0wan9sli1+O
         RhoYBGDKuer+l9Vku9n/XP4PrNBh7Cel9qamdwWBfW+eXEkZ39vhIdpDbsm4Si7s23hd
         XMWW48VDy8msbakl+vGVNf69aK3LDRERze75+o4ii9H9edoosBtCoRyBMK2P/4wV5y10
         E/TJgbyI2U5Md+DXFRSdJ5pGLPSQ/p4q1XGTZPvXtVoN6fDMPjb7B/mzKu3STZkUhUxJ
         rB4g==
X-Gm-Message-State: AO0yUKVtAUxsp+S/lVJEwTt8y7Ien++MJhv6jA4CvrWxTRR6Yt2tbHaQ
        tcRYHvKpb0bidVfTpCPm6gJzbFZdNmfFqgcK
X-Google-Smtp-Source: AK7set9M2ass8zgOTUdkFXxdt8piDQmh1lnM44bVAA58nPGLUuH9932lnOO5UwjsVLbu6IXCncJhpQ==
X-Received: by 2002:a92:cd89:0:b0:310:f849:83b9 with SMTP id r9-20020a92cd89000000b00310f84983b9mr10914533ilb.9.1675470002413;
        Fri, 03 Feb 2023 16:20:02 -0800 (PST)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:5b65:12f1:51b7:8157])
        by smtp.gmail.com with ESMTPSA id c5-20020a056638028500b0039e880ebdcfsm1278990jaq.76.2023.02.03.16.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 16:20:01 -0800 (PST)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH] schemas: Add schema for firmware logs
Date:   Fri,  3 Feb 2023 17:19:58 -0700
Message-Id: <20230204001959.935268-1-sjg@chromium.org>
X-Mailer: git-send-email 2.39.1.519.gcb327c4b5f-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A common way to detect problems in firmware is to collect logs from
the firmware, then pass them to the OS for storage and analysis.

Logs can take the form of simple text output, or structured logs where the
filename and line number, etc. are provided. Timestamps can sometimes be
useful, too.

Ideally the log can be displayed as simple ASCII without always needing
a special program to read it.

The firmware consists of various boot phases, any of which can contribute
log information. It is assumed that these logs are not interleaved, i.e.
that the phases run one after the other.

The final boot phase (before the OS) is responsible for collecting the
logs, e.g. from a Transfer List, and placing them in the devicetree.

This binding collects the logs as individual log@n subnodes within a
/chosen/logs node.

If firmware phases use the devicetree to pass logs between each other,
then the /chosen node should still be used. The /options node is not
supported. Subsequent phases must be sure to use the next numbered
log@n node.

If the log data is sitting in memory somewhere, it is possible to point
to it, rather than copying the data into a property. For large logs this
may be more efficient. It must end with a NUL character, so the total
space for actual log data is one byte less than the allocated size.

If something goes wrong and an incomplete log record is emitted, then the
next record may appear to be part of it, since there is no LF or ETX
character at the end of the previous record.

The intent with this binding is to provide a Linux driver which can
provide access to the log data after booting is complete.

Other things not considered:
- signalling overflow of a log buffer
- circular log buffers
- a single unified log buffer with inline ASCII characters to indicate the
  phase and project
- log records that contain multiple lines of text

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 dtschema/schemas/chosen.yaml |   3 +
 dtschema/schemas/log.yaml    | 176 +++++++++++++++++++++++++++++++++++
 dtschema/schemas/logs.yaml   |  30 ++++++
 test/logs.dts                |  47 ++++++++++
 4 files changed, 256 insertions(+)
 create mode 100644 dtschema/schemas/log.yaml
 create mode 100644 dtschema/schemas/logs.yaml
 create mode 100644 test/logs.dts

diff --git a/dtschema/schemas/chosen.yaml b/dtschema/schemas/chosen.yaml
index 86194dd..46cc9fb 100644
--- a/dtschema/schemas/chosen.yaml
+++ b/dtschema/schemas/chosen.yaml
@@ -236,6 +236,9 @@ properties:
       system.
 
 patternProperties:
+  '^logs$':
+    $ref: logs.yaml#
+
   "^framebuffer": true
 
 additionalProperties: false
diff --git a/dtschema/schemas/log.yaml b/dtschema/schemas/log.yaml
new file mode 100644
index 0000000..5218234
--- /dev/null
+++ b/dtschema/schemas/log.yaml
@@ -0,0 +1,176 @@
+# SPDX-License-Identifier: BSD-2-Clause
+# Copyright 2023 Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/log.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Log-output binding
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description:
+  This holds a log file or console dump created by a single phase of the boot.
+  It typically consists of plain ASCII text, but it is also possible to
+  add metadata like files and line numbers.
+
+  Each log node has a hex unit address which indicates the order of progress
+  through the boot phases. The first node must be log@0, followed by
+  log@1, etc.
+
+select: false
+
+properties:
+  reg:
+    description:
+      Defines a unique log ID for the log represented by the log node.
+
+  boot-phase:
+    $ref: types.yaml#/definitions/string
+    description: |
+      Indicates the phase of boot which produced this log:
+
+        - pre-sram: Before SRAM is available
+        - verify: Verification step, which decides which of the available images
+          should be run next
+        - pre-ram: Sets up SDRAM
+        - some-ram: After SDRAM is working but before all of it is available.
+          Some RAM is available but it is limited (e.g. it may be split into
+          two pieces by the location of the running program) because the
+          program code is not yet relocated out of the way.
+        - loader: OS loader, typically the final firmware step
+
+    pattern: "^pre-sram|verify|pre-ram|some-ram|loader$"
+
+  project:
+    $ref: types.yaml#/definitions/string
+    description:
+      Indicates the name of the project which produced this log
+
+    pattern: "^U-Boot|TF-A"
+
+  time-format:
+    $ref: types.yaml#/definitions/string
+    description: |
+      Indicates the time format used by the log. Options are:
+
+        usec - a integer number of microseconds since reset was released,
+               expressed in ASCII, e.g. "123"
+
+    pattern: "^usec$"
+
+  text-start:
+    oneOf:
+      - $ref: types.yaml#/definitions/uint32
+      - $ref: types.yaml#/definitions/uint64
+    description:
+      These properties hold the physical start and end address of the log text
+      if the 'text' property is not used.
+
+      Note that text-start is inclusive, but text-end is exclusive.
+
+      The text must be terminated with a NUL character.
+
+  text-end:
+    oneOf:
+      - $ref: types.yaml#/definitions/uint32
+      - $ref: types.yaml#/definitions/uint64
+    description:
+      These properties hold the physical start and end address of the log text
+      if the 'text' property is not used.
+
+      Note that text-start is inclusive, but text-end is exclusive.
+
+      The text must be terminated with a NUL character.
+
+  text:
+    $ref: types.yaml#/definitions/string
+    description: |
+      Contains the log text, if it is not referred to by text-start / text-end.
+
+      The format is ASCII with US and SOT used to indicate optional fields:
+
+        [timestamp<US>][level[:category[:filename[:line[:function]]]]]<SOT>]message[<LF>|<ETX>]
+
+      where:
+
+        timestamp is the timestamp, according to time-format
+
+        level is the single-digit log level:
+           0 - emergency (program is unstable)
+           1 - alert (action must be taken immediately)
+           2 - crit (critical conditions)
+           3 - err (error that prevents something from working
+           4 - warning (may prevent optimal operation)
+           5 - notice (normal but significant condition, printf())
+           6 - info (general information message)
+           7 - debug (basic debug-level message)
+           8 - debug content (debug message showing full message content)
+           9 - debug I/O (debug message showing hardware I/O access)
+
+        category is the category name which is project-dependent
+
+        filename is the relative filename (__FILE__ in C)
+
+        line is the line number starting from 1 (__LINE__ in C)
+
+        function is the function name (__func__ in C)
+
+        message is the message string, which may not contain control
+        characters (beyond those listed above) except for HT and LF. DEL and CR
+        are not permitted.
+
+      The timestamp is present only if US is in the string.
+
+      The fields before <SOT> are all optional, but must be listed in order.
+      To omit a field in the middle, use an empty string between two colons.
+      To omit a field at the end, just leave it out along with the colon before
+      it.
+
+      Typically LF is used as a line delimiter, but if a record does not
+      end with a newline, ETX can be used. This indicates that it is a new
+      log record but without a newline between them. Often (but not always)
+      the 'continuation' does not include the US and SOT information.
+
+      A log record without a LF or ETX terminator is considered invalid, even
+      if it is the final record.
+
+      Examples:
+
+         123<US>5:tpm:lib/tpm.c:334:tpm_init<SOT>TPM starting...<LF>
+         23<US>Hello<LF>
+         2:boot:lib/panic.c:84:panic<SOT>Memory training failed<LF>
+         7:mmc:::mmc_bind<SOT>Cannot create block device<LF>
+         Net:   eth0: host_lo, eth1: host_enp1s0<ETX>
+
+      ASCII characters:
+
+        SOT - 0x2  - indicates the start of the message. This is optional if
+                     the record has nothing but a message
+        ETX - 0x3  - indicates the end of a log record (without new line)
+        LF  - 0xa  - indicates the end of a log record (and new line)
+        US  - 0x1f - indicates the end of the timestamp (and that it is present
+                     in the record)
+
+      The above format is intended to be unambiguous, while still being fairly
+      readable it just shown on a terminal with all control characters except
+      LF dropped. The CR character is not permitted since it is not needed to
+      signal an end of line and it avoids worrying about what <CR><LF> actually
+      means.
+
+      The text size is determined by the property size. The last byte must be
+      a NUL character.
+
+required:
+  - boot-phase
+  - project
+
+anyOf:
+  - required:
+    - text
+  - required:
+    - text-start
+    - text-end
+
+additionalProperties: false
diff --git a/dtschema/schemas/logs.yaml b/dtschema/schemas/logs.yaml
new file mode 100644
index 0000000..76ba2b0
--- /dev/null
+++ b/dtschema/schemas/logs.yaml
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: BSD-2-Clause
+# Copyright 2023 Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/logs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Log information collected during firmware execution
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description:
+  This holds a set of logs build up during booting of the machine. The
+  collection of logs is described in the "/logs" node.  This node in turn
+  contains a number of subnodes representing individual log output from
+  different boot phases.
+
+properties:
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^log@[0-9a-f]+$':
+    $ref: log.yaml#
+
+additionalProperties: false
diff --git a/test/logs.dts b/test/logs.dts
new file mode 100644
index 0000000..7d044df
--- /dev/null
+++ b/test/logs.dts
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: BSD-2-Clause
+// Copyright 2023 Google LLC
+
+// Used to validate the "logs" node and its child "log" nodes
+
+// dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate -s test/schemas -m test.dtb
+
+
+/dts-v1/;
+
+/ {
+	model = "none";
+	compatible = "foo";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	chosen {
+		logs {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			log@0 {
+				reg = <0>;
+				boot-phase = "pre-ram";
+				project = "U-Boot";
+				text = "\nU-Boot SPL 2023.01 (Feb 03 2023 - 14:45:39 -0700)\nTrying to boot from sandbox_image\nTrying to boot from sandbox_file\n";
+			};
+
+			log@1 {
+				reg = <1>;
+				boot-phase = "loader";
+				project = "U-Boot";
+				time-format = "usec";
+				text = "\n\n123\x1f2:boot:lib/display_options.c:43:display_options\x02U-Boot 2023.01 (Feb 03 2023 - 14:45:39 -0700)\n\nReset Status: COLD\nModel: sandbox\nDRAM:  256 MiB\n";
+			};
+
+			log@2 {
+				reg = <2>;
+				boot-phase = "pre-ram";
+				project = "TF-A";
+				text-start = <0x103000>;
+				text-end = <0x107000>;
+			};
+		};
+	};
+};
-- 
2.39.1.519.gcb327c4b5f-goog

