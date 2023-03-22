Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DE486C4989
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 12:47:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230390AbjCVLq7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 07:46:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230272AbjCVLqb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 07:46:31 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 775BC62323
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 04:46:10 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id ja10so19003458plb.5
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 04:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679485567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=49XEgaz1wK95phl0NGb6ukHofMpjAnNHJLsVXiISQD4=;
        b=yowy7WlRK5hc22HigoKlwXZgbQ8buRt/BgUGxNx6g5N1KZw+aL7DODseO7mEhddT99
         4ASWA0EjCSTa4URJr9mG/vPAJ3fKSOXXdSiFk/R9O5k5YsU31Wra0yBr/j4MRwqf1H46
         6a8NmIzF2BzgvfRefNQ5XxuDa3/RsqT+lftIql+hLTIuieVlyI3iOpb/TiHoZsFiWVMH
         Anev7hHjwplnDVvI720YgrOd5dPWeiolj1wUfGK8wlIewKPPmid9nZa7IIWaNFOBW8mi
         1OVF87BZCz1gJZvbKqfOhCSMaBCTs7KhDzQ8B/wqnQ8VJOEvklxaMy/VMbgWQ3opMM6J
         g5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679485567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=49XEgaz1wK95phl0NGb6ukHofMpjAnNHJLsVXiISQD4=;
        b=B53k6iNgigsoXHD9GhWquCD/iANDKrCzsLDOZ8906phHw83iQns3SvRvb6cA4z/80z
         syTuf97ZrudTb5ajZLEStoah01E5xZV+pXKKSEXSZzVIctVmoeHhciVXS4Xt6iTmec6/
         WyywdulhXXAASSc/vVCK5suWVoQ0bmDCQieRW3f9zllodtHzpDH3nyX8sUiP3zZy+uxX
         KFiiHuISuAOR5pMaQwwqDACd1Ha9qUd/WHriqciuyrUDND37l7E2EGzwODUlMfC15LQK
         3TNQxtCCnSjmkCpnozHJY2bhQ6UEKjpoYFVbdn4hbvpXZKfaB8ynwt8WZiZZu4Fi4XNG
         PeKA==
X-Gm-Message-State: AO0yUKUfN7VkxHvAHzn4hXVpUVKr53K3Q3uPAO5gPVfjEOBCU1VrVTSY
        a+hfXs9B3flCyVVR7tuvxdA0DQ==
X-Google-Smtp-Source: AK7set+5cLocjBfH5WLntMyyfIutB6JIGXaPcgBSY56tgLik8gG2vBC18ER30dloJn+OmTMhSZCNxQ==
X-Received: by 2002:a17:902:f9c7:b0:19e:839e:49d8 with SMTP id kz7-20020a170902f9c700b0019e839e49d8mr2161408plb.59.1679485567500;
        Wed, 22 Mar 2023 04:46:07 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:d4c3:8671:83c0:33ae:5a96])
        by smtp.gmail.com with ESMTPSA id jd1-20020a170903260100b0019b0afc24e8sm10386649plb.250.2023.03.22.04.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 04:46:07 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v2 07/10] arm64: dts: qcom: sm8150: Add Crypto Engine support
Date:   Wed, 22 Mar 2023 17:15:16 +0530
Message-Id: <20230322114519.3412469-8-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230322114519.3412469-1-bhupesh.sharma@linaro.org>
References: <20230322114519.3412469-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add crypto engine (CE) and CE BAM related nodes and definitions to
'sm8150.dtsi'.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 662098e85b97..5213e7e3e44b 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2082,6 +2082,28 @@ ufs_mem_phy_lanes: phy@1d87400 {
 			};
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
+			reg = <0 0x01dc4000 0 0x24000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			iommus = <&apps_smmu 0x514 0x0011>,
+				 <&apps_smmu 0x516 0x0011>;
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sm8150-qce", "qcom,qce";
+			reg = <0 0x01dfa000 0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x514 0x0011>,
+				 <&apps_smmu 0x516 0x0011>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "memory";
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x20000>;
-- 
2.38.1

