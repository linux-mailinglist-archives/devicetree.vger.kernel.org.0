Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 904BE487BD8
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 19:10:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240691AbiAGSKZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 13:10:25 -0500
Received: from mout.perfora.net ([74.208.4.196]:38845 "EHLO mout.perfora.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S240523AbiAGSKZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 7 Jan 2022 13:10:25 -0500
Received: from localhost.localdomain ([194.191.235.54]) by mrelay.perfora.net
 (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id 1MofY5-1mZ60n17uL-00p0bS;
 Fri, 07 Jan 2022 19:04:24 +0100
From:   Marcel Ziswiler <marcel@ziswiler.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marek.vasut@gmail.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Li Yang <leoyang.li@nxp.com>, Lucas Stach <dev@lynxeye.de>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 13/14] dt-bindings: arm: fsl: add toradex,verdin-imx8mm et al.
Date:   Fri,  7 Jan 2022 19:03:13 +0100
Message-Id: <20220107180314.1816515-14-marcel@ziswiler.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220107180314.1816515-1-marcel@ziswiler.com>
References: <20220107180314.1816515-1-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:ZKZwjWFlgsp7DNNGN8MO5NSM/LD76WhbxctU0bRAEmeUrOjtr1d
 o6H5ytZtz3lxJQ6BzQfFbEqectq87wkfZoGWBK5RGjgoEeDMkXcHJ3QpLdEk3GfcaOQx301
 EISYB3UO/tBdQiULajoKA6Y9vAbrH6T7787uLndjtTonBV8vBrLTJ5xaNYU6pHayUZ+7I0o
 XEWngGY1HqycDbGBQITzA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:64V0mlIW7EE=:KSbBubYmPhD7SZlbxQtHA2
 FegeSpdUsHAKyyBeK40ox+jXCMRGfgfB9VqumoIhKaWwdGLJdEbbnVD0oijp0fA7Vn5WP/H4E
 yaZ01rUPgMCOdv4VHwdnjuvfRpTJDPcTwDaVofOIQFQj7pelx+G7Qdf07JI0oRzpN/KZlK3Gl
 zaHj8yfD65FciwaQnstUa6NG6KUHvYI+BLn5YHthEsi+0ZVizz1NHgV17EduVYtF8bVTq83dQ
 0PggXCNz27z6R2HyOVtvMbw9HpYoRoc0x/a/rTWNCwai/0D3WzyDxWms3HlOhke2tNOJse5uZ
 xpM3UciLTGOMilYI+MDdHEQPiDILuAVga98f6YUuY104bnIEjbtlJGWlMhxTs2TysU1dQenZ9
 010QFQwJzMKzCDRByBdm8QfCgj6JwXGNNb8vEjPPPfVa61TaZ9UsYrh6RRJI2+TDAdXbH5q1p
 vzlbq1jWkqj2iy9PqrR/5k82nYHdevXTQu0Wks5HXNaFg2vUXPaeSEp/vTvXj7HpEdsxdys+q
 6SOb1BrEE+hgHG1aV/z15IgpyawikKmMeRLQj4TbM1khsF9289nJ7rmkLf6bf45rOM5vT+nns
 llq3LdGDNt6xzJzqvTdDnoTzSheY6pkNbuHitABb1gNsBI37y7e6nl+UhTV0h6WAQHdvEDrIW
 IFZsLfdpYEa4mEcznaIRDiXpS5OFgIt/SCi41tCD4VZu3SowKm9NQRcW6vTlU6OYFZj7/DVVj
 DmYGvMAulK8cpjU3
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Add toradex,verdin-imx8mm for our new Verdin iMX8M Mini modules, its
nonwifi and wifi variants and the carrier boards (both Dahlia and the
Verdin Development Board) they may be mated in.

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
---

 .../devicetree/bindings/arm/fsl.yaml          | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 97f6eebad76a..9ed61591c6aa 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -770,6 +770,9 @@ properties:
               - gw,imx8mm-gw7901          # i.MX8MM Gateworks Board
               - gw,imx8mm-gw7902          # i.MX8MM Gateworks Board
               - kontron,imx8mm-n801x-som  # i.MX8MM Kontron SL (N801X) SOM
+              - toradex,verdin-imx8mm     # Colibri iMX8M Mini Modules
+              - toradex,verdin-imx8mm-nonwifi  # Colibri iMX8M Mini Modules without Wi-Fi / BT
+              - toradex,verdin-imx8mm-wifi  # Colibri iMX8M Mini Wi-Fi / BT Modules
               - variscite,var-som-mx8mm   # i.MX8MM Variscite VAR-SOM-MX8MM module
           - const: fsl,imx8mm
 
@@ -787,6 +790,24 @@ properties:
           - const: kontron,imx8mm-n801x-som
           - const: fsl,imx8mm
 
+      - description: Toradex Boards with Verdin iMX8M Mini Modules
+        items:
+          - enum:
+              - toradex,verdin-imx8mm-nonwifi-dahlia # Verdin iMX8M Mini Module on Dahlia
+              - toradex,verdin-imx8mm-nonwifi-dev    # Verdin iMX8M Mini Module on Verdin Development Board
+          - const: toradex,verdin-imx8mm-nonwifi     # Colibri iMX8M Mini Module without Wi-Fi / BT
+          - const: toradex,verdin-imx8mm             # Colibri iMX8M Mini Module
+          - const: fsl,imx8mm
+
+      - description: Toradex Boards with Verdin iMX8M Mini Wi-Fi / BT Modules
+        items:
+          - enum:
+              - toradex,verdin-imx8mm-wifi-dahlia # Verdin iMX8M Mini Wi-Fi / BT Module on Dahlia
+              - toradex,verdin-imx8mm-wifi-dev    # Verdin iMX8M Mini Wi-Fi / BT M. on Verdin Development B.
+          - const: toradex,verdin-imx8mm-wifi     # Colibri iMX8M Mini Wi-Fi / BT Module
+          - const: toradex,verdin-imx8mm          # Colibri iMX8M Mini Module
+          - const: fsl,imx8mm
+
       - description: Variscite VAR-SOM-MX8MM based boards
         items:
           - const: variscite,var-som-mx8mm-symphony
-- 
2.33.1

