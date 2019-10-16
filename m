Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A53C7D89B1
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 09:34:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389775AbfJPHey (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 03:34:54 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:46016 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388794AbfJPHey (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 03:34:54 -0400
Received: by mail-pg1-f194.google.com with SMTP id r1so12569223pgj.12
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 00:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=G1RY5BCmh8InAkONRa9lruWuMsHWqlSh2+WDeebx0SM=;
        b=lODSxo7ZxvWcubnc5SEpK4ryfBPwi14FfHXfQYhOaxz7Brdfim0EBj1fVz5tZRhKoq
         NA1lLeVAB09CXo88wcCR6NXmhZb358RV5aBo/W05sbX3efRkG9aW+EoJh8Ma1PK2fQPn
         oZ1Cybsyd6aLYDMX9C7ttP2XslA5YHLQ+d9UFntN8RdHxS4wKzbJH3aJCbr7bVu1cBDj
         WXIshUbBK99+48KKckgm0HKdk+5v+fvruQ5ZK82wP4Drb442Z0EEeK3KGVxJuwABQ1h6
         htgqxn6HFmQ4NRAEaNLNz8kRy60QQB6Y2H7E24BvlIgAv4v4+tXnneYZ4dugwjUVDM4O
         ggjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=G1RY5BCmh8InAkONRa9lruWuMsHWqlSh2+WDeebx0SM=;
        b=fDbw/irkuTRb8vvfgnQLudQ3smvzNcIiP6doqIQtykkm+3xOgNQDpW/xWi3V9T8Cmt
         Jnvy6chsM1p+iBJpX7X8AWdh5pfQx5OfISaodcwuy1BfRyqEC1HyNu9AiC9QeYozKVsw
         f7rp7xfq+Cbd1drR4zPo08EaKnC6SA3xfjrkJo8NgVzvs5Ad/L2P8xkwQ2xKtE0BsEXS
         9nUIp/wPYgtAky9wwM8Cgv7cFW1xkyXZds/JAkqS5lGpDgAbXtL3JVSqZWjDlYiyoO10
         784V5fzLAJxDhwoiP92vXKZFhbHvbzFo39cYzcauIaphEixv8CUD4T1J0Frr11xfxp6B
         zv8w==
X-Gm-Message-State: APjAAAU7LwfDK2e8wrJkmz0XJ6M1xW2RYRWuYvCJLeTsYFCeUgcD8g9B
        zZQtIOEVESffitax1Cq6uANpsA==
X-Google-Smtp-Source: APXvYqx6ALer2hP+7QwyzwctNf2eyTUeZT1Wmtj/R9DCSe21NV7few4ITXC31vMMCodxgq0uplxdpw==
X-Received: by 2002:a17:90a:266e:: with SMTP id l101mr3329480pje.104.1571211292153;
        Wed, 16 Oct 2019 00:34:52 -0700 (PDT)
Received: from localhost ([49.248.175.127])
        by smtp.gmail.com with ESMTPSA id s3sm1536452pjq.32.2019.10.16.00.34.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Oct 2019 00:34:51 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        masneyb@onstation.org, swboyd@chromium.org,
        Amit Kucheria <amit.kucheria@verdurent.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH 08/15] arm64: dts: sdm845: thermal: Add interrupt support
Date:   Wed, 16 Oct 2019 13:04:07 +0530
Message-Id: <5a96df48e546576f90081bbde218e7cff88ae8ce.1571210269.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571210269.git.amit.kucheria@linaro.org>
References: <cover.1571210269.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1571210269.git.amit.kucheria@linaro.org>
References: <cover.1571210269.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register upper-lower interrupts for each of the two tsens controllers.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index f406a4340b05..0990d5761860 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2950,6 +2950,8 @@
 			reg = <0 0x0c263000 0 0x1ff>, /* TM */
 			      <0 0x0c222000 0 0x1ff>; /* SROT */
 			#qcom,sensors = <13>;
+			interrupts = <GIC_SPI 506 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
@@ -2958,6 +2960,8 @@
 			reg = <0 0x0c265000 0 0x1ff>, /* TM */
 			      <0 0x0c223000 0 0x1ff>; /* SROT */
 			#qcom,sensors = <8>;
+			interrupts = <GIC_SPI 507 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
-- 
2.17.1

