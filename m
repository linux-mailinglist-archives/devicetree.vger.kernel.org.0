Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC4014A3AA2
	for <lists+devicetree@lfdr.de>; Sun, 30 Jan 2022 23:03:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235957AbiA3WD3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jan 2022 17:03:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232105AbiA3WD3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jan 2022 17:03:29 -0500
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC276C061714
        for <devicetree@vger.kernel.org>; Sun, 30 Jan 2022 14:03:28 -0800 (PST)
Received: by mail-qk1-x72c.google.com with SMTP id b22so10536999qkk.12
        for <devicetree@vger.kernel.org>; Sun, 30 Jan 2022 14:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oBgDNmNrOOnlb0Mg5ouD+YxV6ZtLCLEZj9tfMCfsu+Q=;
        b=KWv8c8kIwOrcrnxMUOzr4WIpb0fkoJhnMZ9wu1V+LPvkdi5uY7l9f5hBvSWfchiyYT
         6ImYWabE3E4R2GFHW0fuOBHrIsA60jh48V2sqWXkmmz0ljam8eKfWmetMQ8gyVUxR+6l
         6n57VAGAfE1jjygMScpf3pnkUeTr6DfwUl4xS9ayyHPupNIADsOn4ZbzHSjgpb9zKmPw
         btvOrzEl1cYmUnkYQzC44v7G6/M8PKDo8FIkeg3iApHtVEHg65kSy5jfHkn2tLpXuk+M
         DkrAJ/nNkImWhIBahglBx3qA7g0i2JRUgglcjriOWNgnNHZWXhpErFEV/+rnwj9o+uLr
         VlRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oBgDNmNrOOnlb0Mg5ouD+YxV6ZtLCLEZj9tfMCfsu+Q=;
        b=GBUaQSjy8/kXFCaxnr12EyU5ug4F+XRnKCX+RCT6DcsA1BYhvnETGfnM/1mZ5voZDW
         s/isa21U+9t6Zcko4v9wIAYwMgs2uIKlHrCEnM1vsMqum6IuiwQGiV/EE8bJOUXZsMRQ
         7aCtu+yc4mNQGr386lPdQdMTLJKh+VHYkdk5XU9HIYmAoGOSOagEwFD0scLeMdjsrz3B
         H0388Brvc8Ork2YLO+xGazNM2OgncKup43pFYch3pjALOEEl/T67mdSRXKXB0NVL4tkd
         4fNIkG3KkrJh052qWwR9ZjdZ/57CjN2UX1yXY44N2uSkD84/einWqNK38rtdKGDLramw
         +M6w==
X-Gm-Message-State: AOAM5307IWgX7+Zm6JhBUznUnldqr/CalvkMo6w5MCsxJyVWXyPTRbIr
        dWF/NKdVch91TW9tvSo/8OLP8JAeL4s=
X-Google-Smtp-Source: ABdhPJxftSKAAHXMcfmw/XMOGZ0c407TMeh9lZ0bUTX/aPhoX/tfan0sMdUjWEeZqW4mKTDTPz99RQ==
X-Received: by 2002:a05:620a:f02:: with SMTP id v2mr11462754qkl.41.1643580207858;
        Sun, 30 Jan 2022 14:03:27 -0800 (PST)
Received: from jesse-desktop.jtp-bos.lab (146-115-144-188.s4282.c3-0.nwt-cbr1.sbo-nwt.ma.cable.rcncustomer.com. [146.115.144.188])
        by smtp.gmail.com with ESMTPSA id h12sm7556651qkp.129.2022.01.30.14.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jan 2022 14:03:27 -0800 (PST)
From:   Jesse Taube <mr.bossman075@gmail.com>
X-Google-Original-From: Jesse Taube <Mr.Bossman075@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, Mr.Bossman075@gmail.com,
        andre.przywara@arm.com, linux-sunxi@lists.linux.dev,
        mripard@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] ARM: dtsi: suniv: F1c100s add clock and reset macros
Date:   Sun, 30 Jan 2022 17:03:22 -0500
Message-Id: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include clock and reset macros and replace magic numbers.

Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
---
 arch/arm/boot/dts/suniv-f1c100s.dtsi | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/suniv-f1c100s.dtsi b/arch/arm/boot/dts/suniv-f1c100s.dtsi
index 6100d3b75f61..953228cc8d52 100644
--- a/arch/arm/boot/dts/suniv-f1c100s.dtsi
+++ b/arch/arm/boot/dts/suniv-f1c100s.dtsi
@@ -4,6 +4,9 @@
  * Copyright 2018 Mesih Kilinc <mesihkilinc@gmail.com>
  */
 
+#include <dt-bindings/clock/suniv-ccu-f1c100s.h>
+#include <dt-bindings/reset/suniv-ccu-f1c100s.h>
+
 / {
 	#address-cells = <1>;
 	#size-cells = <1>;
@@ -82,7 +85,7 @@ pio: pinctrl@1c20800 {
 			compatible = "allwinner,suniv-f1c100s-pinctrl";
 			reg = <0x01c20800 0x400>;
 			interrupts = <38>, <39>, <40>;
-			clocks = <&ccu 37>, <&osc24M>, <&osc32k>;
+			clocks = <&ccu CLK_BUS_PIO>, <&osc24M>, <&osc32k>;
 			clock-names = "apb", "hosc", "losc";
 			gpio-controller;
 			interrupt-controller;
@@ -114,8 +117,8 @@ uart0: serial@1c25000 {
 			interrupts = <1>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-			clocks = <&ccu 38>;
-			resets = <&ccu 24>;
+			clocks = <&ccu CLK_BUS_UART0>;
+			resets = <&ccu RST_BUS_UART0>;
 			status = "disabled";
 		};
 
@@ -125,8 +128,8 @@ uart1: serial@1c25400 {
 			interrupts = <2>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-			clocks = <&ccu 39>;
-			resets = <&ccu 25>;
+			clocks = <&ccu CLK_BUS_UART1>;
+			resets = <&ccu RST_BUS_UART1>;
 			status = "disabled";
 		};
 
@@ -136,8 +139,8 @@ uart2: serial@1c25800 {
 			interrupts = <3>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-			clocks = <&ccu 40>;
-			resets = <&ccu 26>;
+			clocks = <&ccu CLK_BUS_UART2>;
+			resets = <&ccu RST_BUS_UART2>;
 			status = "disabled";
 		};
 	};
-- 
2.34.1

