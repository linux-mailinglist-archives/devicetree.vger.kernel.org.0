Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 345A172F20
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 14:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726386AbfGXMoG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 08:44:06 -0400
Received: from 3.mo179.mail-out.ovh.net ([178.33.251.175]:48385 "EHLO
        3.mo179.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725776AbfGXMoG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 08:44:06 -0400
Received: from player793.ha.ovh.net (unknown [10.109.146.168])
        by mo179.mail-out.ovh.net (Postfix) with ESMTP id B22BA13C968
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 14:06:53 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr [90.126.248.179])
        (Authenticated sender: sebastien.szymanski@armadeus.com)
        by player793.ha.ovh.net (Postfix) with ESMTPSA id 266D9855C700;
        Wed, 24 Jul 2019 12:06:42 +0000 (UTC)
From:   =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Subject: [PATCH v2 2/2] dt-bindings: arm: Document Armadeus SoM and Dev boards devicetree binding
Date:   Wed, 24 Jul 2019 14:06:23 +0200
Message-Id: <20190724120623.2385-2-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
References: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 5322410338636420227
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrkedtgdeggecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the following Armadeus SoM and Dev boards devicetree binding
already supported:
- armadeus,imx27-apf27 and armadeus,imx27-apf27dev
- armadeus,imx28-apf28 and armadeus,imx28-apf28dev
- armadeus,imx51-apf51 and armadeus,imx51-apf51dev
- armadeus,imx6{q,dl}-apf6 and armadeus,imx{q,dl}-apf6dev
- armadeus,imx6{ul,ull}-opos6ul and armadeus,imx{ul,ull}-opos6uldev

Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
---

Changes for v2:
- new patch

 Documentation/devicetree/bindings/arm/fsl.yaml | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..9ba3a3be82d1 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -38,12 +38,16 @@ properties:
       - description: i.MX27 Product Development Kit
         items:
           - enum:
+              - armadeus,imx27-apf27      # APF27 SoM
+              - armadeus,imx27-apf27dev   # APF27 SoM on APF27Dev board
               - fsl,imx27-pdk
           - const: fsl,imx27
 
       - description: i.MX28 based Boards
         items:
           - enum:
+              - armadeus,imx28-apf28      # APF28 SoM
+              - armadeus,imx28-apf28dev   # APF28 SoM on APF28Dev board
               - fsl,imx28-evk
               - i2se,duckbill
               - i2se,duckbill-2
@@ -87,7 +91,8 @@ properties:
       - description: i.MX51 Babbage Board
         items:
           - enum:
-              - armadeus,imx51-apf51
+              - armadeus,imx51-apf51    # APF51 SoM
+              - armadeus,imx51-apf51dev # APF51 SoM on APF51Dev board
               - fsl,imx51-babbage
               - technologic,imx51-ts4800
           - const: fsl,imx51
@@ -106,6 +111,8 @@ properties:
       - description: i.MX6Q based Boards
         items:
           - enum:
+              - armadeus,imx6q-apf6       # APF6 (Quad/Dual) SoM
+              - armadeus,imx6q-apf6dev    # APF6 (Quad/Dual) SoM on APF6Dev board
               - emtrion,emcon-mx6         # emCON-MX6D or emCON-MX6Q SoM
               - emtrion,emcon-mx6-avari   # emCON-MX6D or emCON-MX6Q SoM on Avari Base
               - fsl,imx6q-arm2
@@ -126,6 +133,8 @@ properties:
       - description: i.MX6DL based Boards
         items:
           - enum:
+              - armadeus,imx6dl-apf6      # APF6 (Solo) SoM
+              - armadeus,imx6dl-apf6dldev # APF6 (Solo) SoM on APF6Dev board
               - eckelmann,imx6dl-ci4x10
               - emtrion,emcon-mx6         # emCON-MX6S or emCON-MX6DL SoM
               - emtrion,emcon-mx6-avari   # emCON-MX6S or emCON-MX6DL SoM on Avari Base
@@ -160,12 +169,16 @@ properties:
       - description: i.MX6UL based Boards
         items:
           - enum:
+              - armadeus,imx6ul-opos6ul    # OPOS6UL (i.MX6UL) SoM
+              - armadeus,imx6ul-opos6uldev # OPOS6UL (i.MX6UL) SoM on OPOS6ULDev board
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
           - const: fsl,imx6ul
 
       - description: i.MX6ULL based Boards
         items:
           - enum:
+              - armadeus,imx6ull-opos6ul    # OPOS6UL (i.MX6ULL) SoM
+              - armadeus,imx6ull-opos6uldev # OPOS6UL (i.MX6ULL) SoM on OPOS6ULDev board
               - fsl,imx6ull-14x14-evk     # i.MX6 UltraLiteLite 14x14 EVK Board
           - const: fsl,imx6ull
 
-- 
2.21.0

