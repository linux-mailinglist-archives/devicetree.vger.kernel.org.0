Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2475A526ED7
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 09:14:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230246AbiENCy4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 22:54:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230329AbiENCyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 22:54:41 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EC9832FBE0
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 18:14:02 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id c24so7687761lfv.11
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 18:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SHyTroMz5ImSiERShLEYY2Lrzc1ZDEW9nKld+SBJzIg=;
        b=JF/o8z2xGK4IYyajhW7kic1uo6fhcgzKoKiUSqS9rQflZeYs4G0rGL5On+qzYrzzgN
         tSBvYR1KaG/Tf5PRVu1Kc0mmr5L5ytxQ+dsKT+Sh7GIL49+uI9yj0ys1Q9qqIdDLT10z
         HdhYfPAQ4ubYkMtwQyM0wkIYZygbmOJKURPSwUOfML+r6EKUhCTZVeWeaqaCJ6YJ6wPr
         xIYBft6qO6nJP8P2LmE6Hq/H6ZlhDysAxdCX4P68mpgPkq6GPAcJLpw+z3UZuhgkRY2X
         n1g1ydDeOB/WtBy7Y816i6HV6p3a5oAOzGWJEGH63unTYOlGqZebWh1iVaeZxt0q8EJg
         PVhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SHyTroMz5ImSiERShLEYY2Lrzc1ZDEW9nKld+SBJzIg=;
        b=5LpJZ/3tXf6yux4a4aVNGj8MPKoDAyMgD16nx4mU7KLtq6s2ss0EEhK3Bul4/85Mlm
         9koGm1/fsL318k+O6zv+crCchQoj95tpMRHI00soHf7yQGGVX30K3Yhw0JfFD8q/dYfN
         LzTa9jn7aDndfSDfG+YmPxqTa3UtyvHdteUB0xmDyKMSCGoHjhym1RYgD2M3NfbsEv/P
         enpMGNnBTKsHJqYDGTJZTyf59zH4v9QGDsawSSyMt2zwezOsdyp1bePJsEQY3YRn1gTn
         J4yJibAHWmlaserHTZ76Vt8OQtviSQlR1r5A7+MyrmM6mWC6D1Oj3Iy5W34KmZKQgH68
         VcDw==
X-Gm-Message-State: AOAM533S8ZlYmb+hL5kSxkZkBEl/KWjM2dFFcoNiaY+voYufEin/mOiL
        3J0xnZcnCZg4mfAUlNjNSUEuhMPAUfhnzQ==
X-Google-Smtp-Source: ABdhPJyt9kZ0moFirieBEehdkuftUzbvXW3I6DqWzhK4hLUA8C3Z1+kCmz78zAb4I7GoTqvLc4WB/g==
X-Received: by 2002:a05:6512:2308:b0:473:da88:ea2b with SMTP id o8-20020a056512230800b00473da88ea2bmr5129769lfu.339.1652486592103;
        Fri, 13 May 2022 17:03:12 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r10-20020a19ac4a000000b0047255d211c3sm529231lfc.242.2022.05.13.17.03.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 May 2022 17:03:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: qcom: sdm630: add device node for the modem PAS
Date:   Sat, 14 May 2022 03:03:08 +0300
Message-Id: <20220514000310.3070578-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514000310.3070578-1-dmitry.baryshkov@linaro.org>
References: <20220514000310.3070578-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree node describing modem device found on the SDM630/SDM660
devices.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 59 ++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index b06e87152cd4..1bc0602e9f64 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1018,6 +1018,65 @@ sd-cd {
 			};
 		};
 
+		mss_pil: remoteproc@4080000 {
+			compatible = "qcom,sdm660-mss-pil";
+			reg = <0x04080000 0x408>, <0x04180000 0x48>;
+			reg-names = "qdsp6", "rmb";
+
+			interrupts-extended =
+				<&intc GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+				<&modem_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+				<&modem_smp2p_in 1 IRQ_TYPE_EDGE_RISING>,
+				<&modem_smp2p_in 2 IRQ_TYPE_EDGE_RISING>,
+				<&modem_smp2p_in 3 IRQ_TYPE_EDGE_RISING>,
+				<&modem_smp2p_in 7 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog", "fatal", "ready",
+					  "handover", "stop-ack",
+					  "shutdown-ack";
+
+			clocks = <&gcc GCC_MSS_CFG_AHB_CLK>,
+				 <&gcc GCC_BIMC_MSS_Q6_AXI_CLK>,
+				 <&gcc GCC_BOOT_ROM_AHB_CLK>,
+				 <&gcc GCC_MSS_GPLL0_DIV_CLK>,
+				 <&gcc GCC_MSS_SNOC_AXI_CLK>,
+				 <&gcc GCC_MSS_MNOC_BIMC_AXI_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&rpmcc RPM_SMD_QDSS_CLK>;
+			clock-names = "iface", "bus", "mem", "gpll0_mss",
+				      "snoc_axi", "mnoc_axi", "xo", "qdss";
+
+			qcom,smem-states = <&modem_smp2p_out 0>;
+			qcom,smem-state-names = "stop";
+
+			resets = <&gcc GCC_MSS_RESTART>;
+			reset-names = "mss_restart";
+
+			qcom,halt-regs = <&tcsr_mutex_regs 0x23000 0x25000 0x24000>;
+
+			power-domains = <&rpmpd SDM660_VDDCX>,
+					<&rpmpd SDM660_VDDMX>;
+			power-domain-names = "cx", "mx";
+
+			status = "disabled";
+
+			mba {
+				memory-region = <&mba_region>;
+			};
+
+			mpss {
+				memory-region = <&mpss_region>;
+			};
+
+			glink-edge {
+				interrupts = <GIC_SPI 452 IRQ_TYPE_EDGE_RISING>;
+				label = "modem";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 15>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		adreno_gpu: gpu@5000000 {
 			compatible = "qcom,adreno-508.0", "qcom,adreno";
 
-- 
2.35.1

