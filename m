Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79CF32FF1A9
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 18:20:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733263AbhAURTf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 12:19:35 -0500
Received: from relay.uni-heidelberg.de ([129.206.100.212]:11869 "EHLO
        relay.uni-heidelberg.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388731AbhAURT1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 12:19:27 -0500
X-Greylist: delayed 604 seconds by postgrey-1.27 at vger.kernel.org; Thu, 21 Jan 2021 12:19:25 EST
X-IPAS-Result: =?us-ascii?q?A2BdBgC3tAlg/1BqzoFiHgEBCxIMQIRbbGKEQI89kXeMb?=
 =?us-ascii?q?gEBAQEBAQEBAQksAQIEAQGGQwIlOBMCAwEBAQMCAwEBAQEGAQEBAQEGBIZeh?=
 =?us-ascii?q?h0wJjUCJgIWKDSGLbI1gTKJFYFDgQ4qjWAPgU0/hGiEBYEGgkw0giwEgkWBD?=
 =?us-ascii?q?oEDghuPJwkXpliBWSwHgWiBEoEcC5oyAg0ikw2PYpFWhWCeYYFtgXozGiSDO?=
 =?us-ascii?q?FAZDZxrQzA3AgYKAQEDCVkBAYhygkYBAQ?=
X-IronPort-Anti-Spam-Filtered: true
Received: from lemon.iwr.uni-heidelberg.de ([129.206.106.80])
  by relay.uni-heidelberg.de with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 21 Jan 2021 18:08:37 +0100
Received: from hlauer by lemon.iwr.uni-heidelberg.de with local (Exim 4.92)
        (envelope-from <hlauer@lemon.iwr.uni-heidelberg.de>)
        id 1l2dRk-0001IQ-Db; Thu, 21 Jan 2021 18:08:36 +0100
Date:   Thu, 21 Jan 2021 18:08:36 +0100
From:   Hermann Lauer <Hermann.Lauer@iwr.uni-heidelberg.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     mripard@kernel.org, wens@csie.org, jernej.skrabec@siol.net,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] ARM: dts: sun7i: a20: bananapro: Fix ethernet node
Message-ID: <20210121170836.GA4948@lemon.iwr.uni-heidelberg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

BPi Pro needs TX and RX delay for Gbit to work reliable and avoid high
packet loss rates. The realtek phy driver overrides the settings of the
pull ups for the delays, so fix this for Banana Pro.

Signed-off-by: Hermann Lauer <Hermann.Lauer@uni-heidelberg.de>
---
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun7i-a20-bananapro.dts b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
--- a/arch/arm/boot/dts/sun7i-a20-bananapro.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
@@ -110,7 +110,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
 	phy-handle = <&phy1>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
 };
