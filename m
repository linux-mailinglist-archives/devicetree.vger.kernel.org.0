Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C4AE6C7427
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 00:37:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231375AbjCWXhx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 19:37:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231346AbjCWXhw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 19:37:52 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABB452E0DE
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 16:37:45 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id y15so40685lfa.7
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 16:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679614664; x=1682206664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jVIns/0vdM7AwgpqxnEx6iUpxqqxllZdFf87dpNAnJU=;
        b=abBKd4ZDlEc5hYjhxUul+uzqGFPqvc3EP4UFC3cp0x0DSsIaB6aw9fWew717zqcXxH
         vKLA/fQ46ZdcfwePS6xl1Vb4knN4G5Vsq0RhBPS9uUelXktp63OEHLHWstYD1fHpdaDX
         X1ZufydXn2IwG4GVbESHJChXfuqDkWTk+MzMFaQFt+Lp3sa+klfqPKOadNA/ENKXzdlI
         Q3rLosO5ORObCV2JhiMLw/Cr5ZPjoZpYoMzAGDMVZaBZuK3ytJ2gY+WL7UdmZeHCGRUa
         YQv/8DM/yQ5lZmY+SFwGC2dj/U3IeHjWG91gG3BTOWfWCIHEcwv58dQMB5kKH8SborDr
         ZOVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679614664; x=1682206664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jVIns/0vdM7AwgpqxnEx6iUpxqqxllZdFf87dpNAnJU=;
        b=Ino4+yKD+MJtj7iUiHlG/TUy0wGMQUNMgmUf1bFL2Z9faedN4QewIbysSDF5rNGZPJ
         4u4DwJY5BWbSIrtCm79kikGgUJzWZ4pTvrLQATO66gGTE8Z67RYipzhP+6EsEaYWFx2M
         5wq/RRj6CXUFdE4OldGHW3nuXtymkmFrMsJJpbwAJXaMXbgF1rifKo/L/5FjOQMaASUS
         0xpGWZX5nKkb75gJuEyWR6f45K7pKjlxv0ngWM+RleOhR9JrdFMhdc+97mzpXQjJCEGV
         uadd7FlPC0+gD90Tj5YyG/2hTMitxo4Ixr1IIG+rNqin1aXIj3RZRszZoMm7tR/V7Zf5
         Xn/Q==
X-Gm-Message-State: AAQBX9fHHB2xChe/7HThbT9xwpEHWfryvfWjGD/e+xKLnIo/kDnJV4sF
        +GuoedqBX5VhpiJivdAS/Y5Xpg==
X-Google-Smtp-Source: AKy350YdL+5thge7GM/3A38JSAtVXWh3DVzg8a9F2x1ccun6FvWXQlHh+n8DLDNb8Ta6HFY2ZsLEmA==
X-Received: by 2002:ac2:4184:0:b0:4e9:d613:503e with SMTP id z4-20020ac24184000000b004e9d613503emr88625lfh.6.1679614663880;
        Thu, 23 Mar 2023 16:37:43 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id w9-20020ac254a9000000b004e845b49d81sm3105264lfk.140.2023.03.23.16.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 16:37:43 -0700 (PDT)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: qcom: sm8250: add description of Qualcomm Crypto Engine IP
Date:   Fri, 24 Mar 2023 01:37:34 +0200
Message-Id: <20230323233735.2131020-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230323233735.2131020-1-vladimir.zapolskiy@linaro.org>
References: <20230323233735.2131020-1-vladimir.zapolskiy@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add description of QCE and its corresponding BAM DMA IPs on SM8250 SoC.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 7b78761f2041..363818da792a 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2222,6 +2222,30 @@ ufs_mem_phy_lanes: phy@1d87400 {
 			};
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.0";
+			reg = <0x0 0x01dc4000 0x0 0x24000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			num-channels = <8>;
+			qcom,num-ees = <2>;
+			iommus = <&apps_smmu 0x586 0x11>,
+				 <&apps_smmu 0x596 0x11>;
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sm8250-qce", "qcom,sm8150-qce", "qcom,qce";
+			reg = <0x0 0x01dfa000 0x0 0x6000>;
+			dmas = <&cryptobam 6>, <&cryptobam 7>;
+			dma-names = "rx", "tx";
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "memory";
+			iommus = <&apps_smmu 0x586 0x11>,
+				 <&apps_smmu 0x596 0x11>;
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x40000>;
-- 
2.33.0

