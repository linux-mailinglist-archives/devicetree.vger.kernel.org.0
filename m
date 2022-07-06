Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C7E1568BCD
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 16:52:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232577AbiGFOwq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 10:52:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233598AbiGFOw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 10:52:29 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A83625C79
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 07:52:28 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id w2so2427274ljj.7
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 07:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mWYa/JkrXaVyDqQ/AUIdjm9Zadu3uW7Es8evksI4JMM=;
        b=nERqmQSL/Sc95hbch1fUd+1YIJJKoAoxd5LsP6r7mwfI8nOkG5rzaw00oL/4prG7NW
         Mh2X4WCl6FTODYsm+9mEAVMgTWjDNeXWB+vKiwEtOeDe5QFq5dOQi4LHz0bjbnl/59HW
         iPdgDNyuPofN9+LkhhhCVEOfSu0FNzHNomDtkjVXJcWMztTGTZkAvwspoZYDKXu4mVcT
         zhfmWfvOf58fIT1Jr6PGC7Znm3KcqgKcGWbjAjQ1lZBjdJjccwTWrGyXc43FT5A8RyE/
         gSkA2r6BQVSaAB7SFPquNl/o99zqvuyRz6pd46abT+i4L4bSQUQDbfIBRUPVmduLygWR
         4XJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mWYa/JkrXaVyDqQ/AUIdjm9Zadu3uW7Es8evksI4JMM=;
        b=duVaNjrjW0pQR7jLXg/VzwvLaSiIKSaHprygy1cucDS7uIyZ3OHM/Y6YF4+Hxyg8za
         TDAp/fvaPVUYDSBH5ge/Tw1rnpUVylXMIWkQgDPjtCQ48C/vnbjWyrzrP/nLZc62XdXg
         ERwuJGD0WV1KOsyhsRBu2YUUNp+N7obsPyu3H/yvh3Q/X0Yx8t0uuOXlEuCkkqEfXtpd
         y/Tb7R3X8gtuxdqbBodqwieusKiY1QAmCc/hwyZNpkYYjWGfA/g4Zc45DeMYykI4gdV+
         chWs5EResd4Od1/Hg94NVIL8yLQsM91dy3WhPHu5lXcd8svjEFaJuIv3nruQAKfzewpV
         FsPA==
X-Gm-Message-State: AJIora8egrbsZlUkx5KIebsMwZk1U1O0LJx7vxjx386T72kfyQEvmDpq
        +Qy2cpPCxFypTGynbO0zqXwdOw==
X-Google-Smtp-Source: AGRyM1siQ8prPMCEpPsf2tjnXe3IHRkBfsg1LyW8G4wrbodaZchvocP37Mu2sxympGNIK81TjehE8w==
X-Received: by 2002:a05:651c:1798:b0:25d:3043:58e0 with SMTP id bn24-20020a05651c179800b0025d304358e0mr6628027ljb.310.1657119146681;
        Wed, 06 Jul 2022 07:52:26 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v25-20020a056512049900b004855e979abcsm556617lfq.99.2022.07.06.07.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 07:52:25 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 2/4] dt-bindings: display/msm/gpu: document using the amd,imageon adreno too
Date:   Wed,  6 Jul 2022 17:52:20 +0300
Message-Id: <20220706145222.1565238-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220706145222.1565238-1-dmitry.baryshkov@linaro.org>
References: <20220706145222.1565238-1-dmitry.baryshkov@linaro.org>
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

The DT binding desribes using amd,imageon only for Imageon 2xx GPUs. We
have been using amd,imageon with newer (Adreno) GPUs to describe the
headless setup, when the platform does not (yet) have the display DT
nodes (and no display support). Document this trick in the schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 346aabdccf7b..e006da95462c 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -16,9 +16,13 @@ properties:
       - description: |
           The driver is parsing the compat string for Adreno to
           figure out the gpu-id and patch level.
+          Optional amd,imageon compatibility string enables using Adreno
+          without the display node.
         items:
           - pattern: '^qcom,adreno-[3-6][0-9][0-9]\.[0-9]$'
           - const: qcom,adreno
+          - const: amd,imageon
+        minItems: 2
       - description: |
           The driver is parsing the compat string for Imageon to
           figure out the gpu-id and patch level.
@@ -148,6 +152,8 @@ allOf:
                 description: GPU 3D engine clock
               - const: rbbmtimer
                 description: GPU RBBM Timer for Adreno 5xx series
+              - const: rbcpr
+                description: GPU RB CPR clock
           minItems: 2
           maxItems: 7
 
-- 
2.35.1

