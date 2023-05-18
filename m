Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFFD370770C
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 02:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229483AbjERAmp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 20:42:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbjERAmp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 20:42:45 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28C9C3A9C
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 17:42:44 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 4900382721;
        Thu, 18 May 2023 02:42:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684370562;
        bh=ZVXtsEeNjjupFLQHL2Ucjd9O0erpO4iXq/iryKo+0Jo=;
        h=From:To:Cc:Subject:Date:From;
        b=DiPL5qfTnxl78qV6lGd2sVYvawODn8xS/S005LrFHF56qABkZ6s0F3pandh8ZSqHq
         Sa0mwH055U+sQME+SnCJuMGk5eC9fn1JmPOFbribziAe7ycHlKZAOCfu7/T5JpOFvQ
         F95M//j5LYzKtU0YvN0m0BCKWrsnNtMTPHjt8S1vBT7KT7lXBlrFar2xefKytDS2B9
         Oati3tQ/ijqE5et9DtlY1e3YprxstcxqbFxlVXQja6kp99VWfvtMxhmxMDOyCjDPqd
         EHZ9vFuXpFxr5ANdDFNO8VXszf16+KfoCEpI7x4iE4sDo24Pn3yWHczglmEtgwRXyQ
         r2FNTWGriroIg==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Shorten the AV96 HDMI sound card name
Date:   Thu, 18 May 2023 02:42:32 +0200
Message-Id: <20230518004232.422893-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the following error in kernel log due to too long sound card name:
"
asoc-audio-graph-card sound: ASoC: driver name too long 'STM32MP1-AV96-HDMI' -> 'STM32MP1-AV96-H'
"

Fixes: e027da342772 ("ARM: dts: stm32: Add bindings for audio on AV96")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
index 302efac5d26f0..2b52515457e4b 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
@@ -87,7 +87,7 @@ sd_switch: regulator-sd_switch {
 
 	sound {
 		compatible = "audio-graph-card";
-		label = "STM32MP1-AV96-HDMI";
+		label = "STM32-AV96-HDMI";
 		dais = <&sai2a_port>;
 		status = "okay";
 	};
-- 
2.39.2

