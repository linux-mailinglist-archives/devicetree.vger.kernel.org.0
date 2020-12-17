Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F8252DD300
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 15:27:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727415AbgLQO1V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Dec 2020 09:27:21 -0500
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]:47861 "EHLO
        5.mo4.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727632AbgLQO1V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Dec 2020 09:27:21 -0500
X-Greylist: delayed 10804 seconds by postgrey-1.27 at vger.kernel.org; Thu, 17 Dec 2020 09:27:20 EST
Received: from player687.ha.ovh.net (unknown [10.108.1.219])
        by mo4.mail-out.ovh.net (Postfix) with ESMTP id DF7BA25CAF7
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 11:49:21 +0100 (CET)
Received: from armadeus.com (lfbn-str-1-215-46.w86-243.abo.wanadoo.fr [86.243.176.46])
        (Authenticated sender: sebastien.szymanski@armadeus.com)
        by player687.ha.ovh.net (Postfix) with ESMTPSA id 08B0F193B955C;
        Thu, 17 Dec 2020 10:49:11 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-99G0031d6f8708-461d-44dd-8c5d-3d52df7630fe,
                    8EA734AE32B22C363B3F44C891DDD3EC90B46019) smtp.auth=sebastien.szymanski@armadeus.com
X-OVh-ClientIp: 86.243.176.46
From:   =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Subject: [PATCH 1/1] ARM: dts: opos6ul: add ksz8081 phy properties
Date:   Thu, 17 Dec 2020 11:49:05 +0100
Message-Id: <20201217104905.25369-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 4012988745099334725
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudelgedgudekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufffkffogggtgfesthekredtredtjeenucfhrhhomhepuforsggrshhtihgvnhcuufiihihmrghnshhkihcuoehsvggsrghsthhivghnrdhsiiihmhgrnhhskhhisegrrhhmrgguvghushdrtghomheqnecuggftrfgrthhtvghrnhephffggefffeeigefhvdelgfdtieehjedvleevgfevtdegfeffgfejuedtudehtdefnecukfhppedtrddtrddtrddtpdekiedrvdegfedrudejiedrgeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieekjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehsvggsrghsthhivghnrdhsiiihmhgrnhhskhhisegrrhhmrgguvghushdrtghomhdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set clock mode and the LED mode in the device tree instead of relying on
the fixup in mach-imx6ul.

Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
---
 arch/arm/boot/dts/imx6ul-imx6ull-opos6ul.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul-imx6ull-opos6ul.dtsi b/arch/arm/boot/dts/imx6ul-imx6ull-opos6ul.dtsi
index f2386dcb9ff2..dda4fa91b2f2 100644
--- a/arch/arm/boot/dts/imx6ul-imx6ull-opos6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul-imx6ull-opos6ul.dtsi
@@ -40,6 +40,9 @@ ethphy1: ethernet-phy@1 {
 			reg = <1>;
 			interrupt-parent = <&gpio4>;
 			interrupts = <16 IRQ_TYPE_LEVEL_LOW>;
+			micrel,led-mode = <1>;
+			clocks = <&clks IMX6UL_CLK_ENET_REF>;
+			clock-names = "rmii-ref";
 			status = "okay";
 		};
 	};
-- 
2.26.2

