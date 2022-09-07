Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83F335B018E
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230054AbiIGKRV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:17:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230440AbiIGKRF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:17:05 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3023B958A
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:16:14 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id bt10so21696631lfb.1
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Om7NL/8n/AZHbaNF9gisHUFy/iTMOZIGCGU/AWMpqjM=;
        b=yyAR2FSMXExBEjSTTnE4d1l2buPFXE01QRADkyhDi8maXkoZlKZyrO7jjGT+L5phcO
         n7//Hf2E8pDi3V/tJAPZm750UgCYUJGI8QA21af1x4WdzKM6IGDayxT5kJQFtQ24O+ub
         SQDbNGrlEsPE3lW0RtF0CPdNw0xtowKc3Z+46BO/HGx4g+VEg/bENKWOmqfutjF6KkBD
         gK7174juoMdDenx5rMydLULD4DC7AJD+a1OIrqYNKFh9vicpQAzRrqyH4yE1FV0B7Vfi
         7EFx3DjH02YE/qGXN/CWjPonfpcmz1SzWKBVXKjlEjlJG/0dVgOSR60PXFR/Yee7TnKp
         y3Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Om7NL/8n/AZHbaNF9gisHUFy/iTMOZIGCGU/AWMpqjM=;
        b=ErgKsecxhlIroE2Mbw2VNurSgxvtF4OcFENkjbguVJy0ZJRPdQg98TsaG6QcOceZIa
         MWMtKqJm2RozvkasZ4+rcUcXpdYh0OWm7lfn2cvC8DF6xsdR5CtESoRaaLPItL1DvYX9
         hvwEjqnPFQy1uIPS2nJSRWasTrjpSDiGCYJ3CjdTWzKQNOmmg8bs2yYPaabzl9+opZ9y
         z4OaOMQ3cfVop3ljeJT/n//nD3kk4yV5KrlPOkg6IkqkyvWySb1E9+boNiOHAAxiTYZy
         tV7gXAPeIAvC6M3YK+1CEYe3ZTg64Rt7vG1XWu2Dl/3NJD81CZHSwTXXU4pz9S6+2eCV
         gI0g==
X-Gm-Message-State: ACgBeo2Cx8V/ejihh7LUtE+b/X06J+Jzn4c372U2kAWLkQAVxPzNegkv
        4XNL4nkY2F0a6l3NyEapRlSYrA==
X-Google-Smtp-Source: AA6agR6DqunZMTRvl5zpTEvufNILFw4QbyDoI1vitKQ0AOW8Zi5cVHd/bo8dqxmmVcUIK5w3JMXU0g==
X-Received: by 2002:a05:6512:1683:b0:497:a6f2:1ae5 with SMTP id bu3-20020a056512168300b00497a6f21ae5mr874533lfb.7.1662545774311;
        Wed, 07 Sep 2022 03:16:14 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u9-20020a2ea169000000b0026ab0e480bcsm960734ljl.39.2022.09.07.03.16.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 03:16:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 07/14] arm64: dts: qcom: qrb5165-rb5: align dai node names with dtschema
Date:   Wed,  7 Sep 2022 12:15:49 +0200
Message-Id: <20220907101556.37394-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220907101556.37394-1-krzysztof.kozlowski@linaro.org>
References: <20220907101556.37394-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT schema expects DAI node names to be "dai":

  qcom/qrb5165-rb5.dtb: dais: 'qi2s@16', 'qi2s@20' do not match any of the regexes: '^dai@[0-9]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index bf8077a1cf9a..d39ca3671477 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -867,7 +867,7 @@ &qupv3_id_2 {
 };
 
 &q6afedai {
-	qi2s@16 {
+	dai@16 {
 		reg = <PRIMARY_MI2S_RX>;
 		qcom,sd-lines = <0 1 2 3>;
 	};
@@ -875,7 +875,7 @@ qi2s@16 {
 
 /* TERT I2S Uses 1 I2S SD Lines for audio on LT9611 HDMI Bridge */
 &q6afedai {
-	qi2s@20 {
+	dai@20 {
 		reg = <TERTIARY_MI2S_RX>;
 		qcom,sd-lines = <0>;
 	};
-- 
2.34.1

