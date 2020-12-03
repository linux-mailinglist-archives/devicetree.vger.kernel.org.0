Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F2CE2CD8EB
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 15:23:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729342AbgLCOWc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 09:22:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729158AbgLCOWc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 09:22:32 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB2CC061A54
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 06:21:13 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id u19so2951159lfr.7
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 06:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HMTS91sfscTPRpwWSTsqCv0r1hZt5OeBn5nDnQ2JISQ=;
        b=d8fbz2hrHzFfP2hNIIjHaoIH4WmqYKuq85q1tioHutUN0BLng/puuAy/4XLVy2/BBx
         duuLScOhGGpfAJNARuDzZtnk8aXq6wSsoLZAYfCtBlj9Z/3uxwNWphTN5gj1T3FMLdgH
         OChvvpbXuxnDsbE54St/3c8Z8ntNWyLIpS0cxd3hAtES3Yt/Oc/YiwgHau63BixzVIfG
         V0HsymJ0Tim4vGXT7WuMPN87fkBDE6rXBtKZMyAqwfA9GLV98j/hhLKBbomTWTNfs0in
         YCrHg4d2NMEDYLsvZs+MMN4JAYXiW4Sp4SrzrNekkKh6pycfLfK6eTxLHs6y3z68TmQ+
         27jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HMTS91sfscTPRpwWSTsqCv0r1hZt5OeBn5nDnQ2JISQ=;
        b=hTSD4+svBHcA05nx3wK4LqlWLYHffa8gh+OzesaauJaJk+7ZBgQR5zSFc4IuW6vF/K
         Gi9aSuEDvtGv5Gu/SmN70jprGG+GIOnsux1VWF/BSrMwtLWbI3NFM9fDk0YAYC9Sl0SM
         1OwTewvgdVjwg3IXtc1B6kuM+htzh4rr13JKuG/QcFPP8sgok1OoEnvI8/H1z5Co0K9o
         dQ+7TdWbS9OsFRLhhzMzGSNIB5cJyDnAVwRWt0tuRgCPgdqtf4gQ5xwpbskoFiHsl+kT
         uAiL25l5NfYJhbnEgCPG6htvTm1CoODlGPV1qpSCWtl/P+p6QAdLOQlWmTBkDAVR97E1
         mJLA==
X-Gm-Message-State: AOAM532O5iVWnc9StgE1C507GmnjSE6WHwWIf9Xc/SQOpyzSiyPBgJFC
        bqBixPLswuwFK8yHvA9cBqxL+A==
X-Google-Smtp-Source: ABdhPJy8efoDOEXnqZhr27IT+lAaeMFj4sqQJYuCwjf7qqtY05yeWs/PUu6LN1OKvyJJjRCDCgRv8A==
X-Received: by 2002:a19:8182:: with SMTP id c124mr1336768lfd.106.1607005272338;
        Thu, 03 Dec 2020 06:21:12 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.117])
        by smtp.gmail.com with ESMTPSA id k185sm575716lfd.294.2020.12.03.06.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 06:21:11 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 2/7] arm64: dts: qrb5165-rb5: add mdss/mdp/dsi nodes
Date:   Thu,  3 Dec 2020 17:21:00 +0300
Message-Id: <20201203142105.841666-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201203142105.841666-1-dmitry.baryshkov@linaro.org>
References: <20201203142105.841666-1-dmitry.baryshkov@linaro.org>
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
index ce22d4fa383e..ce9d98e2d856 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -406,6 +406,30 @@ vreg_s8c_1p3: smps8 {
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
@@ -420,6 +444,14 @@ &i2c15 {
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

