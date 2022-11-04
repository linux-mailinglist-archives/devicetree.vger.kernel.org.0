Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD7AB6196D4
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 14:03:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231545AbiKDNDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 09:03:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231515AbiKDNDd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 09:03:33 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D67E2DA8C
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 06:03:32 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id t10so6305511ljj.0
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 06:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eq+xrGXQkafyNxdD3bUOX4BO/00RbY/2YQOJ/yUkbp4=;
        b=ZiAuXKe8Rzc52FzKCj1P6vLEukBXj5jyCz/b9mAAKh0BTHoyVAsE+eG77G3IjCP6/C
         uf5M8d0DbcHOsA8nEm1G2+rgbkWmIwDYuDAfu8h2Bcto/uzfK+Uou1wzUnDNsixsxBRn
         zGD1wzXUAfFppM5FiNoHnaVAi8tOAkcqHIkXJGMXLdzkn/EPaiDgXuU2zmQvENqU4dU+
         dfzfVKvm8xgI7llaTDks/rkeLArgt6bW/08+cfLFElXOe+oUMT7LkSB0SljNstEE8tLX
         v78biHFO4I2Q2LHBGwL2INNvRKIq763Cue0ATSMVKue4NusiX+lE4BV1A2yPQ9zlzx3U
         PM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eq+xrGXQkafyNxdD3bUOX4BO/00RbY/2YQOJ/yUkbp4=;
        b=uzgJCgJKbsA+yA7TiI8kxMN41fxaGLd/y2cn06fd3LK2DAGX6VaA4+nlkDUGK9vwPM
         bG7TJALPxVxtn84pjInsyT5zCFXH67//6r1lPdfVc0hDJ2e9M21daE7yNrTlbU7CiKKX
         9TXmh8koN70G1wf+G8kHSlG09VaFxjxytqm1CfIeg8qadfiEme9mOLMOzvZzjT9mv7Ct
         K4G5e0FQRGV782azkLansboA4vq0fuSiMK8ejsZFXvKo4zjGFvqN0Pj0W9ecn4EpEKL+
         Q+YoEBxP99PsUoUph8hgkUcxtKWUHR9FKW4KwcXsYafUEp1WawuzleZnYkpuCjKc0VK5
         LaHg==
X-Gm-Message-State: ACrzQf3QGYVCvzw2oULypFKaGyoqI3GA+6M4AIHrUItGubOifecqJQ18
        DPyCZ4GURsyugZM7zkBrtB8uRA==
X-Google-Smtp-Source: AMsMyM5hN5nl5fyFXYAKV2CP6o7qjJSaNcDR/PFkXWZ8jUMBTE5L6jIxU05R9fdSkfnwDLw9Rst+xg==
X-Received: by 2002:a2e:88d3:0:b0:275:ae74:c5ed with SMTP id a19-20020a2e88d3000000b00275ae74c5edmr1901801ljk.13.1667567010388;
        Fri, 04 Nov 2022 06:03:30 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id s6-20020a2eb626000000b0026fe0a052c5sm419975ljn.129.2022.11.04.06.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 06:03:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/8] dt-bindings: display/msm: add sm8350 and sm8450 DSI PHYs
Date:   Fri,  4 Nov 2022 16:03:18 +0300
Message-Id: <20221104130324.1024242-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221104130324.1024242-1-dmitry.baryshkov@linaro.org>
References: <20221104130324.1024242-1-dmitry.baryshkov@linaro.org>
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

SM8350 and SM8450 platforms use the same driver and same bindings as the
existing 7nm DSI PHYs. Add corresponding compatibility strings.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index c851770bbdf2..bffd161fedfd 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -15,6 +15,8 @@ allOf:
 properties:
   compatible:
     enum:
+      - qcom,dsi-phy-5nm-8350
+      - qcom,dsi-phy-5nm-8450
       - qcom,dsi-phy-7nm
       - qcom,dsi-phy-7nm-8150
       - qcom,sc7280-dsi-phy-7nm
-- 
2.35.1

