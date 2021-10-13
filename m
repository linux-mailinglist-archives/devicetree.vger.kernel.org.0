Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2289042BE46
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 12:59:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230236AbhJMLBF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 07:01:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232454AbhJMLAU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 07:00:20 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BD0FC061798
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:56:51 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id 187so2084038pfc.10
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 03:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ja8Ba5e+MB0FccnK2ia9/kIYMwLPuC5ly+PwoULA+yo=;
        b=kosfRirMgfRU5sRJpY3HlVK0GJJrzP/qigr05kNf9c4IxxYVpTgkVTHNu3cEKer6yX
         AXwglOX6mzTG67IWqMJtKCr7GN21BztiTyt1pklCpcwHGLLMvm3CLXRNLOmleu3IpZ6T
         Ij4sv7/kzSEQZN0xo7E0tffIsW+aHBshIj+xQMjhzughs9yKwuxjhZgF+PmB8rRpNXkA
         kW6W0xS05ZHrAWXh65sp26KEg+NrxVaofKvJx099Vxqj3DWgMDJL/5W7e4NrUVCtu0GE
         ruuuSfNSY8ZoFIAJHAyMFAgk4FHMKl42r/rYL/msilnI7SOrYGEyeU8OaSotYJigLUZP
         fLUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ja8Ba5e+MB0FccnK2ia9/kIYMwLPuC5ly+PwoULA+yo=;
        b=HIe4xVFoIaRHgl3WROwdqZKGIixyyc+RfoKn+mvjMjHfnQ+XHlb7R7RUYt3CH9EKj6
         iHOrO9aIkGWKSoc2RnRZAAa8loAdYu/xxd2RQrlSq09TJlO1qgnGVopeMR9s5uFrNsnj
         Qt1VRcE6WA8EpwbuPxQF7+eDUcyqu4Q8FCrBy9r1Qs7xUTf0SYkM440uejXuyS3eHN/b
         sVm2IiqWzlIAh3ka547Avgz1MRPhNTCF/8yDfv95ELzJIWcUdZFZY8BTiqg+RCPo6Mq1
         unAyo6yaxJGRYyU120xt30OaoZ6ctveDK8musXfu2LKSO+owQ5t7URQNNL+xsde6Db02
         XY/Q==
X-Gm-Message-State: AOAM5301dtA3a9+cmdTc1CxgPPL+Z/s+xu2ptX7UnH5ocu62l5fOXgQw
        ykJAcO+tJ7ZRa4t1HGOp/NnR3Q==
X-Google-Smtp-Source: ABdhPJzLvttLnwS3x7bhY4F/1Uzs0rKG+CIh4od0t8aOF1eMTlKKM2zZgXw2oKRqCxFDqckspz+fkw==
X-Received: by 2002:a05:6a00:2311:b0:431:c19f:2a93 with SMTP id h17-20020a056a00231100b00431c19f2a93mr37574344pfh.11.1634122610611;
        Wed, 13 Oct 2021 03:56:50 -0700 (PDT)
Received: from localhost.name ([122.161.48.68])
        by smtp.gmail.com with ESMTPSA id b13sm6155351pjl.15.2021.10.13.03.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 03:56:50 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, herbert@gondor.apana.org.au,
        davem@davemloft.net, Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v4 12/20] arm64/dts: qcom: Use new compatibles for crypto nodes
Date:   Wed, 13 Oct 2021 16:25:33 +0530
Message-Id: <20211013105541.68045-13-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
References: <20211013105541.68045-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since we are using soc specific qce crypto IP compatibles
in the bindings now, use the same in the device tree files
which include the crypto nodes.

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 55c961b5f1ab..2078edd36212 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -204,7 +204,7 @@ cryptobam: dma-controller@704000 {
 		};
 
 		crypto: crypto@73a000 {
-			compatible = "qcom,crypto-v5.1";
+			compatible = "qcom,ipq6018-qce";
 			reg = <0x0 0x0073a000 0x0 0x6000>;
 			clocks = <&gcc GCC_CRYPTO_AHB_CLK>,
 				<&gcc GCC_CRYPTO_AXI_CLK>,
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index a301ca7664c1..575964f80b31 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2328,7 +2328,7 @@ cryptobam: dma-controller@1dc4000 {
 		};
 
 		crypto: crypto@1dfa000 {
-			compatible = "qcom,crypto-v5.4";
+			compatible = "qcom,sdm845-qce";
 			reg = <0 0x01dfa000 0 0x6000>;
 			clocks = <&gcc GCC_CE1_AHB_CLK>,
 				 <&gcc GCC_CE1_AHB_CLK>,
-- 
2.31.1

