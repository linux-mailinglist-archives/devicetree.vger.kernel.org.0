Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBF23274953
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 21:41:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726615AbgIVTlC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 15:41:02 -0400
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89]:20260 "EHLO
        vsmx011.vodafonemail.xion.oxcs.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726550AbgIVTlC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 22 Sep 2020 15:41:02 -0400
X-Greylist: delayed 416 seconds by postgrey-1.27 at vger.kernel.org; Tue, 22 Sep 2020 15:41:01 EDT
Received: from vsmx003.vodafonemail.xion.oxcs.net (unknown [192.168.75.197])
        by mta-5-out.mta.xion.oxcs.net (Postfix) with ESMTP id 20CC459D486;
        Tue, 22 Sep 2020 19:34:05 +0000 (UTC)
Received: from app-43.app.xion.oxcs.net (app-43.app.xion.oxcs.net [10.10.1.43])
        by mta-7-out.mta.xion.oxcs.net (Postfix) with ESMTPA id AB9895399F0;
        Tue, 22 Sep 2020 19:33:54 +0000 (UTC)
Date:   Tue, 22 Sep 2020 21:33:54 +0200 (CEST)
From:   Markus Moll <moll.markus@arcor.de>
To:     Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org
Message-ID: <1570334746.101942.1600803234657@mail.vodafone.de>
Subject: [PATCH v1 2/2] dt: bindings: pca9532: add description of pwm and
 psc settings
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev73
X-Originating-Client: open-xchange-appsuite
X-VADE-STATUS: LEGIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These properties allow users to configure the PCA9532 blink rates.

Signed-off-by: Markus Moll <mmoll@de.pepperl-fuchs.com>
---
 .../devicetree/bindings/leds/leds-pca9532.txt          | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/leds-pca9532.txt b/Documentation/devicetree/bindings/leds/leds-pca9532.txt
index f769c52e364..3aa05eca9df 100644
--- a/Documentation/devicetree/bindings/leds/leds-pca9532.txt
+++ b/Documentation/devicetree/bindings/leds/leds-pca9532.txt
@@ -11,6 +11,14 @@ Required properties:
 		"nxp,pca9533"
 	- reg -  I2C slave address
 
+Optional properties:
+	- nxp,pwm: array of two 8-bit values specifying the blink duty cycle
+	  fractions of each pwm (default <0 0>)
+	  The duty cycle is pwm/256.
+	- nxp,psc: array of two 8-bit values specifying the blink period of
+	  each pwm (default <0 0>)
+	  The period is (psc+1)/152 seconds.
+
 Each led is represented as a sub-node of the nxp,pca9530.
 
 Optional sub-node properties:
@@ -26,6 +34,8 @@ Example:
   leds: pca9530@60 {
     compatible = "nxp,pca9530";
     reg = <0x60>;
+    nxp,pwm = /bits/ 8 <128 128>; // 50% duty cycle
+    nxp,psc = /bits/ 8 <151 37>; // 1Hz and 4Hz, respectively
 
     red-power {
       label = "pca:red:power";
-- 
2.25.1
