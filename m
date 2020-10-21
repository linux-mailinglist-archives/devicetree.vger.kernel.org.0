Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC40B2954F4
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 00:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506939AbgJUWvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 18:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2506931AbgJUWvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 18:51:16 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B976C0613D2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:15 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id c141so5184070lfg.5
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 15:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ICAICiNyo+EcMXjUhGuIhiIEersvXHJzVxJKSGdteTM=;
        b=JvEnR4tRFXIYdCbHscJ9GWGxDi1dIvLHNzdffaWokQS90FA379cJx6I0wR6OTYc9MU
         LozDzCnTj1m1z1Lg4A7aeelciFHB2pX4jMoZOSL8TlKc0UQqZVqAn7U1HC8XAW2CKmww
         mwIOr6qRvdlu+UafFTCmErP8b7lily5r007/nvhIscJMpU1IIygLdFXFQDWKOcnNnEs0
         wNezxZ02hf+8buYD8gsaeGnpsXDBfUdJmvoHwmdEsWERiPFXOxpOF8C9zau7gnckrDA8
         kBhnv8N1HzgMPS0wUQQ3oy/Y6togiveG0YjjcHsYxRbvtpK1J7SllcM/OE6V0YO2jTmo
         RUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ICAICiNyo+EcMXjUhGuIhiIEersvXHJzVxJKSGdteTM=;
        b=tUW+Y2kCErCC6knY+Q9iMy9FlxyZ3MyImtSNuGXG3gt5+wlksBc1KtmXVz/6rZrNg0
         K0phSRVAww3S7fRYamGgH9EQs+GOmBo8VTg1J4gd1FXVb5Vm+sVNhMsJR7lAT1wA2oix
         3hnRbNCZPW0xv7pxGWWlWQZakYG7r2jFeRbm3Wp2ofQjiKcCK+tJn668ENaPWVSY/MzY
         4kcEhCtWRp40noMn2J3vq2hoGiT3FUfaV7eaSAORHyQpzd/m2JfsaOxqC3XLSCoyFWGq
         65izS+70nHIgrNvuBQRJy0hgvyHdtizxHbMXnjR15PGjUh0taQwyknK14BpttKnx5TBd
         s/hw==
X-Gm-Message-State: AOAM531UBaQhdBN2WWwI8GEaKJ3HyvWRQciHb3LHNJmoHldSTAHAPAM2
        sguq1OrEfGGmVY/i6kIxSANpqw==
X-Google-Smtp-Source: ABdhPJzz/fJNgntQdkyZa7dPBtnccqsA/OUhtXZDmFk4rqyua01TQTFC5361SXrKHbvGEhnuT8xdCg==
X-Received: by 2002:a19:f518:: with SMTP id j24mr1903146lfb.307.1603320673622;
        Wed, 21 Oct 2020 15:51:13 -0700 (PDT)
Received: from eriador.lan ([188.162.64.195])
        by smtp.gmail.com with ESMTPSA id h11sm652062ljc.21.2020.10.21.15.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 15:51:12 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: qrb5165-rb5: declare tri-led user leds
Date:   Thu, 22 Oct 2020 01:51:00 +0300
Message-Id: <20201021225100.162795-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021225100.162795-1-dmitry.baryshkov@linaro.org>
References: <20201021225100.162795-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm RB5 platform uses Light Pulse Generator tri-led block to drive
three green leds. Add device nodes defining those leds.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 01708d84fdf6..04eff24f9d71 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1014,6 +1014,29 @@ &pm8150_rtc {
 	status = "okay";
 };
 
+&pm8150l_lpg {
+	status = "okay";
+
+	led@1 {
+		reg = <1>;
+		label = "green:user0";
+
+		linux,default-trigger = "heartbeat";
+		default-state = "on";
+	};
+
+	led@2 {
+		reg = <2>;
+		label = "green:user1";
+		default-state = "on";
+	};
+
+	led@3 {
+		reg = <3>;
+		label = "green:user2";
+	};
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.28.0

