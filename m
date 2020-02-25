Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F31C16BAA9
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2020 08:31:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729379AbgBYHbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Feb 2020 02:31:37 -0500
Received: from mail-pg1-f193.google.com ([209.85.215.193]:37451 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729066AbgBYHbg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Feb 2020 02:31:36 -0500
Received: by mail-pg1-f193.google.com with SMTP id z12so6454571pgl.4
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2020 23:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4N8z5kQWQjqOs6F36q6PQQ1lO/cJgAg0HVku/E/BN+0=;
        b=QQ8OHWkdBG2r8gt2OWLjHMtThV1aUhIYTCVCtuECGVfxVuKmpj4LA/DtB2O4ItdMMq
         Um0Xmim2pfMfLF5z+7kUzJP7vRinRYPgwAVMSisj+ODsgBkIKGAYZ4vvpoK6UNLfSE67
         n28Ti6r9nh/qNgLzgbsqsneHF/j46oUze74nnad07bnMtLhy6PPSVKGQaFfqC4f3Uzuq
         vkEBtiylQZTQoFTl3Wo8A7WQTQptDW9SMr4mo6GN2co59Uqv89lqdNFlmF+9smgNcvFv
         f9UG/nY9RxTR8gPcWR2+h2l8MbRjj0Vui10ox8VliYkdvY11SNN+LUhVEpLGhi0ipu+N
         mWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4N8z5kQWQjqOs6F36q6PQQ1lO/cJgAg0HVku/E/BN+0=;
        b=tI6Lqfi32sM7fAetgbs8UsWWYivC6a2fvN5+36tOBz8yuTtHNJhbeA267eNlqxq8yY
         xpzD0OWqsrjwWhJb2Vy8gGmd0DC5QfVDRD30BuPF87o/Yn9x4ucO23Kn2ky8Z5/lmFN0
         rdlQRc55Ceuym63SlwvDsrSgr3N1rA4CFjU36VEqkCa5yd8P9Oh25ACOhmdbk+QGVfdG
         mzWkUIPuKsF/PIq4B+OCsIiUInmhqd9bmdCCIitYij3gr6uBKwMtwKoM9heWU9kUJMpe
         3h04k5Q0LcmdIeTP/BCXYzNDoc+EUASHwuQDbRSi5KXtEi2OvEmlihgKyzcORu1lTpOR
         GEnw==
X-Gm-Message-State: APjAAAWjALJo092lp5FzeljSYORQAFK4KCg7c0MigpzVhJY4GMU5CaTa
        gRGl3cSju1iJnlZyUNIU/gMM1Q==
X-Google-Smtp-Source: APXvYqwQ7koTIjUZfRToCb1oUcFA3QrQCVAQI8hxdg/I/xk5PpPdHuA0TimSBAG1X0YstEsva/lhbg==
X-Received: by 2002:a63:fe14:: with SMTP id p20mr53434255pgh.94.1582615895997;
        Mon, 24 Feb 2020 23:31:35 -0800 (PST)
Received: from localhost ([103.195.202.114])
        by smtp.gmail.com with ESMTPSA id c1sm15646260pfa.51.2020.02.24.23.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 23:31:35 -0800 (PST)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        daniel.lezcano@linaro.org, bjorn.andersson@linaro.org,
        sivaa@codeaurora.org, Andy Gross <agross@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v1 2/3] dt-bindings: thermal: tsens: Make dtbs_check pass for msm8916 tsens
Date:   Tue, 25 Feb 2020 13:01:21 +0530
Message-Id: <bb22a39aaf0ab16db225976efc2ff348de2dfed9.1582615616.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1582615616.git.amit.kucheria@linaro.org>
References: <cover.1582615616.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

/home/amit/work/builds/build-aarch64/arch/arm64/boot/dts/qcom/msm8916-mtp.dt.yaml:
thermal-sensor@4a9000: compatible: ['qcom,msm8916-tsens'] is not valid
under any of the given schemas (Possible causes of the failure):
/home/amit/work/builds/build-aarch64/arch/arm64/boot/dts/qcom/msm8916-mtp.dt.yaml:
thermal-sensor@4a9000: compatible: ['qcom,msm8916-tsens'] is too short
/home/amit/work/builds/build-aarch64/arch/arm64/boot/dts/qcom/msm8916-mtp.dt.yaml:
thermal-sensor@4a9000: compatible:0: 'qcom,msm8916-tsens' is not one of
['qcom,msm8976-tsens', 'qcom,qcs404-tsens']
/home/amit/work/builds/build-aarch64/arch/arm64/boot/dts/qcom/msm8916-mtp.dt.yaml:
thermal-sensor@4a9000: compatible:0: 'qcom,msm8916-tsens' is not one of
['qcom,msm8996-tsens', 'qcom,msm8998-tsens', 'qcom,sdm845-tsens']

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 9f31064f2374..1748ea3f4b4f 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -860,7 +860,7 @@
 		};
 
 		tsens: thermal-sensor@4a9000 {
-			compatible = "qcom,msm8916-tsens";
+			compatible = "qcom,msm8916-tsens", "qcom,tsens-v0_1";
 			reg = <0x4a9000 0x1000>, /* TM */
 			      <0x4a8000 0x1000>; /* SROT */
 			nvmem-cells = <&tsens_caldata>, <&tsens_calsel>;
-- 
2.20.1

