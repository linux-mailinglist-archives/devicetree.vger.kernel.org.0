Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF0FE5EC7E5
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 17:35:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232319AbiI0Pe4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 11:34:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232347AbiI0Peu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 11:34:50 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ED0AFC6
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 08:34:46 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id w8so16264186lft.12
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 08:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=b/USyE2rZeGybRiRERaxxJ71NRPvCslQr07H+7bxxRI=;
        b=SKMmAhd5QO+DEf0nXZqbEsmwdSZBbbO0pCaQxyoLqFIJxCJsmKRaqyG0yMeLa/pxMU
         sGQweR5QeC30m9EYFNusGrOstVPqE8/BCPVKaDdx08JXwBokArI9Id/GARSaEbsBdi3t
         XfcXwEtTcotP0p3GBaYh58IAkjXnreAkOzsPQ2A0s9edO223uyFYpf8m86Za3LBe1jIb
         AV1HopEUyE7EBDoaw9FvMZoF3Y6N8ZINCWrWQf9z65ygoefDmtYwTqq3zk+pGhfb+Mji
         drk0RbFEylaRDv4tkv3OvYTqD/OASKBsiCgp3QXxUgLYczHiJEE4saxk2tL5s5bn+hfv
         D3Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=b/USyE2rZeGybRiRERaxxJ71NRPvCslQr07H+7bxxRI=;
        b=BOq0kGvkhP/ll2VUoPzDlFxv7YFWwIAfHXvRPotq1cn11XcdMtbloQagSSR40t0Wmy
         MURb/h4z2UTMOneWrTwTEkHtSl6fwUy/rhcZ4B/PGCEu2bQ8OlG1Nq5c1tN3b4WEOBe6
         fLazZGQV1wupwKK/2PM33jBDoIp4/Rmd+GgZlI79mR7bt3pua2AiFBs9E/L6xe/1Zxnz
         IdXHKtufY0we2RQEWqV9W4/Bkzk1zJpk4CLVO1IRcnlIat5mV/2xRK7g3PdvBvDI+3Wf
         D5LTt25+cT/fAz3ocUn/x3mO53vKNcrzTsAD3FVVc/dkJi62lahL2EAv9AALdIjars85
         KZeA==
X-Gm-Message-State: ACrzQf0H4vhOQg6cQNw0Gz5+4DMBAOlyTamMjNG8ZvXYOdTWciUQv2kQ
        +4RvmIWb5eZy1mq+iFxL01Rw8g==
X-Google-Smtp-Source: AMsMyM50Ti+YIC2PY11zpHf2V00xSNu3yDjC4Tj+oW9g01gD3IFjl2/4plEW/e8n2IEpx4qN9Subfw==
X-Received: by 2002:a05:6512:ac9:b0:49c:ebc7:bdae with SMTP id n9-20020a0565120ac900b0049cebc7bdaemr10933603lfu.99.1664292885086;
        Tue, 27 Sep 2022 08:34:45 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o18-20020a2e7312000000b00268bc2c1ed0sm191592ljc.22.2022.09.27.08.34.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 08:34:42 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 03/12] arm64: dts: qcom: sm8250: correct LPASS pin pull down
Date:   Tue, 27 Sep 2022 17:34:20 +0200
Message-Id: <20220927153429.55365-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927153429.55365-1-krzysztof.kozlowski@linaro.org>
References: <20220927153429.55365-1-krzysztof.kozlowski@linaro.org>
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

The pull-down property is actually bias-pull-down.

Fixes: 3160c1b894d9 ("arm64: dts: qcom: sm8250: add lpass lpi pin controller node")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index a5b62cadb129..8f402b912c62 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2454,7 +2454,7 @@ data {
 					pins = "gpio7";
 					function = "dmic1_data";
 					drive-strength = <2>;
-					pull-down;
+					bias-pull-down;
 					input-enable;
 				};
 			};
-- 
2.34.1

