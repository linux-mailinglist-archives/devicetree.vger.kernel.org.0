Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEC17629A1B
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 14:26:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230249AbiKON0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 08:26:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230010AbiKON0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 08:26:36 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E38C13E3F
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:26:35 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id a29so24389380lfj.9
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=avm+9lW3Cfqvwcnd4WK23Pkk+Ognl6G/huZdXFKiRVU=;
        b=GW0GcWh4GtG+/whFF5lRx8Awlwweap1xz9DTUOxMyt3vHTuLcNqqgnKsDvKPCLPgTU
         zzOCICDWb5fOPfxd12gXlIp8+16GGS2XwyhVkpyr8aCTvd+SLTKrjVm11SKSWGePfreV
         AwwGHpRz2gGJJIzGlFtjonv5sUuXt+jTwjEd37bizjvv6/FcMeeLg2D2i2skwUEoB1qF
         1ElL9v9RoJAZjrnu7QX0C4lz+YPGaFi6EDSqyumgQVh/gKpThm0nsvaHZdguzxeIiENb
         1l5q4lq5Y2OjiU/1W/I1ToySPsQMoU8kUJnGaAkNRw933f5bW+cyBgit7eg763CLKY9v
         +zmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=avm+9lW3Cfqvwcnd4WK23Pkk+Ognl6G/huZdXFKiRVU=;
        b=D9jqW3lLMOesi7U5FIP4ZhwJq6OWE6+YDdVkmXPnWBgcl7M4stPc4RWg5+maxX590N
         uW7x5MhIYRE0eFN40oqOT8eQRiVlcwagzAIKALEqAMmyffJy/5jeeQG+0siguY1lwdz9
         v3M9xIFk6lyFRM0Urucllt3ZMs9zR0uTwHu/kDvkg6RyYpkoE3vOBwgdN3Fvgb14TI30
         CKOO39tqsC+6snktlxDC/tu/H0csPj05nOpCJfxpKJK4PYQKqrkm+6LUp+JYMRFZqpYP
         RRl2qHyFBcc0tUyGBsdtv6TDxUzTYFBJ1kUzX023sIvYunSy1R2D8zR0nsMqwPjSOh0W
         nYjg==
X-Gm-Message-State: ANoB5pl5wbL3IkC1mWZLoJ+BQ93Wbduz/7KsIAqy5hn+Mw6YQNVGXX8t
        QADTnRSDNXeqgtmxyk1gonCTuw==
X-Google-Smtp-Source: AA0mqf5WkBcirivUyMPkDGRq9mNhSK7jkQk9WOz7hcwygJ7zZtbmCcq0VrnElegqtytyk52Li7RNEg==
X-Received: by 2002:a05:6512:1115:b0:494:7055:b085 with SMTP id l21-20020a056512111500b004947055b085mr5200955lfg.109.1668518793984;
        Tue, 15 Nov 2022 05:26:33 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id d13-20020a19f24d000000b0049ad2619becsm2203077lfk.131.2022.11.15.05.26.32
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 15 Nov 2022 05:26:33 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: pmk8350: Specify PBS register for PON
Date:   Tue, 15 Nov 2022 14:26:26 +0100
Message-Id: <20221115132626.7465-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PMK8350 is the first PMIC to require both HLOS and PBS registers for
PON to function properly (at least in theory, sm8350 sees no change).
The support for it on the driver side has been added long ago,
but it has never been wired up. Do so.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmk8350.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pmk8350.dtsi b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
index 2730d97ab213..32f5e6af8c11 100644
--- a/arch/arm64/boot/dts/qcom/pmk8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmk8350.dtsi
@@ -22,7 +22,8 @@ pmk8350: pmic@PMK8350_SID {
 
 		pmk8350_pon: pon@1300 {
 			compatible = "qcom,pm8998-pon";
-			reg = <0x1300>;
+			reg = <0x1300>, <0x800>;
+			reg-names = "hlos", "pbs";
 
 			pon_pwrkey: pwrkey {
 				compatible = "qcom,pmk8350-pwrkey";
-- 
2.38.1

