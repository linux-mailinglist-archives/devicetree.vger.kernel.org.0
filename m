Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EE505619E6
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 14:09:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234767AbiF3MJB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 08:09:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232111AbiF3MI6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 08:08:58 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A87128727
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:08:54 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id j7so1451838wmp.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QmOHcW4dfoBP/OvF4P53/J8bPrjDpx4wlFz+sssEF1I=;
        b=eUHz07M69XsX41EIdlsP6DW5+h2PJQ2QMgl5OYcPczLU1myyKBoOauaFSW69ZaUJj+
         JDgUCIX+LiWCnbSDRl75ZFRuIDJVvU9FixAE+DFAujVKv4VABC34QWxqJ83yNQL3BSIv
         5gDC8JILomeiFpSG0xQOuGjPLQ/xgVf/UfojGmgq4su8DKjreyYBBycLqUjS5EDXupv8
         0RzAQhSoCMQi4ERVQnsAXb3xSiHqiRVc5BKs9EH/MBNobf74DZjQZdwKDkgAfBYPQS6Z
         8EU1VM7T1UI1ENvPyeRwQ4M9OThqD1MzsDcnXWWLfZholLuz6ET16UGgOdDWRvNYL3ny
         DX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QmOHcW4dfoBP/OvF4P53/J8bPrjDpx4wlFz+sssEF1I=;
        b=3eLlHBvr4d54iqfHNWy7jd314qOOUof/PWY+vfHSxgdH/CCRnhpv7e2FoawlpCcRDI
         ebgu9MKjfdvPdHyRq+GvyUPTZ3lJ3xhOkOUNbfJFvrlG2DHMfTI+tqxv6bimo+il8P64
         dl9L3QeOjfYiU31PzqkXB9Gio95MOOTKi2VwvVGA1evnKdHFejF2cxOmU0SnjXAfbzi2
         Q+ZMe6XN3m5TvmbX0NIPQngeRfdCuOTLjsIuJtiJJ9uZRZsM1N02xU4aIqr3vc0YqymN
         Uef7kb8e5FLM76Ggc6I1LlQhJMphmo/l0Dz7G95VauTYbAxIgnsveVmK8BOjD85ay0ci
         ZJPg==
X-Gm-Message-State: AJIora+gYwJu/NH7jPXQ3MyjLwe34DEckHkWj5Oh3MsNK/V8MiK8+ckL
        TsIKyAMvxtxdj35z+1akFRz7mw==
X-Google-Smtp-Source: AGRyM1s/BaoaFvloTFuVhjoHqSnlJ1Tb0W1qU2Sw/rXvQG/8eapTt6yLmWXi4C2u/YWzGCf4fHt6DQ==
X-Received: by 2002:a05:600c:a02:b0:39d:bdf8:a4f4 with SMTP id z2-20020a05600c0a0200b0039dbdf8a4f4mr9528858wmp.201.1656590932987;
        Thu, 30 Jun 2022 05:08:52 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m1-20020a7bcb81000000b003a05621dc53sm6286532wmi.29.2022.06.30.05.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 05:08:52 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     quic_mkrishn@quicinc.com, swboyd@chromium.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH 4/7] dt-bindings: msm: dsi: Add vdd* descriptions back in
Date:   Thu, 30 Jun 2022 13:08:42 +0100
Message-Id: <20220630120845.3356144-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220630120845.3356144-1-bryan.odonoghue@linaro.org>
References: <20220630120845.3356144-1-bryan.odonoghue@linaro.org>
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

When converting from .txt to .yaml we didn't include descriptions for the
existing regulator supplies.

- vdd
- vdda
- vddio

Add those descriptions into the yaml now as they were prior to the
conversion.

Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/display/msm/dsi-controller-main.yaml    | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 91324f0828448..fd9d472437853 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -125,6 +125,18 @@ properties:
       - port@0
       - port@1
 
+  vdd-supply:
+    description:
+      Phandle to vdd regulator device node
+
+  vddio-supply:
+    description:
+      Phandle to vdd regulator device node
+
+  vdda-supply:
+    description:
+      Phandle to vdd regulator device node
+
 required:
   - compatible
   - reg
-- 
2.36.1

