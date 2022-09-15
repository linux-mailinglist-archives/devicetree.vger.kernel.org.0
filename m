Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CCDF5B9EC4
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 17:26:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230165AbiIOP0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 11:26:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230142AbiIOP0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 11:26:38 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8417145F6B
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:26:36 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id j13so7895036ljh.4
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=CSJ/eStQwOd/6bKkqYW/kpR5igHLqJM9FCdnOYOs/Dc=;
        b=m/87F35YC2MWcHrQCTtwBxMNQzaCNyhV15mxXhFlEA3czL1+fDA+2YE2x3zP2NRQRt
         Tn6o2O984Kr2xD5d50Qpp67QiNdO0rku3PLMntajOHpu4ghcG2xURZ3LlAIrYUZVPWtV
         xy7d9i8pvYaigd6cqu02+ZNVq7MswBtk/jOxImYMYF6kLuFm3jALwMkCkYCE7Xou+SYY
         83iEFEXITznNdyLwuG1QaZqN7DksAs1Da6LHlK7Rn07xfVPORq2qozSrqM4hYFEDYvZQ
         SF4GQm5nrJfIPwIMiJ/os1/soFzkwRfDaNZDa3OKYIXUXg6fcd3SQe3koCqyBLeQAYS0
         nRVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=CSJ/eStQwOd/6bKkqYW/kpR5igHLqJM9FCdnOYOs/Dc=;
        b=dPNtQ6cXKkQu0SYrZAQd3o/eKCAk0FFdLoV9p3si2QyS3t7ofuyeVWf6WsNsMGc65d
         1kI7paT3mUP6ZMGLTGK0tfjdaDhvBdFX3qAi4Jyf1ak9hGSMShaEo7sIrk/3+RSHJxw6
         qAGTGOj/wu/gGDAGAfMx4EOGZEVZvi25uAS0mmxbmx/eeUIr+aFqiHU0HB8Vqos1rSi8
         yQL40RM7/Y8ceDi7cgAIpe2dFjysy6LkjqytZ8UQD05XCp+C2u9qva2b6s2XmxyO2v53
         CuSTZ60IbuAkZtfTQiGc7j2jizhVvR5+hVxzeZvFQKVA342tG4V99xBd8Fp/Rbrd4eIS
         qj7g==
X-Gm-Message-State: ACrzQf3d2RyaFAGteL1h3WwUXxQ8ltom9l4brCI+aKI7az59L0hZwal3
        d4I7OM+YsBUjLafTaVbmEdh24Q==
X-Google-Smtp-Source: AMsMyM5D7see3Xp/T6n6kjsCznPxtGlG92upYHezzjN8xa0cDNLaTanoYsTNtCeIBEgCbqSpkH+N3w==
X-Received: by 2002:a05:651c:546:b0:26b:fc04:5c4d with SMTP id q6-20020a05651c054600b0026bfc045c4dmr79248ljp.281.1663255594885;
        Thu, 15 Sep 2022 08:26:34 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a18-20020a056512201200b00494813c689dsm3012653lfb.219.2022.09.15.08.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 08:26:34 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [RFC PATCH 5/7] arm64: qcom: dts: sagami: correct firmware paths
Date:   Thu, 15 Sep 2022 18:26:28 +0300
Message-Id: <20220915152630.133528-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220915152630.133528-1-dmitry.baryshkov@linaro.org>
References: <20220915152630.133528-1-dmitry.baryshkov@linaro.org>
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

Correct firmware paths for the Sony Xperia Sagami devices to include the
SoC name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
index b3c9952ac173..e0940cb58681 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
@@ -77,12 +77,12 @@ ramoops@ffc00000 {
 
 &adsp {
 	status = "okay";
-	firmware-name = "qcom/adsp.mbn";
+	firmware-name = "qcom/sdm8350/sagami/adsp.mbn";
 };
 
 &cdsp {
 	status = "okay";
-	firmware-name = "qcom/cdsp.mbn";
+	firmware-name = "qcom/sdm8350/sagami/cdsp.mbn";
 };
 
 &i2c1 {
@@ -175,12 +175,12 @@ &i2c17 {
 &ipa {
 	status = "okay";
 	memory-region = <&pil_ipa_fw_mem>;
-	firmware-name = "qcom/ipa_fws.mbn";
+	firmware-name = "qcom/sdm8350/sagami/ipa_fws.mbn";
 };
 
 &mpss {
 	status = "okay";
-	firmware-name = "qcom/modem.mbn";
+	firmware-name = "qcom/sdm8350/sagami/modem.mbn";
 };
 
 &pmk8350_rtc {
@@ -210,7 +210,7 @@ &qupv3_id_2 {
 
 &slpi {
 	status = "okay";
-	firmware-name = "qcom/slpi.mbn";
+	firmware-name = "qcom/sdm8350/sagami/slpi.mbn";
 };
 
 &spi14 {
-- 
2.35.1

