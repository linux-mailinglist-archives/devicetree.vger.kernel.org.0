Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCE065AE7E6
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 14:21:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240082AbiIFMVS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 08:21:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239657AbiIFMTv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 08:19:51 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E29352098
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 05:17:26 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id b19so12060188ljf.8
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 05:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=OEJpYrvp/+MPWaO5UKqFt1HDoLTGd+E143aJwfuryW8=;
        b=N139uZEt73ijI/qnsX6l3Rn4kYjqI8UgZygHGge6OzJ4TUbW4BXDPLXaO976apXlS1
         1oOGpJS8OKu5qhYhd72qh97tSwoMh/E+9PPSk4zmmed7gqoYbFNWk63wTz2s8Ihg771i
         7rHPRR0IrcNX3UDAb5FKEqWxHXpJcZtvCY8TGlIIgWhYYjPcrwAvMOJwrcKnvKS5VwHz
         G/UE3OltGDseWQjPAup9qnJ8GIAQ6NS/u6hJBw9uUpTiNkuAPxqy1Z4SvJadpCxFhdQW
         q5FOpuiocWaqpo7+GDotvamtnRxI4i3XaQy03ByAzFyyvqvNLiVq2AmJQzhtSdKtAiuD
         gnnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=OEJpYrvp/+MPWaO5UKqFt1HDoLTGd+E143aJwfuryW8=;
        b=Z+x+4dyMlRG9cYIDHJhAToYiHxwZ9Vx8FArkFLnsY9d+ALSstULSfOBGgM01OaERDy
         ry+8+lXrOkYsZMa3QbTUwTIMA+j4Hl5xjLMv5JTL8hCNw2ffPaaDrW5/AVrDk6Tx3RL6
         D6hddzfWrEZmxHfPtp6fjCXPjYx3kHuNxFdaNmIcPPfFGQ38jfFY97jsUsvqr0B4il20
         NySZE1LG6OyIZZD8VmA7dcXJrT7CBxBOiRN6RUWiptIr6yKz12KWjwen9SzT98HJFi3j
         ELJbYAK3g23DiI3pAaM/5hmWOHmRhLZL3UtxYEM2WB9p41xtGnlUFAjQIs81m0s+Z8FF
         sg2w==
X-Gm-Message-State: ACgBeo31G50C6HRcNnfl2XVIsd9XsNYQtSyNGQeEXSdlFuiuJcodBmja
        GzMSIm2LOCMY9qGe0IOd58rIMw==
X-Google-Smtp-Source: AA6agR7YrWKYTS92mqGGCKwSsmB3O/NlIfmpKLoq3IaviuVAfksz+FOONLitLdJw1N//UntYXqceeQ==
X-Received: by 2002:a2e:b892:0:b0:25f:db66:3b86 with SMTP id r18-20020a2eb892000000b0025fdb663b86mr17029652ljp.79.1662466632760;
        Tue, 06 Sep 2022 05:17:12 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u17-20020a05651c131100b0025df5f38da8sm1882802lja.119.2022.09.06.05.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 05:17:12 -0700 (PDT)
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
Subject: [PATCH 11/12] ASoC: dt-bindings: qcom,q6dsp-lpass-clocks: cleanup example
Date:   Tue,  6 Sep 2022 14:16:54 +0200
Message-Id: <20220906121655.303693-12-krzysztof.kozlowski@linaro.org>
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

Cleanup the example DTS by adding APR compatible, using proper device
node names for services and fixing indentation to 4-spaces.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,q6dsp-lpass-clocks.yaml    | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
index 604861d84ffa..1e1114286d3a 100644
--- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
@@ -38,14 +38,17 @@ examples:
     #include <dt-bindings/soc/qcom,apr.h>
     #include <dt-bindings/sound/qcom,q6afe.h>
     apr {
+        compatible = "qcom,apr-v2";
+        qcom,domain = <APR_DOMAIN_ADSP>;
         #address-cells = <1>;
         #size-cells = <0>;
-        apr-service@4 {
+
+        service@4 {
             reg = <APR_SVC_AFE>;
 
             clock-controller {
-              compatible = "qcom,q6afe-clocks";
-              #clock-cells = <2>;
+                compatible = "qcom,q6afe-clocks";
+                #clock-cells = <2>;
             };
         };
       };
@@ -57,13 +60,14 @@ examples:
         qcom,domain = <GPR_DOMAIN_ID_ADSP>;
         #address-cells = <1>;
         #size-cells = <0>;
+
         service@2 {
             reg = <GPR_PRM_MODULE_IID>;
             compatible = "qcom,q6prm";
 
             clock-controller {
-              compatible = "qcom,q6prm-lpass-clocks";
-              #clock-cells = <2>;
+                compatible = "qcom,q6prm-lpass-clocks";
+                #clock-cells = <2>;
             };
         };
       };
-- 
2.34.1

