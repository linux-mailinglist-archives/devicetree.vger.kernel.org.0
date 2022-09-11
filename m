Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA9195B4E44
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 13:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbiIKLQc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 07:16:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231343AbiIKLQE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 07:16:04 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADF963F1C8
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:13:28 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id f9so9636539lfr.3
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Hce0/X2M7TfP4RUEOJj4lD2o6WMQMhsp3Z9J0vMVmr8=;
        b=rZgTdAqItCFyZh63OZsdxrE0d4cx/dx4j5/jscohM/bFsQpG61a9lhL/umobyCPtMo
         5JtqLG29ilQELBtL+xEt8Cxa344KdRb0RaKlxC8lc+H6zf0vV8WMtsKFhf1nXMlJvjqC
         v+3jAzWz8QrrRc1BbQ5nY7OCweszJ8j61sCa8xahZZGjX1uQZva/5swvL+g+L/01qYey
         TkIPOWM1xo49QHucPAN0YDTZcaO4SxrkgbGV0usIdS3R0vMrNXE9VczX7iNG7aJe/P2R
         cnHzA+7uGEN854QdTnxKMbjvqCo4itc5QUPdx048ormVxc4sFG3UOb4+63vWsb/I7Tm6
         BalA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Hce0/X2M7TfP4RUEOJj4lD2o6WMQMhsp3Z9J0vMVmr8=;
        b=NdPdqa2AJIWQ8/gsA6N9mONk05nOvXf6apW2wABUpRlXJq0AGtzuwGSeC1ojCr2iXL
         8u44Yf/stzygybvr09x291rVTG4PbMPtkaZtsAWdJAgRBMbRFWL6wLh+s1VVzlYD7TRD
         +WG2D+H4SlSjMM8gXJeelgqRMkOK0koBpK+0EcBLh2cXhFuE95VJfuqKTH/ntVKASiaX
         VBKX1toJIARABFQGW1B9NCm9p1O9HrTJay/HE0OkC+RoIQPXnx8AaeyYtcXhohAtTOwv
         12UL4JitvI40FzmnyEby6XNEHX3QkXsRTvnOpN2wBOec1VvVY4lc5X8KMyYlWxymmXhd
         J2LA==
X-Gm-Message-State: ACgBeo0OFW2NQqLCC6FFrbh/X6lY6tM7VgKZ+8/g1SkwI57yeMLDvi9L
        ymTi+98bh9zOK7rJnqKrHPh1aA==
X-Google-Smtp-Source: AA6agR4p3BfpWezOw2hVfzNm1/m4P65C6K1bqFsghD91FNHniDAm2QB+BJljlpGRYewolA2YH+2MzQ==
X-Received: by 2002:a05:6512:3090:b0:48b:6e1:1b55 with SMTP id z16-20020a056512309000b0048b06e11b55mr7862927lfd.535.1662894770276;
        Sun, 11 Sep 2022 04:12:50 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025dfd8c9287sm607365ljc.69.2022.09.11.04.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 04:12:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 36/40] arm64: dts: qcom: sm8350-sagami: correct TS pin property
Date:   Sun, 11 Sep 2022 13:11:56 +0200
Message-Id: <20220911111200.199182-37-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
References: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
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

The pin configuration is selected with "pins", not "pin" property.

Fixes: 1209e9246632 ("arm64: dts: qcom: sm8350-sagami: Enable and populate I2C/SPI nodes")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
index cb9bbd234b7b..b702ab1605bb 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
@@ -223,7 +223,7 @@ &tlmm {
 	gpio-reserved-ranges = <44 4>;
 
 	ts_int_default: ts-int-default {
-		pin = "gpio23";
+		pins = "gpio23";
 		function = "gpio";
 		drive-strength = <2>;
 		bias-disable;
-- 
2.34.1

