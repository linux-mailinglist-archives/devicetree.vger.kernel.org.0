Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC9B92A4B1
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2019 15:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726884AbfEYNmC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 May 2019 09:42:02 -0400
Received: from relay9-d.mail.gandi.net ([217.70.183.199]:43917 "EHLO
        relay9-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726864AbfEYNmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 May 2019 09:42:02 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 911D2FF803;
        Sat, 25 May 2019 13:41:59 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 3/5] dt-bindings: vendor: Add a bunch of vendors
Date:   Sat, 25 May 2019 15:41:38 +0200
Message-Id: <20190525134140.6220-3-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add all the missing vendors used in Allwinner DTS.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../devicetree/bindings/vendor-prefixes.yaml  | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 3e8806b8e385..d628a6189fbe 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -175,6 +175,8 @@ patternProperties:
     description: Common Hardware Reference Platform
   "^chunghwa,.*":
     description: Chunghwa Picture Tubes Ltd.
+  "^chuwi,.*":
+    description: Chuwi Innovation Ltd.
   "^ciaa,.*":
     description: Computadora Industrial Abierta Argentina
   "^cirrus,.*":
@@ -185,8 +187,12 @@ patternProperties:
     description: Chips&Media, Inc.
   "^cnxt,.*":
     description: Conexant Systems, Inc.
+  "^colorfly,.*":
+    description: Colorful GRP, Shenzhen Xueyushi Technology Ltd.
   "^compulab,.*":
     description: CompuLab Ltd.
+  "^corpro,.*":
+    description: Chengdu Corpro Technology Co., Ltd.
   "^cortina,.*":
     description: Cortina Systems, Inc.
   "^cosmic,.*":
@@ -199,6 +205,8 @@ patternProperties:
     description: Crystalfontz America, Inc.
   "^csky,.*":
     description: Hangzhou C-SKY Microsystems Co., Ltd
+  "^csq,.*":
+    description: Shenzen Chuangsiqi Technology Co.,Ltd.
   "^cubietech,.*":
     description: Cubietech, Ltd.
   "^cypress,.*":
@@ -219,6 +227,8 @@ patternProperties:
     description: Devantech, Ltd.
   "^dh,.*":
     description: DH electronics GmbH
+  "^difrnce,.*":
+    description: Shenzhen Yagu Electronic Technology Co., Ltd.
   "^digi,.*":
     description: Digi International Inc.
   "^digilent,.*":
@@ -241,6 +251,8 @@ patternProperties:
     description: DPTechnics
   "^dragino,.*":
     description: Dragino Technology Co., Limited
+  "^dserve,.*":
+    description: dServe Technology B.V.
   "^ea,.*":
     description: Embedded Artists AB
   "^ebs-systart,.*":
@@ -263,6 +275,8 @@ patternProperties:
     description: Emlid, Ltd.
   "^emmicro,.*":
     description: EM Microelectronic
+  "^empire-electronix,.*":
+    description: Empire Electronix
   "^emtrion,.*":
     description: emtrion GmbH
   "^endless,.*":
@@ -331,6 +345,8 @@ patternProperties:
     description: GE Fanuc Intelligent Platforms Embedded Systems, Inc.
   "^GEFanuc,.*":
     description: GE Fanuc Intelligent Platforms Embedded Systems, Inc.
+  "^gemei,.*":
+    description: Gemei Digital Technology Co., Ltd.
   "^geniatech,.*":
     description: Geniatech, Inc.
   "^giantec,.*":
@@ -379,10 +395,14 @@ patternProperties:
     description: Jiangsu HopeRun Software Co., Ltd.
   "^hp,.*":
     description: Hewlett Packard
+  "^hsg,.*":
+    description: HannStar Display Co.
   "^holtek,.*":
     description: Holtek Semiconductor, Inc.
   "^hwacom,.*":
     description: HwaCom Systems Inc.
+  "^hyundai,.*":
+    description: Hyundai Technology
   "^i2se,.*":
     description: I2SE GmbH
   "^ibm,.*":
@@ -397,6 +417,10 @@ patternProperties:
     description: ILI Technology Corporation (ILITEK)
   "^img,.*":
     description: Imagination Technologies Ltd.
+  "^incircuit,.*":
+    description: In-Circuit GmbH
+  "^inet-tek,.*":
+    description: Shenzhen iNet Mobile Internet Technology Co., Ltd
   "^infineon,.*":
     description: Infineon Technologies
   "^inforce,.*":
@@ -431,6 +455,8 @@ patternProperties:
     description: Japan Display Inc.
   "^jedec,.*":
     description: JEDEC Solid State Technology Association
+  "^jesurun,.*":
+    description: Shenzhen Jesurun Electronics Business Dept.
   "^jianda,.*":
     description: Jiandangjing Technology Co., Ltd.
   "^karo,.*":
@@ -463,6 +489,8 @@ patternProperties:
     description: LaCie
   "^laird,.*":
     description: Laird PLC
+  "^lamobo,.*":
+    description: Ketai Huajie Technology Co., Ltd.
   "^lantiq,.*":
     description: Lantiq Semiconductor
   "^lattice,.*":
@@ -481,6 +509,8 @@ patternProperties:
     description: Lichee Pi
   "^linaro,.*":
     description: Linaro Limited
+  "^linksprite,.*":
+    description: LinkSprite Technologies, Inc.
   "^linksys,.*":
     description: Belkin International, Inc. (Linksys)
   "^linux,.*":
@@ -497,6 +527,8 @@ patternProperties:
     description: Liebherr-Werk Nenzing GmbH
   "^macnica,.*":
     description: Macnica Americas
+  "^mapleboard,.*":
+    description: Mapleboard.org
   "^marvell,.*":
     description: Marvell Technology Group Ltd.
   "^maxbotix,.*":
@@ -537,6 +569,8 @@ patternProperties:
     description: Micron Technology Inc.
   "^mikroe,.*":
     description: MikroElektronika d.o.o.
+  "^miniand,.*":
+    description: Miniand Tech
   "^minix,.*":
     description: MINIX Technology Ltd.
   "^miramems,.*":
@@ -667,6 +701,8 @@ patternProperties:
     description: Picochip Ltd
   "^pine64,.*":
     description: Pine64
+  "^pineriver,.*":
+    description: Shenzhen PineRiver Designs Co., Ltd.
   "^pixcir,.*":
     description: PIXCIR MICROELECTRONICS Co., Ltd
   "^plantower,.*":
@@ -679,12 +715,18 @@ patternProperties:
     description: Broadcom Corporation (formerly PLX Technology)
   "^pni,.*":
     description: PNI Sensor Corporation
+  "^polaroid,.*":
+    description: Polaroid Corporation
   "^portwell,.*":
     description: Portwell Inc.
   "^poslab,.*":
     description: Poslab Technology Co., Ltd.
+  "^pov,.*":
+    description: Point of View International B.V.
   "^powervr,.*":
     description: PowerVR (deprecated, use img)
+  "^primux,.*":
+    description: Primux Trading, S.L.
   "^probox2,.*":
     description: PROBOX2 (by W2COMP Co., Ltd.)
   "^pulsedlight,.*":
@@ -697,6 +739,8 @@ patternProperties:
     description: QEMU, a generic and open source machine emulator and virtualizer
   "^qi,.*":
     description: Qi Hardware
+  "^qihua,.*":
+    description: Chengdu Kaixuan Information Technology Co., Ltd.
   "^qiaodian,.*":
     description: QiaoDian XianShi Corporation
   "^qnap,.*":
@@ -719,6 +763,8 @@ patternProperties:
     description: Realtek Semiconductor Corp.
   "^renesas,.*":
     description: Renesas Electronics Corporation
+  "^rervision,.*":
+    description: Shenzhen Rervision Technology Co., Ltd.
   "^richtek,.*":
     description: Richtek Technology Corporation
   "^ricoh,.*":
@@ -789,6 +835,10 @@ patternProperties:
     description: Silicon Mitus, Inc.
   "^simtek,.*":
     description: Cypress Semiconductor Corporation (Simtek Corporation)
+  "^sinlinx,.*":
+    description: Sinlinx Electronics Technology Co., LTD
+  "^sinovoip,.*":
+    description: SinoVoip Co., Ltd
   "^sirf,.*":
     description: SiRF Technology, Inc.
   "^sis,.*":
@@ -909,6 +959,8 @@ patternProperties:
     description: United Radiant Technology Corporation
   "^usi,.*":
     description: Universal Scientific Industrial Co., Ltd.
+  "^utoo,.*":
+    description: Aigo Digital Technology Co., Ltd.
   "^v3,.*":
     description: V3 Semiconductor
   "^vamrs,.*":
@@ -947,10 +999,14 @@ patternProperties:
     description: Winbond Electronics corp.
   "^winstar,.*":
     description: Winstar Display Corp.
+  "^wits,.*":
+    description: Shenzhen Merrii Technology Co., Ltd. (WITS)
   "^wlf,.*":
     description: Wolfson Microelectronics
   "^wm,.*":
     description: Wondermedia Technologies, Inc.
+  "^wobo,.*":
+    description: Wobo
   "^x-powers,.*":
     description: X-Powers
   "^xes,.*":
@@ -961,6 +1017,8 @@ patternProperties:
     description: Xilinx
   "^xunlong,.*":
     description: Shenzhen Xunlong Software CO.,Limited
+  "^yones-toptech,.*":
+    description: Yones Toptech Co., Ltd.
   "^ysoft,.*":
     description: Y Soft Corporation a.s.
   "^zarlink,.*":
-- 
2.21.0

