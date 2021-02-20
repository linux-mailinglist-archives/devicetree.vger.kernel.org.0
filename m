Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B3EE320309
	for <lists+devicetree@lfdr.de>; Sat, 20 Feb 2021 03:12:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230015AbhBTCLr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 21:11:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229959AbhBTCLq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Feb 2021 21:11:46 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17798C06178C
        for <devicetree@vger.kernel.org>; Fri, 19 Feb 2021 18:11:06 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id n10so6449438pgl.10
        for <devicetree@vger.kernel.org>; Fri, 19 Feb 2021 18:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w1gRU/WYbri3EwXTe4FbkyvuqvAR1wAq7srUEoRk6sk=;
        b=hDTLFmvlhfZanu6EuAo/OJ8ZvDEKmLQm4vfPLHFJT9Lbr7+f7Z0v5NjAkFVA/zz51D
         2VeVjtKcGSnOu83C4WS2B2l/h4sqeMsFrsBjzJRmzTs/OTbbLkVeAUYRBbUe3CKaBHV9
         NzE/7efnv/goVjG8ADhfrqOCiUEZq115nYIBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w1gRU/WYbri3EwXTe4FbkyvuqvAR1wAq7srUEoRk6sk=;
        b=hEaLH9U7XGHvCrwP4AMzC1NKWn1Yhxo3kjWHYqt063zcR+Ed8gDYjqvQRN8CYbmILC
         +42PoJH5dONQbsreJPvT6+3eAsOG7tqcoqTt1iB++wuLbZMyZTDUCA6YiCDqjIfQLhKY
         1KTBvI4LVPyo5oQ9asRdzNmIfNJMfe7aqlR6lGF0acuAeRfTt/yZyLdUap3DOoWBhSbE
         +VFBHM/7Vu+rOZXT5MVeO/TmaQJq7q+oyEU6TZ8uCof55j/ay3afodyPyLpyOscBNEEM
         hwS6/7DQb14DMaG/7J9oky4UZ0fFsfFSuY8I5sqSe11bAKw2GnKV7G06UyvgVz0Z1kwK
         qbIw==
X-Gm-Message-State: AOAM532y96MnkWjKUIw7Tfsf5NZJ968ww8PrBKOrngmNOA6YO2ew/wqd
        i3x0FmkPAVm6DJiLOjUAdCo7qw==
X-Google-Smtp-Source: ABdhPJw/LTi6lJs19ovtnX7AsyqYHx50Qrk/Z00W/+WxrCA0ZrX9WGeVEXSv7rHjGT+gSMMkbIL9dg==
X-Received: by 2002:a63:bc02:: with SMTP id q2mr10938131pge.198.1613787065676;
        Fri, 19 Feb 2021 18:11:05 -0800 (PST)
Received: from localhost ([2620:15c:202:1:bdfd:8eaf:bd48:f73e])
        by smtp.gmail.com with UTF8SMTPSA id j34sm9893062pgi.62.2021.02.19.18.11.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 18:11:05 -0800 (PST)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH 2/3] arm64: dts: qcom: sc7180: trogdor: Add labels to charger thermal zone and ADC channel
Date:   Fri, 19 Feb 2021 18:10:58 -0800
Message-Id: <20210219181032.2.I6a426324db3d98d6cfae8adf2598831bb30bba74@changeid>
X-Mailer: git-send-email 2.30.0.617.g56c4b15f3c-goog
In-Reply-To: <20210219181032.1.I23e12818c4a841ba9c37c60b3ba8cfeeb048285f@changeid>
References: <20210219181032.1.I23e12818c4a841ba9c37c60b3ba8cfeeb048285f@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some revisions of trogdor boards use a thermistor for the charger
temperature which currently isn't supported by the PM6150 ADC
driver. Add labels for the charger thermal zone and ADC channel
to allow the removal of these nodes from affected boards and
avoid the use of bogus temperature values.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index 07c8b2c926c0..fa996387715b 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -15,7 +15,7 @@
 
 / {
 	thermal-zones {
-		charger-thermal {
+		charger_thermal: charger-thermal {
 			polling-delay-passive = <0>;
 			polling-delay = <0>;
 
@@ -706,7 +706,7 @@ &mdss {
 };
 
 &pm6150_adc {
-	charger-thermistor@4f {
+	pm6150_adc_charger_thm: charger-thermistor@4f {
 		reg = <ADC5_AMUX_THM3_100K_PU>;
 		qcom,ratiometric;
 		qcom,hw-settle-time = <200>;
@@ -716,7 +716,7 @@ charger-thermistor@4f {
 &pm6150_adc_tm {
 	status = "okay";
 
-	charger-thermistor@1 {
+	pm6150_adc_tm_charger_thm: charger-thermistor@1 {
 		reg = <1>;
 		io-channels = <&pm6150_adc ADC5_AMUX_THM3_100K_PU>;
 		qcom,ratiometric;
-- 
2.30.0.617.g56c4b15f3c-goog

