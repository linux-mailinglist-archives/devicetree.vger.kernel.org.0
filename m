Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6088C2F49D6
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 12:21:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728202AbhAMLQp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 06:16:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728201AbhAMLQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 06:16:44 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3113BC061575
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:16:04 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 23so2162505lfg.10
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4bKYty+8nc8C2dBtZiBLf8k0Y7ZW112IatpEki8UTGU=;
        b=Yap7T9/MXQwC9cdbpCGEtx6QEJUFSTAq+De3IOaHWdBhPUEM0AycIvwo5pkg5PArf+
         mfS1/xRtGm54JM5B3qbFT/ysSiNBL59x6o22CdDn8jjYMepWaq7+k/uOzA7vNeEho7ew
         kO0VBttx4QN0d/bdkVPO4hjur13f3Z7x7Es+JJ2zwTqDAdA3pwFDGjE/XfpzcN52UIYC
         LIF9B6Ym6QClqKK9ayAVnxUUGjcYZ/DQkRgvNcoZ6xv2Ob04Y7i9SJAfCBVYwsJ53whh
         pytCLitqsV6NUBVx9tU/zig1HWSTj3CYIrLulKvxbqZeTUhO1eB0NwZahlTUKf/ttzrl
         GlJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4bKYty+8nc8C2dBtZiBLf8k0Y7ZW112IatpEki8UTGU=;
        b=EDE91d3YWTdIoFq7TAluxzOQyk+tvZO9VhSAkT6jlbF8jIxe1jxZhqkL1KXnfVQst1
         csfl9hHEGrb2f6cJIxnrc2N9fpMp2PriJWk2q4YboSWlq4MTv24xTUzfhSSUjBFzZvII
         OcCR/hkV0ELmblKOt6pThAhgPrCipga/FFsldan9PTjIIRKHqZ1y7K5RtPJaubFdsnl5
         NmzJ8ehs6e/TAQwS40BQiDD2dhNQ5Q02dr5DuoINCJ9WZFnxsXLN7Odjn8M0RDH/7sm+
         ScMhvUF2HiV70GYDqeWwVS9zbVZJvVxy2tfHlyLyb9brh4H8UMkDdzf6H/iV9wmkk6G6
         kBbA==
X-Gm-Message-State: AOAM531xCumhZsxhFApMID6XbMdFaB1GMbwzjxkWtGjCjufGhQmscbHd
        4OO1b8avkqSt3rjlcMk74qw=
X-Google-Smtp-Source: ABdhPJwtlxTPFkER/EX8mIsjy5tbcZwjcL/z1zBvVuKIQPjLaXNmL8exfkhhOVw7KKKickJM09A1tQ==
X-Received: by 2002:a19:644b:: with SMTP id b11mr680982lfj.358.1610536562689;
        Wed, 13 Jan 2021 03:16:02 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id f3sm151135ljn.129.2021.01.13.03.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 03:16:02 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2] arm64: dts: broadcom: bcm4908: describe PMB block
Date:   Wed, 13 Jan 2021 12:15:47 +0100
Message-Id: <20210113111547.19972-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210112192723.751-1-zajec5@gmail.com>
References: <20210112192723.751-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

PMB (Power Management Bus) controls powering connected devices (e.g.
PCIe, USB, SATA). In BCM4908 it's a part of the PROCMON block.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Florian: this patch is based on top of the
[PATCH] arm64: dts: broadcom: bcm4908: describe internal switch
one. Both modify "ranges".

V2: Use simple-bus
---
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi      | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index d30dd2042786..65e186da81d9 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -108,7 +108,7 @@ soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		ranges = <0x00 0x00 0x80000000 0xd0000>;
+		ranges = <0x00 0x00 0x80000000 0x281000>;
 
 		usb@c300 {
 			compatible = "generic-ehci";
@@ -213,6 +213,21 @@ phy12: phy@c {
 				};
 			};
 		};
+
+		procmon: syscon@280000 {
+			compatible = "simple-bus";
+			reg = <0x280000 0x1000>;
+			ranges;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			power-controller@2800c0 {
+				compatible = "brcm,bcm4908-pmb";
+				reg = <0x2800c0 0x40>;
+				#power-domain-cells = <1>;
+			};
+		};
 	};
 
 	bus@ff800000 {
-- 
2.26.2

