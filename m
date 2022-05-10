Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EB5E520ADE
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 03:53:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234386AbiEJB5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 21:57:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234369AbiEJB5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 21:57:09 -0400
Received: from mo-csw.securemx.jp (mo-csw1116.securemx.jp [210.130.202.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E17F2140429
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 18:53:13 -0700 (PDT)
Received: by mo-csw.securemx.jp (mx-mo-csw1116) id 24A1qjg0028588; Tue, 10 May 2022 10:52:45 +0900
X-Iguazu-Qid: 2wGrARG6y18UU1rl0U
X-Iguazu-QSIG: v=2; s=0; t=1652147565; q=2wGrARG6y18UU1rl0U; m=thu007a9e57J8qiCUHfkQi+xp7PHiJoJ3lDwowbCWK0=
Received: from imx12-a.toshiba.co.jp (imx12-a.toshiba.co.jp [61.202.160.135])
        by relay.securemx.jp (mx-mr1111) id 24A1qiSe022817
        (version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
        Tue, 10 May 2022 10:52:44 +0900
From:   Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, yuji2.ishikawa@toshiba.co.jp,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Subject: [PATCH 2/9] arm64: dts: visconti: Update the clock providers for I2C
Date:   Tue, 10 May 2022 10:52:22 +0900
X-TSB-HOP2: ON
Message-Id: <20220510015229.139818-3-nobuhiro1.iwamatsu@toshiba.co.jp>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
References: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace I2C clock with common clock framework.

Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
---
 arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi | 1 -
 arch/arm64/boot/dts/toshiba/tmpv7708.dtsi             | 9 +++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi
index f0a93db6dde6..03827ce06ee3 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708-visrobo-vrc.dtsi
@@ -40,5 +40,4 @@ mmc-slot@0 {
 
 &i2c0 {
 	status = "okay";
-	clocks = <&clk150mhz>;
 };
diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
index 3b51e875630c..048b5dc7ae18 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
@@ -284,6 +284,7 @@ i2c0: i2c@28030000 {
 			clock-frequency = <400000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PII2C0>;
 			status = "disabled";
 		};
 
@@ -296,6 +297,7 @@ i2c1: i2c@28031000 {
 			clock-frequency = <400000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PII2C1>;
 			status = "disabled";
 		};
 
@@ -308,6 +310,7 @@ i2c2: i2c@28032000 {
 			clock-frequency = <400000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PII2C2>;
 			status = "disabled";
 		};
 
@@ -320,6 +323,7 @@ i2c3: i2c@28033000 {
 			clock-frequency = <400000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PII2C3>;
 			status = "disabled";
 		};
 
@@ -332,6 +336,7 @@ i2c4: i2c@28034000 {
 			clock-frequency = <400000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PII2C4>;
 			status = "disabled";
 		};
 
@@ -344,6 +349,7 @@ i2c5: i2c@28035000 {
 			clock-frequency = <400000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PII2C5>;
 			status = "disabled";
 		};
 
@@ -356,6 +362,7 @@ i2c6: i2c@28036000 {
 			clock-frequency = <400000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PII2C6>;
 			status = "disabled";
 		};
 
@@ -368,6 +375,7 @@ i2c7: i2c@28037000 {
 			clock-frequency = <400000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PII2C7>;
 			status = "disabled";
 		};
 
@@ -380,6 +388,7 @@ i2c8: i2c@28038000 {
 			clock-frequency = <400000>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			clocks = <&pismu TMPV770X_CLK_PII2C8>;
 			status = "disabled";
 		};
 
-- 
2.36.0


