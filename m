Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 988BF7318A5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 14:16:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344805AbjFOMQF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 08:16:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344802AbjFOMPv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 08:15:51 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AEA42713
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 05:15:01 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-311153ec442so457700f8f.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 05:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831300; x=1689423300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bnFCRdd8+pW5G4gM6AK4GzwvX/vcLvio6wOvkwBDM+o=;
        b=pEXYtznWL7ccGPcrRA9YVtMLcUzOuzhuhvRghC5+X5GHKr08vJaJd47E4Euths1v2D
         KTaVTtZnaTCR7S6s/c+unUwfYQ6lNAYtixgy4kHOLXrsylvNi6NUr8NzIK4YD45Xu/AP
         1Cfg6B8LAWFaD+ZadqXE0UKhMha/K529jgbyPssIo72SxJQTUohMQbBhTFYX88R4vzH7
         m3yg5bIg/3fmOkgJkdgwWo/nIg5bl4lbU2Y4M1yufcg/lxQ4WfyEIq/ieLEiQEPOtaE2
         ds+N80TvyTQwuSdwkQMmb13qIdUo0/DFPRvXJj+8Pxrnt/IIFbSLjQxNivg987zU212r
         mn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831300; x=1689423300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bnFCRdd8+pW5G4gM6AK4GzwvX/vcLvio6wOvkwBDM+o=;
        b=Vqw8wgfR1/sUQ3kuPXwx7gSrkRN6w5QeMmtaSxeKNlxvy5YOYujvuOH/Ti5mR09Tks
         CbWYkq372rcneb50LE+LK5o4GQodJ2q0rOy92UmvV+h2hA2t/Wp66anmqRXI1VIDmGVQ
         8GUQkWlQVR4IIOa92It+UGzDLc9N6F2/157cmGii00tw8fHsitSd2aqdLZD5xf6Cv0Uj
         73KdO2Y0pbw6TQeJCzwss05y2t2+/YzISBTUgKDecyeQnWfceEGXWHSa3bQ9OsnRvKbj
         d7FGjquwBk1dQYp0WmCqwkuROa3Rn6T1EB/QC23mkkdjdE9QyQRMRCnIAc3E6aQaUnxT
         AyeQ==
X-Gm-Message-State: AC+VfDy79loxI0nNDJZgjrwY3cS9BmWL7nPHi9awjevsYeNID/ANmTre
        I31IMKBsoMMImCBoouu59hmCmA==
X-Google-Smtp-Source: ACHHUZ4vr4DRSIEmSnhzfPN/LE7Bexsx6P4Fyn0VzIWcKWtl6TOM4tzbL7BJoOM717gdbzuNy8AiGA==
X-Received: by 2002:a5d:6852:0:b0:30f:c622:b983 with SMTP id o18-20020a5d6852000000b0030fc622b983mr4062107wrw.20.1686831299907;
        Thu, 15 Jun 2023 05:14:59 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:59 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>
Cc:     netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 20/23] arm64: dts: qcom: sa8775p: add the first 1Gb ethernet interface
Date:   Thu, 15 Jun 2023 14:14:16 +0200
Message-Id: <20230615121419.175862-21-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the node for the first ethernet interface on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 33 +++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index b6d95813c98c..59eedfc9c2cb 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2315,6 +2315,39 @@ cpufreq_hw: cpufreq@18591000 {
 
 			#freq-domain-cells = <1>;
 		};
+
+		ethernet0: ethernet@23040000 {
+			compatible = "qcom,sa8775p-ethqos";
+			reg = <0x0 0x23040000 0x0 0x10000>,
+			      <0x0 0x23056000 0x0 0x100>;
+			reg-names = "stmmaceth", "rgmii";
+
+			interrupts = <GIC_SPI 946 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+
+			clocks = <&gcc GCC_EMAC0_AXI_CLK>,
+				 <&gcc GCC_EMAC0_SLV_AHB_CLK>,
+				 <&gcc GCC_EMAC0_PTP_CLK>,
+				 <&gcc GCC_EMAC0_PHY_AUX_CLK>;
+			clock-names = "stmmaceth",
+				      "pclk",
+				      "ptp_ref",
+				      "phyaux";
+
+			power-domains = <&gcc EMAC0_GDSC>;
+
+			phys = <&serdes0>;
+			phy-names = "serdes";
+
+			iommus = <&apps_smmu 0x120 0xf>;
+
+			snps,tso;
+			snps,pbl = <32>;
+			rx-fifo-depth = <16384>;
+			tx-fifo-depth = <16384>;
+
+			status = "disabled";
+		};
 	};
 
 	arch_timer: timer {
-- 
2.39.2

