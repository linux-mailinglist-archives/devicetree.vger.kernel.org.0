Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F6727221BD
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 11:10:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229487AbjFEJKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 05:10:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbjFEJKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 05:10:43 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E38DBD
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 02:10:40 -0700 (PDT)
Received: from evilbit.green-communications.fr ([92.154.77.116]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.103]) with ESMTPSA (Nemesis)
 id 1MAfQe-1pv4bI1EOe-00B65e; Mon, 05 Jun 2023 11:05:12 +0200
From:   Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH] arm64: dts: imx8mm-venice: Fix GSC vdd_bat data size.
Date:   Mon,  5 Jun 2023 11:04:42 +0200
Message-Id: <20230605090442.11316-1-nicolas.cavallari@green-communications.fr>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:KxQ4c5GRTGMY1E7emhrgsIDcnRU++HMjtqwbkOrWn9A3AGG76+P
 73eZ3xZ9gJ/kQ7Th0mvUOm8z861kETekCOxnGMb1ZtzTbFvXdZUTFnxbu3wmu0D7ELV9MnS
 /btd4TF1bnsNIyRVDalRN7TXHjFpu0ZayCGksuvyiWjQohsFwqv9iVyHjjeMgsdlXmJUlKD
 bj5dC0PwW41SE4puk79Fw==
UI-OutboundReport: notjunk:1;M01:P0:5wp0MrKID/Y=;aKR76h9JlcilV6QPBLKuJJQsCC5
 k4upnyF4tBMpV4dyqmW2YS42kqiy84YhI7XfXo+2pKvOhW8jMpfOOFBW6gVMR9hES5PbilTdH
 ccuHNPLVW3g9Z4pIJmKOrrIb1pmaoZuCRAD8dILU4UU9JVfjU30eIBwdsEKBX2HmDtBdVHRSO
 4uJBeu6ePaBSj3YNFT7Z85Qr8uXsKaiYpe5veROFOzC34X4MN5TfW9aLzTYBRUDDbTOOKhQy5
 MnRpx0x8TL8+OllO83hWFTAMnzmg2wHGsoRqlw2GDK3n7a1HphzCMocvNp8H5p/2pDFzYBO8F
 FFymCo71mtcb//CyAr7HMgAjHHKxEqaM4s0O5nJyPDtRqpiFIenO2v8pnrLfnCDMXWA9eEuR+
 WAy7CPPX4+VQFZVkB6eZDmonPQGqQodm/CV5MGCipR5NvyuhLrUyn7r91VLQ/tuk4qMO3k1bC
 E2oVBtUWnAuM9TCeNWcai4byvy475w70CQGbPYG33C8cQSX+Gt617xYujq0zHHw7Dqsmjvg+o
 GYR7XcGg4La/IlfUjvr076G4DamSUHJxTjPmrZkFmmnaZTfls2DRD05lB9opER0NQT2dwlGrv
 FewOgEMO1ECi5Ov8azLPnDUgNWiucyVvezbmr5+uCMy7GVF6nCT2ddvWS05y4evNYbNFqv+vP
 6XwWDh4nHg7aVWdTna/kob396xEh1tr0AoAY9EWvFQ==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On these boards, vdd_bat is 16bit, not 24bit.  Reading them as 24bit
values yield garbage values because of the additional byte, which is a
configurable fan trippoint[1].

So set their mode to mode_voltage_16bit = 3 instead of
mode_voltage_24bit = 1.

[1]: http://trac.gateworks.com/wiki/gsc#SystemTemperatureandVoltageMonitor

Only tested on GW7100.

Signed-off-by: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
---
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts  | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts  | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts  | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts  | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts  | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
index 9e7d38872157..c3c9a00f9dfe 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
@@ -149,7 +149,7 @@ channel@6 {
 			};
 
 			channel@8 {
-				gw,mode = <1>;
+				gw,mode = <3>;
 				reg = <0x08>;
 				label = "vdd_bat";
 			};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
index df3b2c93d2d5..0ec2ce3dd721 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
@@ -354,7 +354,7 @@ channel@6 {
 			};
 
 			channel@8 {
-				gw,mode = <1>;
+				gw,mode = <3>;
 				reg = <0x08>;
 				label = "vdd_bat";
 			};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
index c33ec6826d32..03cd29063312 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
@@ -327,7 +327,7 @@ channel@6 {
 			};
 
 			channel@8 {
-				gw,mode = <1>;
+				gw,mode = <3>;
 				reg = <0x08>;
 				label = "vdd_bat";
 			};
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
index 363020a08c9b..6f26914602c8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
@@ -293,7 +293,7 @@ channel@6 {
 			};
 
 			channel@8 {
-				gw,mode = <1>;
+				gw,mode = <3>;
 				reg = <0x08>;
 				label = "vdd_bat";
 			};
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
index 7c12518dbc96..2ddba4213001 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
@@ -325,7 +325,7 @@ channel@6 {
 			};
 
 			channel@8 {
-				gw,mode = <1>;
+				gw,mode = <3>;
 				reg = <0x08>;
 				label = "vdd_bat";
 			};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
index eb51d648359b..92514b71b5f4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
@@ -281,7 +281,7 @@ channel@6 {
 			};
 
 			channel@8 {
-				gw,mode = <1>;
+				gw,mode = <3>;
 				reg = <0x08>;
 				label = "vdd_bat";
 			};
-- 
2.40.1

