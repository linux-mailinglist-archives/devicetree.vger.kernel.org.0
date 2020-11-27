Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1F2A2C624A
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 10:56:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726483AbgK0Jz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 04:55:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726034AbgK0Jzz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 04:55:55 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88B5EC0613D1
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:55:55 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id t6so6181216lfl.13
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0jrKxrYr4ugaVmCcOq5jfrJsPXsIcHinrt6EAOnqRv8=;
        b=gUjijaN6nUVS+sIWFVzg43H6+KpIrofXuv6TBxoM3sEUZMmxYhHZ89pnVtwOa11pZg
         WWbneGRWWZ0Rs4jEN2qIsfNesQKTl4LEx6Lodd8xx6JsVC8MgNqNf7XRY85t+fpJPMIC
         5C//msy7AKqcAn0/CV2Vh5Do9Wr3vFW+q763iyc/rDaFCv/nz4H2k8Cz26IDnIZO66g2
         4sTNLX9sYQODjB/QbGiF5D0Yj+op2x7ONMbEGeK/87lgc6cUpFqFxkHGN24B2s5KiwwV
         q3zg0IVBFH9U74JVflqye8xnVZo6CgtLiXxOefNfTNnm24gZIupuqw+77nSA1e3FiS8r
         +t4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0jrKxrYr4ugaVmCcOq5jfrJsPXsIcHinrt6EAOnqRv8=;
        b=O/2ZStV7PYs9/iMzoTmtIaeves6bLWFLCYBsW0v6RP3SW3rrKu4IgSWq6Hml5jFDYz
         OQrxAvEFH5b+8J9cZYgWpGq7hXPgfR3J5k3AgBXqvLV1Np7Jh9CADgSvYiCf+lSBhuw+
         o0wO85BBg/6GxLqXyopPm0+rPx/dBiDa9jv7y3JF3iGWSndn//iSXtf46THvSkCFPoJa
         Xj8i5z2aarM+jfRpqUVRM4hTcCxHyOfUUlaeqS7T9n5NWF0uDKUNSHMm84icIsTtclaE
         lIYeDI2TEq/kykW6r3L+nrky7yziy/OoCUKdQyMOYDknkV3ShtpT+Wuao7ZAZNoJXlbm
         yNQA==
X-Gm-Message-State: AOAM530JogNZNge94pQfp/rp/3Bxxs3aQO7gJfIV4SHvtFdtgkUjpVre
        aB4kBCy1217XegnZV1KVWxZFXw==
X-Google-Smtp-Source: ABdhPJzxgfCRVcVWhM5R1ye351PfC4+Eo8C85qYzslAZx/wZf1C9vlf15ftOh/WvlEvxKNoWsbK+Eg==
X-Received: by 2002:ac2:4ace:: with SMTP id m14mr3125209lfp.523.1606470953993;
        Fri, 27 Nov 2020 01:55:53 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.79])
        by smtp.gmail.com with ESMTPSA id x25sm628477lfn.99.2020.11.27.01.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 01:55:53 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 3/7] arm64: dts: qcom: qrb5165-rb5: add gpu/zap-shader node
Date:   Fri, 27 Nov 2020 12:55:44 +0300
Message-Id: <20201127095548.128217-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201127095548.128217-1-dmitry.baryshkov@linaro.org>
References: <20201127095548.128217-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add firmware configuration for Adreno zap shader on qrb5165-rb5.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 9c5135585ec9..d1f6cadca35a 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -423,6 +423,13 @@ &dsi0_phy {
 	vdds-supply = <&vreg_l5a_0p88>;
 };
 
+&gpu {
+	zap-shader {
+		memory-region = <&gpu_mem>;
+		firmware-name = "qcom/a650_zap.mdt";
+	};
+};
+
 /* LS-I2C0 */
 &i2c4 {
 	status = "okay";
-- 
2.29.2

