Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C3F9744FEF
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 20:50:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230035AbjGBSuX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 14:50:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbjGBSuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 14:50:21 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43868D1
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 11:50:20 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3fba545d743so49693535e9.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 11:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688323818; x=1690915818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cixWK7TedYfz6t1+XtqW9RLea4GFA5pMHrd++RHZQT8=;
        b=k7vicVGGl4xc5ZQy4NSrZyce4Vd9zrA7vHziIUfSo+BZ4OKVqR/MPfnR9Y2GyhM66r
         WLi+vGw+m4ieADnqjQFGp+BfkQLpjRoURP2lfPqgxnFnCbyG3PdZ72QkGx9KBqp0AM9k
         DGo5SU5uXHOeCvSDSqjsGOfee9XyXy0sdijlsOP61NKBJpciqHYRzKPWLysaAY3YNX21
         8n9ce9k7UqVWr5ci3hWxPMYBp2gdWfi2Vn+aYOZqnpEomhaYV07SVoDaNjnCzEcnw+l+
         IMOzoeghWFklcuiBTZreviumicla8bZQSkGSzA0FANden9ynaEl4fCfSnn4nzDZVnEvu
         MObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688323818; x=1690915818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cixWK7TedYfz6t1+XtqW9RLea4GFA5pMHrd++RHZQT8=;
        b=WnII2slGm5fWAQA01bFnrVFSX53rub2RBBne6yGRVZxqGbqqPU1nTDblDtLUHEM8Oh
         Sd+lJyhaFZUtuZM5zxLc1PIWp1BW56UcjsdOfsdp/uso3+yPvDarzRQPXhpV2Zacy38O
         fv16nyM+089kWsWbtFioDgvQ8ahoAY5a2t3jpDXCFBfWsax2sPbmE6Fr7g2YkRdsJm5P
         v/jhMbp+u/r9ZZcCXMzueuP+Us6JYZ/F/1GLt88ZA4tOBQ96piPIhrz14qcrHiEFvaun
         3N9Y1qVkqUNJkmEKYjZ+16h7gufPdv9ozPM6Zqtz/7suClag/9hKs+lU+rV3HAfkwiSC
         qrbQ==
X-Gm-Message-State: ABy/qLY95I0TiuNlqXjbUgob2qxmePVewHFmm+w6EmXlEpcoDaR4gfeo
        h0QswdDPszfc/ylq+C+8ZynXrA==
X-Google-Smtp-Source: APBJJlEl8kGS2oKAPMZTtYJEVjdwpIiZAxopsoNRvmQuYuM6zV24+x/BEuZ0t7zrDVNzs6OfpkhYMA==
X-Received: by 2002:a5d:4f86:0:b0:30e:3f55:ebc9 with SMTP id d6-20020a5d4f86000000b0030e3f55ebc9mr7968169wru.13.1688323818679;
        Sun, 02 Jul 2023 11:50:18 -0700 (PDT)
Received: from krzk-bin.. ([217.169.179.6])
        by smtp.gmail.com with ESMTPSA id k25-20020a17090666d900b00982842ea98bsm10861789ejp.195.2023.07.02.11.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 11:50:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>, linux-fsd@tesla.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] ARM: dts: s5pv210: minor whitespace cleanup around '='
Date:   Sun,  2 Jul 2023 20:50:12 +0200
Message-Id: <20230702185012.43699-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230702185012.43699-1-krzysztof.kozlowski@linaro.org>
References: <20230702185012.43699-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/samsung/s5pv210-pinctrl.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/samsung/s5pv210-pinctrl.dtsi b/arch/arm/boot/dts/samsung/s5pv210-pinctrl.dtsi
index af740abd9e0f..6ecdd504e5f4 100644
--- a/arch/arm/boot/dts/samsung/s5pv210-pinctrl.dtsi
+++ b/arch/arm/boot/dts/samsung/s5pv210-pinctrl.dtsi
@@ -832,12 +832,12 @@ lcd_clk: lcd-clk-pins {
 	};
 
 	lcd_data24: lcd-data-width24-pins {
-		samsung,pins =  "gpf0-4", "gpf0-5", "gpf0-6", "gpf0-7",
-				"gpf1-0", "gpf1-1", "gpf1-2", "gpf1-3",
-				"gpf1-4", "gpf1-5", "gpf1-6", "gpf1-7",
-				"gpf2-0", "gpf2-1", "gpf2-2", "gpf2-3",
-				"gpf2-4", "gpf2-5", "gpf2-6", "gpf2-7",
-				"gpf3-0", "gpf3-1", "gpf3-2", "gpf3-3";
+		samsung,pins = "gpf0-4", "gpf0-5", "gpf0-6", "gpf0-7",
+			       "gpf1-0", "gpf1-1", "gpf1-2", "gpf1-3",
+			       "gpf1-4", "gpf1-5", "gpf1-6", "gpf1-7",
+			       "gpf2-0", "gpf2-1", "gpf2-2", "gpf2-3",
+			       "gpf2-4", "gpf2-5", "gpf2-6", "gpf2-7",
+			       "gpf3-0", "gpf3-1", "gpf3-2", "gpf3-3";
 		samsung,pin-function = <S5PV210_PIN_FUNC_2>;
 		samsung,pin-pud = <S5PV210_PIN_PULL_NONE>;
 		samsung,pin-drv = <S5PV210_PIN_DRV_LV1>;
-- 
2.34.1

