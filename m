Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDC5C486889
	for <lists+devicetree@lfdr.de>; Thu,  6 Jan 2022 18:31:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241842AbiAFRbu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jan 2022 12:31:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241841AbiAFRbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jan 2022 12:31:43 -0500
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA50FC0611FD
        for <devicetree@vger.kernel.org>; Thu,  6 Jan 2022 09:31:42 -0800 (PST)
Received: by mail-qt1-x835.google.com with SMTP id q14so2957653qtx.10
        for <devicetree@vger.kernel.org>; Thu, 06 Jan 2022 09:31:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0diK6zWMgOO/TArP/zyW7Q3OH2Ix/QmAaJD5h2ncz4A=;
        b=f8L1zEEiexnVRKtN6fQPiHjidl66sG1jd2ZfOr9XaTc8JW50nZibE4qCEoByKN6P0j
         Jl+yE8+gCv+cRtVosq9mRqIRy3xjP9xA1Xfgu1TKtDLAfNACkDyMXZfE7j8EYBvmDl1T
         ijlCpapCI03Sh6Aq1+GGYGjDKJwwvBwFwPPcXcjENTeYOG6maFFcGh1Gp5tgU7Szhx+O
         xdmIg+A+eE4++0WFu1++JjM2qVUKw/RuCbDEdAYtG2QfD0U1mSnv9yu06jTiQ+in0/fQ
         ypErg59jt6NY/whScnfu69+xMFZHFlBkiNnO+AxAXY/h5Be3LtT3l8k5hFKRqE24vWDD
         JPdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0diK6zWMgOO/TArP/zyW7Q3OH2Ix/QmAaJD5h2ncz4A=;
        b=GCQM8vFMkpemLHESAMmQKebo5kG4tTe2pBnu0bqt3/lzZNLlixVXGZWwSDfxMdpAOm
         XB2q3ziub7gmrd5rDW87asbs3vb2WSOsfPALdNP+QKARvgyYhirbV/zA0QjBCJi/x9Za
         NLAdnW5GFD/0OdCQ+qrHD4tLRsyKYl+PW1QZCwh6heVOLmAgSdXOCzsnaY57RikPD6YG
         HY26pb+xVepYf2hGsgmZ18ov3JNHhsAbCHx2Y+AQtBA3G+JLp6j6XbS1WW4es46SXbho
         J8/xpNwk9MAg/UDtlyTlnKJJar10t10VW2JRG/5V3jvNiSQ7V8AuuFo6lIx+1q/n/jqN
         0xHA==
X-Gm-Message-State: AOAM532/vGjgPzDL7fpYlFjlUMEAXp4LvQt9Ix7LkLmL5vlOoZUHtKiR
        T5TGcvN76VW0ZFAg/ZVaZqEhbQ==
X-Google-Smtp-Source: ABdhPJwSAGXQbxLeiPXRQMP8Z670ynjkc3CpLHmy43dV0YQdxHKg6DTd9LenJq5zw317vAChbc5Nlw==
X-Received: by 2002:a05:622a:d5:: with SMTP id p21mr51478976qtw.518.1641490301875;
        Thu, 06 Jan 2022 09:31:41 -0800 (PST)
Received: from pop-os.fios-router.home (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.googlemail.com with ESMTPSA id i21sm2126536qti.31.2022.01.06.09.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jan 2022 09:31:41 -0800 (PST)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        daniel.lezcano@linaro.org, rafael@kernel.org, rui.zhang@intel.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [Patch v3 2/3] arm64: dts: qcom: sm8150: Add support for LMh node
Date:   Thu,  6 Jan 2022 12:31:37 -0500
Message-Id: <20220106173138.411097-3-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220106173138.411097-1-thara.gopinath@linaro.org>
References: <20220106173138.411097-1-thara.gopinath@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add LMh nodes for cpu cluster0 and cpu cluster1 for sm8150 SoC.

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 81b4ff2cc4cd..e755d7ab78dd 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3650,6 +3650,30 @@ cpufreq_hw: cpufreq@18323000 {
 			#freq-domain-cells = <1>;
 		};
 
+		lmh_cluster1: lmh@18350800 {
+			compatible = "qcom,sm8150-lmh";
+			reg = <0 0x18350800 0 0x400>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			cpus = <&CPU4>;
+			qcom,lmh-temp-arm-millicelsius = <60000>;
+			qcom,lmh-temp-low-millicelsius = <84500>;
+			qcom,lmh-temp-high-millicelsius = <85000>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
+		lmh_cluster0: lmh@18358800 {
+			compatible = "qcom,sm8150-lmh";
+			reg = <0 0x18358800 0 0x400>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			cpus = <&CPU0>;
+			qcom,lmh-temp-arm-millicelsius = <60000>;
+			qcom,lmh-temp-low-millicelsius = <84500>;
+			qcom,lmh-temp-high-millicelsius = <85000>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
 		wifi: wifi@18800000 {
 			compatible = "qcom,wcn3990-wifi";
 			reg = <0 0x18800000 0 0x800000>;
-- 
2.25.1

