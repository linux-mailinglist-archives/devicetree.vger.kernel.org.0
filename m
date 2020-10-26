Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CDD0298AA5
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 11:46:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1769751AbgJZKq2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 06:46:28 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:34053 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1770077AbgJZKq1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 06:46:27 -0400
Received: by mail-wm1-f67.google.com with SMTP id k21so5412200wmi.1
        for <devicetree@vger.kernel.org>; Mon, 26 Oct 2020 03:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AnbodJ8Py+s5i8s5RWeAFbLBwIF9+tfkt0vsM4R/3mM=;
        b=b7qZHc+tkVHcMem8r0QXs+94W9fJ5vhorjlb2iPUwsNraOH9yshbHkafhRSImN8Hjz
         j8Mg5MCWQXFQGOPFMJ7dL0a8llFJYA7CUbK6fJgAWyYxvrpEm/8/kvQE5Uex6yQ59fnG
         0hbH4z7zwWVrvEuOIhD1EscIibmtvbboqZdbQ5stoOJLburVbSzGkC9EP5CEkU9QPDDQ
         RV/skH2nJqaxZt9iAPCGDg0T4KAcCjXPk2B94GrpUtpz7CLJ6tw0pZfHtT28W9XXZB9U
         qlXGogGjIMgrbX4KAllQIxqsxnUP3+d84JtZE45U05L17+Ft3pGf0jFEnlkcXg7Q89Ke
         gjPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AnbodJ8Py+s5i8s5RWeAFbLBwIF9+tfkt0vsM4R/3mM=;
        b=AXxjnpfetZx3Oxn2SZgyI5TwG9c0mg7a/YQZ4b63FrEreXy9QqXYHOGzE1WTmOC8DP
         YzNBScJq9FCDcYCIqYFfwA8wk41GHHm0tfP5kAne48cAqPuSu/84+33LAGfIXm6kCbMf
         T10ky5MMmxe9wsjUwRl1rhcPjxzhYkEVvKr2fC8FsIIkMdmaRJMqAuCb+U4JhXcry2jJ
         Fgq86VmUF6pD9+/LBfNM+SIw9tFCESrT80OmJduFMBUuVRIkS+n5ejq5EKIetwleIvKI
         vLiCmdqPCUrO0MV46L1ZqaxPu0NE1L7NbEjuyQ1XgQ61YLTTmCCrcn1SY/M5bnluc6zV
         vFpA==
X-Gm-Message-State: AOAM532fpTim9vUSovUony1jKz6BnQgenEvVwisy3C+zG0zSBbJjte2y
        +o9DKIgcpN1JSwac+A9lfrju4g==
X-Google-Smtp-Source: ABdhPJwVRivlaVjdlHMuhC0KN5EXLVQIi7/47UpIe1Sn17iopr3PPxN+sNMgaMrXLz/3YGg8mb8ckA==
X-Received: by 2002:a7b:c00a:: with SMTP id c10mr6411043wmb.119.1603709184442;
        Mon, 26 Oct 2020 03:46:24 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-190-206.w2-15.abo.wanadoo.fr. [2.15.39.206])
        by smtp.gmail.com with ESMTPSA id b190sm20625354wmd.35.2020.10.26.03.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 03:46:23 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH] ARM: dts: at91: at91-sama5d27_som1: fix EEPROM compatible
Date:   Mon, 26 Oct 2020 11:46:18 +0100
Message-Id: <20201026104618.23415-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

AT24 compatibles require a vendor prefix. Use the default "atmel".

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/boot/dts/at91-sama5d27_som1.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
index b1f994c0ae79..1b1163858b1d 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
+++ b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
@@ -100,7 +100,7 @@ i2c0: i2c@f8028000 {
 				status = "okay";
 
 				at24@50 {
-					compatible = "24c02";
+					compatible = "atmel,24c02";
 					reg = <0x50>;
 					pagesize = <8>;
 				};
-- 
2.29.1

