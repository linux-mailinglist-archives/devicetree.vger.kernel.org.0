Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80C892C4F80
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 08:31:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729479AbgKZH3k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 02:29:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729093AbgKZH3k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 02:29:40 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0771C0613D4
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 23:29:38 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id l17so1003770pgk.1
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 23:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GP/RLQWEDchE9LzjUTRfvMF58ENPqeEQ3Vvq9pvpD94=;
        b=IWikPKEJRAA2PtKy1qmWs9edanz/sraQoZz85InqUpvpd3Qb2wTR3VtjV/LytD0yD+
         lpHISQBnRBRAS+vYYklCmBCH7uH8UU7glm7CX3aGQgkbc/7KZJVeCtHGpkF/ujiMjPtb
         CLn5qSIK5qS8VwEFr5v+KGodrJNlRDYS1WOcdKuehu8zujpJQwKzRFOJ1XOlPEd9hHRG
         5synRKoaNvhkgypQvhqWREpxSf/cksVw1KzUNG0j1v3IwgaHezLx7sHXaqFsNGJ0W9bW
         ANSsG3rS1ngNk/JE+ka2+7TNU+GaWoVPRsKAbJ1Thyllq4Hly1rUcuSNqb2w6s3Fn+i6
         VS+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GP/RLQWEDchE9LzjUTRfvMF58ENPqeEQ3Vvq9pvpD94=;
        b=mKLQTMPa8Uw2HaJybAyJzGGP6i5cPR6caTgLc94pKVBy1nNAwbxdCBnd0/1WAMVgip
         +96BXprJPZduW77sP0UpgDaUeXI/J0a59W4p0bMeS0xQDL4HfHiBdhlJRscaeRnKyN0F
         qTBwaVjojlcMra/FE8rfggtcrbpW+POKEQd6EAlN/r8tVTuqch2cn/YdIfMw14mJLYxE
         JlkG77/dYxosKWHyEQbyTcvUwagbCyqcXXuZQwNoG70slH6xjd0RLSbrq/iNW+F/rjnK
         xdHTcAaIv+wMCfU8Jmhvpecp4pp0w53tizg2Au5NJVnC4/cjMT0IfJViLmt2E6pnkkG3
         6r/w==
X-Gm-Message-State: AOAM5316hf+DofeTcwLNGgdCFIc4K/LoE0ESin2vfNa+aLixvyGKjQfe
        WGtoZfxS49HA5WGieBbt94pg
X-Google-Smtp-Source: ABdhPJxdnS7t3IQhsVxD7mCMRvjEQ63yhQJXiRPytWksfZRnVUiYTj9+m57D6KAKudr11ehEwmVCWQ==
X-Received: by 2002:a62:76c2:0:b029:198:1469:3a8d with SMTP id r185-20020a6276c20000b029019814693a8dmr1693866pfc.20.1606375777812;
        Wed, 25 Nov 2020 23:29:37 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6e95:f2a:3996:9d7f:e389:7f7d])
        by smtp.gmail.com with ESMTPSA id t9sm5508097pjq.46.2020.11.25.23.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 23:29:37 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v4 3/6] dt-bindings: clock: Introduce RPMHCC bindings for SDX55
Date:   Thu, 26 Nov 2020 12:58:41 +0530
Message-Id: <20201126072844.35370-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201126072844.35370-1-manivannan.sadhasivam@linaro.org>
References: <20201126072844.35370-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vinod Koul <vkoul@kernel.org>

Add compatible for SDX55 RPMHCC and DT include.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 include/dt-bindings/clock/qcom,rpmh.h                    | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index a46a3a799a70..a54930f111ba 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,sc7180-rpmh-clk
       - qcom,sdm845-rpmh-clk
+      - qcom,sdx55-rpmh-clk
       - qcom,sm8150-rpmh-clk
       - qcom,sm8250-rpmh-clk
 
diff --git a/include/dt-bindings/clock/qcom,rpmh.h b/include/dt-bindings/clock/qcom,rpmh.h
index 2e6c54e65455..cd806eccb7dd 100644
--- a/include/dt-bindings/clock/qcom,rpmh.h
+++ b/include/dt-bindings/clock/qcom,rpmh.h
@@ -21,5 +21,6 @@
 #define RPMH_IPA_CLK				12
 #define RPMH_LN_BB_CLK1				13
 #define RPMH_LN_BB_CLK1_A			14
+#define RPMH_QPIC_CLK				15
 
 #endif
-- 
2.25.1

