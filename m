Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05B932954F0
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 00:51:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506932AbgJUWvO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 18:51:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2506931AbgJUWvO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 18:51:14 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F6C0C0613D2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:13 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id h6so5209232lfj.3
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y68c1c7Z13VLVISWQSjGtMfYfdgX0kCBgReV2FtuTdM=;
        b=mMYojLC4y7LhWFZ4HHoDPGU7gF894ny2E2sByf3XJyfbQ8dXJ5y50Py2imnmaBNCEl
         2eHj/pu/bMM8PHskEfAJL/y6Q5T3LUqAyJh5FGnNsmT1gohNN+uLPByBNe7QLNcDWQgv
         KHFBNupcplqe6jduKdvG408ANXfIaU8aVe9hpvWpBRdXgCw123z1YP/b4d+fsY/SJHoF
         gCO3n/RonRvdNuUE7SLivYTwdtZfBPJagk8cH4PB6mZDVNW1RTSpxxxGOab0UvseG/ve
         t3PnoLVJHYoURRMrrRqfIzyDtSnV3crQtJckg9OpMU/wVvisE49a3wabkUgGohOrCzoq
         fXDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y68c1c7Z13VLVISWQSjGtMfYfdgX0kCBgReV2FtuTdM=;
        b=sgfL+xFV8FQ1+XElsLbgEeHmhKTPtB3PZgV7NW//otTuhbq0X1cp5zl8gZYamhqE3v
         tCOW6s42t6FpJIz1wclWZs6qNGtaymymyP0eD59d/9O7o6FPxHEY1rC3aJSJhqljt4BR
         TMywpyD1dBo/fSSnViBeKLhSUipk7f/DYXamHCW31gk0c2vKuSFN7icKAv1PowmYN37Y
         PdHhrHTg8saOk3UzZlAeiXwzF2gi/7luyU+6QS/S6CpDEkczKwEApgwz6WEJ7Toxjs7p
         pFlT1OXiS8wOr8mS46MGTgQFt6LC+CKm0m844xvKsTQfYoBBFAPCisQZ1lvdCNyILpX2
         j1Kg==
X-Gm-Message-State: AOAM532s/mRB1RPhH6dI98Ixref4D/aOyLXu3PGKOJZtl5i6dHQvPZyZ
        p8A3GeRUjnKS+ET+g3pc1N7AJQ==
X-Google-Smtp-Source: ABdhPJzSrFyWrEgkely2ncAXUZGPErChj9HT+aDia8Z+Kob9YWM/XyQlsxnRFfcuK16COCt/B/93BQ==
X-Received: by 2002:a19:c3cf:: with SMTP id t198mr1831682lff.461.1603320672111;
        Wed, 21 Oct 2020 15:51:12 -0700 (PDT)
Received: from eriador.lan ([188.162.64.195])
        by smtp.gmail.com with ESMTPSA id h11sm652062ljc.21.2020.10.21.15.51.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 15:51:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: pm8150l: add Light Pulse Generator device node
Date:   Thu, 22 Oct 2020 01:50:59 +0300
Message-Id: <20201021225100.162795-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021225100.162795-1-dmitry.baryshkov@linaro.org>
References: <20201021225100.162795-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device node defining LPG/PWM block on PM8150L PMIC chip.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8150l.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8150l.dtsi b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
index 9f214ceec2b7..e8926d6c32cb 100644
--- a/arch/arm64/boot/dts/qcom/pm8150l.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8150l.dtsi
@@ -114,5 +114,15 @@ pmic@5 {
 		reg = <0x5 SPMI_USID>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+
+		pm8150l_lpg: lpg {
+			compatible = "qcom,pm8150l-lpg";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
+
 	};
 };
-- 
2.28.0

