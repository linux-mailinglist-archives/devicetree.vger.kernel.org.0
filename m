Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0035AE7BF
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 14:20:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239909AbiIFMUB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 08:20:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240293AbiIFMTb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 08:19:31 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED04C29837
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 05:17:08 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id z23so12108028ljk.1
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 05:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Hjmn30z7s2eTtMkaCMwmMADdYJlSF9rm+8XosTfoCp8=;
        b=RXai7S+qkruhF7oQokxveyjZl5Ut5RvIVsy3ssk+LE2vNU15qmHeFgXmXItWaTnKkJ
         CC1kIgRgP8Yw23dtgzlrGAi9PDax6Hzix7LTjQZBgUUvb9IWEu2fKibTlYsJ59ciPnif
         tO3l4nMRHL8nl3cuNs2ZJLiIiPfI27yE8YtJUb0bQmfdd7FrPnsTez1Jrxg8W3j7DGTy
         wTJO0g/Le+YTiBnkCKtazTq6asUcShwuS5FlgI2SvN/ffGmxw/6M8TkAaeO1ZnKqcWAU
         UIr6mRJ4WHgZHvDsazM/DO8jQbudRXrZJ2diHNoFErwz5tSHziq6+PJEpktHdvrI8Oky
         CJlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Hjmn30z7s2eTtMkaCMwmMADdYJlSF9rm+8XosTfoCp8=;
        b=jmXEQL1VlcT8KHGGzCOHcNpeKvaxpeB6K8aW79wj0dYN+4Iv7MCQDWGejlg7gC3a+6
         wE/4C1q7t1aV0xpE3heKf8Pr0fCzCp33dEFhD4HMw3x3KT4wfwZmm6AO6OtIQxIE95j2
         Tvq0ITAX9eHbGBrNYro/JuxdDSRCVsH+r+iYMRZhJTd2xhnTWSnVHHO5gk5oSElSYxfU
         2c0BuWXWNvoJD64PkN3gbJACWEccmwc9QauzVJdBHvEJwwWxqPnpGUe9fJPErtI5sNKD
         i2J3pGZLBRoK+y7RUeaOWSEnErYVJm/9DdD1QluFjosu+EpF7wg09x5hrac895sxIBji
         NClQ==
X-Gm-Message-State: ACgBeo1zxEqzl5yHugNeBJh4tSI96LVLj+4pV95n6REJKyFThuJQuVph
        E+quJ2CHw69ftuTynVWfxJrj4w==
X-Google-Smtp-Source: AA6agR7NPM+qJCIpk0dzGgKMU9iAKaEQX5alLhCnVr1VoZxdvU0lNlotecJJCxRXR2oTSA/3RonqNg==
X-Received: by 2002:a2e:940b:0:b0:268:fa1c:106f with SMTP id i11-20020a2e940b000000b00268fa1c106fmr5073674ljh.101.1662466622447;
        Tue, 06 Sep 2022 05:17:02 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u17-20020a05651c131100b0025df5f38da8sm1882802lja.119.2022.09.06.05.17.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 05:17:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 03/12] arm64: dts: qcom: sm8250: align APR services node names with dtschema
Date:   Tue,  6 Sep 2022 14:16:46 +0200
Message-Id: <20220906121655.303693-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220906121655.303693-1-krzysztof.kozlowski@linaro.org>
References: <20220906121655.303693-1-krzysztof.kozlowski@linaro.org>
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

DT schema expects APR services node names to be "service":

  qcom/sm8250-sony-xperia-edo-pdx203.dtb: remoteproc@17300000: glink-edge:apr:service@7: 'dais' does not match any of the regexes: '^.*@[0-9a-f]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index bc773e210023..da9f7a701bc7 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4782,13 +4782,13 @@ apr {
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					apr-service@3 {
+					service@3 {
 						reg = <APR_SVC_ADSP_CORE>;
 						compatible = "qcom,q6core";
 						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
 					};
 
-					q6afe: apr-service@4 {
+					q6afe: service@4 {
 						compatible = "qcom,q6afe";
 						reg = <APR_SVC_AFE>;
 						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
@@ -4805,7 +4805,7 @@ q6afecc: cc {
 						};
 					};
 
-					q6asm: apr-service@7 {
+					q6asm: service@7 {
 						compatible = "qcom,q6asm";
 						reg = <APR_SVC_ASM>;
 						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
@@ -4818,7 +4818,7 @@ q6asmdai: dais {
 						};
 					};
 
-					q6adm: apr-service@8 {
+					q6adm: service@8 {
 						compatible = "qcom,q6adm";
 						reg = <APR_SVC_ADM>;
 						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-- 
2.34.1

