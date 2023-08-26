Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 295637899B1
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 00:20:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbjHZWTu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 18:19:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229921AbjHZWTX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 18:19:23 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35AAB1AC
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 15:19:19 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50087d47d4dso3257884e87.1
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 15:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693088357; x=1693693157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1DdLoqClMFF2EEiXQ3TopWzMqOLDE24CSNMXs6aJ1gg=;
        b=KQJuMhQupobA0GHfkpoynRWhNMff1NrR4pKarYAlXOR0Vlh0nPcJwFdoFfksBQELzd
         Bs4nk1CfiuHOmSkJ0AlRIh+izGCSuKtwO67YrTjUiClSJtFJMTVpl40EV3uXhSPjknNY
         b+Jm5IKq9uIdB1ouDtURnQvPj4tRbv3C7wJMuQ7K9jHyrxzWM6RCXjP9/oKqlK8i1AbH
         SZUxgQWAWJldqoOXFi3uPBerFxfgcoT6ePzKM0sgXMoTeTI2xTKuoQQKAcDbbEpbRxH+
         bzAf47U3RCgj99sSw2YY3OQkr/qoMeB7zKFVgWdPngCDuo233g0+gAeDtYcNlaVMuIr+
         U5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693088357; x=1693693157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1DdLoqClMFF2EEiXQ3TopWzMqOLDE24CSNMXs6aJ1gg=;
        b=iSJdABuvAnVtaEq1JSWSaZyRlMkzXvzRc3cB3EboCa+fi0gh1cvsnEyUIFDa3hY6Y5
         ps8crKvaH2qJsbSpoeBGkEPa3RXVP//8wSkz3TNc/NjqA9HD7ieYImjUXUlY5j+8RNws
         tq7lOhwWozVCh4Vz7JOvZedZog9eyVYGkw/1iXU/gQ7f3623Yp5XtcSZEjrnv9oGxEkR
         vA7C73KanXUeM6GcWkbhrFAh6LkGXSF3CC3xF8l5/tVMDbgbkrfDIOe2D8AwGAJkzopF
         wdI19MF2u/QWdbvdXnwoE500TLTR9Kt6HZznLqq3Vi4hOqpkxg8pXEx/6tWtrYCe+UlZ
         O3sA==
X-Gm-Message-State: AOJu0YxM9n4BHwwLr7RgkuKcC3K7rshtSlGyptLispJ3SsJf9I6eQNZ4
        CdXZQAmXxD/H4RdzVK5NBJWG9g==
X-Google-Smtp-Source: AGHT+IG4DF1LS4Yml9Jr4/8o1x85a86xLAB7QWU7Jlw2IaJ5CuVwYsZDjdK7vHpdeDAqtCzVTdD0+w==
X-Received: by 2002:a05:6512:329c:b0:500:9de4:5968 with SMTP id p28-20020a056512329c00b005009de45968mr6435348lfe.59.1693088357378;
        Sat, 26 Aug 2023 15:19:17 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id f25-20020a19ae19000000b004fbad341442sm868672lfc.97.2023.08.26.15.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Aug 2023 15:19:17 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 1/5] arm64: dts: qcom: sdm845-mtp: fix WiFi configuration
Date:   Sun, 27 Aug 2023 01:19:11 +0300
Message-Id: <20230826221915.846937-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230826221915.846937-1-dmitry.baryshkov@linaro.org>
References: <20230826221915.846937-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the host-cap-8bit quirk on this device. It is required for the
WiFi to function properly.

Fixes: 022bccb840b7 ("arm64: dts: sdm845: Add WCN3990 WLAN module device node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index b3c27a524742..1516113391ed 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -716,6 +716,8 @@ &wifi {
 	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
 	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
 	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
+
+	qcom,snoc-host-cap-8bit-quirk;
 };
 
 /* PINCTRL - additions to nodes defined in sdm845.dtsi */
-- 
2.39.2

