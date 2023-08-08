Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 154D07744F3
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 20:33:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235731AbjHHSdN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 14:33:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235741AbjHHSc5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:32:57 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E40032A8CC
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 10:54:24 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-318015ade49so124407f8f.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 10:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691517263; x=1692122063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SMzXqqe28IQY+hzgVA8sdRyW99nsQbJZiTRlRSVrT6A=;
        b=FpxWBfsppVSO+alPNuWVzm+JyVJF1R6DcmEBrHZGrNRU6i+RBS8PRJRDbHM//PBQJz
         vFZ/ls8C8MOAfEvIldP9pm2OFUBzq4pd9+cMemVv8nqLJq483E24VTvMJA0AVye71Ufr
         40dKVtyGAmNO+reWQhncbbCVnfkwBi7I4pvkS9kqbXZg7eYdM7XeY2ncWFpioLcMaaGp
         cFWQ+7A3MQtysrWLNw1WCLXF2yfDceQdK35GlVAgi8t7ehgdpObqxVWZxEpH5ERuVZ9y
         r/XoL4dyJXp3240FlUP/JBALuRBVGxkdwIb0dV4xRInpIdrOUrkrN2NoSngdlCwSYRsj
         mHRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691517263; x=1692122063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SMzXqqe28IQY+hzgVA8sdRyW99nsQbJZiTRlRSVrT6A=;
        b=VCRnSet0As4UG1gfJsLvI5mydxYgQWH82H5YpGdEO2a9fSBzC9FA9G/W6t5BOMFV//
         3KGepMUp+IqzbDJn37m5BKLMGsjJEJyAa8Fg/b8ndneIiXn6FaHxpaxZnFzkztgxMmyU
         0EQd/FIn4OA8WFJBz3Lcj6OCco9PSzvnn/0db/e0rHd4zir28XiN0lls3nwsJaxyzCjt
         gKXX4QRFq+LgmEfkXGOim4PBy8u7BdIxqMHu/j9HPZRzN/qN4/37ducYrmKFf+6+GLtD
         NcAzvgl/DjtaeByeQhAjb0dqFS4LcdNFrFFgxN2p4RiPamVagZFBOZvxa3FEfn2GWl3G
         p3/Q==
X-Gm-Message-State: AOJu0YxkV2U8BgewCXn0IobES8tit/EG0xtTN5rZLBnxA4mRFagq12co
        dJwrylOcbjzC0EKkfSfDSgmdI8BCXpN9b9h8YlQ=
X-Google-Smtp-Source: AGHT+IE8JZGO5AJlHB0gVlpfgqATSBJHgAWyKC6QKwkPaljKOyd6RoW2fJ5F/H5/4XrPqd1hvBYD1Q==
X-Received: by 2002:a5d:5257:0:b0:314:4a15:e557 with SMTP id k23-20020a5d5257000000b003144a15e557mr8567311wrc.5.1691483272362;
        Tue, 08 Aug 2023 01:27:52 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id s18-20020adfeb12000000b0031779a6b451sm12861246wrn.83.2023.08.08.01.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 01:27:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 05/11] clk: samsung: exynos5410: do not define number of clocks in bindings
Date:   Tue,  8 Aug 2023 10:27:32 +0200
Message-Id: <20230808082738.122804-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230808082738.122804-1-krzysztof.kozlowski@linaro.org>
References: <20230808082738.122804-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Number of clocks supported by Linux drivers might vary - sometimes we
add new clocks, not exposed previously.  Therefore this number of clocks
should not be in the bindings, because otherwise we should not change
it.

Define number of clocks per each clock controller inside the driver
directly.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/clk/samsung/clk-exynos5410.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos5410.c b/drivers/clk/samsung/clk-exynos5410.c
index d67d67a519a4..2654077211e7 100644
--- a/drivers/clk/samsung/clk-exynos5410.c
+++ b/drivers/clk/samsung/clk-exynos5410.c
@@ -56,6 +56,9 @@
 #define SRC_KFC			0x28200
 #define DIV_KFC0		0x28500
 
+/* NOTE: Must be equal to the last clock ID increased by one */
+#define CLKS_NR			512
+
 /* list of PLLs */
 enum exynos5410_plls {
 	apll, cpll, epll, mpll,
@@ -260,7 +263,7 @@ static const struct samsung_cmu_info cmu __initconst = {
 	.nr_div_clks	= ARRAY_SIZE(exynos5410_div_clks),
 	.gate_clks	= exynos5410_gate_clks,
 	.nr_gate_clks	= ARRAY_SIZE(exynos5410_gate_clks),
-	.nr_clk_ids	= CLK_NR_CLKS,
+	.nr_clk_ids	= CLKS_NR,
 };
 
 /* register exynos5410 clocks */
-- 
2.34.1

