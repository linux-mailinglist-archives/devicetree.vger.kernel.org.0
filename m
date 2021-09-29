Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4286141BDAF
	for <lists+devicetree@lfdr.de>; Wed, 29 Sep 2021 05:43:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244119AbhI2DpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 23:45:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244128AbhI2DpD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 23:45:03 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12BF3C061749
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 20:43:20 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id r7so624706pjo.3
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 20:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OGr1UhBmzv1ZbRN4Jw2f9I0cji4GhDLktnzGXnOfSCw=;
        b=lojz6FLPpIyl/A59txe+JHKvs0tCb0UDRptBdBrDrIrrWgrcokj/x1HSe4Hhp50GYs
         U8XmdWwKpC+k+MPz7KBY1yZHubAPNbDt7Tdewt3igCI4axF5G3kxktfW2I/52ctLAm3x
         gN7JAhAuyFMi3HXqIdRBNTpz0BUJi0q4mM8jTzZO4kk4l1fZ6soZgXhvBEJ1Ew1liuam
         chGBsDQGCbKP7wl5fYYfkIRCb2kLudDdbwVhZNN0PcvlnsR9NXxjF1UQoZhES9G0fwyb
         3d2xdnGW6IDDlRABDOMrF87uTfdMdCmbqv4da/f2gfFWVN+UrGXvc1GHxoqFJWG7g8ho
         GSUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OGr1UhBmzv1ZbRN4Jw2f9I0cji4GhDLktnzGXnOfSCw=;
        b=i5fVjqDLjl/HAUBA3j/yw/0nmGLuxJdqRMrRB9h4687gYbD61ByaGEkfivNoTSB/4g
         MgTk7yuVXhjGGlVhMFVDmNud4tp3gDJPI2oVMMTABZ4Y7R48vOpwoH2ohr701xJ1U3mA
         N7xkf9ePDoZrVJYK4hJ/tqu1thDsR5148iEkk3S8EhuP5MHUPpY7tEj6ChJl0ND/n7ig
         mjpH+oE1tEqzDBKDfjHzEqRAz8YWE5S9Wrv933AWsEGZQqttBvyO6khp4z3qzKbR/O7F
         8Wh1hUlzHk7pX5PZ5CNO2G3M3aRpmA8DDwJiG5YM8LCuYmEkoBf9qCYuUyvbCVIKSyV/
         8V4Q==
X-Gm-Message-State: AOAM530ZDmHAfzFqhlk5ORSQtV0Y3zwdACJg+XKdwW0itGeyrGoYgoGM
        iAYUEGHNgwxTrQV+XQKAb/IjlCHlf947Lw==
X-Google-Smtp-Source: ABdhPJz/CbZ/RVuQyXsLtfbfTUh9HP70UcEOYZ/Z9mDXIxeGLpabjuICfiiIaLeetmoAaxOHYEUvjw==
X-Received: by 2002:a17:90b:1b06:: with SMTP id nu6mr3884145pjb.15.1632886999671;
        Tue, 28 Sep 2021 20:43:19 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 20:43:19 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 06/10] arm64: dts: qcom: Drop reg-names from QMP PHY nodes
Date:   Wed, 29 Sep 2021 11:42:49 +0800
Message-Id: <20210929034253.24570-7-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'reg-names' is not a supported/used property.  Drop it from QMP PHY
nodes to fix dtbs_check warnings like below.

phy-wrapper@88e9000: 'reg-names' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
        arch/arm64/boot/dts/qcom/sm8350-hdk.dt.yaml
        arch/arm64/boot/dts/qcom/sm8350-mtp.dt.yaml

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 -
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 1 -
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index ac775189a2e4..216d703f3e55 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3678,7 +3678,6 @@
 			compatible = "qcom,sdm845-qmp-usb3-phy";
 			reg = <0 0x088e9000 0 0x18c>,
 			      <0 0x088e8000 0 0x10>;
-			reg-names = "reg-base", "dp_com";
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 4e943e4a93c4..99cd54c69956 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2994,7 +2994,6 @@
 			compatible = "qcom,sm8150-qmp-usb3-phy";
 			reg = <0 0x088e9000 0 0x18c>,
 			      <0 0x088e8000 0 0x10>;
-			reg-names = "reg-base", "dp_com";
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index b19a3619e56b..dcda4fac46b1 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1202,7 +1202,6 @@
 			compatible = "qcom,sm8350-qmp-usb3-phy";
 			reg = <0 0x088e9000 0 0x200>,
 			      <0 0x088e8000 0 0x20>;
-			reg-names = "reg-base", "dp_com";
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
-- 
2.17.1

