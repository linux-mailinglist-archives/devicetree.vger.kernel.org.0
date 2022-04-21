Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2965450A709
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 19:25:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1390749AbiDUR2L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 13:28:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390752AbiDUR2L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 13:28:11 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AC3C11A0F
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 10:25:21 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id k12so3496583ilv.3
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 10:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Wi2IQKyKSRRZggiHTtlLgyaAmdAA44lq7Ane7/mRjtA=;
        b=h5WmL172711rTzDKMaGLM1D9C9SlQpUnNp8h2CBLUQPJfOKYrld1VwtFOEELiuHPJx
         OTw6S7F7daVjv+sueLc7nv4kyhieQXIFOc4FEpcfVqWJdVHgG6IpVESQOkSUF4SJyMhd
         5tzsv500efhqyMZwQc8aWuMTUGdq6lkio5qpOg4utHRhTJgpRTvTzAREHFZCR40pkK2w
         QVOcLviz22SVliO9TRaE9hsqnhJv2eMSfYsue9RbPWZhyKBvbE23bPmERh16+zn8Dce9
         iDktSJD620nQNpFoasMmbqzvXq5msJSzvtg7zPx5fAi2gi5/I4uUhIl6BccXm+AAIMAu
         1M0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Wi2IQKyKSRRZggiHTtlLgyaAmdAA44lq7Ane7/mRjtA=;
        b=pugbtYu8hBzsJH9K1KhB4xSBMTsYUz6yVQT8zqIEr/Ur5XuyFEwD+EA+crz0gJNOe0
         YzzQH/6U9zFjiFOTt8N1iUpNRLcRQ8uJD0048YLr4VZG04x0rdokDix/rkpUqTZI8FTi
         ySbwSiB/zpDTot3NtEHtYqrX6OSJ4F0vgp1ehYZl9RR6TpnqH0ZBqctVBkLOpRcAuyE9
         umlhge9ZThhQ0pVh2RbAlui7Q1AiJii9QlRgfaIi9jg9R2vZbFSMhnQZ75IBX2xfhT/U
         sxuVEoH/wDL0fhQtXBhP4ukD/rMlC2/cqpLaNUR54P2ic92U/j9Xe0KDTY+1r0Bhzgry
         HQuQ==
X-Gm-Message-State: AOAM530dFr9WlOHh4wOws1FfkOARLJhBh4/j0G+bRuNWLIO/xkcLMRFL
        kxRNc/c9Pw9X1+kR+iP6kGU=
X-Google-Smtp-Source: ABdhPJwhT3+JOjv/sPS/0kggv3RrbDLZtdQ5kTGA1xfdcYh/QihDct17Mq0uNExOolnBtTryjQ64DQ==
X-Received: by 2002:a05:6e02:1785:b0:2cc:a32:98a7 with SMTP id y5-20020a056e02178500b002cc0a3298a7mr364196ilu.9.1650561920614;
        Thu, 21 Apr 2022 10:25:20 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id o16-20020a92c690000000b002cbf7f76878sm10806260ilg.6.2022.04.21.10.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 10:25:20 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: sound: Add generic serial MIDI device
Date:   Thu, 21 Apr 2022 12:24:26 -0500
Message-Id: <20220421172427.703231-2-kaehndan@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421172427.703231-1-kaehndan@gmail.com>
References: <20220421172427.703231-1-kaehndan@gmail.com>
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
index 000000000000..74f02a9e1190
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
2.35.1

