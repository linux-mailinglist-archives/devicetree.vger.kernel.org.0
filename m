Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C49CA724ABB
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 20:01:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233844AbjFFSB1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 14:01:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233537AbjFFSB1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 14:01:27 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F8A2D3
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 11:01:26 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 849A085BC7;
        Tue,  6 Jun 2023 20:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1686074484;
        bh=ZkrXtW7QXzDGiDCI1hv3GtHU5o9XqNlgPIISeVGTLJY=;
        h=From:To:Cc:Subject:Date:From;
        b=krHPc8w9DpiMpw6oWX2aYaHd+/GhJyHD2uS06pATYZ08fMyH3HJcVToh+FzoHpiGY
         U2RSdo1l+NUpu4Ay0btWu0G/jp6a9gMhu965H/Y47pQnuNO6KPTyH6n0We3R5vCusU
         xkWTFE2YU8DeCHHb7hdbumOfmQ2NSZRt0VbfBrOBoGGu8A+ItoM/GFKEbROxCe1oBk
         GwvTOAHeZ6LpkMqaOncE4YZ0ROvcHQQ+sEgbbIMotqZHVtg9JjpCjCjFRtDAmM+1nm
         8Cf6XjRGiZ8v6w4WYfvDN3RwXucaSrWjoXb5rUu2Z4a5awFjlZgenkMzxan5iEifpg
         GNYLnLTGJFelQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Fix audio routing on STM32MP15xx DHCOM PDK2
Date:   Tue,  6 Jun 2023 20:01:12 +0200
Message-Id: <20230606180112.215896-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The audio routing flow is not correct, the flow should be from source
(second element in the pair) to sink (first element in the pair). The
flow now is from "HP_OUT" to "Playback", where "Playback" is source
and "HP_OUT" is sink, i.e. the direction is swapped and there is no
direct link between the two either.

Fill in the correct routing, where "HP_OUT" supplies the "Headphone Jack",
"Line In Jack" supplies "LINE_IN" input, "Microphone Jack" supplies "MIC_IN"
input and "Mic Bias" supplies "Microphone Jack".

Fixes: 34e0c7847dcf ("ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1 SoM and PDK2 board")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Mark Brown <broonie@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
index 4709677151aac..46b87a27d8b37 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
@@ -137,10 +137,13 @@ reg_panel_supply: regulator-panel-supply {
 
 	sound {
 		compatible = "audio-graph-card";
-		routing =
-			"MIC_IN", "Capture",
-			"Capture", "Mic Bias",
-			"Playback", "HP_OUT";
+		widgets = "Headphone", "Headphone Jack",
+			  "Line", "Line In Jack",
+			  "Microphone", "Microphone Jack";
+		routing = "Headphone Jack", "HP_OUT",
+			  "LINE_IN", "Line In Jack",
+			  "MIC_IN", "Microphone Jack",
+			  "Microphone Jack", "Mic Bias";
 		dais = <&sai2a_port &sai2b_port>;
 		status = "okay";
 	};
-- 
2.39.2

