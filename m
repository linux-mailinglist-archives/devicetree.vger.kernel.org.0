Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 644603218BD
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 14:31:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231364AbhBVN3d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 08:29:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231971AbhBVN2B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 08:28:01 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DBF3C0617A7
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 05:26:59 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id n8so19030820wrm.10
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 05:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kRfV3hfQKkV0JmhY14xIQXKr8DaLA+3gSz4spFlJxTo=;
        b=bdyAHoZFEtYAZMYMT7f7v+2NVLl6gqRn541+ejwo3t/AFjmO2iiyT8s1VAjmvMJguw
         72jL77tHS4P5tZ4G6na07GQ8m8SqcU7t/7mi/O19EJzgcLwmONNAOVasx13m7XFTw7YQ
         MWp+WpxSQbr8PIE0wsF+/jeDSgB4pTPx84DXg3vsFIUzNFQu61z1HT6HG2Y0tM3MqZDx
         UCIWvtxQuhg4ML/RZPBbaoHON4BVQ+qjLUvOhFc9cNVj7f628P793jbb+KlBtorxT6Ru
         Q5niSl+T6mYfDYjHtv+2mZKvQ+SCNrGc6gtWk+Yo/EEuOoUCDm2mHyBE2QB4k1uddTBD
         RPCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kRfV3hfQKkV0JmhY14xIQXKr8DaLA+3gSz4spFlJxTo=;
        b=sX8xO92GfMabnmtdi/Qvy16IT7/MxGbElpL+6Ua0gPxund8bDIldw+Ao7Ehn1B3ULt
         h/P6YTMF6FMGHajrKjEanqpz4HaoxA/tjzOYsoFJwnrhZq27dnQib+GYrT6vlAsX61Os
         5DvPeR9aZYN8r8HztZFEbp1dpUO2ottkX5g7zOdZz81mrOhA0VyZISWbwDAkaOW4R/9t
         zq5xE2D7546csITjCv3sx59aQrFxNrRfFnwRdGMfGxM6Ak5dXpQDskQ/6TI+H8O6TYC4
         1IpEui0hqUaFAQXRyVbEXALF1HpMYqZ9E/mNyopz8lK3iY73FaziWGktGrFkAnBVpCEa
         7nwA==
X-Gm-Message-State: AOAM531XRI90I8crJ5y7TPXN4/xqb32PTDz6n8qW0rvUvLqdkfGZQUfW
        XZ35H8hmho/IRjDv/DW6J1XKXw==
X-Google-Smtp-Source: ABdhPJwbbLUhq3173hcjozPlKXo6kXjJD8FrRIuuP0n9/6v8Yt9ubx+xgkwWJFqMGkxCWdoeF+TXTg==
X-Received: by 2002:adf:b611:: with SMTP id f17mr21010880wre.8.1614000417860;
        Mon, 22 Feb 2021 05:26:57 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id t7sm3079918wmq.44.2021.02.22.05.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 05:26:57 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, stanimir.varbanov@linaro.org,
        agross@kernel.org, bjorn.andersson@linaro.org
Cc:     bryan.odonoghue@linaro.org, jonathan@marek.ca,
        dikshita@qti.qualcomm.com
Subject: [PATCH v2 3/3] arm64: dts: qcom: sm8250: Add venus DT node
Date:   Mon, 22 Feb 2021 13:28:17 +0000
Message-Id: <20210222132817.1807788-4-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210222132817.1807788-1-bryan.odonoghue@linaro.org>
References: <20210222132817.1807788-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT entries for the sm8250 venus encoder/decoder.

Co-developed-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Co-developed-by: Dikshita Agarwal <dikshita@qti.qualcomm.com>
Signed-off-by: Dikshita Agarwal <dikshita@qti.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 60 ++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 3639792411ce..6b6993995eca 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -14,6 +14,7 @@
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/clock/qcom,videocc-sm8250.h>
+#include <dt-bindings/interconnect/qcom,sm8250.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -1811,6 +1812,65 @@ usb_2_dwc3: dwc3@a800000 {
 			};
 		};
 
+		venus: video-codec@aa00000 {
+			compatible = "qcom,sm8250-venus";
+			reg = <0 0x0aa00000 0 0x100000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+			power-domains = <&videocc MVS0C_GDSC>,
+					<&videocc MVS0_GDSC>,
+					<&rpmhpd SM8250_MX>;
+			power-domain-names = "venus", "vcodec0", "mx";
+			operating-points-v2 = <&venus_opp_table>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface", "core", "vcodec0_core";
+
+			interconnects = <&gem_noc MASTER_AMPSS_M0 &config_noc SLAVE_VENUS_CFG>,
+					<&mmss_noc MASTER_VIDEO_P0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "cpu-cfg", "video-mem";
+
+			iommus = <&apps_smmu 0x2100 0x0400>;
+			memory-region = <&video_mem>;
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
+				 <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
+			reset-names = "bus", "core";
+
+			video-decoder {
+				compatible = "venus-decoder";
+			};
+
+			video-encoder {
+				compatible = "venus-encoder";
+			};
+
+			venus_opp_table: venus-opp-table {
+				compatible = "operating-points-v2";
+
+				opp-720000000 {
+					opp-hz = /bits/ 64 <720000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-1014000000 {
+					opp-hz = /bits/ 64 <1014000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-1098000000 {
+					opp-hz = /bits/ 64 <1098000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-1332000000 {
+					opp-hz = /bits/ 64 <1332000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
 		videocc: clock-controller@abf0000 {
 			compatible = "qcom,sm8250-videocc";
 			reg = <0 0x0abf0000 0 0x10000>;
-- 
2.29.2

