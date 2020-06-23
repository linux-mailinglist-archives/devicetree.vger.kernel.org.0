Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E679205ACE
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2020 20:32:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387648AbgFWSbt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jun 2020 14:31:49 -0400
Received: from lists.gateworks.com ([108.161.130.12]:57964 "EHLO
        lists.gateworks.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387444AbgFWSbs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jun 2020 14:31:48 -0400
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
        by lists.gateworks.com with esmtp (Exim 4.82)
        (envelope-from <tharvey@gateworks.com>)
        id 1jnnl4-0001E9-Kt; Tue, 23 Jun 2020 18:34:58 +0000
From:   Tim Harvey <tharvey@gateworks.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Tim Harvey <tharvey@gateworks.com>
Subject: [RESEND PATCH v2] ARM: dts: imx6qdl-gw551x: fix audio SSI
Date:   Tue, 23 Jun 2020 11:31:27 -0700
Message-Id: <1592937087-8885-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The audio codec on the GW551x routes to ssi1

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
v2: fix typo in commit short desc
---
 arch/arm/boot/dts/imx6qdl-gw551x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
index c38e86e..8c33510 100644
--- a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
@@ -110,7 +110,7 @@
 		simple-audio-card,frame-master = <&sound_codec>;
 
 		sound_cpu: simple-audio-card,cpu {
-			sound-dai = <&ssi2>;
+			sound-dai = <&ssi1>;
 		};
 
 		sound_codec: simple-audio-card,codec {
-- 
2.7.4

