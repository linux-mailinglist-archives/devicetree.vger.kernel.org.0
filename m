Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 304983184CE
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 06:27:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbhBKFYX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 00:24:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbhBKFYP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 00:24:15 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9122FC061222
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 21:22:48 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id m2so3097760pgq.5
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 21:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vk7Z0AS7ak4J0BwIBs0zSntFuze/upcDQo3SRk3ydVI=;
        b=m4hEkGAhe/bsNcOv9Y6cZl08ZjTGXhVFHQvUJtbARWhP3WYfyhNlc9HVPtW0kFkBLt
         6Fq+zWLqWe8hlBhKhY68VS5cA+5RjXodulpr2PmzOb1NmT3Q4pfkqUFgq685zVyNEhz2
         PNG1xv3+zvMSVcujr9L6wd7ahhwYtmyqROBTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vk7Z0AS7ak4J0BwIBs0zSntFuze/upcDQo3SRk3ydVI=;
        b=odOkqvWZeVViZjpFBZdTrD1PBMug1ihcmqTsXwX1KsNgbVqL6NjurDMXFoitmyJ+M8
         43MPB7sF7+fIsP2H0N8kOyKUhm8lQ6E0/ZJUxoU8rL+g4fn4Dc6pGo0EsbKEEwIG/U9R
         YsglqHcxF2NdISIz3HIt1CscOaxYxTgsGhlk02iNL07juttCl7r0ITVDZt5PmP7H+VnV
         HCMx6Mk+/crxusIyXxFI/IIzhRDmBjn3BGHo451xWHR2etc+SlSUigixyGdGpxhdR/TV
         bkZsN+q4WQe+ow0DLiWhi8JRgvTXkQY0wjBsUm2Zv2cCN8bUqHzw1YqTJOL2w5Lmqwlt
         LBDg==
X-Gm-Message-State: AOAM532s1/1vXWIKLF9yc82cISHWvWyMzcYTVCuZFHdWfNyehyUKwDIF
        0EqGJMI0bf4iVIXM8Q+Ap7TZqLFYYd3I6riS
X-Google-Smtp-Source: ABdhPJyISaJ8cwyL7Zx0SCuhZTeWSCJmZ3TmVwLz+shRCM5N9O/vaXtiCDAHszb9as31QHnl+NVk7A==
X-Received: by 2002:a63:c741:: with SMTP id v1mr6379922pgg.316.1613020968122;
        Wed, 10 Feb 2021 21:22:48 -0800 (PST)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id o21sm3493511pjp.42.2021.02.10.21.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 21:22:47 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-clk@vger.kernel.org, sboyd@kernel.org,
        devicetree@vger.kernel.org
Cc:     w@1wt.eu, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 7/7] ARM: mstar: Add mpll to base dtsi
Date:   Thu, 11 Feb 2021 14:22:06 +0900
Message-Id: <20210211052206.2955988-8-daniel@0x0f.com>
X-Mailer: git-send-email 2.30.0.rc2
In-Reply-To: <20210211052206.2955988-1-daniel@0x0f.com>
References: <20210211052206.2955988-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All of the currently known MStar/SigmaStar ARMv7 SoCs have at least
one MPLL and it seems to always be at the same place so add it to
the base dtsi.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-v7.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
index 889c3804c251..075d583d6f40 100644
--- a/arch/arm/boot/dts/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -6,6 +6,7 @@
 
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/mstar-msc313-mpll.h>
 
 / {
 	#address-cells = <1>;
@@ -124,6 +125,13 @@ l3bridge: l3bridge@204400 {
 				reg = <0x204400 0x200>;
 			};
 
+			mpll: mpll@206000 {
+				compatible = "mstar,msc313-mpll";
+				#clock-cells = <1>;
+				reg = <0x206000 0x200>;
+				clocks = <&xtal>;
+			};
+
 			gpio: gpio@207800 {
 				#gpio-cells = <2>;
 				reg = <0x207800 0x200>;
-- 
2.30.0.rc2

