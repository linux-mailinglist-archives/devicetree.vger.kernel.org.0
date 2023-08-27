Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06132789E2C
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 15:27:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229970AbjH0N0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Aug 2023 09:26:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbjH0NZm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Aug 2023 09:25:42 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8146D18F
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 06:25:36 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-500b0f06136so1479535e87.0
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 06:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693142734; x=1693747534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A7ewwDA5rK2znaB44N+h4kM3uTy6kez9qLlohwFRQDU=;
        b=BfnEHNaJHoyKQgsnp35oMIWOXd/iYNmofKac0VHqyhSZxp5XhoAIp1KPez48Ke1CR7
         MlbisHGyVze/OU3/D1NrAr+uwIPFAkPc6Z2PxWNZH/zsQKO+FQ9S6tO7OdbFoxZij0LW
         /csYdl2IYtfvUPry97thu8H0yDIrVAMsG2Md1vFCkEDMQsexWt7TadN58Lpa17N3MrVv
         RQPjDubcn5Pr/eXHsEByT5v14bJMWHZd62ME/iErCpkerb5VlrkPsOfSjnU5mjT2vVsm
         LMJP9rwU36eD4ooqbmL4ij3xRnrVAvUgyiBFXIt2r2pbH9noFC8MFpu1YpNjy4ChITNC
         Oigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693142734; x=1693747534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A7ewwDA5rK2znaB44N+h4kM3uTy6kez9qLlohwFRQDU=;
        b=IoXuByV9TP8Q75ys0v5K01EMc2ZAn5GmdFFNxtnFFHfdE2UBn5HNKTZtdZpGox7EtB
         FZzJRuFKA8jGGnkQFJWtdifLXVJlJiqR2UAvxAy2owaz6JeoReok3r1197pJQzLxy5NM
         Kb1r+IX7De5vGQxRQi+IBS/7kDq9eZaQiJKkYyrIbuwY+C0NIlQxs8n/nkBppN3Z7nLP
         gukUifbzqIRmbUtUU9tzRuABRW8/TXVq85ncChhQqp9SC3tVWZJvGFMFj51OuY8EAzBL
         OH95mBhneL4u7oHOFC+p/ADBsh1Ad9Ifi7Olno4r+8O/v91IMKGw9BxDRIAaGrrtGTX/
         xHgw==
X-Gm-Message-State: AOJu0Yy5cMyPuMDtge7XG+taAUxBER4sR6Kvnj4UHZJkxfyrFo1MnA8S
        bQuzJX/NdswNajW6SMccmDkKi5AXcL5JqjXd/sU=
X-Google-Smtp-Source: AGHT+IGfyRNdx7XScmxKKNYPtWH7EVnunOlJNWZM3AapeV+8RTTrAAj8dlVnpCn4asSwcF/pfnyPxA==
X-Received: by 2002:ac2:4bd4:0:b0:4fd:c84f:30d4 with SMTP id o20-20020ac24bd4000000b004fdc84f30d4mr18752550lfq.36.1693142729486;
        Sun, 27 Aug 2023 06:25:29 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t9-20020ac243a9000000b004faa2de9877sm1142040lfl.286.2023.08.27.06.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Aug 2023 06:25:29 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
        linux-leds@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 03/37] ARM: dts: qcom: apq8064: correct XOADC register address
Date:   Sun, 27 Aug 2023 16:24:51 +0300
Message-Id: <20230827132525.951475-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230827132525.951475-1-dmitry.baryshkov@linaro.org>
References: <20230827132525.951475-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The XOADC is present at the address 0x197 rather than just 197. It
doesn't change a lot (since the driver hardcodes all register
addresses), but the DT should present correct address anyway.

Fixes: c4b70883ee33 ("ARM: dts: add XOADC and IIO HWMON to APQ8064")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 516f0d2495e2..950adb63af70 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -738,7 +738,7 @@ pwrkey@1c {
 
 				xoadc: xoadc@197 {
 					compatible = "qcom,pm8921-adc";
-					reg = <197>;
+					reg = <0x197>;
 					interrupts-extended = <&pmicintc 78 IRQ_TYPE_EDGE_RISING>;
 					#address-cells = <2>;
 					#size-cells = <0>;
-- 
2.39.2

