Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EE6550026F
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 01:17:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238107AbiDMXUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 19:20:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238849AbiDMXUH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 19:20:07 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58878286DB
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 16:17:44 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id c190-20020a1c35c7000000b0038e37907b5bso4960262wma.0
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 16:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9cK41P1pkMRpsEDL1aLO7EK26z+iSv/jU9GggKykUGg=;
        b=GiCLh9dqxQr0kjCSGIdsMYVJAQ7aOz4ARS7q3SB9CB6fC2ky2E9KKdVCcRnOpZ7jgt
         Vjssf9uIvXWTM2UjKzSIRqWPUco7svkvdYqhl/LAYc2neRouy5YOFwCSIiOTMmz6PF3O
         cqvm4YS1q22wxTsZn5La+VVV61ge/G01nLkQrQh9x15q0IEZiWNlp5uMFCvfNV54j3JK
         R5gWkSgqI4UDciPPs99ufQOt/K3E3myAE16G0LFBOEZcoF1fzGiBRq0+Knv2RZ/bEyZQ
         0uToCID5AH1ESDWHeyc1z2XVYsdZE4DEE1pNRKvLS44O/otHDqOEYu2vPDVqSjGS/vTD
         ZVpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9cK41P1pkMRpsEDL1aLO7EK26z+iSv/jU9GggKykUGg=;
        b=aWSFTTnwTkuAyUJ22u7aSWEyoTq6mVqb6rywmEC4vZ3BGysIixk4A9KGNMmiR7tiku
         +iWeKBPDy+pakZOnfSYHqfUuzVsxC/UpTfruvLqhhkeqpSFrySyLWXYNpBgqTvrVrY3p
         7PUMrJhTjORlXcjtr0yDsmDmb2/9Hz+Ep7XdtzDqlnBYPZFQYfw4akbBOthnbyuzbor+
         EPw1A2kVAlbnaQ7iPuDx1BTd7L5XvuUj52gOHEA0fwd4i5v99vIN6TNaoR+LHGwqp0e7
         Ti+sP7m5Anhi8MHDNPgggkQtCsJImRlH9cTSn4CI/MHQW9dpcsDwO1iF+LhXgboAo40t
         B7Hw==
X-Gm-Message-State: AOAM5326IYEIc+T4KeU9kuhLhXWWwcJyxz/COdEi+8Gk607QJsiUSIzo
        jY7KDGHNbwsp1UCQrP+atX07yA==
X-Google-Smtp-Source: ABdhPJzz+rUCfftWjudFgR+chojNPEAnPgWAKaJRp5LZ9QMWf64YLozK1NGATamjVlFwpslGIQKDrQ==
X-Received: by 2002:a1c:7308:0:b0:38c:7b63:e385 with SMTP id d8-20020a1c7308000000b0038c7b63e385mr386108wmb.116.1649891862955;
        Wed, 13 Apr 2022 16:17:42 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id c12-20020a05600c0a4c00b00381141f4967sm205184wmq.35.2022.04.13.16.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 16:17:42 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, jonathan@marek.ca, hfink@snap.com,
        jgrahsl@snap.com, bryan.odonoghue@linaro.org
Subject: [PATCH v2 1/3] arm64: dts: qcom: sm8250: Add camcc DT node
Date:   Thu, 14 Apr 2022 00:17:34 +0100
Message-Id: <20220413231736.991368-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413231736.991368-1-bryan.odonoghue@linaro.org>
References: <20220413231736.991368-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the camcc DT node for the Camera Clock Controller on sm8250.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index af8f22636436..906bc8ed25b7 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -19,6 +19,7 @@
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/clock/qcom,videocc-sm8250.h>
+#include <dt-bindings/clock/qcom,camcc-sm8250.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -3149,6 +3150,20 @@ videocc: clock-controller@abf0000 {
 			#power-domain-cells = <1>;
 		};
 
+		camcc: clock-controller@ad00000 {
+			compatible = "qcom,sm8250-camcc";
+			reg = <0 0x0ad00000 0 0x10000>;
+			clocks = <&gcc GCC_VIDEO_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>;
+			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao";
+			power-domains = <&rpmhpd SM8250_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: mdss@ae00000 {
 			compatible = "qcom,sm8250-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
-- 
2.35.1

