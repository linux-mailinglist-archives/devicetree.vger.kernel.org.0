Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 88ED1BB46A
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2019 14:53:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439638AbfIWMxl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Sep 2019 08:53:41 -0400
Received: from 1.mo6.mail-out.ovh.net ([46.105.56.136]:33278 "EHLO
        1.mo6.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390719AbfIWMxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Sep 2019 08:53:41 -0400
X-Greylist: delayed 12600 seconds by postgrey-1.27 at vger.kernel.org; Mon, 23 Sep 2019 08:53:40 EDT
Received: from player718.ha.ovh.net (unknown [10.109.146.173])
        by mo6.mail-out.ovh.net (Postfix) with ESMTP id 70C8E1E2709
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2019 11:17:02 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr [90.126.248.179])
        (Authenticated sender: sebastien.szymanski@armadeus.com)
        by player718.ha.ovh.net (Postfix) with ESMTPSA id BC385A087C8B;
        Mon, 23 Sep 2019 09:16:50 +0000 (UTC)
From:   =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Julien Boibessot <julien.boibessot@armadeus.com>,
        =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Subject: [PATCH 1/1] ARM: dts: imx28: add poweroff support
Date:   Mon, 23 Sep 2019 11:17:00 +0200
Message-Id: <20190923091700.22517-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 10200090206580266236
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvdekgddugecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This add poweroff support using the generic syscon-poweroff driver.

Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
---
 arch/arm/boot/dts/imx28.dtsi | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx28.dtsi b/arch/arm/boot/dts/imx28.dtsi
index e14d8ef0158b..37fa8131a022 100644
--- a/arch/arm/boot/dts/imx28.dtsi
+++ b/arch/arm/boot/dts/imx28.dtsi
@@ -1114,8 +1114,16 @@
 			};
 
 			power: power@80044000 {
+				compatible = "syscon", "simple-mfd";
 				reg = <0x80044000 0x2000>;
-				status = "disabled";
+
+				mxs_poweroff: mxs-poweroff {
+					compatible = "syscon-poweroff";
+					regmap = <&power>;
+					offset = <0x104>;
+					value = <0x3E770001>;
+					status = "disabled";
+				};
 			};
 
 			saif1: saif@80046000 {
-- 
2.21.0

