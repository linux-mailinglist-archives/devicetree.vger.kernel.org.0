Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 94B3C18AC59
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2020 06:40:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727085AbgCSFkq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Mar 2020 01:40:46 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:35370 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727063AbgCSFkp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Mar 2020 01:40:45 -0400
Received: by mail-pl1-f196.google.com with SMTP id g6so577589plt.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2020 22:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cyCIYRiG58oI2Jq7ZJtWmwccOTnDPz2E+ahBUJwhepg=;
        b=RvT93Q2HIVa2wQjAavOrQcjjvBzoTD2d/Vi0v4ILPVwAzX0dg8fy+LstszJeJ9LYsG
         h9Urt8EI4rk4+e+JOpzUihNvclfFm64LFGjzHeJcniNPXN0peBt+C/ibQMaALx8sQD57
         3PRx+NHS2yn3f097HiMTm8+qbDWAyTyHFLatvInITefZQ3pMOrsrYk7Oj++eHChUG5tD
         +KN0ICuFOTKxbEUJIGQmAsNH6J0MBbMjRdAXsvjYCye+2g0ymTjeM3oqw6cXinUmNni3
         Nma7XDkNIdwNBj70L4W7Ro3j8nxaMs8rq2kOlT0ehEWqTQhq8eelvuXlDq1su585cyIo
         cXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cyCIYRiG58oI2Jq7ZJtWmwccOTnDPz2E+ahBUJwhepg=;
        b=YJuhLpUflVY7rNozAfDhQO5jwz+JNm8s2eTPwje71QK7rF+2g8JCoi9jFiKB/QfGhn
         zo2MDHEwv/4e6w01+GRxYi7Rav4GKEUiu54GB2PAbzFDe3awRVL4sazc+PKXEQYveGWJ
         Ey/Svy4L8a6xTEMho2UAvqVHJuMBXkmIuF98q7VS6wGXvbeasFkgmRaL1t9hrWMiqqs4
         JM4+WZ51Dw+LFnkDeCxntr+cKoZ3VNpmMVru4iw/pkozCQGmDGeOyBLbwmMtiDgjKk6S
         Jq5WhiE81vuO44IP4LKciT2xydLoOyoZqAMjSoTb+BVnITd0ff0s24WHoUO2y4fA6GyL
         C4Uw==
X-Gm-Message-State: ANhLgQ0WjO//47qbODfSLg0/sdjLFDBDfiRwMXNC7IIqsvWF1G+npWgm
        tOiyktyLdAbsGoClDud36Iarcg==
X-Google-Smtp-Source: ADFU+vsVQv/9+mfD/f1ED3jkHlTd7vOGHMk8SR9Qw3XEQH2G5U8b3qmKmp8Edz2JQuozbGE0tbBmxg==
X-Received: by 2002:a17:90a:2663:: with SMTP id l90mr1852159pje.188.1584596443916;
        Wed, 18 Mar 2020 22:40:43 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id l125sm229126pgl.57.2020.03.18.22.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 22:40:43 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>
Subject: [PATCH 2/4] clk: qcom: mmcc-msm8996: Properly describe GPU_GX gdsc
Date:   Wed, 18 Mar 2020 22:39:00 -0700
Message-Id: <20200319053902.3415984-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200319053902.3415984-1-bjorn.andersson@linaro.org>
References: <20200319053902.3415984-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GPU_GX GDSC depends on both GPU GDSC being enabled and that the
VDD_GX rail is powered, so update the description of the node to cover
these requirements.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,mmcc.yaml | 4 ++++
 drivers/clk/qcom/mmcc-msm8996.c                        | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
index 85518494ce43..65d9aa790581 100644
--- a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
@@ -67,6 +67,10 @@ properties:
     description:
        Protected clock specifier list as per common clock binding
 
+  vdd_gfx-supply:
+    description:
+      Regulator supply for the GPU_GX GDSC
+
 required:
   - compatible
   - reg
diff --git a/drivers/clk/qcom/mmcc-msm8996.c b/drivers/clk/qcom/mmcc-msm8996.c
index 6c7592ddf8bb..fd43a35db13b 100644
--- a/drivers/clk/qcom/mmcc-msm8996.c
+++ b/drivers/clk/qcom/mmcc-msm8996.c
@@ -3064,7 +3064,9 @@ static struct gdsc gpu_gx_gdsc = {
 		.name = "gpu_gx",
 	},
 	.pwrsts = PWRSTS_OFF_ON,
+	.parent = &gpu_gdsc.pd,
 	.flags = CLAMP_IO,
+	.supply = "vdd_gfx",
 };
 
 static struct clk_regmap *mmcc_msm8996_clocks[] = {
-- 
2.24.0

