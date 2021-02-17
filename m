Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48E1E31DC2D
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 16:32:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233613AbhBQPaQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 10:30:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233688AbhBQP0C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Feb 2021 10:26:02 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B133C061756
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 07:25:06 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id g6so17790999wrs.11
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 07:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0dZ9nPATZ+3aroLovJhw64daBCsv2xB5M+541cy0TL4=;
        b=gIJ8SOaCNOgHsh5xPf2jDpjOvOol6+T7GYRj+UlH6xZe4Rz91l7YxtlgnYcasQtt2g
         sld/LB8U+dt2JTnBkvBpcKhyrewVg7yjfQoCXSmf75QqdGd6ibuHvQCazKtVZh44/QU/
         aofM7Z+AYiHHVDJ4VnUVMNyhimhn/Q8kpRY7klX+73h7l32CvdCP+1zEOeY+o/AH6n/t
         13tcjMwfoq0NwhWpJsON2sK5QJN/OKFUJ4RFbE7WW188i5ghMrwygpZBEKrUYBR4oevm
         Awhln5KsKIehIr1nM0V4Nq1YOIrCXgMo9JH2bKrku3jRaSjJcRMCBaWsDvhKbqjmGqhw
         1yvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0dZ9nPATZ+3aroLovJhw64daBCsv2xB5M+541cy0TL4=;
        b=sYkbPRU0WghQs8dmeyQj7kZofpXQKQ5Fl4QE01uzgrzFmoBPPFMpPqUkkj4LQqeqdA
         05bEN6Odpd6Eb6TMp5iXMDYHgwzOLA5EXe3/KwvBznQy4kkBRM9c6HwapKzB26feVgFA
         kU5wSVpPRNHn0mSkgsGfmgtO5WHq7JXyqcAzIIkyyuy3ACIAQSo/zZW++Av4U0sLy0ao
         aqwcJ5B+0b4nLd/LCAgOnNAZhjyG04T81QfSc67H0GC+Au0oYBP6phE5PHEwU1Wii+fm
         76aECnqUbHx5HnL9ZFv5hMFciSVHV2hXxDNfOaMP6Kdbom7e/82HE0SFUp4QaPfZB5c/
         Toug==
X-Gm-Message-State: AOAM532wF1jcR1fyW5AZIFRPzjUOb38wjt9w/iNXEPeuS8KD1JW1ip2f
        AkIpVCXFrRCuWy0oA1BOXYrxTQ==
X-Google-Smtp-Source: ABdhPJyqdurvsiXeuXyKSMh4xZycoqUMuZwer6R6U82zojgsGNzHQvPdAR0bF3w68pIK0NxXW+KowQ==
X-Received: by 2002:adf:f38a:: with SMTP id m10mr30127671wro.218.1613575504632;
        Wed, 17 Feb 2021 07:25:04 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id z5sm4511910wrn.8.2021.02.17.07.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 07:25:04 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, stanimir.varbanov@linaro.org,
        agross@kernel.org, bjorn.andersson@linaro.org
Cc:     bryan.odonoghue@linaro.org, jonathan@marek.ca,
        dikshita@qti.qualcomm.com,
        Jonathan Marek <JonathanMarekjonathan@marek.ca>
Subject: [PATCH 1/2] arm64: dts: qcom: sm8250: Add videocc DT node
Date:   Wed, 17 Feb 2021 15:26:20 +0000
Message-Id: <20210217152621.1714814-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210217152621.1714814-1-bryan.odonoghue@linaro.org>
References: <20210217152621.1714814-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Jonathan Marek <Jonathan Marek jonathan@marek.ca>

This commit adds the videocc DTS node for sm8250.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 947e1accae3a..23fb9a0e32b9 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -17,6 +17,7 @@
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/clock/qcom,videocc-sm8250.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -2322,6 +2323,19 @@ usb_2_dwc3: dwc3@a800000 {
 			};
 		};
 
+		videocc: clock-controller@abf0000 {
+			compatible = "qcom,sm8250-videocc";
+			reg = <0 0x0abf0000 0 0x10000>;
+			clocks = <&gcc GCC_VIDEO_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>;
+			mmcx-supply = <&mmcx_reg>;
+			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: mdss@ae00000 {
 			compatible = "qcom,sdm845-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
-- 
2.29.2

