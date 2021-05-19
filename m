Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80A7438894E
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 10:24:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237155AbhESIZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 04:25:20 -0400
Received: from www.linuxtv.org ([130.149.80.248]:37952 "EHLO www.linuxtv.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233139AbhESIZU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 May 2021 04:25:20 -0400
Received: from mchehab by www.linuxtv.org with local (Exim 4.92)
        (envelope-from <mchehab@linuxtv.org>)
        id 1ljH1q-00AYzK-Kq; Wed, 19 May 2021 07:54:06 +0000
From:   Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date:   Wed, 19 May 2021 07:51:40 +0000
Subject: [git:media_stage/master] media: ARM: dts: sama5d4: enable Hantro G1 VDEC
To:     linuxtv-commits@linuxtv.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Emil Velikov <emil.velikov@collabora.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Mail-followup-to: linux-media@vger.kernel.org
Forward-to: linux-media@vger.kernel.org
Reply-to: linux-media@vger.kernel.org
Message-Id: <E1ljH1q-00AYzK-Kq@www.linuxtv.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is an automatic generated email to let you know that the following patch were queued:

Subject: media: ARM: dts: sama5d4: enable Hantro G1 VDEC
Author:  Emil Velikov <emil.velikov@collabora.com>
Date:    Thu Apr 1 16:43:36 2021 +0200

Add the SAMA5D4 VDEC module which comprises Hantro G1 video decoder
core.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

 arch/arm/boot/dts/sama5d4.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

---

diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
index 05c55875835d..e47e1ca63043 100644
--- a/arch/arm/boot/dts/sama5d4.dtsi
+++ b/arch/arm/boot/dts/sama5d4.dtsi
@@ -101,6 +101,13 @@
 			ranges = <0 0x100000 0x2400>;
 		};
 
+		vdec0: vdec@300000 {
+			compatible = "microchip,sama5d4-vdec";
+			reg = <0x00300000 0x100000>;
+			interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+		};
+
 		usb0: gadget@400000 {
 			compatible = "atmel,sama5d3-udc";
 			reg = <0x00400000 0x100000
