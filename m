Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C4AB4F1315
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 12:28:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352249AbiDDKaO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 06:30:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245337AbiDDKaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 06:30:13 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63A093C720
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 03:28:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 0D8BFB8129E
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 10:28:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07122C34110;
        Mon,  4 Apr 2022 10:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649068094;
        bh=h+DwWJtLClkmfOAFPPAN3ooLdQSybRz6QXwCC97YdBA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=uEzrerssohcNnLVQ6asY3hCS35kw3kPlLOEF/K4BxqZGHO3XU600YYEZTHXKQ5kkZ
         Hmqpg9ASQwDvuPjAf88wdaYbBKYFOIGpPEwV+LtV+zKoc151COYgz5mR000Kp6kRYY
         nPFOW2msAxqMFv/irN8O+Tv4EXkqXXgxj67q3Lv5NYsv9hdU1E8HnhR2q4TaFPjIOB
         4tY5IThqLjsppPBMppSw3nMr26N+DCVXMDzDqOgXH7TtcBBiNK0HjbLijJX4PYuobJ
         zZunmXInaY1ojRlCHIp4ZOeEu1+SO6qYRouFE1rDfDYip3yZjo0PsqIGz/x81UTFvh
         sbdBUhWFYUgQA==
From:   Mark Brown <broonie@kernel.org>
To:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 1/2] ARM: dts: at91: Map MCLK for wm8731 on at91sam9g20ek
Date:   Mon,  4 Apr 2022 11:28:05 +0100
Message-Id: <20220404102806.581374-2-broonie@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220404102806.581374-1-broonie@kernel.org>
References: <20220404102806.581374-1-broonie@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1172; h=from:subject; bh=h+DwWJtLClkmfOAFPPAN3ooLdQSybRz6QXwCC97YdBA=; b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBiSsg0VrfYo7Kj6qSQY7uC4/nN0VZdNe7vKHG8SIHB vWTrMX2JATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCYkrINAAKCRAk1otyXVSH0D9lB/ wNEmDHv4uMOUMMpPinNBZC52wKP7h4/kC7kBunRoGMXYoasI65FPrlg2V7S5neBCsBCl5HhkoYbhRN BWaBGk98DSl9Rqw2TbJoArOicE+WPwwpq+oOPej3LI7q1yC4m1B7m/+Qj2Skcpd5n+e2EO5u02qgHX vRBxcCc5WX8AD/HHWjXIg4g2Lf+RJyCJLvsPYMIGS6xhr2NbArU5YhGusMQ5nXNznaQ83JG+4PZwGV Onn+2Z4Fz5QfQhJE54UP+E9PtY/jfz4ne3dhWiF2qomfkBOdW9GMHmotWNK359Q1cPeHgu1uVIuwJO GZuFAsyCN0AAuuv4xnOWtvggA6EvIu
X-Developer-Key: i=broonie@kernel.org; a=openpgp; fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MCLK of the WM8731 on the AT91SAM9G20-EK board is connected to the
PCK0 output of the SoC and is expected to be set to 12MHz. Previously
this was mapped using pre-common clock API calls in the audio machine
driver but the conversion to the common clock framework broke that so
describe things in the DT instead.

Fixes: ff78a189b0ae55f ("ARM: at91: remove old at91-specific clock driver")
Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/boot/dts/at91sam9g20ek_common.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/at91sam9g20ek_common.dtsi b/arch/arm/boot/dts/at91sam9g20ek_common.dtsi
index 87bb39060e8b..ca03685f0f08 100644
--- a/arch/arm/boot/dts/at91sam9g20ek_common.dtsi
+++ b/arch/arm/boot/dts/at91sam9g20ek_common.dtsi
@@ -219,6 +219,12 @@ i2c-gpio-0 {
 		wm8731: wm8731@1b {
 			compatible = "wm8731";
 			reg = <0x1b>;
+
+			/* PCK0 at 12MHz */
+			clocks = <&pmc PMC_TYPE_SYSTEM 8>;
+			clock-names = "mclk";
+			assigned-clocks = <&pmc PMC_TYPE_SYSTEM 8>;
+			assigned-clock-rates = <12000000>;
 		};
 	};
 
-- 
2.30.2

