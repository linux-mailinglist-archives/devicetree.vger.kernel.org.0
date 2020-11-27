Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C38462C6253
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 10:56:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726826AbgK0J4C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 04:56:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726859AbgK0J4B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 04:56:01 -0500
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 204DBC0617A7
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:56:01 -0800 (PST)
Received: by mail-lj1-x241.google.com with SMTP id y10so5282117ljc.7
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kW9Z+5MdERH4UOzelJv9hwVH2KR54qJRrBP7D3NwCS0=;
        b=svDsB2yDZt6uspoHTjdKF+fAGDRWj1s88sdFzczYi+c2Cieo6fJC8UjXALxzW3hbHO
         w9THrFd58Lrf4hOokxKJXXmcTh01u0jXBBBnWPFstATljHw4Mlw1c8pM9Gvj3BsngVn1
         c8OAPFrTjSWunUJwHe4ynbCPgfO+q20OCIi+aThMAfTkQ9wuXw2fs20gGKS/zBm6Nxf2
         But0/MCQ+yHbN2UMSq750KKmzK7OBT0LpCrvg6xz667xJLBw7sgyul6/FaydxDSyMzLB
         R7a0mjRBBvtA815OA5LdleyWticwRjbGqFlqJkFm34/Dv2Qo7b/Vq+go3MbKjm5oMS/u
         s2eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kW9Z+5MdERH4UOzelJv9hwVH2KR54qJRrBP7D3NwCS0=;
        b=sS0dq9ZTFJvlUYFMycUaSeESU7tYnXd5OkokuGvwWQN9NMC5RngDM1Do2LK9RaiDyh
         pIpSTQxydkwan/Sl6YDZYGNyXZmFSMLvL2vdilrU+G+POj2ivGe3U9UQyvZGnlxq4/IH
         dXaJ4X8QDvxvcWti90nOgsfUJrqZOTYAYUNW5yhtSQJJxWtRzZjKL0qmqz6eC1pUR3cm
         4ctDqVhLJDoypSzrCRQilEaymnHT+E3e8OcFntateYbPDiX9gyWapqFcnZjcOX6YbgIb
         rcIUykOpzpOpw5aUwCxN6nPxwUilVosBkOd3HauAJPh3Fxkt0GTDpZOYboL1N57RzMC5
         WT9g==
X-Gm-Message-State: AOAM533Ua8/xC/3pZCTznaOmA/wd6naRPMvkKQ+HOBWZyMW2FHo9ld4A
        2bmU+K2osP83n0pk4KOT0LCjQw==
X-Google-Smtp-Source: ABdhPJwwIpvIgvZUjk4vuvjbQpxwAEpbMoNoeVCWJBfMLwIc6RpLByqMetYxPvfwP0Lmr9q5AJEiYg==
X-Received: by 2002:a2e:9b58:: with SMTP id o24mr3212626ljj.84.1606470959624;
        Fri, 27 Nov 2020 01:55:59 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.79])
        by smtp.gmail.com with ESMTPSA id x25sm628477lfn.99.2020.11.27.01.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 01:55:59 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: qcom: sm8250: power up dispcc on sm8250 by MMCX regulator
Date:   Fri, 27 Nov 2020 12:55:48 +0300
Message-Id: <20201127095548.128217-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201127095548.128217-1-dmitry.baryshkov@linaro.org>
References: <20201127095548.128217-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add regulator controlling MMCX power domain to be used by display clock
controller on SM8250.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index f4cae2b82e2a..0c7986bf60d9 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -216,6 +216,13 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0x0 0x0>;
 	};
 
+	mmcx_reg: mmcx-reg {
+		compatible = "regulator-fixed-domain";
+		power-domains = <&rpmhpd SM8250_MMCX>;
+		required-opps = <&rpmhpd_opp_low_svs>;
+		regulator-name = "MMCX";
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
@@ -2058,6 +2065,7 @@ opp-358000000 {
 		dispcc: clock-controller@af00000 {
 			compatible = "qcom,sm8250-dispcc";
 			reg = <0 0x0af00000 0 0x20000>;
+			mmcx-supply = <&mmcx_reg>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&dsi0_phy 0>,
 				 <&dsi0_phy 1>,
-- 
2.29.2

