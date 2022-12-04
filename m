Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AF83641C21
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 10:44:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230017AbiLDJoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 04:44:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230001AbiLDJoX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 04:44:23 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73FF5BCBB
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 01:44:22 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id q7so10273130ljp.9
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 01:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wtJKcyxwDvq9qgEjmDbPlDRvijSJxXZOGygNNguodnA=;
        b=VXY0Nlh7/hmKXvXJZD5XeoOyzFGJWJQLK9ucwJfCzorxcG4oqKcyMYGhovziRLKAu6
         ZEZk4Wh2VnA2NYezQjbAHMZ0QNTNC20tbSBx21D6ImRp5kF0wCHe7IlCEIqZKe/IPUIZ
         Sleu/4so1sNse8P7Eg/HZFbEZvsfwoev3al9dQGosf7xipVw6cpUCfcJCEvsIaNbpzQ9
         S2JDNB+0A0B65zDGwlWeIY8iXjfKxcskie6GsvvG+jrVsGpWlsMaig5JaH65jtbP/LRN
         LrE+WMCkB7kro5bbxIsNYdZDKW3m8/xhhx99MSL8BFutqpFBCs+gTRf7H8xgOEt+3W+Q
         kNYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wtJKcyxwDvq9qgEjmDbPlDRvijSJxXZOGygNNguodnA=;
        b=IqGUNV09VA8ujZv7x3lnMjoutjTDTUwRxW/qoGlMlgIGXXanUYhE7jeVaNNW76U67G
         91hK21YtMtXokw+esLxrumjlLL5tIjgx2VRgjEcUeqyHcq77DNDtKj+E1q5ZVRf4KfBL
         QjO+twpyH627ieDpSS+KAYLq0X8S5w92oaMXyDd438Op4A9UxvXsL0hk0XrHw+W8UJqI
         7eJT6xLsStRq1Vkgtw22XWINwV1w7XouwHwoNYUpaJjUpMQgShHBteQu9h2XQy8ngOzu
         UfDuGIjCCQ99L1NEuRyDJnw2nSBEOP9rdwwFxu9H78Li3QaYUxj4rnZo2GmBBH0A9gtM
         vNjw==
X-Gm-Message-State: ANoB5pmIPInkTqwK1NeXGapZct9phK9lwR65IochwzNRwnEuszEKP9bO
        ccgSMklnyDre36RCQSHKL/Y/7mmZzBwkgvNQy44=
X-Google-Smtp-Source: AA0mqf77TkHL8dDO5U0wkIZcE6eOL3a0Z26EM9z2cngeOHG9ZPN4yXmiXCUTlhwx0z8Ti/bglTyBfw==
X-Received: by 2002:a2e:bd07:0:b0:277:31b0:8ba3 with SMTP id n7-20020a2ebd07000000b0027731b08ba3mr26550590ljq.290.1670147060826;
        Sun, 04 Dec 2022 01:44:20 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m2-20020a056512358200b004aac3944314sm1724833lfr.249.2022.12.04.01.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Dec 2022 01:44:20 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: imx8mq-thor96: fix no-mmc property for SDHCI
Date:   Sun,  4 Dec 2022 10:44:17 +0100
Message-Id: <20221204094417.73171-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no "no-emmc" property, so intention for SD/SDIO only nodes was
to use "no-mmc".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mq-thor96.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
index 5d5aa6537225..6e6182709d22 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
@@ -339,7 +339,7 @@ &usdhc1 {
 	bus-width = <4>;
 	non-removable;
 	no-sd;
-	no-emmc;
+	no-mmc;
 	status = "okay";
 
 	brcmf: wifi@1 {
@@ -359,7 +359,7 @@ &usdhc2 {
 	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
 	bus-width = <4>;
 	no-sdio;
-	no-emmc;
+	no-mmc;
 	disable-wp;
 	status = "okay";
 };
-- 
2.34.1

