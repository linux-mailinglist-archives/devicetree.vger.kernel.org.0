Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B27461F262
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 13:06:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230313AbiKGMGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 07:06:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229659AbiKGMGB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 07:06:01 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C305DE3D
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 04:05:57 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id z24so15902908ljn.4
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 04:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sIQpUknokjs3QFKaGMUkV8vshn2qA+chP0pID9rWGu0=;
        b=hUjzv4uq6McMIRbtnD927Xh4H4zD7dS3mU/clZiqOlMDQy73URdVadD2ucACl++UVp
         +6JIDQGoN84wGy7oLBtjkHsNuAZvQ1Onbor2DLeF8DKHn62xtyfAIlbMJ/ryRA6+VmT/
         Z/HAbqb3iloLuCHTr+16utOMjBvnUPhyrLsOf8iaeqweR2LV8GDN8V6IRykNKK3aAmAI
         MRwmamZc6s9o6knDEzNuwSj7C+muM7DJcsnPxBmJZ1tIoA0jSXbttDbmw8qehE35Hmpl
         gkgkLSQPUAA9GUluwp7bdeP7tWenzAFKnT6PCCWre0NoASrCYL0zdGYI5aCL0nvVBSKD
         sMpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sIQpUknokjs3QFKaGMUkV8vshn2qA+chP0pID9rWGu0=;
        b=nddvgKxWZpwfcJylXGQyqktxYr2g3M0naZyzvCljxiWbt06DhtzNVKnhB0o1+vX9RF
         jNVXQOkBJITugdEdDBdvH2XXbJSusUc1VmHqzfbwQbnIfqa798Bjmjbs8i7rC9gwKuyy
         gRVdNRFVHhp40KvgN3cCEUgEXTCQzfwz8x1KcA6GzO2mZ0KKvrf3MNqSboPiunp+t9bd
         pMqETxwbAiPwU3P+HSGLaETXd4wXUZKwR+I1zXnVUob1X5toULeIMFhjvXwSu396AN1v
         F/531c9hnd9PNFEms1N3/8HM7y6tcxi9gIbfODl3nNoHbxiOyAm+eXlpor6PL4uR2z90
         XliA==
X-Gm-Message-State: ACrzQf1RuZAK032tWP6to0aUN4tP29vdoR/vCbg89YmoMlVbFqw2E55D
        D2v+u6nxQr8jPFYSGIm8PN061g==
X-Google-Smtp-Source: AMsMyM7uVZOfkrfUV29LP23hpD30iklFEu0Lr9zkTjjTqUbzCG3iCT0qPYlZ0RAEcSDbQkDUDY+++A==
X-Received: by 2002:a2e:bc26:0:b0:277:f49:b234 with SMTP id b38-20020a2ebc26000000b002770f49b234mr18054013ljf.1.1667822756088;
        Mon, 07 Nov 2022 04:05:56 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id p13-20020ac24ecd000000b0049936272173sm1200065lfr.204.2022.11.07.04.05.54
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 07 Nov 2022 04:05:55 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Thierry Reding <treding@nvidia.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: arm: cpus: Add Kryo 660 CPUs
Date:   Mon,  7 Nov 2022 13:05:34 +0100
Message-Id: <20221107120539.12305-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
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

From: Konrad Dybcio <konrad.dybcio@somainline.org>

Add a compatible for Kryo 660 CPUs found in at least Qualcomm SM6375.

Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v1:
- Pick up tags

 Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 5c13b73e4d57..b2058345bb8e 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -183,6 +183,7 @@ properties:
       - qcom,kryo485
       - qcom,kryo560
       - qcom,kryo570
+      - qcom,kryo660
       - qcom,kryo685
       - qcom,kryo780
       - qcom,scorpion
-- 
2.38.1

