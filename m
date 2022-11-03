Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8B66618902
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 20:54:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231183AbiKCTx6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 15:53:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230337AbiKCTxq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 15:53:46 -0400
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD390B7C
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 12:53:45 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id s20so1879883qkg.5
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 12:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B8OPD5SdDugxqBTcH6K5BwRgjhIONxvnoSDJQa8wlKs=;
        b=NiOjngkra0YgcxX92AvSFHaEiKJ2RLuDxh5KHGSXBUij3nxztpOaWtHGt2cVeSi6QD
         c3hajrwQnWk40SBqrwYqQ39whdrLxYZKDapLoBI3w7fFsdXMCr7XPK+4Z7j613yhCPnx
         HGuUgn7IqXQioBmJ7tHHp+zewdzqM0NZbH5vCeI4p7cxz+0IgNWXvCSUQGYUzI7Zlzwz
         1U4GtWjm/5VJSaeLFfmBCqftDUgx+vrRk4zkPcgELzwF3gZtRGLav/eCwBe0a2Sef7Iw
         iGz/1HVFmJsIw3FbtPSR6udzyfz0/lyNFImtdgnyWFA8ke6Jybj1s8JUKF+IDdCyAxB/
         1rVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B8OPD5SdDugxqBTcH6K5BwRgjhIONxvnoSDJQa8wlKs=;
        b=kFutEjEDpfaiDL5EPd6PDkjYusXh3PRECzG88deauZDH1PKgFw4feVVH+zp+pWAl0R
         NBBqgOwZn4bzRTyT4JZ3hj16UZr5nD+t9eYfXiDB4XtdBx4MLaR6dGZKc1fVO55apbfV
         UTqu++oNeYYTsjuYdmWh8b+/yflpWVnq9lU7LrqWe8SQbBQ0YMecO8S0m1lKnmvkm/eX
         ZyKctvOlfRkGwFJvd0+aOZUJuo3jZnmEq5Kce80p74sKNHjM8KQR/n2c2xS3iOn/YoZv
         E8iLt02wS2IIF9tS61Vu6fCsKRpdiPC72e89th9LfqYwmxT8b+ovNju1u+eqwjIQVww1
         JphQ==
X-Gm-Message-State: ACrzQf01AH7tiEHo3rBBB6Hp3JoFZXkTP2NO6RQtRnu1/Ag3Zo04dhHs
        IUhfSKJEHMOm5yfUsKkiLmysJA==
X-Google-Smtp-Source: AMsMyM7FFoacjbKWGh/95PpW8gyE0h/dzOYTRGJt9GOcoOtoKRUw00mgda8sl/n++3DtKfBSsR91EA==
X-Received: by 2002:a05:620a:13ee:b0:6fa:1ef7:a3b7 with SMTP id h14-20020a05620a13ee00b006fa1ef7a3b7mr20957047qkl.265.1667505224868;
        Thu, 03 Nov 2022 12:53:44 -0700 (PDT)
Received: from krzk-bin.. ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id de41-20020a05620a372900b006b615cd8c13sm1328892qkb.106.2022.11.03.12.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 12:53:44 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ASoC: dt-bindings: qcom,lpass: do not hard-code clock-output-names
Date:   Thu,  3 Nov 2022 15:53:39 -0400
Message-Id: <20221103195341.174972-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The purpose of clock-output-names is to customize desired clock name,
not use one, same name.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/sound/qcom,lpass-rx-macro.yaml         | 3 +--
 .../devicetree/bindings/sound/qcom,lpass-tx-macro.yaml         | 3 +--
 .../devicetree/bindings/sound/qcom,lpass-va-macro.yaml         | 3 +--
 .../devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml        | 3 +--
 4 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
index 1de11e7f33bb..14016671f32b 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -43,8 +43,7 @@ properties:
           - const: fsgen
 
   clock-output-names:
-    items:
-      - const: mclk
+    maxItems: 1
 
   power-domains:
     maxItems: 2
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
index de8297b358e8..e647ba392a0f 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
@@ -43,8 +43,7 @@ properties:
           - const: fsgen
 
   clock-output-names:
-    items:
-      - const: mclk
+    maxItems: 1
 
   power-domains:
     maxItems: 2
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index 9f473c08cb2e..c36caf90b837 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -39,8 +39,7 @@ properties:
           - const: mclk
 
   clock-output-names:
-    items:
-      - const: fsgen
+    maxItems: 1
 
   power-domains:
     maxItems: 2
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
index 4959ad658eac..155c7344412a 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
@@ -38,8 +38,7 @@ properties:
       - const: fsgen
 
   clock-output-names:
-    items:
-      - const: mclk
+    maxItems: 1
 
   qcom,dmic-sample-rate:
     description: dmic sample rate
-- 
2.34.1

