Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A40D502DF2
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 18:47:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354392AbiDOQtc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Apr 2022 12:49:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244570AbiDOQta (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Apr 2022 12:49:30 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2656CDD96C
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 09:47:01 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id x18so3408723wrc.0
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 09:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vB6otgN6KYMTsyvfy8Rm2UY11rcsammOuJhzDpIaLBk=;
        b=U5ttExxfGAO73CicJ6gCH58uzFTGudxUSjM0u+LuSZcVFWwiVVf5SvGzcwNn29Ozbe
         O+4Yb4NTWj39cX38QcbH3iRjuNOH7GWoWwJT+14PYiYBD19dd0adrg7tFYfC3SJigK15
         G+fUsaCqyVS9BRcOSGv3mWf8Msxhdd0CjAy4PUXvMgq6g5SWGcmuOe/GKhJ8q+kcja+z
         fkI0PgAILmVGAI6Qg96PM6+IFsusf8cm6PqwZLiRQMfsXxiPb2y+h9ygNpz0MGyB3c2W
         RJpVM/nJzcptU3qg0bzTj/LtI9OWBndWh4MfBpnL7IA8trh6DEWlDY42Z+C51VDEizvV
         JexA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vB6otgN6KYMTsyvfy8Rm2UY11rcsammOuJhzDpIaLBk=;
        b=OmC+BK/jASmmkeu+mBdk/YKtC5YIDnxsFHQLBYtOerRObaSpXpRhihLdbXU7V1/ogp
         hFr7DXRpkuU0I30bKiXwrSiNjw0rUZBvx07Vt2nbMswrF1uNInEtP7hQ7tX4RXxQf3by
         k5ASfy0WnPTLCxf4fI6xnHQeHdkprYpF61rWY9LVx8HDWWHk8m2PboJTcE2kPbXAfGK1
         vGvKdQ3XrBN8YrWxnDs3rOhCt3fxyFjJTYKj9uYuKKW4SgGT0ZXShQa8sykrghtLdYSb
         rn5xfbky1RY3j60uRcCJ5znp3wI95BJXPQauafVYFenT0xMxuS5SEwFnbEO5EZLy3rbq
         F5jQ==
X-Gm-Message-State: AOAM5324OcnhBNjY5eCF+YmamEYFfZKxSRb0h172uJVLvYDy792lWeeM
        XdfztluA3PTbWVcTXH4uwr+OWw==
X-Google-Smtp-Source: ABdhPJxU0icA1dSMc5GujYLgmolhkVIGWOUgzZPV55JrRNVHvBfJLVaAz9OOR1gmfms9h3+rfagH+g==
X-Received: by 2002:adf:f9c6:0:b0:207:b63c:77a3 with SMTP id w6-20020adff9c6000000b00207b63c77a3mr42584wrr.665.1650041219672;
        Fri, 15 Apr 2022 09:46:59 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id t9-20020a05600c198900b0038cb8b38f9fsm9180041wmq.21.2022.04.15.09.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 09:46:59 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     vladimir.zapolskiy@linaro.org, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, jonathan@marek.ca, hfink@snap.com,
        jgrahsl@snap.com, bryan.odonoghue@linaro.org
Subject: [PATCH v3 1/3] arm64: dts: qcom: sm8250: Add camcc DT node
Date:   Fri, 15 Apr 2022 17:46:53 +0100
Message-Id: <20220415164655.1679628-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220415164655.1679628-1-bryan.odonoghue@linaro.org>
References: <20220415164655.1679628-1-bryan.odonoghue@linaro.org>
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
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index af8f22636436..401e17f849f3 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/clock/qcom,camcc-sm8250.h>
 #include <dt-bindings/clock/qcom,videocc-sm8250.h>
 
 / {
@@ -3149,6 +3150,21 @@ videocc: clock-controller@abf0000 {
 			#power-domain-cells = <1>;
 		};
 
+		camcc: clock-controller@ad00000 {
+			compatible = "qcom,sm8250-camcc";
+			reg = <0 0x0ad00000 0 0x10000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
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

