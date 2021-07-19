Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6962B3CEEDF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 00:01:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1389202AbhGSVRz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 17:17:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388278AbhGSUsq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 16:48:46 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95AE3C0613E1
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 14:25:01 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id a7so17333646iln.6
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 14:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=46RsDietiFjiFAmxHIYkL76FeOwDdqdmSCbTGG461UY=;
        b=u0YJcFOFHDFPhKL9n6v8T/fbiThMvb5VJ6ffhsL620e5jzPAZUV/Eov+IK3LPGgsKb
         sxS8HETu5mv093AOYUgGHq66GXQrufK5aAjGBwjIgnYZfqlRJxQReyMWrEV8R9rbpEJD
         KnPA6GaZN2ATQ0SN7Fq2LdHZpFaCD9elKkwlfFzn1EdvlrccIVxTNWj23qVAEs5dtbGW
         ouo8n/+Uyq74CogfkvXXRHZVwGkWksNxWJ5p77IfOp24wQgXvdZM2W9QS0v9LRJlq3tR
         Kr64yw2ZlE4nCLdK7wuTLyof7bDxQOLsU+9+STUGvCOSbaMtdiHCgHndpQrow6eWW/c9
         PqBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=46RsDietiFjiFAmxHIYkL76FeOwDdqdmSCbTGG461UY=;
        b=nz0RFuA+38S2hfPBy+btdKmuORG2+Z7MQ7wp/W7Uv7Q6t5Hdt4Wjso8DNRh16i52QT
         oGXmpdKTIB2n7MU/j7xHlpq8IG9Py53FXCzkfh7/YmeVWvvRy23f8YuUux81lY942sJP
         yiodWZxRIq/slKGhhC1BqmiR9hW7rj0d+vneD4dCVMTQuCJpu650ha0dkvodJ8Y/Jc47
         fM5K/coY+6bZJLtvS7jYtsc5KodnALDSu3sx1gWG66EkrnRBrmBryiVLshLE4pnCG1BR
         kL+84DI+vbJ8ia4mi8qpBx5W7Bb5nQuqy7whCbjM8p5UMEdXPgkJtCvvLVchNFK/VoLq
         l8Uw==
X-Gm-Message-State: AOAM531SH4AdGBHG04gaJkQslvLBVF5H6E/m7aD8+12Ri6XehpET2q32
        bcwkcEBkuthPvPs9e74UToBudQ==
X-Google-Smtp-Source: ABdhPJwe45lcNNsXefD+ynyXkZd7c/eXVEUWvmyXLjRAhMEYNKZVfQ0ly/KZysHqRz5+mqBezGqJEg==
X-Received: by 2002:a92:c10c:: with SMTP id p12mr17775712ile.92.1626729901039;
        Mon, 19 Jul 2021 14:25:01 -0700 (PDT)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id f16sm10365634ilc.53.2021.07.19.14.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 14:25:00 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     robh+dt@kernel.org, davem@davemloft.net, kuba@kernel.org,
        evgreen@chromium.org, cpratapa@codeaurora.org,
        subashab@codeaurora.org, elder@kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH net-next 2/3] arm64: dts: qcom: sc7280: add IPA information
Date:   Mon, 19 Jul 2021 16:24:55 -0500
Message-Id: <20210719212456.3176086-3-elder@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210719212456.3176086-1-elder@linaro.org>
References: <20210719212456.3176086-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add IPA-related nodes and definitions to "sc7280.dtsi", including
the reserved memory area used for AP-based IPA firmware loading.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 43 ++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index a8c274ad74c47..5eb2b58ea23be 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/clock/qcom,gcc-sc7280.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/interconnect/qcom,sc7280.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/power/qcom-aoss-qmp.h>
@@ -63,6 +64,11 @@ cpucp_mem: memory@80b00000 {
 			no-map;
 			reg = <0x0 0x80b00000 0x0 0x100000>;
 		};
+
+		ipa_fw_mem: memory@8b700000 {
+			reg = <0 0x8b700000 0 0x10000>;
+			no-map;
+		};
 	};
 
 	cpus {
@@ -508,6 +514,43 @@ mmss_noc: interconnect@1740000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		ipa: ipa@1e40000 {
+			compatible = "qcom,sc7280-ipa";
+
+			iommus = <&apps_smmu 0x480 0x0>,
+				 <&apps_smmu 0x482 0x0>;
+			reg = <0 0x1e40000 0 0x8000>,
+			      <0 0x1e50000 0 0x4ad0>,
+			      <0 0x1e04000 0 0x23000>;
+			reg-names = "ipa-reg",
+				    "ipa-shared",
+				    "gsi";
+
+			interrupts-extended = <&intc 0 654 IRQ_TYPE_EDGE_RISING>,
+					      <&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
+					      <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "ipa",
+					  "gsi",
+					  "ipa-clock-query",
+					  "ipa-setup-ready";
+
+			clocks = <&rpmhcc RPMH_IPA_CLK>;
+			clock-names = "core";
+
+			interconnects = <&aggre2_noc MASTER_IPA 0 &mc_virt SLAVE_EBI1 0>,
+					<&gem_noc MASTER_APPSS_PROC 0 &cnoc2 SLAVE_IPA_CFG 0>;
+			interconnect-names = "memory",
+					     "config";
+
+			qcom,smem-states = <&ipa_smp2p_out 0>,
+					   <&ipa_smp2p_out 1>;
+			qcom,smem-state-names = "ipa-clock-enabled-valid",
+						"ipa-clock-enabled";
+
+			status = "disabled";
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex", "syscon";
 			reg = <0 0x01f40000 0 0x40000>;
-- 
2.27.0

