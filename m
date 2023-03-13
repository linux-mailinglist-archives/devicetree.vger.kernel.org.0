Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1066F6B709D
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 08:58:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbjCMH6F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 03:58:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbjCMH4q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 03:56:46 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42CBA20054
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:55:08 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id y4so15454575edo.2
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 00:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678694095;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fDF0ZYXFDOllcKLsEzC0jJ5Ov6N9QuMsH10mVyhVQIQ=;
        b=X7IETnH6CFfAF+cv4+iEYutn/JFK96OrOPqlr2bDrSNLdlVGTWojg/IC4IYNp9jVhK
         LCp3GUK68M8n2ysNlF5WRETvc8KwayULthNs/xyTLfvIGrvH1iR+tLSiAIJZvgVv0a8a
         7yKSt9Br5/Sh14bbEw5hmCUBQoB8JcKeDPU3rBv3N4ANzZzOuSqP5iY5EItjykG9QW4D
         TE5h8pBlUIOrUmcshxYGggFyuw7DbqtOglOkieHjrNG5X7qsUIMpDngugsOpFI1MYXTe
         BGpLHVVgiC15OJVvgIBW6/PH6B1RRjblT/wpciCKW23yR2YIBrhfsK5fc4f180wPCMlG
         ujkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678694095;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fDF0ZYXFDOllcKLsEzC0jJ5Ov6N9QuMsH10mVyhVQIQ=;
        b=5H0lpcvN/e0RMxdZkkA1vPBMNuLdMNAW78NDy+2VYflnOWdm+DIXkMV8D6VGmz+9vu
         QR6NSZxSIni60dm36rhSaO8B1AM1fNni/PbcgjXoD0YrcPHxwt9Jb1zH0mjh1KXF6guL
         PZvBrP6+xKay8nrafoKZ5/kH2Xxz8u7GHIPmA/Y7wH34NVvIIP6viryXp/6udP0JFkmo
         2EYmN6kKTFWyupyZKQfC7AExn1c/AnFDBvoEIHdqS5GoXMrtrkGDR3WToaIid63wDw58
         lXsvkiM+F/PLvRCDRbo9Z90epoyQrn+xCo5r4t6an+4aU4Wa3KnOfmphdBVeEUkKf49D
         AToA==
X-Gm-Message-State: AO0yUKV1hvJ/n/JDunDYc8kTj4x7yrzDoo9YhesCgv8ORS/3ibI/paau
        CsB1lB5Bl+p1zuilnt7+em5a1w==
X-Google-Smtp-Source: AK7set/5k1GfTFtBWwJKweA6AzuLqCq0Rpe5GmAk/7GLC53Qn/d/VV3OKEJrtgKjXechPHpjExU3eQ==
X-Received: by 2002:a17:906:5594:b0:928:796d:71e8 with SMTP id y20-20020a170906559400b00928796d71e8mr2805289ejp.3.1678694095545;
        Mon, 13 Mar 2023 00:54:55 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:f052:f15:3f90:fcb3])
        by smtp.gmail.com with ESMTPSA id g7-20020a1709061c8700b008b980c3e013sm3146943ejh.179.2023.03.13.00.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 00:54:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 5/9] ASoC: dt-bindings: qcom,lpass-tx-macro: Add SM8550 TX macro
Date:   Mon, 13 Mar 2023 08:54:41 +0100
Message-Id: <20230313075445.17160-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230313075445.17160-1-krzysztof.kozlowski@linaro.org>
References: <20230313075445.17160-1-krzysztof.kozlowski@linaro.org>
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

Add the TX macro codec on Qualcomm SM8550, which comes without NPL clock
exposed.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,lpass-tx-macro.yaml    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
index 559da2509d8d..9d6e67524daf 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
@@ -15,6 +15,7 @@ properties:
       - qcom,sc7280-lpass-tx-macro
       - qcom,sm8250-lpass-tx-macro
       - qcom,sm8450-lpass-tx-macro
+      - qcom,sm8550-lpass-tx-macro
       - qcom,sc8280xp-lpass-tx-macro
 
   reg:
@@ -96,6 +97,23 @@ allOf:
             - const: dcodec
             - const: fsgen
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sm8550-lpass-tx-macro
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: mclk
+            - const: macro
+            - const: dcodec
+            - const: fsgen
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1

