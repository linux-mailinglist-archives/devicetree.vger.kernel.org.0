Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DD4C5A862C
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 20:59:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233128AbiHaS7k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 14:59:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233147AbiHaS7g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 14:59:36 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81EDABB90D
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:58:35 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id p18so12255943ljc.9
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=gHw35hCInqQhuDYl7ZZa1qf6fa7wiZH9XT+GfWRFFMc=;
        b=qRvHlnwA6LVkDzsJ6CjbcOYi2iQzjX5f6LNNXOa1Ip8SFjLhyGZxl1ggp87I4MfXUU
         l/Y+tx1bAJEoj3umKgVSzTbis8AfANbZIncBSBdwULRhdg/9VMW/5Oj5reqrPvonQEIk
         sQClxm17oitW4ee2Urz+5uWb2y5cVyQis0hvWq02QVRJSqZhCoJ4pkrM4+yVUr8FnXQa
         ommH2+mY2CM7ka+5Sv6mw2zSQ52murEBjceXykz4hwbejOn3w1rQWS7YGlyLCdAUO4R/
         wfIDcZA7386oItcsBTB1BHvWcAJ+y3aFv1OiOMBOFjbr+DQXNNXu/VsZp40dTtD7kr/E
         sWww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=gHw35hCInqQhuDYl7ZZa1qf6fa7wiZH9XT+GfWRFFMc=;
        b=yITe+165ZJdAomtglDWixXUGJSr0A7Lp7lnSqzTeBPo6ZedtK5Oob7PgAyYoCDkSUe
         yznIum6r9cFPOO23ZZw2D6GIi91K2RfVU6wsinPpuydSOXpT4HX62r4vDMT/Hqp6iYmB
         NON+h4sbq8mGJY9Ged2J+Dqq6N04d/4/xTxeN7DKm8JaQaz7tZ3lrV4/TTTJn1QVHteC
         qks55ZRhDAtLyaxaWDhdEoKDUqixowNde9ty9J9sIf+Rcu+RYvxNMjTbrPQp9u/FycaT
         NmcdhJESYKlEPYN9dPFWYXTgE4YxDbytPQ3+SBUJgYiqVtPWgn/zRnTl0UnRNd7QwusX
         i7ww==
X-Gm-Message-State: ACgBeo2/CApNUJt7VyVq/5G6yF+7ZtUnB6YWO0AHUmhOtldfxmiYcS6+
        IK0hW8QHa+ZGw7yg3ty12fz6vBmzjxMoCQ==
X-Google-Smtp-Source: AA6agR6sLCLNjJqipmBnxrIlnsSlI7nyjTjWVUXADThFGUOYWJMoMa/1tV68uuiKX65AAKOIaftWLA==
X-Received: by 2002:a2e:9d02:0:b0:25d:d6b9:b753 with SMTP id t2-20020a2e9d02000000b0025dd6b9b753mr8326405lji.344.1661972313805;
        Wed, 31 Aug 2022 11:58:33 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g1-20020a0565123b8100b004948f583e6bsm322422lfv.138.2022.08.31.11.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Aug 2022 11:58:33 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH v5 03/12] dt-bindings: display/mdm: add interconnects property to qcom,mdss-smd845
Date:   Wed, 31 Aug 2022 21:58:21 +0300
Message-Id: <20220831185830.1798676-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831185830.1798676-1-dmitry.baryshkov@linaro.org>
References: <20220831185830.1798676-1-dmitry.baryshkov@linaro.org>
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

Add interconnects required for the SDM845 MDSS device tree node. This
change was made in the commit c8c61c09e38b ("arm64: dts: qcom: sdm845:
Add interconnects property for display"), but was not reflected in the
schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dpu-sdm845.yaml    | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index 3cb2ae336996..ff19555d04e2 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -57,6 +57,16 @@ properties:
 
   ranges: true
 
+  interconnects:
+    items:
+      - description: Interconnect path specifying the port ids for data bus
+      - description: Interconnect path specifying the port ids for data bus
+
+  interconnect-names:
+    items:
+      - const: mdp0-mem
+      - const: mdp1-mem
+
   resets:
     items:
       - description: MDSS_CORE reset
-- 
2.35.1

