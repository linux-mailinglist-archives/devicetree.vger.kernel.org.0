Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F6233F285C
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 10:25:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233303AbhHTI0V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 04:26:21 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:52572
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232601AbhHTI0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 04:26:18 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2F4C9407A2
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629447459;
        bh=d8xM/AjEqi+D82F4uBDDQrAWzl08FrG+YxG5akZl0IU=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=QgSbiPhRLy4RKgEz9TYJttmAk2UNP6zJREJAwHOMoiVuVhYWemjUBWXYAP70dbd12
         BXQzDUdFkW8XNgrfFQvAPuNIuf7tce++FG8zVlxf4mOjlM6S6dUuDBxo6Q2FBgRc4d
         NZ57Xn1xCok7lnTWVJidqvH+rF4ZodaEyW3egFFuwLxfL6gcYLe/RdsPdW5V2tSJDw
         5uG2+XmLpRJhZUZVN53kH1yH5nyawvP8i1VBPxQCD2KCeS4VJgXuy1HT3V+IdYGZvl
         xjGr3oUiSD9heIWyjPRb8Bt5VkxcOYx2Nke7NbfnHc9akxjr2KbvhjEX3skiT/ilOs
         IjxuMYMtAfb9A==
Received: by mail-ed1-f71.google.com with SMTP id bx23-20020a0564020b5700b003bf2eb11718so4148396edb.20
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 01:17:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d8xM/AjEqi+D82F4uBDDQrAWzl08FrG+YxG5akZl0IU=;
        b=G+ZVQ0gCNNUHZf7Vbh79B+ZjR/1yFL9ImLHAIdERv4qmH110Lw7Pn1I1gZcxCV3GrD
         tPKxxHxpcU1nV6Cmy0eXthFGmyPGDfPhlcErb+Yt5/fehSzOeciSs8AItCNG60qT2tDA
         su0/udTtEveo/UhBO5PWHGTmHBxN2RZPhSvv7q+b1svu5pVvZRl3xAPk1DnJxU5apVLt
         m1l51m7t3wp1oB6163cvdedzNIMmwUBA6TA85NngmtVyF2w2QgPw/Q0gcFahbWzj2V9F
         2myk4kFyjZYJSWMcfyIB/64zDx16oxHlqzH45bNz9xp52sJ3QNZsdDisQCgfBTp3z8IP
         2ZKQ==
X-Gm-Message-State: AOAM530raIyYXCPOuDAbbLeqvyRSqou6khy8RJ1SgsRyXJTo0aLbxYqx
        +VETsjqg/AmTV7qSkQf4VlFh7QTVn5opMD3k2pkV3MKrMYFaCIlusa4+Nh+5RsJKK6acPY5PY5h
        U6s51cJw3Ey5DuXPV7LxNJEWWvhxcrtwIt/p/GoI=
X-Received: by 2002:a17:906:1416:: with SMTP id p22mr19936537ejc.364.1629447457995;
        Fri, 20 Aug 2021 01:17:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyedBftyAz+28KskU/X2mqtpXdfrTDtjkZC8gEQB+dg5iHeoEDxeeEa0X5sxtezOQDUYByLOQ==
X-Received: by 2002:a17:906:1416:: with SMTP id p22mr19936525ejc.364.1629447457819;
        Fri, 20 Aug 2021 01:17:37 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id d22sm2488041ejk.5.2021.08.20.01.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 01:17:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/3] arm64: dts: arm: align watchdog and mmc node names with dtschema
Date:   Fri, 20 Aug 2021 10:17:31 +0200
Message-Id: <20210820081733.83976-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the watchdog and mmc device node names with the schema to fix
warnings like:

  mmci@50000: $nodename:0: 'mmci@50000' does not match '^mmc(@.*)?$'
  wdt@f0000: $nodename:0: 'wdt@f0000' does not match '^watchdog(@.*|-[0-9a-f])?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi    | 4 ++--
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index 40d95c58b55e..f45c912b2806 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -218,7 +218,7 @@ led7 {
 					};
 				};
 
-				mmci@50000 {
+				mmc@50000 {
 					compatible = "arm,pl180", "arm,primecell";
 					reg = <0x050000 0x1000>;
 					interrupts = <5>;
@@ -246,7 +246,7 @@ kmi@70000 {
 					clock-names = "KMIREFCLK", "apb_pclk";
 				};
 
-				wdt@f0000 {
+				watchdog@f0000 {
 					compatible = "arm,sp805", "arm,primecell";
 					reg = <0x0f0000 0x10000>;
 					interrupts = <7>;
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index 4c4a381d2c75..7260bcf4b2ab 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -130,7 +130,7 @@ aaci@40000 {
 					clock-names = "apb_pclk";
 				};
 
-				mmci@50000 {
+				mmc@50000 {
 					compatible = "arm,pl180", "arm,primecell";
 					reg = <0x050000 0x1000>;
 					interrupts = <9>, <10>;
@@ -190,7 +190,7 @@ v2m_serial3: serial@c0000 {
 					clock-names = "uartclk", "apb_pclk";
 				};
 
-				wdt@f0000 {
+				watchdog@f0000 {
 					compatible = "arm,sp805", "arm,primecell";
 					reg = <0x0f0000 0x1000>;
 					interrupts = <0>;
-- 
2.30.2

