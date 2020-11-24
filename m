Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38E852C1EE5
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 08:32:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730064AbgKXHao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 02:30:44 -0500
Received: from mail.kernel.org ([198.145.29.99]:55256 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730050AbgKXHao (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 24 Nov 2020 02:30:44 -0500
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B3499206E5;
        Tue, 24 Nov 2020 07:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1606203043;
        bh=t546WfsoLOcrbBrT9ijgkgpkZnlzHqrTYMDNHMYSoo8=;
        h=Subject:To:From:Date:From;
        b=gXVZS6lcCmc8+JeujHdy6VIomDTNK0vvMU6FEFjcmGEUzFezJK0ohQDT4hLBnafvP
         C1BB4YhgRqrugniemfHFEbtuHcySfGPsyMjuKRmkRKk26ja68au8DWku7KYGF5Pr0a
         zRwZVee/jHlTBwpp99VWZwu7WS8lUPGagcazu9UI=
Subject: patch "dt-bindings: iio: sx9310: Add various settings as DT properties" added to staging-testing
To:     swboyd@chromium.org, Jonathan.Cameron@huawei.com,
        campello@chromium.org, devicetree@vger.kernel.org,
        dianders@chromium.org, evgreen@chromium.org, gwendal@chromium.org,
        lars@metafoo.de, pmeerw@pmeerw.net, robh@kernel.org
From:   <gregkh@linuxfoundation.org>
Date:   Tue, 24 Nov 2020 08:31:11 +0100
Message-ID: <1606203071176251@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


This is a note to let you know that I've just added the patch titled

    dt-bindings: iio: sx9310: Add various settings as DT properties

to my staging git tree which can be found at
    git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
in the staging-testing branch.

The patch will show up in the next release of the linux-next tree
(usually sometime within the next 24 hours during the week.)

The patch will be merged to the staging-next branch sometime soon,
after it passes testing, and the merge window is open.

If you have any questions about this process, please let me know.


From e94b3c608a2a886758da87dc5bb383e5eddce666 Mon Sep 17 00:00:00 2001
From: Stephen Boyd <swboyd@chromium.org>
Date: Tue, 6 Oct 2020 18:17:34 -0700
Subject: dt-bindings: iio: sx9310: Add various settings as DT properties

We need to set various bits in the hardware registers for this device to
operate properly depending on how it is installed. Add a handful of DT
properties to configure these things.

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Cc: Daniel Campello <campello@chromium.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>
Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc: <devicetree@vger.kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>
Cc: Gwendal Grignou <gwendal@chromium.org>
Cc: Evan Green <evgreen@chromium.org>
Link: https://lore.kernel.org/r/20201007011735.1346994-6-swboyd@chromium.org
Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 .../iio/proximity/semtech,sx9310.yaml         | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9310.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9310.yaml
index 5739074d3592..ccfb163f3d34 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9310.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9310.yaml
@@ -40,6 +40,63 @@ properties:
   "#io-channel-cells":
     const: 1
 
+  semtech,cs0-ground:
+    description: Indicates the CS0 sensor is connected to ground.
+    type: boolean
+
+  semtech,combined-sensors:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: |
+      List of which sensors are combined and represented by CS3.
+      Possible values are -
+      3        - CS3 (internal)
+      0 1      - CS0 + CS1
+      1 2      - CS1 + CS2 (default)
+      0 1 2 3  - CS0 + CS1 + CS2 + CS3
+    items:
+      enum: [ 0, 1, 2, 3 ]
+    minItems: 1
+    maxItems: 4
+
+  semtech,resolution:
+    description:
+      Capacitance measure resolution. Refer to datasheet for more details.
+    enum:
+      - coarsest
+      - very-coarse
+      - coarse
+      - medium-coarse
+      - medium
+      - fine
+      - very-fine
+      - finest
+
+  semtech,startup-sensor:
+    $ref: /schemas/types.yaml#definitions/uint32
+    enum: [0, 1, 2, 3]
+    default: 0
+    description:
+      Sensor used for start-up proximity detection. The combined
+      sensor is represented by the value 3. This is used for initial
+      compensation.
+
+  semtech,proxraw-strength:
+    $ref: /schemas/types.yaml#definitions/uint32
+    enum: [0, 2, 4, 8]
+    default: 2
+    description:
+      PROXRAW filter strength. A value of 0 represents off, and other values
+      represent 1-1/N.
+
+  semtech,avg-pos-strength:
+    $ref: /schemas/types.yaml#definitions/uint32
+    enum: [0, 16, 64, 128, 256, 512, 1024, 4294967295]
+    default: 16
+    description:
+      Average positive filter strength. A value of 0 represents off and
+      UINT_MAX (4294967295) represents infinite. Other values
+      represent 1-1/N.
+
 required:
   - compatible
   - reg
@@ -61,5 +118,11 @@ examples:
         vdd-supply = <&pp3300_a>;
         svdd-supply = <&pp1800_prox>;
         #io-channel-cells = <1>;
+        semtech,cs0-ground;
+        semtech,combined-sensors = <1 2 3>;
+        semtech,resolution = "fine";
+        semtech,startup-sensor = <1>;
+        semtech,proxraw-strength = <2>;
+        semtech,avg-pos-strength = <64>;
       };
     };
-- 
2.29.2


