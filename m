Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6705268C563
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 19:08:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbjBFSIZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 13:08:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230189AbjBFSIW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 13:08:22 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 919DF12044
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 10:08:09 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id k13so3802305wrh.8
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 10:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N1rv0t43J6tKvWo934ap8gxxkbzw40bp71nO/z+5p0I=;
        b=z0TFKQ6wxNXvFSlJcaVakmDWnbGR/+iJXLF2oFmqKp29Ueu6m6nqNk2o7/iL8wgxvY
         EiLsTkG4zgCCyEgeHp/8e/eaoesUWu45pH6P+i4tGN5tvI2kefCMIgUrmUdzXuFkAO0B
         inpMmoHXLU32kd2oYOaZGkKwRkYkl9k//4mYKghDLGD3EyDQ++NCeczGaSm1dVxpKtKb
         1yO5VKJ7kmijqhzLjomihD5pnJCOlD8Mw4ztgn3vZBw9iiPn5/W9qfTZrB3dki+8WrnS
         q3qYkAIdmKpiDzdJAJRqVQtnGnzTGQellaTLr+iVWEhUgGfzdFDsz9Q+o2OuGkJvm3wm
         clmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1rv0t43J6tKvWo934ap8gxxkbzw40bp71nO/z+5p0I=;
        b=fyHUV9zcluQMxx0yiXt3zdCzwAkie3gjMM/w7BEwEPPWq5zxOUeFZcLC6QF+6GdTzt
         vzzo2CUOihAvVmojzFwF4SFpctWw4iCinEo0jRKqHVp9pCtOXAmuC5Um1my2IxewTK8H
         3Cgrr0Is2gj50/05FMW11VU9vxQKZZ6KuiPCyyFdbLGWikIeox/xZbhqTI3x9RP2GCH7
         6cM7FGKOD3LQPwcqXGh5e+rnaz/ckj12jRxgNM5OpTDQveQfnIkoWtDYlUzajfxDd9vB
         ImpMlNVC1tiRJF5IFuFU3KwVe1Sxm1eUVPJBltiBm50nVNqznZpQ8yMOqoERdzsVMH2z
         y7jA==
X-Gm-Message-State: AO0yUKVB323nWlevxxNVfw0Aghr/kY5T4gjgw2JftUBOOOA41Zxl4IUd
        xoYJaOL3dI4Wr/SymlQ300TE+Q==
X-Google-Smtp-Source: AK7set8ElkzR+jxlBPw1USAVyiw1jBgLmw4dM3/TvWW35hELqxj8QCQwrOAuiEZ0m1ZbVVIulr+hEw==
X-Received: by 2002:a05:6000:789:b0:2bf:cb91:a40a with SMTP id bu9-20020a056000078900b002bfcb91a40amr16979292wrb.46.1675706888435;
        Mon, 06 Feb 2023 10:08:08 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d18-20020a5d6452000000b002c3f1214e33sm365451wrw.100.2023.02.06.10.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 10:08:08 -0800 (PST)
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
        alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH 1/3] ASoC: dt-bindings: qcom,wsa881x: Allow sound-name-prefix
Date:   Mon,  6 Feb 2023 19:08:03 +0100
Message-Id: <20230206180805.6621-1-krzysztof.kozlowski@linaro.org>
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

Reference common DAI properties to fix:

  sdm845-db845c.dtb: speaker@0,1: 'sound-name-prefix' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
index d702b489320f..ac03672ebf6d 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
@@ -15,6 +15,9 @@ description: |
   Their primary operating mode uses a SoundWire digital audio
   interface. This binding is for SoundWire interface.
 
+allOf:
+  - $ref: dai-common.yaml#
+
 properties:
   compatible:
     const: sdw10217201000
@@ -39,7 +42,7 @@ required:
   - "#thermal-sensor-cells"
   - "#sound-dai-cells"
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1

