Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAD1D55983D
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 12:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230181AbiFXKyQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 06:54:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230264AbiFXKyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 06:54:16 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 28A026F787
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 03:54:15 -0700 (PDT)
Received: from hq-00021.holoplot.net (unknown [176.126.217.202])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 79992284B6F;
        Fri, 24 Jun 2022 10:47:22 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     broonie@kernel.org, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH 1/8] ASoC: dt-bindings: max98396: add voltage supplies
Date:   Fri, 24 Jun 2022 12:47:05 +0200
Message-Id: <20220624104712.1934484-2-daniel@zonque.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220624104712.1934484-1-daniel@zonque.org>
References: <20220624104712.1934484-1-daniel@zonque.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The device is supplied with 3 core voltages (DVVDIO, DVDD, AVDD), and
PVDD and/or VBAT.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
 .../bindings/sound/adi,max98396.yaml          | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/adi,max98396.yaml b/Documentation/devicetree/bindings/sound/adi,max98396.yaml
index ec4c10c2598a..a23ac8036e1c 100644
--- a/Documentation/devicetree/bindings/sound/adi,max98396.yaml
+++ b/Documentation/devicetree/bindings/sound/adi,max98396.yaml
@@ -24,6 +24,21 @@ properties:
     maxItems: 1
     description: I2C address of the device.
 
+  avdd-supply:
+    description: A 1.8V supply that powers up the AVDD pin.
+
+  dvdd-supply:
+    description: A 1.2V supply that powers up the DVDD pin.
+
+  dvddio-supply:
+    description: A 1.2V or 1.8V supply that powers up the VDDIO pin.
+
+  pvdd-supply:
+    description: A 3.0V to 20V supply that powers up the PVDD pin.
+
+  vbat-supply:
+    description: A 3.3V to 5.5V supply that powers up the VBAT pin.
+
   adi,vmon-slot-no:
     description: slot number of the voltage sense monitor
     $ref: "/schemas/types.yaml#/definitions/uint32"
@@ -72,6 +87,10 @@ examples:
         max98396: amplifier@39 {
             compatible = "adi,max98396";
             reg = <0x39>;
+            dvdd-supply = <&regulator_1v2>;
+            dvddio-supply = <&regulator_1v8>;
+            avdd-supply = <&regulator_1v8>;
+            pvdd-supply = <&regulator_pvdd>;
             adi,vmon-slot-no = <0>;
             adi,imon-slot-no = <1>;
             reset-gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
-- 
2.36.1

