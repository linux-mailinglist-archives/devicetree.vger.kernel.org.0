Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3586B4E7806
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 16:37:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353531AbiCYPgD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 11:36:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377138AbiCYPdM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 11:33:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C5F193E3
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 08:28:37 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9ECD861764
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:28:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 372B7C340F7;
        Fri, 25 Mar 2022 15:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648222116;
        bh=bEutepZeuU8zSrTHXovpwb5cFYFyAntteIETa+FImjg=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=i6DHnklm9eWZzn6YKWWLTteBfuDzFSyIJNPRx0Wh5uL8sVir+MdP0PgsJfOZZ0Va3
         aA0eaVddItXraqOmQr7QuiHXVxy8Js8XRqWeWTgW6ZzRJRicDb+rEVIWZt8jJEsGYl
         pCmpXr7DS6myYS5icsKrqPF8jhqjcy0kMyAWcMKak0mze7Bu5mfC6MyNmE9sVfk9YU
         kKX7HLFW5fMUmz0FqixVhwp3EqDcRa84rORJk4hbduHZmbrhQeGJySXC7Pd/EOxlho
         WkMJHY4RRAHGhyi5DMauSJJzc893PDzW79ApdTd+xHtMbDoYvYeFsfi/RmJAIE3F+n
         cqeyI9xjyMwDQ==
From:   Mark Brown <broonie@kernel.org>
To:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>
Subject: [PATCH v1 1/2] ARM: dts: at91: Map MCLK for wm8731 on at91sam9g20ek
Date:   Fri, 25 Mar 2022 15:27:14 +0000
Message-Id: <20220325152715.1597893-2-broonie@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220325152715.1597893-1-broonie@kernel.org>
References: <20220325152715.1597893-1-broonie@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1112; h=from:subject; bh=bEutepZeuU8zSrTHXovpwb5cFYFyAntteIETa+FImjg=; b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBiPd9RpkIRlY3Q4XC4Vpba4ia2BS35KAxt9J1krmPO AZWIQSuJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCYj3fUQAKCRAk1otyXVSH0H80B/ 9Le4nEre0MF6oEtov8Bjwj5cXkEHEM02JzgoIAiAZGwfYL7dA3Vzq5NH2YRhBfN38rbJoQW2t48cgs zPbObiPvjZR5udy1hFbEuXWRhNwLkTWiUwrKH4kj56C4VBdZ/DamB8p4Y5Bhy1wlXTK+h9RjkIvaCa iuWRvmjqEu0sUXdzcg+VZ0YD507wL5aRqltHcTN0fI+h9wy1ECmq3jXn3EQd7H9KX9EnKxm0nHOaj4 kWNbC8t/YW0Enayx8Eg1Y85EOnZEgyMJSeF+oyFRAgAIQlt/Tc9R2cylYDoZ2+17tXuSFD7e4mfuHr sv+WgDwZuJwYcm2rFwaq1sAWLjsQW+
X-Developer-Key: i=broonie@kernel.org; a=openpgp; fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

