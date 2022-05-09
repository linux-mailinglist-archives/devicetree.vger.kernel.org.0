Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 875FD5200A3
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 17:03:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237785AbiEIPDs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 11:03:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237793AbiEIPDq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 11:03:46 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A60782C96D7
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 07:59:45 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id i22so9474607ila.1
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 07:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xCWqExzmXwWnjdQ7B13SNGOPxduy3/5fQccMCg15+0I=;
        b=baK4GQ6Mfz2zIMwGNyc09GXC9h7GScbU32wjeivM6ObuNialUKfwQKQDgdc92WAkdp
         xlfJIsgqxIPoycT4u720rCgPnlriFqiFySIkYVLZq7H6fVGYOKny2PtjsrWMktQGrxjJ
         Z8aKxFl8VpTGRkUQxKC0cgcK6romyXa4JZHP2wQjKy/8njdH9TwHwyaS5PdMSJqcYbv4
         qOndiGRf6t+GwZZfMlGLwruLIJzsBza14NwOggFEkWSRo91LapSHCVmQVvuvj+u7AmEw
         A4mqm9Fck3M12BOzbVRW7IO7liAmlptJHhL9ggsUrAvIkG4HUUw6GtkkGzZXY+n9FuBG
         oZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xCWqExzmXwWnjdQ7B13SNGOPxduy3/5fQccMCg15+0I=;
        b=AnobSwWi7VzxbWCp6tJQu0kvHvittpcpQd8te2AKBLB8BR1HnR1HkLzo4+NZCmgX6V
         /FZMMqzlzeDHDkJTwSrYHi251z23CrqCwQ/fDQbJp3LnK0kVDIgqEL600fyFiOQgxDOz
         UkPwvroF+Id1SD79XtokxNpPUqK8K7nFz4AADJqc1HQee0jzb8F8gGSd4zL1l++kpkP+
         z8zVaWrlTP9p3H8uD9upcHhR3Yd3I8eR1x1Cq2OMHMLVZqNVxIr9OtKJGLimM8ygRH1Q
         QKiWddWNhbf/CjXpFSbyw/kCMitoiiyA37GZprIPUjg3ePvWlFuVZS03qMj5ZSov22L4
         n82g==
X-Gm-Message-State: AOAM533LffO0mLNuVsFPVuU0dLN4QIdXtsxit0ebYc7eJgDwTa51a3In
        S4uneBqtQvoCbEK3Gfxgh5I=
X-Google-Smtp-Source: ABdhPJyQkdfdx7AtvylBcaBMPx66ygF9/OVth/6zW1asF7juD+04WEyIz9NGNuq6Yro8o/sNbiWkcQ==
X-Received: by 2002:a92:d348:0:b0:2cf:8c5d:2c9a with SMTP id a8-20020a92d348000000b002cf8c5d2c9amr5107507ilh.177.1652108382246;
        Mon, 09 May 2022 07:59:42 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id p18-20020a02b892000000b0032b3a7817c1sm3664414jam.133.2022.05.09.07.59.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 07:59:41 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com, robh@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v7 1/2] dt-bindings: sound: Add generic serial MIDI device
Date:   Mon,  9 May 2022 09:59:32 -0500
Message-Id: <20220509145933.1161526-2-kaehndan@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220509145933.1161526-1-kaehndan@gmail.com>
References: <20220509145933.1161526-1-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds dt-binding for a Generic MIDI Interface using a serial device.

Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
---
 .../bindings/sound/serial-midi.yaml           | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serial-midi.yaml

diff --git a/Documentation/devicetree/bindings/sound/serial-midi.yaml b/Documentation/devicetree/bindings/sound/serial-midi.yaml
new file mode 100644
index 000000000000..4afc29376efc
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/serial-midi.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/serial-midi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic Serial MIDI Interface
+
+maintainers:
+  - Daniel Kaehn <kaehndan@gmail.com>
+
+description:
+  Generic MIDI interface using a serial device. This denotes that a serial device is
+  dedicated to MIDI communication, either to an external MIDI device through a DIN5
+  or other connector, or to a known hardwired MIDI controller. This device must be a
+  child node of a serial node.
+
+  Can only be set to use standard baud rates corresponding to supported rates of the
+  parent serial device. If the standard MIDI baud of 31.25 kBaud is needed
+  (as would be the case if interfacing with arbitrary external MIDI devices),
+  configure the clocks of the parent serial device so that a requested baud of 38.4 kBaud
+  resuts in the standard MIDI baud rate, and set the 'current-speed' property to 38400 (default)
+
+properties:
+  compatible:
+    const: serial-midi
+
+  current-speed:
+    description: Baudrate to set the serial port to when this MIDI device is opened.
+    default: 38400
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    serial {
+        midi {
+            compatible = "serial-midi";
+        };
+    };
+  - |
+    serial {
+        midi {
+            compatible = "serial-midi";
+            current-speed = <115200>;
+        };
+    };
-- 
2.33.0

