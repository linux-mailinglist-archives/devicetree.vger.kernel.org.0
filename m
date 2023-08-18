Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E822C780D22
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 15:56:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377491AbjHRN4I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 09:56:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377560AbjHRN4B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 09:56:01 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C84D3423B
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 06:55:42 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-51bece5d935so1174765a12.1
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 06:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692366941; x=1692971741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u8c4lUkFwMTd8t+9hbWzlMS2+06J2PyO+7AtFRoosww=;
        b=PE341OJJdp3qA/yo0OsAXN8vgrYYVYoZqYKEW2AplqK0+xxgTEKeacUkAQHpueiuYV
         1hzKnJXqC103W9fzq22uBG1JMd/qcRRnZBGvqes4o1dTOqpBIMpFgnjDvgk2mZznw6Fe
         uS9MeFL779idAam5FnrdmqZmRSJpmKpl+45+4mCMViMJI/VKxxZVNAYX4+ju4YE0hDWx
         yM8ZSRMk4GznlUrU9ixmH4GAkKYdJ3MBvTAR5MFRCRQwuy+SAE6tRcDll8pZ/tKntKxb
         xGq4TThNhpxYkcLjnlyyVnnG5ktIG8DJEJiw/fNeoaO64JQZF5/5gapzcFamHcWWL90O
         pXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692366941; x=1692971741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u8c4lUkFwMTd8t+9hbWzlMS2+06J2PyO+7AtFRoosww=;
        b=jA7GqG1nZ8G7UMyCcJAQ/Au7YPoTmc23WZ7aJ8swf9/26x+3h+9AhxReP0hKlzvO8k
         5BEbvlx+C8ouGuuPe4H35GfbH8wOP1GC+MgJYPssyqdNULnq1Bnhr3DfXKmFCxB93M7D
         yo8QPiB9idESJzfBRmtaoqMYt/leA4r1XavKit74Rc3g+VyiwiHvtr3eTLKG/cX4RIjw
         agaICHnfhHUwJsUJO6S0tV/ZC/bb9Lp6eAvY9uoa/2bYV3PVj1IhO7T5S08Q9bZ6fesW
         0r+buTCHHmduYe9JF6d73Eko3Chc0TAmWMCav6kvV6OwZRzhy79SQ3zOHwfy0OWCt8Zi
         GtYg==
X-Gm-Message-State: AOJu0YxTtViYD4+rvnGBEN6vRM8O8sKnLdtFwt6zqTrP8XHxYQi5MnU3
        78ON1/qJ1JSTt06bhyMPDep66KAKxqvBAsvX4qwsuw==
X-Google-Smtp-Source: AGHT+IGDed+dXOVWOjaEzL+sa5B/Iv3ilIVkYD8DyctGAbTB+SLduHf4F4ysvhH2iqSLEaaqO4ZkTg==
X-Received: by 2002:aa7:dd14:0:b0:522:27f1:3c06 with SMTP id i20-20020aa7dd14000000b0052227f13c06mr1918012edv.21.1692366941322;
        Fri, 18 Aug 2023 06:55:41 -0700 (PDT)
Received: from krzk-bin.. ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id t26-20020aa7d4da000000b005233609e39dsm1092356edr.30.2023.08.18.06.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 06:55:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Brian Masney <bmasney@redhat.com>
Subject: [PATCH] arm64: dts: qcom: sa8775p: correct PMIC GPIO label in gpio-ranges
Date:   Fri, 18 Aug 2023 15:55:38 +0200
Message-Id: <20230818135538.47481-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are several PMICs with GPIO nodes and one of the nodes referenced
other's in gpio-ranges which could result in deferred-probes like:

  qcom-spmi-gpio c440000.spmi:pmic@2:gpio@8800: can't add gpio chip

Reported-by: Brian Masney <bmasney@redhat.com>
Closes: https://lore.kernel.org/all/ZN5KIlI+RDu92jsi@brian-x1/
Fixes: e5a893a7cec5 ("arm64: dts: qcom: sa8775p: add PMIC GPIO controller nodes")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
index 3c3b6287cd27..eaa43f022a65 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
@@ -173,7 +173,7 @@ pmm8654au_1_gpios: gpio@8800 {
 			compatible = "qcom,pmm8654au-gpio", "qcom,spmi-gpio";
 			reg = <0x8800>;
 			gpio-controller;
-			gpio-ranges = <&pmm8654au_2_gpios 0 0 12>;
+			gpio-ranges = <&pmm8654au_1_gpios 0 0 12>;
 			#gpio-cells = <2>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-- 
2.34.1

