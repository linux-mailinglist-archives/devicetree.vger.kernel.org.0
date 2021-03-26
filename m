Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA0BE34A641
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 12:16:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229782AbhCZLPo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 07:15:44 -0400
Received: from mail.kernel.org ([198.145.29.99]:42994 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229832AbhCZLPL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Mar 2021 07:15:11 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 33D0961A36;
        Fri, 26 Mar 2021 11:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1616757310;
        bh=TGar1l22CGV/Y1xmxSx1j6P629QX5HKeQDyWELso18M=;
        h=Subject:To:From:Date:From;
        b=SuXZWhr/KP0Brf0+rVGkayg7jtcVNAoc5+whNnt3DPEAYK+jXjx2Bsh1+2XkMIBMI
         6GvQjsQX1fqMH8WCsDU3ZQrEx/AX3W6YJiYwvhWofqJzBECO8UqS4AIahiaznYZDoA
         uB0uslt74MLVTGfbcCIj+qZdrIN3TJur3VnAc4lw=
Subject: patch "dt-bindings: iio: Add cros ec proximity yaml doc" added to staging-testing
To:     swboyd@chromium.org, Jonathan.Cameron@huawei.com,
        bleung@chromium.org, devicetree@vger.kernel.org,
        dianders@chromium.org, dmitry.torokhov@gmail.com,
        enric.balletbo@collabora.com, groeck@chromium.org,
        gwendal@chromium.org, robh@kernel.org
From:   <gregkh@linuxfoundation.org>
Date:   Fri, 26 Mar 2021 12:12:24 +0100
Message-ID: <161675714498100@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


This is a note to let you know that I've just added the patch titled

    dt-bindings: iio: Add cros ec proximity yaml doc

to my staging git tree which can be found at
    git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
in the staging-testing branch.

The patch will show up in the next release of the linux-next tree
(usually sometime within the next 24 hours during the week.)

The patch will be merged to the staging-next branch sometime soon,
after it passes testing, and the merge window is open.

If you have any questions about this process, please let me know.


From 19ad93bc82e7d0ea7b02ada623cddfeab20c9046 Mon Sep 17 00:00:00 2001
From: Stephen Boyd <swboyd@chromium.org>
Date: Wed, 10 Feb 2021 18:46:00 -0800
Subject: dt-bindings: iio: Add cros ec proximity yaml doc

Some cros ECs support a front proximity MKBP event via
'EC_MKBP_FRONT_PROXIMITY'. Add a DT binding to document this feature via
a node that is a child of the main cros_ec device node. Devices that
have this ability will describe this in firmware.

Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Benson Leung <bleung@chromium.org>
Cc: Guenter Roeck <groeck@chromium.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Gwendal Grignou <gwendal@chromium.org>
Cc: <devicetree@vger.kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Link: https://lore.kernel.org/r/20210211024601.1963379-3-swboyd@chromium.org
Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 .../google,cros-ec-mkbp-proximity.yaml        | 37 +++++++++++++++++++
 .../bindings/mfd/google,cros-ec.yaml          |  7 ++++
 2 files changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/proximity/google,cros-ec-mkbp-proximity.yaml

diff --git a/Documentation/devicetree/bindings/iio/proximity/google,cros-ec-mkbp-proximity.yaml b/Documentation/devicetree/bindings/iio/proximity/google,cros-ec-mkbp-proximity.yaml
new file mode 100644
index 000000000000..099b4be927d4
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/proximity/google,cros-ec-mkbp-proximity.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+
+$id: http://devicetree.org/schemas/iio/proximity/google,cros-ec-mkbp-proximity.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ChromeOS EC MKBP Proximity Sensor
+
+maintainers:
+  - Stephen Boyd <swboyd@chromium.org>
+  - Benson Leung <bleung@chromium.org>
+  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
+
+description: |
+  Google's ChromeOS EC sometimes has the ability to detect user proximity.
+  This is implemented on the EC as near/far logic and exposed to the OS
+  via an MKBP switch bit.
+
+properties:
+  compatible:
+    const: google,cros-ec-mkbp-proximity
+
+  label:
+    description: Name for proximity sensor
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    proximity {
+      compatible = "google,cros-ec-mkbp-proximity";
+      label = "proximity-wifi-lte";
+    };
diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index 76bf16ee27ec..4dfa70a013ae 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -94,6 +94,9 @@ properties:
   keyboard-controller:
     $ref: "/schemas/input/google,cros-ec-keyb.yaml#"
 
+  proximity:
+    $ref: "/schemas/iio/proximity/google,cros-ec-mkbp-proximity.yaml#"
+
   codecs:
     type: object
     additionalProperties: false
@@ -180,6 +183,10 @@ examples:
             interrupts = <99 0>;
             interrupt-parent = <&gpio7>;
             spi-max-frequency = <5000000>;
+
+            proximity {
+                    compatible = "google,cros-ec-mkbp-proximity";
+            };
         };
     };
 
-- 
2.31.0


