Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF53314C3A
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 10:56:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbhBIJ4c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 04:56:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230385AbhBIJy1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 04:54:27 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFF48C061222
        for <devicetree@vger.kernel.org>; Tue,  9 Feb 2021 01:53:27 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id y9so30199152ejp.10
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 01:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kH2IpWZSoU7LW6R55FxG2fdVhcdDOZnt8IKAlaXn2Os=;
        b=jZukgeg/LBUT2AFJCMDjAdquPLJG9ll9QRW80i5PgBJgg0QuhC5KrKrmM52fQ7tLPU
         hjPZPeQeZf29nSwCJc6/nOmNPpAmaNGPr0+8KAjifuIIbGdPQXV5homhK38I3LFH1x08
         ESh9Ss+Ov26bPlWYFbqu7anFCl/n5/LacIQaBITUtzcbr4vMX0pYTQ9uvpK8dF8sWYUh
         zABcT3AqeopL2Ahx0APjilN0MXrFHw5O/IMOXNAsPNy7fkzC0MhX2rAbVLo68+4CmB0z
         Ogxn6nk2eVQGMoDvpg+fFShRkwr/pSWeMG0Ercob3Ni+w/py+MGriWPWKb9yvnNPDrZv
         jFsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=kH2IpWZSoU7LW6R55FxG2fdVhcdDOZnt8IKAlaXn2Os=;
        b=FMIwerPGczBWlQPNk9OoTHHt8TMd/1Bwc3BVXhvq46rVk9I0tVDWR9Zj8RWLW91qIL
         8d480LRZ/k2A5Zc83XfXkS0bcYpJ+avLUAtX7zzZthK8WA2pEL1wD7mAun9eC7SEp83m
         siU9ntifTlTxiZq/WOMRQHV7FdhHlLpPg9TXvVgsPJeCqVOzgGNejYh1SzBxSPXrb0sD
         iMDL7HwPjTeNwn2n1bcndo58dgUNsqecIUALSCmipYYo0E4NWcfJwMG97l3MBj34Jp4m
         fTTPyvI8PuzDgL1BQaljvkKKBfrLtsX5rx/6M0CRRREmldCGvipRCUX+Iq8fgbKLEdXn
         TKjA==
X-Gm-Message-State: AOAM532w470/jW7S66utFdI8Z/wb4QZVNWQ4vU5RU2As/FgjYljzgX5Q
        8q4FdU+VwdpGSl3lcHY1An5Mrg==
X-Google-Smtp-Source: ABdhPJyNdJEyeK6H4oxf1gdNfOAMY6MonFBUSvcYuEIE0IV+c0h6Yyl6X354S2mwVRxbgf44CNlXsA==
X-Received: by 2002:a17:907:20c4:: with SMTP id qq4mr20479872ejb.495.1612864406681;
        Tue, 09 Feb 2021 01:53:26 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id v26sm11457148edw.23.2021.02.09.01.53.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 09 Feb 2021 01:53:26 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Piyush Mehta <piyush.mehta@xilinx.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: usb: misc: Add binding for Microchip usb5744 hub
Date:   Tue,  9 Feb 2021 10:53:19 +0100
Message-Id: <076994fc051e9230a3fef9e3eb5ec932104ef16a.1612864393.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1612864393.git.michal.simek@xilinx.com>
References: <cover.1612864393.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Piyush Mehta <piyush.mehta@xilinx.com>

Added dt binding for usb5744 driver.

Signed-off-by: Piyush Mehta <piyush.mehta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../bindings/usb/microchip,usb5744.yaml       | 56 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/microchip,usb5744.yaml

diff --git a/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml b/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
new file mode 100644
index 000000000000..fe222f6db81d
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/usb/microchip,usb5744.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Bindings for the Microchip USB5744 4-port Hub Controller
+
+description:
+  Microchip’s USB5744 SmartHub™ IC is a 4 port, SuperSpeed (SS)/Hi-Speed (HS),
+  low power, low pin count configurable and fully compliant with the USB 3.1
+  Gen 1 specification. The USB5744 also supports Full Speed (FS) and Low Speed
+  (LS) USB signaling, offering complete coverage of all defined USB operating
+  speeds. The new SuperSpeed hubs operate in parallel with the USB 2.0
+  controller, so 5 Gbps SuperSpeed data transfers are not affected by slower
+  USB 2.0 traffic.
+
+maintainers:
+  - Piyush Mehta <piyush.mehta@xilinx.com>
+  - Michal Simek <michal.simek@xilinx.com>
+
+properties:
+  compatible:
+    const: microchip,usb5744
+
+  reg:
+    maxItems: 1
+    description: |
+      Specifies the i2c slave address, it is required and should be 0x2d
+      if I2C is used.
+
+  reset-gpios:
+    maxItems: 1
+    description:
+      The phandle and specifier for the GPIO that controls the RESET line of
+      USB hub.
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        usb5744@2d {
+            compatible = "microchip,usb5744";
+            reg = <0x2d>;
+            reset-gpios = <&gpio 44 GPIO_ACTIVE_HIGH>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 41e8d3d7faec..7439471b5d37 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2697,6 +2697,7 @@ W:	http://wiki.xilinx.com
 T:	git https://github.com/Xilinx/linux-xlnx.git
 F:	Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
 F:	Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
+F:	Documentation/devicetree/bindings/usb/microchip,usb5744.yaml
 F:	arch/arm/mach-zynq/
 F:	drivers/block/xsysace.c
 F:	drivers/clocksource/timer-cadence-ttc.c
-- 
2.30.0

