Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CEEC297039
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 15:19:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S464468AbgJWNTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 09:19:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S464464AbgJWNTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 09:19:41 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0CEDC0613D5
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:19:39 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id y16so1542920ljk.1
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8zrW3F4EtDxIXqxN4rkTzSpTYyKGY7/NdRqYOW9zNVQ=;
        b=najjhWzJOGwlVwchFVVSyXcA5bTEsXvJ1MPlZBGtaKzm59NlBIzWj4Rjiyn718eTbJ
         7Ve97wVO9+QachB6aDhu6nL1klAKC8KH/RhrPvPc661tYf5ax4Rn6MZUap6XSYCICbYy
         3ZiOAlyb0pVB4L47+ctSNn4I2C+Yw+WR37P0Gg8O+Of/jYdM47BWS9A0v2qLP3w6kWa/
         h9c+dQcjzjXxu/+PGBsfKYXR7EAESmCbBgTyNG2l4+FCohoLYuULBPvUJ0JxgBMDvG6C
         fAhnTXoiQJbiJex0wj+5srxVJ37uQyBrn8o/Gh+znaheq4XQO4T6yTcMIRLPwqCastc7
         p3DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8zrW3F4EtDxIXqxN4rkTzSpTYyKGY7/NdRqYOW9zNVQ=;
        b=UfVckFAgtOpPLzmzf2fITcsvSNu7VMyvEB8//ZWkSesvZf3qo3Km9hlDPPcFfgjwrY
         OMIz9bIN7nwd7WeiiUsKJZobfuXVla4CnVscmtJWHJ8+C7lJ5gqbV13GnSvS4RozeLgh
         9FyKlHWie9g31JFonUCXC/QDeSGGBABUjRhnvNrw0zEcPP8m5bRUCVwhW1a0H7X5Hzgt
         gtSZXOMJV8uiZ0mfMK3vWqQbVEnIVV//Ko032LfvpcctzkcWEncX7QiBZn8XYsBGqf5K
         59ov4mbTVU24c6WLZ/3B7TfrMr5yeDLhEWUTM+MwVIxFzx+6uYElbfO3+RPZmj4ZrsXO
         q4rQ==
X-Gm-Message-State: AOAM530eljykyn3kNtZ4akckONKi9Ga5coye42mZMQkJqmSeDc/wx8AB
        SStAGG8uGxlOpXUJe7oTjyHIBA==
X-Google-Smtp-Source: ABdhPJweGn0vIWzZdBnWSNSe8t6OIeR2SfamvlV4fVavaL9pzD/rRJi5LVMnFomo/CwmABiwSagkUg==
X-Received: by 2002:a2e:8416:: with SMTP id z22mr950001ljg.72.1603459178362;
        Fri, 23 Oct 2020 06:19:38 -0700 (PDT)
Received: from eriador.lan ([188.162.64.195])
        by smtp.gmail.com with ESMTPSA id o22sm161564ljg.122.2020.10.23.06.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 06:19:37 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/5] arm64: dts: qcom: sm8150: add mmcx regulator
Date:   Fri, 23 Oct 2020 16:19:23 +0300
Message-Id: <20201023131925.334864-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023131925.334864-1-dmitry.baryshkov@linaro.org>
References: <20201023131925.334864-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add regulator controlling MMCX power domain to be used by display clock
controller on SM8150.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index f0a872e02686..4c3d694b7dab 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -172,6 +172,13 @@ tcsr_mutex: hwlock {
 		#hwlock-cells = <1>;
 	};
 
+	mmcx_reg: mmcx-reg {
+		compatible = "regulator-fixed-domain";
+		power-domains = <&rpmhpd SM8150_MMCX>;
+		required-opps = <&rpmhpd_opp_low_svs>;
+		regulator-name = "MMCX";
+	};
+
 	memory@80000000 {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the size */
-- 
2.28.0

