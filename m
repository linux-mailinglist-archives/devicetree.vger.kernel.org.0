Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 460DD50E7B4
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 20:02:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244183AbiDYSEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 14:04:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240129AbiDYSE3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 14:04:29 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08F032FE45
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:01:25 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id k12so9884547ilv.3
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 11:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oIpXQOczTIQ/O1VLgkg45A/f+SkXi92vGgGc35m3jEE=;
        b=oAPFU3DBgJAYT5Kw1WGNSxLDubdRb4++zYbD2kWMXuoSWMPGOszK+v/C88K7qPDNzr
         8CrU/OYmSjmnMpana2PB/F7n8qljdRt2FBsLOv/K7XBsf2c1TldF9GOrX1RGtlI7VhZA
         kG25H19czK9o4WmdVH5UGNWy6ipv6CGHQYTx6MR07rUke2EETxqqHB9dlfccCIAj3m0I
         0OZ6HzUHCoedSjQxZdN17UPEuAma83JXvh+WjVzePOHn/mvmMj9fCg9Q+AQmoTD+AtbT
         vCAPB5L0N5+MmFPMPU9LsxJK4UlyYo9RtegtnLGBbSaLP9mRiTc3JP5rWqti7hDF5P8G
         M1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oIpXQOczTIQ/O1VLgkg45A/f+SkXi92vGgGc35m3jEE=;
        b=vBRz61NHDmICsFU/qLIUafqZ+rGpWf8f4cY2a6Q+QEvStHZD6X2k45qY+gRUqe8k+G
         lB6x9gOY9tVVFL4IijviijHeqxNkTdih58VPSYFuuUwdxN+iPEjYOyVsWh9j8akPdjvO
         g9JS1GvOWXxxOSBHgk0oQIihSN+nQX+on9qY9IFn2sBLlgx4z9A4Xp6tBGGdSersCsPD
         eyRZ8v3RHcTvnrDq24nYBKCc9xsPgCGcr2t4aIeL4qCJdJJ51Joi2GebYZL24uFD4kVM
         xZ+UNWUgWkc1vpPAgb61elcrMdNcRbEMEEKhZsysJhQIWDPNTFkexvHi2Yy+KzWBpBFB
         RTSA==
X-Gm-Message-State: AOAM530RA2HI68NOhHNiWFCduK/XDjXqpDC20bzx8XRyYedKDvPkQAlT
        GxhvptmjGo4vM89+qWCEMq2TA017Ua0sd6xL
X-Google-Smtp-Source: ABdhPJwjGzMpGe/Oh7rEeky35gx80wwE7U7kvkfR9j/U2SLIAaKVcic4KbWBe3cdh0jrvTZ/twI32w==
X-Received: by 2002:a05:6e02:18c8:b0:2cd:8f11:e9ed with SMTP id s8-20020a056e0218c800b002cd8f11e9edmr3347082ilu.310.1650909684207;
        Mon, 25 Apr 2022 11:01:24 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id a1-20020a923301000000b002cae7560bfesm6447379ilf.62.2022.04.25.11.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 11:01:23 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: sound: Add generic serial MIDI device
Date:   Mon, 25 Apr 2022 13:01:14 -0500
Message-Id: <20220425180115.757247-2-kaehndan@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220425180115.757247-1-kaehndan@gmail.com>
References: <20220425180115.757247-1-kaehndan@gmail.com>
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
+  so that a requested speed of 3.840 kBaud resuts in the standard MIDI baud rate.
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

