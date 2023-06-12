Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AAA272BCB8
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 11:32:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235202AbjFLJcm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 05:32:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbjFLJbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 05:31:17 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED7A635BB
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f660e57123so2596691e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561899; x=1689153899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GgOU29bwSmA1xmnYvgN48ffEdaMQtMdjrdVTUnvg0aY=;
        b=vyX9Q+kD9G1p5rZ6oHppIAZRDTqqLuaLmmx8ER/1w9clbWGVKsqSzOZIssSGm8lUKA
         dlBs3V+g8fkc6+a3VNSEJc5CAKqMBwCpBJobp58ZPlkjDf4gYm8MeEiyGt0H3nYapjdU
         rLNaG8AWbRv39nWwT4gHrrsq2bGBt/mjyDGKhCQVoeiOFWfkZWRsJ8TQOz31yUf3AvL5
         nw3BwJ8ocxS+TzBLzPUgr5JBsXuA1EbH4qK8yPDA2P/kQJF+Z+Aujhld1mA4LMr+t/W/
         D+y18SR7STIM5gSDK9/lewz4exGG34D7uUb6LQAITMMCYN23tDt0IYL700rjOgmkyHSJ
         iMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561899; x=1689153899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GgOU29bwSmA1xmnYvgN48ffEdaMQtMdjrdVTUnvg0aY=;
        b=FsCXPTiB0wbbo9y+DJPLf/GYvLN3SXMxKKbxT6QbbP9SkI4q6IHLWruB8JynUph5Pw
         m6IgV0fylg/7mpDhsShjE0+5grXAxMeEutwv2sUQPFQ6GUrwBIPld0jLf5CKzT4uwEsD
         wAN6FHDwKg3g2+BIahcEhmN3dI5TlNqN3Fxc/c2RZao+IFbzUlBlh4h6l+EQ+8OBc6I8
         ib30G5J0gui9hJb/rOf9gRv/gPryfB7NuNRIJqbr0PXdQ4LrlJEuURT5R2NuhFHFty/t
         zNPlJaDT3u9mgEpw0Rso4jcB+CtVeujZ0N05Pz7x8s6s10ceS1IA0Vw+3DJe41PlDWnl
         M2fg==
X-Gm-Message-State: AC+VfDzioe2rAwe94bCAWsr5Xm6iEm86BrcNtXd+hrcH/cPeSaOkjLoL
        g181Lg1MSYpQAoXgKGgu5+Ecjw==
X-Google-Smtp-Source: ACHHUZ4zEjuyJv27H7TYosddbPT1hcVmJ0AeF5dGbiGkRiAcC5SK9xkn5i3NEKXynfbxTRLbQZV0aQ==
X-Received: by 2002:a19:6550:0:b0:4f4:b218:e85f with SMTP id c16-20020a196550000000b004f4b218e85fmr2780825lfj.31.1686561899243;
        Mon, 12 Jun 2023 02:24:59 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:58 -0700 (PDT)
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
Subject: [PATCH 23/26] arm64: dts: qcom: sa8775p: add the first 1Gb ethernet interface
Date:   Mon, 12 Jun 2023 11:23:52 +0200
Message-Id: <20230612092355.87937-24-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
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
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 30 +++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 0e59000a0c82..f43a2a5d1d11 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2315,6 +2315,36 @@ cpufreq_hw: cpufreq@18591000 {
 
 			#freq-domain-cells = <1>;
 		};
+
+		ethernet0: ethernet@23040000 {
+			compatible = "qcom,sa8775p-ethqos";
+			reg = <0x0 0x23040000 0x0 0x10000>,
+			      <0x0 0x23056000 0x0 0x100>;
+			reg-names = "stmmaceth", "rgmii";
+
+			clocks = <&gcc GCC_EMAC0_AXI_CLK>,
+				 <&gcc GCC_EMAC0_SLV_AHB_CLK>,
+				 <&gcc GCC_EMAC0_PTP_CLK>,
+				 <&gcc GCC_EMAC0_PHY_AUX_CLK>;
+			clock-names = "stmmaceth", "pclk", "ptp_ref", "phyaux";
+
+			power-domains = <&gcc EMAC0_GDSC>;
+
+			interrupts = <GIC_SPI 946 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+
+			phys = <&serdes_phy>;
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

