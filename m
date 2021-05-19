Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96F0B389160
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:39:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354346AbhESOki (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:40:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347639AbhESOk1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:40:27 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03949C06134D
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:38:26 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id b9-20020a17090a9909b029015cf9effaeaso3601071pjp.5
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IaOgy5E/D/bWKnSjfGh3VxC5Z9iVmzAmqxR9MxuONrg=;
        b=Vvm5HPOnSLpyJOXwDu8vb2SPZLbgNWcpeutWd4vm2Ov76Rb2MbBfrMjqPu7kp8la28
         rioaFea8YX0ogcKmKgEjQu9ihaDkl2Hppmx6e9vbBHRQsUx7nsjZfzJwi+9BGxLliGg4
         f2j1qMWk9k0yUfWJ9yvYQXaPDLNWxIKw5P9dlXcDI3GqA4LD1eqkVrPzzSF2Ku3lCUbj
         M9+mgvnQgN5uFBpHgL38tN6bfZSvvquyYoDgCwnaOFnqY7MnBf3jPPuHohygtsL0d3UU
         aeYmErY5H+ZR5La+CfhencbYFYf5LLrH2JyKCofQr77OCjPkFT/fwIW6aBuvSKfu7UE+
         7azw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IaOgy5E/D/bWKnSjfGh3VxC5Z9iVmzAmqxR9MxuONrg=;
        b=Id6+kXIntXXzROLoD3dQVN798FsLB3PBbJjwT0DPCKkfvPK2w/twbrrpwLQNPrdgtb
         Rxy7CcgAxjqNT30OTqVfwCpUi8LhcQPqRYnNNTLd8N0daEh4JkbfL8G94qjtO4mbtezu
         xIdC9tYQMtmofhGuzvhi607QXSvtx6VhOD2fbv25SvPxVvEYC+2BfV5z0NttebOE/uAu
         Id93bZm8oe2172aJTcuHcnUPTCep9iPxo4XjeATVEmLQdle8SOR9DivaqchyD5qn9k8F
         S1jcY02Tky2F1yFsyonm9aCejc/TUJ3uD/wmhHwfw9YUDkqvMsBi2mU+cZbN81UXxnZp
         SoZw==
X-Gm-Message-State: AOAM5326DEUYdQVhb6mD9r41YtIp0sH4NGJD/lL6F92JzEAedq9rhi1k
        abowouW3L1DFLPrvRA6mraaq3w==
X-Google-Smtp-Source: ABdhPJzWo8ETp1ciHc+3WQrVQp1e53+LQOk1FfNU7NzV+sIVt9FzZAXAbLJOlwunY4BssrCo/5l3mg==
X-Received: by 2002:a17:902:8505:b029:ec:b451:71cd with SMTP id bj5-20020a1709028505b02900ecb45171cdmr11394815plb.23.1621435105574;
        Wed, 19 May 2021 07:38:25 -0700 (PDT)
Received: from localhost.localdomain.name ([122.177.135.250])
        by smtp.gmail.com with ESMTPSA id o24sm9239515pgl.55.2021.05.19.07.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:38:25 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com
Subject: [PATCH v3 09/17] arm64/dts: qcom: Use new compatibles for crypto nodes
Date:   Wed, 19 May 2021 20:06:52 +0530
Message-Id: <20210519143700.27392-10-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519143700.27392-1-bhupesh.sharma@linaro.org>
References: <20210519143700.27392-1-bhupesh.sharma@linaro.org>
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
Cc: Andy Gross <agross@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: David S. Miller <davem@davemloft.net>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: dmaengine@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: linux-crypto@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: bhupesh.linux@gmail.com
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 9fa5b028e4f3..978c34f176de 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -205,7 +205,7 @@ cryptobam: dma-controller@704000 {
 		};
 
 		crypto: crypto@73a000 {
-			compatible = "qcom,crypto-v5.1";
+			compatible = "qcom,ipq6018-qce";
 			reg = <0x0 0x0073a000 0x0 0x6000>;
 			clocks = <&gcc GCC_CRYPTO_AHB_CLK>,
 				<&gcc GCC_CRYPTO_AXI_CLK>,
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 2ec4be930fd6..6423991fa303 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2328,7 +2328,7 @@ cryptobam: dma@1dc4000 {
 		};
 
 		crypto: crypto@1dfa000 {
-			compatible = "qcom,crypto-v5.4";
+			compatible = "qcom,sdm845-qce";
 			reg = <0 0x01dfa000 0 0x6000>;
 			clocks = <&gcc GCC_CE1_AHB_CLK>,
 				 <&gcc GCC_CE1_AHB_CLK>,
-- 
2.31.1

