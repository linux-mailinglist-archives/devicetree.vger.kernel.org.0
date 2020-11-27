Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 447F62C6249
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 10:56:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726471AbgK0Jzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 04:55:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726417AbgK0Jzy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 04:55:54 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 546F2C0617A7
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:55:54 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id l11so6253212lfg.0
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9rLUfIcr9/jvfD8KJ/x77MTNOws1JCjlRG7owZa3WWo=;
        b=zpm7hEDvtrfy7dp3eyQO+HJXf/RRt93CnIPlWWoStnx02ZWKdqL4qmsNNx8TDiZSff
         Bxtlvb2+SMAh4fRa3j/BCLBXDS0caVfIvLx6J7CdQ8SyrVebltlJkXxHCt7Z788WvAmX
         G48GV0Z0WQWKh17SBxBXRi3dmeYrXifpZeU0YY+QAFLhywMgxkH4nj5Yu+uEg3OEsXJ4
         LTq07RdaNyydL6fmLufFk0ZY7t2WP05y5gueDTwGBR62P5oZ5iSS3Xyb6VHe6iJJP/KU
         r4btEO8bzcerbgWe2bAQ6EHQIj8tpkbkEwdttbDjSDiwjc/w3w9se0Ky6t198i8oHYAR
         sWoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9rLUfIcr9/jvfD8KJ/x77MTNOws1JCjlRG7owZa3WWo=;
        b=MnOUlGzgOiiY4mLaxHlbmAHQY8y/md12/u1JKvOsVO6SqE3kONHnr5coRLDq7HyDTL
         PObt8ZUoa0DrexcRgnpbxcXCyxLuzG3HES0cVhPzXyC3Jd+MNZhCxT5rZeuCuN/fNRFr
         Vv9wHmalmbUi5uORi2Ft6U4ahr8ZWCikvHMJ+htQYDYGZOrviC13St1fQq6lGkNocTel
         pmiMocYiWc1jTvhnhGr7HZEf7IZ+5cM/OZX/LNVk6t53DUZCYUJW8ytWwbvHGbEt5K4e
         SzWvomK3LGQHsnO7pYf61OwgBhMvejL1OnveXBT0XiqHpGif7gH8mQurGQqcQFupBKsu
         taRA==
X-Gm-Message-State: AOAM532kkL1xQ13jHC2eHDl21gka930BkcQRpiDFqqvuZwD9a7/1+mzL
        vGCxIYwf1yLV56cPa/aoVe18dw==
X-Google-Smtp-Source: ABdhPJxHOzhZLPQsLym6AJJRagYVlLWD3Tb6914kr4u6JgzBpJ/c8205EsMhtXL164jh+Pxh/fAdzg==
X-Received: by 2002:a19:c55:: with SMTP id 82mr2790268lfm.84.1606470952733;
        Fri, 27 Nov 2020 01:55:52 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.79])
        by smtp.gmail.com with ESMTPSA id x25sm628477lfn.99.2020.11.27.01.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 01:55:52 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/7] arm64: dts: qrb5165-rb5: add mdss/mdp/dsi nodes
Date:   Fri, 27 Nov 2020 12:55:43 +0300
Message-Id: <20201127095548.128217-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201127095548.128217-1-dmitry.baryshkov@linaro.org>
References: <20201127095548.128217-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index d9f52703ba2a..9c5135585ec9 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -399,6 +399,30 @@ vreg_s8c_1p3: smps8 {
 	};
 };
 
+&dsi0 {
+	status = "okay";
+	vdda-supply = <&vreg_l9a_1p2>;
+
+#if 0
+	qcom,dual-dsi-mode;
+	qcom,master-dsi;
+#endif
+
+	ports {
+		port@1 {
+			endpoint {
+				//remote-endpoint = <&lt9611_a>;
+				data-lanes = <0 1 2 3>;
+			};
+		};
+	};
+};
+
+&dsi0_phy {
+	status = "okay";
+	vdds-supply = <&vreg_l5a_0p88>;
+};
+
 /* LS-I2C0 */
 &i2c4 {
 	status = "okay";
@@ -413,6 +437,14 @@ &i2c15 {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_mdp {
+	status = "okay";
+};
+
 &pm8150_gpios {
 	gpio-reserved-ranges = <1 1>, <3 2>, <7 1>;
 	gpio-line-names =
-- 
2.29.2

