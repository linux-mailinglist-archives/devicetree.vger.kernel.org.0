Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6482C78583B
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 14:56:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235306AbjHWM4J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 08:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235295AbjHWM4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 08:56:09 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68A79E52
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 05:56:06 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b9a2033978so86350691fa.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 05:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692795364; x=1693400164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ir9r9aQtaSZLleag9LnQwnbzzTQdAeEYrkqtlWNxaqg=;
        b=ajMXmceZDoyg+scvMk5qi+dV0GmCiLbu2LzxlSZ7eftqRXJovgb69uzkPH97S2TFm1
         nwUQXUP4pRIIMWUCMnpLOTFcjzt1zTNul/U66tJH6PiVzMzmEoFk4+NWJaTD3wrv5Dq3
         6zoDUVhp0ytIEC7D43M5ZZ6b8WqMY3IBcihxWXkmgm+EP6hYKPEJ3er9SDJMI20f7VNi
         HNoKlW4cCek/+AXYGbHhhT7JlVO0PE9uSWNZ/N/q/Hw6FQmLDQyOS7gTHyJCzc0VaA2p
         709cnAFbeR6arKE+FzO3tSl2M3/iJu/GjmpbMXw1fEApBbS6OjmSd8YUhGTlDGSP0r8o
         AFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692795364; x=1693400164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ir9r9aQtaSZLleag9LnQwnbzzTQdAeEYrkqtlWNxaqg=;
        b=PNHoMgcOiMo7nC0nn0fN+nsRa7MQf2KWbdG6H1fqNCy5hWfbzBPYwk6Esg8/KD3/0h
         B3fdj4n/LIQybj2ndxe7XcBbVADOm1Mg39qcA8vktcWv354ddRqEEcLwxNJgUDgcLIkG
         HgveUh4I+U4ffxIKzZwDrGgeLQL3+4vbA647QYPXN8uacm/xFoqr8eoOo5TBAYzlSb0v
         DUJuhovBtuonaq30TVYVUTtiPdYqPsxjF4sk4RtzNqhD6LsA8fNIsdgx+Od2TF0sCfTe
         kSlz2CHYexOiCUjFObI8P9JSpSy2dvVC1eiwQiGsHrDG7FXeQY5texiIvv1A1IwfQBUN
         mo0A==
X-Gm-Message-State: AOJu0Yyy3BNGMGaEyCkMO6S/2QrK88bePyeH7XmJD89oIuTqLnmSt6MZ
        kaS/z+KFtac1wWIYAgrYYO2x6w==
X-Google-Smtp-Source: AGHT+IFl1rfVRaXSJJRGubQ9VaBkyAmPY82CjLYb9ZYARysR6Ly8QbCAa4RhFSPjjt3Z1NYiNBt/rw==
X-Received: by 2002:a2e:9e42:0:b0:2b9:e53f:e201 with SMTP id g2-20020a2e9e42000000b002b9e53fe201mr8660457ljk.31.1692795364645;
        Wed, 23 Aug 2023 05:56:04 -0700 (PDT)
Received: from [192.168.1.101] (abyj76.neoplus.adsl.tpnet.pl. [83.9.29.76])
        by smtp.gmail.com with ESMTPSA id a18-20020a05651c011200b002b6db0ed72fsm3220256ljb.48.2023.08.23.05.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 05:56:04 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 23 Aug 2023 14:55:56 +0200
Subject: [PATCH v3 03/10] dt-bindings: display/msm/gpu: Allow A7xx SKUs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230628-topic-a7xx_drmmsm-v3-3-4ee67ccbaf9d@linaro.org>
References: <20230628-topic-a7xx_drmmsm-v3-0-4ee67ccbaf9d@linaro.org>
In-Reply-To: <20230628-topic-a7xx_drmmsm-v3-0-4ee67ccbaf9d@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1692795358; l=1566;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=VV4z2afr+St9/dA+OjbMmt+l3E+tCjarurRFVAL3RG8=;
 b=kAV6L1e0d21BQjDFKY/r0RqAH7k0AQOD+l/6KhIl/NxRosdQ2A985bZCVCnTd1eoR16XqTE5P
 WnWSH0DmYi3DtSpKFlZF1/hfISm6OlK9gim8ddwQwn1kIjULpxGRXGc
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow A7xx SKUs, such as the A730 GPU found on SM8450 and friends.
They use GMU for all things DVFS, just like most A6xx GPUs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> # sm8450
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 56b9b247e8c2..b019db954793 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -23,7 +23,7 @@ properties:
           The driver is parsing the compat string for Adreno to
           figure out the gpu-id and patch level.
         items:
-          - pattern: '^qcom,adreno-[3-6][0-9][0-9]\.[0-9]$'
+          - pattern: '^qcom,adreno-[3-7][0-9][0-9]\.[0-9]$'
           - const: qcom,adreno
       - description: |
           The driver is parsing the compat string for Imageon to
@@ -203,7 +203,7 @@ allOf:
         properties:
           compatible:
             contains:
-              pattern: '^qcom,adreno-6[0-9][0-9]\.[0-9]$'
+              pattern: '^qcom,adreno-[67][0-9][0-9]\.[0-9]$'
 
       then: # Starting with A6xx, the clocks are usually defined in the GMU node
         properties:

-- 
2.42.0

