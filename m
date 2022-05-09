Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9854051F2FD
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 05:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231335AbiEIDmm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 23:42:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233608AbiEIDcv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 23:32:51 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A5008A7D1
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 20:28:59 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id s23so2437304iog.13
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 20:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dDsp62AiGoY6OdXi5OTJclcy9YeOTLXSHY5Eqb8Jm3I=;
        b=XPCgBzrOUQNFOvkqTd3VC/tpbazBH2IhxMKx16VEl5RlxmSdL3IS/y8pH+k3vWPGni
         GInI1XpSmBtSkQDjTT726N8pDnI+O3dNypoZdSONKvJ4PM+vKRtQzwqSz+hXgB/1NBxC
         +BaOv/kzqvMo0go0h8QLl91Nzg4DE/6qBW/tUvqMUi6kxOj6ivkX9hh/aj0XRhtdH4nn
         lkIJ/AkwB4wLAPqwCgjjAwaAoofVI9eoDc2KketKJOrY3sP/Mk6rDQKNQoMYVHNJrnaE
         VXSVvFAl2tQUwLt5O7OJ0O+wwL0I/ZLLQf87faR4XMO7vwZ2DwoyCm1//CYWECmiM4Ed
         TSBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dDsp62AiGoY6OdXi5OTJclcy9YeOTLXSHY5Eqb8Jm3I=;
        b=J+GSk4Qlrqes2dtitHdDWESEt/SirFi1TT1N7JQ97Ipgrlykzn9Ug4fGRLjwp+tLx4
         OOBRAwwF9omrlQrwGlZCyVGQIzSjV9tZzzpVNWdt6A5md5TW1OgtkQHoTDC3yjdoMxYz
         mjA0bJTKCbRP2LPT0X1ruhy6x/mPQRiKxY/QtPsZS+D40gSo45hi/jDalaJMZICaWguC
         QVCf5LVnPRNY62+IPowWAjL9bDvI/pRRqjVGRNJVg5XnkOPgD+C59ili0+z+hAxoYPk5
         /qjV407W+NvQ32fyn9qwDooBE2EzNisAcXYSeP4c04Z9b7p85H4YjwJyX1txIQCnRjPQ
         fSpA==
X-Gm-Message-State: AOAM532r52DLwYpAJue3xaCToFZiyc3e0TEKki/DJzGRrSKwmH2gxken
        6/Bl3o/bD0EgzOWBu9lzWQo=
X-Google-Smtp-Source: ABdhPJzTLqYs+HpGw07/GlbEBWLKxNGsLzD9iCgNTRj+NCs8blffSq1MuhUcNqY24WG8D5BZMCL+3A==
X-Received: by 2002:a05:6638:4389:b0:32b:7caa:c49f with SMTP id bo9-20020a056638438900b0032b7caac49fmr6303614jab.159.1652066924827;
        Sun, 08 May 2022 20:28:44 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id a16-20020a92ce50000000b002cde6e352bcsm2869157ilr.6.2022.05.08.20.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 May 2022 20:28:44 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com, robh@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v6 1/2] dt-bindings: sound: Add generic serial MIDI device
Date:   Sun,  8 May 2022 22:28:35 -0500
Message-Id: <20220509032836.1116866-2-kaehndan@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220509032836.1116866-1-kaehndan@gmail.com>
References: <20220509032836.1116866-1-kaehndan@gmail.com>
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
 .../bindings/sound/serial-midi.yaml           | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serial-midi.yaml

diff --git a/Documentation/devicetree/bindings/sound/serial-midi.yaml b/Documentation/devicetree/bindings/sound/serial-midi.yaml
new file mode 100644
index 000000000000..74849be01df3
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/serial-midi.yaml
@@ -0,0 +1,50 @@
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
+    serial@7e201400 {
+        midi {
+            compatible = "serial-midi";
+        };
+    };
+    serial@7e201600 {
+        midi {
+            compatible = "serial-midi";
+            current-speed = <115200>;
+        };
+    };
-- 
2.33.0

