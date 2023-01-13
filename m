Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54A8A668E45
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 07:51:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239628AbjAMGvD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 01:51:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238106AbjAMGuS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 01:50:18 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7192E7D9FC
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 22:34:47 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id bq39so31776303lfb.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 22:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wa02nRWtFw12u53LiQ798dfsib+GYGyK/C00nF2+qvE=;
        b=T07UQpP8Gs9ETe0tParaPAPTaxYEVcTkuA8b18m/IsuUnBU+vdT2hB9RXtbLpdZ72a
         7BvMG717cMaUSx2lrnaEV0x9iC8zlLr3WLzivX/QOYG1OCGFHLInae1sc63Sp+90sOD0
         6nD6YUoUkTAx6i19bR0W7EBWXusUWu7hGbo/aQuntDZ4P86Za0gkE1szkl/oE40AaXqi
         Mdnu9WDteGijUQOzHo5rWRzedvBlkDfmPMV1ogEj54lUG+Y5i4Yy9UI/CIsHtO1ILrcc
         DNL729z0eQ1YDDf2Yp8ILJvh34SZPUSmRrb6nw6+WFaVIxB1BssnX0PQbQ8HV63I+xfe
         U+Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wa02nRWtFw12u53LiQ798dfsib+GYGyK/C00nF2+qvE=;
        b=61+uQAoWNaKnGkJI+cVgQStJPdoFr+hv025vIOLHnd+3qctn0CqoSEYEQ3Lbaon+TQ
         X3u5LheFNA5YwUsSOUaQgJQEqbyAk5FwGBTIPkp29wnEWhpuvPrCy8DA2DRLDxjrwzEb
         APimuCtml6rQqhuo+rd55l0/r2R74Ywy5kzK+xsVRR57a51xPm8wQYgtAGwzNIXDpxtt
         EwISsfIC+lDwbvkMJzLUjYeC4n25HWU0f5NnBhVa731DAcjZMJ1p2BnmeKTkW+OFariV
         DSpq1Ex0HMzFt74YAKFSFjz+88Ch5vs5L1UHqsATEbx5AFbmtIVD60m3XM8gjrAQI6a6
         nYGQ==
X-Gm-Message-State: AFqh2kq74TF3c9bu3qwSljHng8K+j+h4mVKlmh7eESmVsBs/R5HxvpNo
        5hifC/b4bUOMrErca4Ti47EDQQ==
X-Google-Smtp-Source: AMrXdXs81VzZPBwLRDFIgEm00wNsm7rdGNW6tKDKTFkJkk1FnbAfsBnHRkGR4bBJFScvGJyCG+8QSw==
X-Received: by 2002:ac2:5fcf:0:b0:4a4:68b7:d64b with SMTP id q15-20020ac25fcf000000b004a468b7d64bmr19275610lfg.50.1673591633228;
        Thu, 12 Jan 2023 22:33:53 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id f23-20020ac25337000000b004b55ddeb7e3sm3693524lfh.309.2023.01.12.22.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 22:33:52 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH] dt-bindings: display/msm/dsi-phy: drop unused allOf clauses
Date:   Fri, 13 Jan 2023 08:33:51 +0200
Message-Id: <20230113063351.24131-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/msm/dsi-phy-10nm.yaml          | 3 +--
 .../devicetree/bindings/display/msm/dsi-phy-14nm.yaml          | 3 +--
 .../devicetree/bindings/display/msm/dsi-phy-20nm.yaml          | 3 +--
 .../devicetree/bindings/display/msm/dsi-phy-28nm.yaml          | 3 +--
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 3 +--
 5 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
index 3ec466c3ab38..71702151bafa 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
@@ -9,8 +9,7 @@ title: Qualcomm Display DSI 10nm PHY
 maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
-allOf:
-  - $ref: dsi-phy-common.yaml#
+$ref: dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
index a43e11d3b00d..cc99946245c6 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
@@ -9,8 +9,7 @@ title: Qualcomm Display DSI 14nm PHY
 maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
-allOf:
-  - $ref: dsi-phy-common.yaml#
+$ref: dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
index 9c1f9140c731..ae4df76835f7 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-20nm.yaml
@@ -9,8 +9,7 @@ title: Qualcomm Display DSI 20nm PHY
 maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
-allOf:
-  - $ref: dsi-phy-common.yaml#
+$ref: dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
index cf4a338c4661..96c607d7196e 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
@@ -9,8 +9,7 @@ title: Qualcomm Display DSI 28nm PHY
 maintainers:
   - Krishna Manikandan <quic_mkrishn@quicinc.com>
 
-allOf:
-  - $ref: dsi-phy-common.yaml#
+$ref: dsi-phy-common.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 78ab8c410ccd..53e2f005d3cf 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -9,8 +9,7 @@ title: Qualcomm Display DSI 7nm PHY
 maintainers:
   - Jonathan Marek <jonathan@marek.ca>
 
-allOf:
-  - $ref: dsi-phy-common.yaml#
+$ref: dsi-phy-common.yaml#
 
 properties:
   compatible:
-- 
2.39.0

