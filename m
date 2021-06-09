Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B70F3A1353
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239425AbhFILty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:49:54 -0400
Received: from mail-wm1-f51.google.com ([209.85.128.51]:41710 "EHLO
        mail-wm1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239575AbhFILtE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:49:04 -0400
Received: by mail-wm1-f51.google.com with SMTP id l11-20020a05600c4f0bb029017a7cd488f5so4026016wmq.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=faDJwJkZnio3K1+D2/qEPWG8piye6Bb4xmyIkwVtbsM=;
        b=UmrttrlpGT6MTSmxtyJNOBUbmgFtWxEkrhN37QpZ+rjaocPopM9jfvdyufpxSLlm3G
         DdiTLtUDRpfqttGSfpsIllmhbJ3yPScaZZRUaRyJBZnNXj6wCa8gAabrGfeTZI1gYv8B
         iWLYVRax67K6VijlPRVRzhtdTgkuxDM8hXOCH+VVNa3OjM6deZP0eUuAGBbjkJ8vRiuL
         zu+VMO8ydFC+lQDEtpVBfrbRwMRXOe6wuzYmvRUBNhn6EDgRRTgpL1qFdSVUAnXjwYtC
         ZHZzvTOJNmF8AwrInbW5Kro32m3fh9DIeaXdNYkIyeLLcWbLrBPSgWUdKK3oT7IBb2N4
         AdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=faDJwJkZnio3K1+D2/qEPWG8piye6Bb4xmyIkwVtbsM=;
        b=Qgd0qq/KxQrP7t4fIoLLDggQ7LIhmA5MiB1kgmo7Wvr1iodKLh7FvzL8ux2Hn2y5YQ
         vzkYhNBb87viXGI/8jmd6hZaEDoQXBpZJj4yNtsh2ZhWfB4Dxfl9KRh9O8Ew3j/w2wyi
         tfWeSWKN9ZHvqHv4WFyEbm3cBzgJaAnVaKKJznOdQ/JcuxmPjehBpt1K2zH6PpqJcTnT
         tNqZ4rzk94LerSegDuyI+HzG8NyQeHN7lWMF9lQB039lGmaN+TAWpZ5AqckVc0RhYiMx
         ft8LcfvNEXrsjJjKLMkhceoAnY/AGz0CSQ8IKnb/tGECqJr1n2SeFG8RZv5yIxVqwCvf
         UXhQ==
X-Gm-Message-State: AOAM5336PVBfev/771RgGH+WldVesfZCSnvP+Dg2JNL9VRj5eEkewD/T
        wp9eb47u+zlhS73OnwXKwxid5Q==
X-Google-Smtp-Source: ABdhPJwyvaRJV27WEeZvyOtiMcZITiOPSb+nkAyiLSj8gjv4MqWxJI0U3RW05ioxpVts1hS0s+ciiw==
X-Received: by 2002:a05:600c:4f8f:: with SMTP id n15mr11461111wmq.116.1623239169240;
        Wed, 09 Jun 2021 04:46:09 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id x18sm2153689wrw.19.2021.06.09.04.46.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:46:08 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 28/31] arm64: zynqmp: Sync psgtr node location with zcu104-revA
Date:   Wed,  9 Jun 2021 13:45:04 +0200
Message-Id: <cd168b19c13fd46874e017a6735a744111f3b47a.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

zcu104-revA has node below pinctrl which is not the same on revC. Sync
location for easier comparison.
Also zc1751-dc1 is not using this position.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    | 14 +++++++-------
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts  | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index 9f176307b62a..d78439e891b9 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -58,13 +58,6 @@ clock_si5338_3: clk150 {
 	};
 };
 
-&psgtr {
-	status = "okay";
-	/* dp, usb3, sata */
-	clocks = <&clock_si5338_0>, <&clock_si5338_2>, <&clock_si5338_3>;
-	clock-names = "ref1", "ref2", "ref3";
-};
-
 &fpd_dma_chan1 {
 	status = "okay";
 };
@@ -340,6 +333,13 @@ conf {
 	};
 };
 
+&psgtr {
+	status = "okay";
+	/* dp, usb3, sata */
+	clocks = <&clock_si5338_0>, <&clock_si5338_2>, <&clock_si5338_3>;
+	clock-names = "ref1", "ref2", "ref3";
+};
+
 &qspi {
 	status = "okay";
 	flash@0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
index fb8d76b5c27f..c21d9612ce04 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
@@ -429,6 +429,13 @@ conf-tx {
 	};
 };
 
+&psgtr {
+	status = "okay";
+	/* nc, sata, usb3, dp */
+	clocks = <&clock_8t49n287_5>, <&clock_8t49n287_2>, <&clock_8t49n287_3>;
+	clock-names = "ref1", "ref2", "ref3";
+};
+
 &qspi {
 	status = "okay";
 	flash@0 {
@@ -446,13 +453,6 @@ &rtc {
 	status = "okay";
 };
 
-&psgtr {
-	status = "okay";
-	/* nc, sata, usb3, dp */
-	clocks = <&clock_8t49n287_5>, <&clock_8t49n287_2>, <&clock_8t49n287_3>;
-	clock-names = "ref1", "ref2", "ref3";
-};
-
 &sata {
 	status = "okay";
 	/* SATA OOB timing settings */
-- 
2.31.1

