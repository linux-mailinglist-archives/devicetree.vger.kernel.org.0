Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F2D3762C88
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 09:05:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjGZHFx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 03:05:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232340AbjGZHFP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 03:05:15 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC68D4239
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:03:30 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4fbf09a9139so10063959e87.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690355009; x=1690959809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x2Us6IanwbA8lyT4wscmTLO3lQgiVOsW82AXUR4/W/0=;
        b=h5a5Ac1hn8yggKYHnK0Ea0eq0sPlb0SCDzSmrBp2f1YkY39I4d5iuPFKYZDggVzmhw
         tRdsB2RybIlv1yX+vFOEp6FMs+Nmac5eSk1vQ4HSmNfi7F4NrCR+Sx7QRDSI3XDFO5Cf
         A2JPP93OYXqCYc0LSPyrk+IQ4NxwkZ5BTRe4sZICG4NxHMpNfeMWxG7d7rT4dynch80N
         6VjoXYkMCvVIzptdNWnEtjhpxPmLw8f4ml026vm+AwclOlibqoIMDR9RaU7nVGYQWZB3
         tUFYdGrSc0WQ61omIutYCvbegm8uOpBU77MzPYGqynZmWa8/TPX/PbnAQ2EqvnAd6xbx
         rrBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690355009; x=1690959809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x2Us6IanwbA8lyT4wscmTLO3lQgiVOsW82AXUR4/W/0=;
        b=JjDmN6jIvuInSdtK3YW8rTa/CACOBy+m6rjOMr0STEQskyWLKYyjEjsSUehoxSVb5+
         BOprvM6zpNaQ+WfFVYTOPbBYUmeF9SsD5KYY4Er+OsoKJqysIibyfBENd1JLaPmyAfUE
         ERv9Ku/CH6tpQEdXds6rF5ZsIsM/e+Vxir8zBzDbw4yVpCjIR7fTNpMRlR1wE36GZk4o
         IHZ4zcjqve2Y/sP7+LwMNOc7j07J3kCdIcoWrK4x24081B3HStuy4MSAVBn2U/vJtAMM
         KvvjDyUwNCES4TUrhUW+fPcbwLegDu79Jn+vanXVfrCLzRoV0Th1OLFqpZst80nUg4uG
         vzRQ==
X-Gm-Message-State: ABy/qLblmXlFgWKsLvdooNtzsv6S6e/kOHiPPNbK+FF9HIATrGa0XUXZ
        3eQsW6F2ym50k2JFjh+EuvHmuWcg8JFpJEwBBd0=
X-Google-Smtp-Source: APBJJlG4uqDx0Nzj3xqvM/cGrQVm3JUntsakohrvMYir78Hup05JTdxpG9dbBpUL8/aRfXCsc4mgvQ==
X-Received: by 2002:a05:6512:4006:b0:4f8:5d94:2e46 with SMTP id br6-20020a056512400600b004f85d942e46mr790257lfb.48.1690355009306;
        Wed, 26 Jul 2023 00:03:29 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id dy16-20020a05640231f000b005224f840130sm1572003edb.60.2023.07.26.00.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 00:03:28 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/8] AMR: dts: imx6ull-colibri: drop incorrect regulator regulator-type
Date:   Wed, 26 Jul 2023 09:03:16 +0200
Message-Id: <20230726070322.103871-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726070322.103871-1-krzysztof.kozlowski@linaro.org>
References: <20230726070322.103871-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

regulator-fixed-clock does not take "regulator-type" property:

  imx6ull-colibri-iris-v2.dtb: regulator-eth-phy: Unevaluated properties are not allowed ('regulator-type' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi
index fde8a19aac0f..ec3c1e7301f4 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi
@@ -102,7 +102,6 @@ reg_eth_phy: regulator-eth-phy {
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-name = "+V3.3_ETH";
-		regulator-type = "voltage";
 		vin-supply = <&reg_module_3v3>;
 		clocks = <&clks IMX6UL_CLK_ENET2_REF_125M>;
 		startup-delay-us = <150000>;
-- 
2.34.1

