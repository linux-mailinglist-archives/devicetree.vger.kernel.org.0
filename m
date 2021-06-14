Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AA373A6A3A
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:27:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233868AbhFNP3c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:29:32 -0400
Received: from mail-ej1-f54.google.com ([209.85.218.54]:43752 "EHLO
        mail-ej1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233856AbhFNP3M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:29:12 -0400
Received: by mail-ej1-f54.google.com with SMTP id ci15so17362804ejc.10
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2qGghIKaYFqU7hEUb09j1WP4s4KmFYblcf/Dch+fhjY=;
        b=hQrQo11y6XVZ1fadqMpMa8A09h6njOKE7VFm6Jf4eGtPDqKNk1i1BZBShMWkHC3WqG
         cULfd9GSgipt9ZZA5nEPFAcOigNke9fbGKHmdS71fCN1UKECZkj62LaMxWiqVl0R1EBd
         ACvwL+orEB8VHUTtqz1db1tTNTGZkJLBkxIBUOXQpu8gc9y1XW2TYmYCBUp1K/5ekTcg
         9kollqMuu/3hkxpRqd55m3BPUUqPvxaxqA6lyk6cj/YoqHQXer5cvIP/5fME7k2Uh9On
         XyrZraBIR4pNacKROd19IQYkjmEquwtthbiye6Q4SZyO0WPATsQKW6vxG0Rj3EULzHKR
         bd9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=2qGghIKaYFqU7hEUb09j1WP4s4KmFYblcf/Dch+fhjY=;
        b=cN0vb66ALuPsg9UOpaORVh1iT6bmLcssmwbuGgXAtUhqY5j4N/90Q+uLAd7Y2rkguU
         RQ1TZM8/HfSfyw2mZGl0i1YUAY3S80vaA+n6bfJ+0Rl1sj/zqJIYG8prVtzpxkKFymY4
         uNRmi8bxbrUHEnWgzjit2LMSRA5F4kZGqz7hWY1TGR1pXnSDty07u4OCjR39/eLVaFRi
         cqeCuLrjUcKIXcBuQ0CtIWMJW5WP24MHJwYiv74DH9iuaKR9NvVw3xDuKh02zOYXrK69
         FcaH+JgZ29lXceWFvJshoe+dGiIcundZsdzixqMFpnNqQ/EBVDgzJaD6BJQCQ0agmsFT
         G86A==
X-Gm-Message-State: AOAM531w3yqBo4XsumfwV1FSHtdOK/43etyQdIQmg8wHw2TjRpGLg+T7
        BQdlamVtWuvpgZubDS7bAxanjQ==
X-Google-Smtp-Source: ABdhPJz2Va0ejvXApN82il5QYicrZYTJS9vZjMJByjRF3my485AsAcgKWivuLHXIHKImD0SPdr4iiw==
X-Received: by 2002:a17:906:e01:: with SMTP id l1mr15972952eji.280.1623684368733;
        Mon, 14 Jun 2021 08:26:08 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id de19sm9356119edb.70.2021.06.14.08.26.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:08 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 17/33] arm64: zynqmp: Add nvmem alises for eeproms
Date:   Mon, 14 Jun 2021 17:25:25 +0200
Message-Id: <9b860b47ec3ca64340b4d29317e92b667236d7d1.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use nvmem alias to point to eeprom memory which contains information about
board. The change is done based on discussion in the link below.

Link: https://lore.kernel.org/r/CAL_JsqLMDqpkyg-Q7mUfw-XH67-v068Q6e9wTq2UOoN=0-_coQ@mail.gmail.com
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 1 +
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts | 3 ++-
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts | 1 +
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts | 1 +
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 1 +
 5 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 1a45e4946dd4..339a12b255c1 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -25,6 +25,7 @@ aliases {
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &uart1;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index d7ecfcadd08b..4c328569c3ac 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -23,6 +23,7 @@ aliases {
 		ethernet0 = &gem3;
 		i2c0 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &uart1;
@@ -146,7 +147,7 @@ i2c@0 {
 			 * 512B - 768B address 0x56
 			 * 768B - 1024B address 0x57
 			 */
-			eeprom@54 { /* u23 */
+			eeprom: eeprom@54 { /* u23 */
 				compatible = "atmel,24c08";
 				reg = <0x54>;
 				#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
index 403a8ea6a36f..99d172867f6a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
@@ -23,6 +23,7 @@ aliases {
 		ethernet0 = &gem3;
 		i2c0 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &uart1;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 186d2e00d4a0..dbb8bfbb5c7f 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -25,6 +25,7 @@ aliases {
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &uart1;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index e646246a3b14..85e9d0e2f9bd 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -25,6 +25,7 @@ aliases {
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		mmc0 = &sdhci1;
+		nvmem0 = &eeprom;
 		rtc0 = &rtc;
 		serial0 = &uart0;
 		serial1 = &dcc;
-- 
2.32.0

