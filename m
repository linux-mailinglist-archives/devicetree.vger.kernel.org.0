Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 230C85B0186
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 12:17:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230205AbiIGKRS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 06:17:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230252AbiIGKRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 06:17:00 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9060AB8F21
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 03:16:09 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id bt10so21696234lfb.1
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 03:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=8QkNF8EHcAEMbV0p0CldmJdisF79bfeyCTRVHy2ZadQ=;
        b=AT/9rjiALq4axC819gsn6/Nazj3lemyc6pePeYxp9VIO3dQ1aKy3xqyPEDqQ2H7f/s
         cCSZpsW0k423aaXO5jGpNJISvDZ5I1W0tRBAExb8rL8ve7rbkhtVBlDsvVtX1IHG5Cfw
         LZzzDiDKKAuigd3xi9QPQhZiplGFJWrXQ1OI3AlqRsO8+ATDcsSLgKoHtMcl8ZO9U1A6
         G7v3VBX4GpFfjRITnCl+G6MtFxN49OCkP3xkNEpJQT7CUb+1BII8KxPRQBMVT9pSVlrm
         J4zq476YmHyKaw45OFFbzwts/1/am8SRwcsBva1+BO+60JCtke30J+imMVbCG/TUMqWi
         1wVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=8QkNF8EHcAEMbV0p0CldmJdisF79bfeyCTRVHy2ZadQ=;
        b=J4JO2kT6ox2zVri11FRu59uRu7bFcseJHBoqz7NbtuVdy5dtq3YNWt1yjV0k9g9s6K
         zjjeD7SZfuq0y3Ohu2Q4yybWZk7TBEI039g5D5FB7YxA4TmYDAgBFju+p+zjYe69pYQw
         fbN2Doj1Fqma22X0dyt/XD2Z37XdIl6DdMcRrg9F1fxfRiamIlGihGgSSkFmB6K5/m1b
         mEsZQnpL/lwPXDL0+yIhxiqx9wUE9cvbKA6lCFlc4f+ECI1Di1HEiPzVGyAIGU5rYv6T
         GIT2Yox2i9Q7+j/apU+wkwJJxQoh8eP7taxQA3hyT8N3TT6Mq9IcT8GrrOgV/sUksm50
         PO0g==
X-Gm-Message-State: ACgBeo0yfkP4T+lnZT+/ujLwLYeyl9OpTXgVim8CbvkY0u457ZLgRcaV
        P+Oq1LWjUg8q+a9OBpSZY4tn0uFeoflsIw==
X-Google-Smtp-Source: AA6agR5LmZKga4iWytzN3ERlPtDAjjyhJOYh+OiKqcsYZw1SEjnzH86sfehXmLXrTJKzwSHQUhf2lQ==
X-Received: by 2002:a05:6512:3f19:b0:492:fdaa:b535 with SMTP id y25-20020a0565123f1900b00492fdaab535mr796161lfa.267.1662545767357;
        Wed, 07 Sep 2022 03:16:07 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u9-20020a2ea169000000b0026ab0e480bcsm960734ljl.39.2022.09.07.03.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 03:16:06 -0700 (PDT)
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
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Steev Klimaszewski <steev@kali.org>
Subject: [PATCH v2 02/14] arm64: dts: qcom: sdm845: align APR services node names with dtschema
Date:   Wed,  7 Sep 2022 12:15:44 +0200
Message-Id: <20220907101556.37394-3-krzysztof.kozlowski@linaro.org>
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

DT schema expects APR services node names to be "service":

  qcom/sdm630-sony-xperia-nile-voyager.dtb: remoteproc@15700000: glink-edge:apr:service@4: 'dais' does not match any of the regexes: '^.*@[0-9a-f]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 347c3abc117b..627e32515d29 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -767,13 +767,13 @@ apr {
 				#size-cells = <0>;
 				qcom,intents = <512 20>;
 
-				apr-service@3 {
+				service@3 {
 					reg = <APR_SVC_ADSP_CORE>;
 					compatible = "qcom,q6core";
 					qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
 				};
 
-				q6afe: apr-service@4 {
+				q6afe: service@4 {
 					compatible = "qcom,q6afe";
 					reg = <APR_SVC_AFE>;
 					qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
@@ -785,7 +785,7 @@ q6afedai: dais {
 					};
 				};
 
-				q6asm: apr-service@7 {
+				q6asm: service@7 {
 					compatible = "qcom,q6asm";
 					reg = <APR_SVC_ASM>;
 					qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
@@ -798,7 +798,7 @@ q6asmdai: dais {
 					};
 				};
 
-				q6adm: apr-service@8 {
+				q6adm: service@8 {
 					compatible = "qcom,q6adm";
 					reg = <APR_SVC_ADM>;
 					qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-- 
2.34.1

