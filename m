Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E1B05BF5AE
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 06:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231293AbiIUE4r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 00:56:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231182AbiIUE4f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 00:56:35 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8C3F7F267
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 21:56:30 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id f23so4501639plr.6
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 21:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=gbkqn1VUY/QAMhQngTXvc8V80xWIUJrckZqCzPQlfZ4=;
        b=bvP+kDqgFVNXbgzkYrLGHXxnXM6835axKy+PK5uEdps51aW9+p970/OyMcPNfbVtXN
         lGlvrZ+U0mjv5tGlgipESmKRLiFBap4b9e+QWIAwB0XsLx6ze71B49pno2I96nAydlRJ
         q7vd2valccvr2A3xU+Wn7uPhDwaBRWnGrKisJH9eKtilByxpINB/YTJPZN4r7NU0SfAe
         aBxUQJHNzzshBl2t3JIxlH71/g2sDaYZ9gSMeJKzz6LTAchMT9FQFFpVzXHZ7vm9UMn9
         pQDk00ez2lvSC0kcGm/sztH3fTE56SMbcMFIA28+E7uAV4x3Ivf3Tgwa5iVFwolzt+XP
         Ujjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=gbkqn1VUY/QAMhQngTXvc8V80xWIUJrckZqCzPQlfZ4=;
        b=Tt3EjqKDdmNtQj3P6G/N7vCT4iWxTHp/nhB0VqBbINhtMGnUHDO0ycqS76fp+VxK7j
         70hTY7u5MPST3uLQSa7x4L6631neeZgVMAWZH/3RRkrN4Vsk/rT9IHhuQk4//sBUKmCv
         Kwbqx8KIbHtj5Iftu+9aEkV5m22PEuAQJPhY94TTSkY8rJwVxpsOO41uOuV7cgHlL5JT
         kRK1n8Ka7j/uWhLykBwtj7sg3HlcDZeIzM6SQugpYOOnh+W2gYiEt5MplOglkjZKC/dS
         b0z8xFZZwumIWTq6CioVNTlBcqNGP/Aw+D4CMrqSzO/htg8WtyygxwssCspYtMR9Z4Gg
         nOWg==
X-Gm-Message-State: ACrzQf2qKMK0q/F7k5srW9qYOfwRlPqCpnxEPOl+ASHiugI/0xFNr0H3
        Fj9lgevzyd5X7onV01B4kA/Elw==
X-Google-Smtp-Source: AMsMyM6uibYsmbLsti3ubDip02pfOgOdhoJFXnPM4bP6sIwCBOB1OfEhMAM+xysIymIq60zZBiEFFQ==
X-Received: by 2002:a17:902:c401:b0:178:41d1:ef50 with SMTP id k1-20020a170902c40100b0017841d1ef50mr2974798plk.66.1663736190116;
        Tue, 20 Sep 2022 21:56:30 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:8e50:8ba8:7ad7:f34c:2f5])
        by smtp.gmail.com with ESMTPSA id p12-20020a170902e74c00b00176e2fa216csm871829plf.52.2022.09.20.21.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 21:56:29 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, thara.gopinath@gmail.com,
        devicetree@vger.kernel.org, robh@kernel.org,
        krzysztof.kozlowski@linaro.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de
Subject: [PATCH v7 3/4] arm64: dts: qcom: sm8150: Add dt entries to support crypto engine.
Date:   Wed, 21 Sep 2022 10:26:01 +0530
Message-Id: <20220921045602.1462007-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220921045602.1462007-1-bhupesh.sharma@linaro.org>
References: <20220921045602.1462007-1-bhupesh.sharma@linaro.org>
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

Add crypto engine (CE) and CE BAM related nodes and definitions to
'sm8150.dtsi'.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index cef8c4f4f0ff..6e21352a158c 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2041,6 +2041,34 @@ ufs_mem_phy_lanes: phy@1d87400 {
 			};
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.0";
+			reg = <0 0x01dc4000 0 0x24000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			iommus = <&apps_smmu 0x504 0x0011>,
+				 <&apps_smmu 0x506 0x0011>,
+				 <&apps_smmu 0x514 0x0011>,
+				 <&apps_smmu 0x516 0x0011>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "memory";
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sm8150-qce";
+			reg = <0 0x01dfa000 0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x504 0x0011>,
+				 <&apps_smmu 0x506 0x0011>,
+				 <&apps_smmu 0x514 0x0011>,
+				 <&apps_smmu 0x516 0x0011>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "memory";
+		};
+
 		ipa_virt: interconnect@1e00000 {
 			compatible = "qcom,sm8150-ipa-virt";
 			reg = <0 0x01e00000 0 0x1000>;
-- 
2.37.1

