Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A844650E94E
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 21:16:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230083AbiDYTTq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 15:19:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244898AbiDYTTp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 15:19:45 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA6EF12C6A1
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 12:16:40 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id 125so16955231iov.10
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 12:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BxXxbzDjMenOqOAuojI2CslyTve9CHii7Q71V+UKLO0=;
        b=HWUjQGjTzvT8tPqeHwwkOAz3LzZEfCIbSnYQf6SVoztUA7hat0ZixdZA/SEU1HB63l
         iiFkfAmsOXb9jf6i4I/6BqPPvtaXaTQ3sxHeTXKnm71pgQWPRVPk2QZIRboz839RKaIB
         a8PVuvEhcLywAOWvFLwKiH+nrSxoGZ3dpc9P2XdOI2Bw3/2EhwsANwtMke6TvwLbiESi
         Tp22esfRZTtjTm/oGGFI3+frGveI+bpiwVLUX1MWZhnDlETOY+FD1DUs1FJMV/glyKos
         44ErCjmrqwSfCr137D8iuxlaj4ptevsjqj2f/4dIuEonsJuYujhShNiaW+pl22awGmaP
         t8Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BxXxbzDjMenOqOAuojI2CslyTve9CHii7Q71V+UKLO0=;
        b=7xLpgtlQXxgDdQCvQKcB88EeppYLVy0yn51Koy0xB+zlzGx6CC068Ytg4D/x++nXFE
         xIL7aQjW0PWf2+ctyP+UPdM5auTvmbP8eee12CVebjg0LwVqCQ1gJef1Rp5/2++2vzpN
         5knD5eUd/FPXJYI5+pRAp/OiM0ykyGTLiFJ5c7g3IJP+cXJc53yll9pUlj2UfOuJ5uJC
         9mSfYrfLW3C/g7Ujx7WAM87q+unDdyYeOVDGr5SW0I34wBkbJci7X1DbbvadDMQJHRN8
         5LtKfmfYXpO/2zYAm/LRU74FxplNvnKuZHGtmhfKMPHx5H96WkwSMwgMpXmkOJ4G5O4k
         q0bQ==
X-Gm-Message-State: AOAM5322z5rkVMdaa9BgBE9Lh0DQoXMxva7MFrZ3IsZ+nwGiGjgTAUVw
        b6qg0jVBOYyngQ7xegNq7vkV7Kg9KGi0CPbE
X-Google-Smtp-Source: ABdhPJxev6uY+K4lFE+dwSobCuC0fgQnuqyexP+hWilAeYlV1th45k/U4gn4yj/huTdNrWFVi74THw==
X-Received: by 2002:a05:6638:dc9:b0:323:68d6:e15a with SMTP id m9-20020a0566380dc900b0032368d6e15amr8001454jaj.238.1650914200168;
        Mon, 25 Apr 2022 12:16:40 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id m14-20020a92c52e000000b002cd804f045dsm5322842ili.1.2022.04.25.12.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 12:16:39 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: sound: Add generic serial MIDI device
Date:   Mon, 25 Apr 2022 14:16:02 -0500
Message-Id: <20220425191602.770932-2-kaehndan@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220425191602.770932-1-kaehndan@gmail.com>
References: <20220425191602.770932-1-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds dt-binding for snd-serial-generic serial MIDI driver

Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
---
 .../devicetree/bindings/sound/serialmidi.yaml | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml

diff --git a/Documentation/devicetree/bindings/sound/serialmidi.yaml b/Documentation/devicetree/bindings/sound/serialmidi.yaml
new file mode 100644
index 000000000000..38ef49a0c2f9
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/serialmidi.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/serialmidi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic Serial MIDI Device
+
+maintainers:
+  - Daniel Kaehn <kaehndan@gmail.com>
+
+description: |
+  Generic MIDI interface using a serial device. Can only be set to use standard speeds
+  corresponding to supported baud rates of the underlying serial device. If standard MIDI
+  speed of 31.25 kBaud is needed, configure the clocks of the underlying serial device
+  so that a requested speed of 38.4 kBaud resuts in the standard MIDI baud rate.
+
+properties:
+  compatible:
+    const: serialmidi
+
+  speed:
+    maxItems: 1
+    description: |
+      Speed to set the serial port to when the MIDI device is opened.
+      If not specified, the underlying serial device is allowed to use its configured default speed.
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
+            compatible = "serialmidi";
+            speed = <38400>;
+        };
+    };
-- 
2.33.0

