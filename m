Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70DE34811A4
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 11:23:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235396AbhL2KXu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 05:23:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231732AbhL2KXu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 05:23:50 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C72FAC061574
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 02:23:49 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id bm14so84432023edb.5
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 02:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EA0qkbRaoKZN2LJIyAhcaamMLi0dAd0M02lNssX5Iok=;
        b=EPiuY3A9acdx00QrZkSO9AofczW76WMUh5iimGjhK5LwdFzgzBNjE+nGEN89Rt/I+E
         Hnq40F5holtMuR4yskSl3xEWtwdihYuSHo8kzFwJcCahc2YztbaF/JM72W4zupIgmat4
         8p74rb8fMx0RI8iScTJpFmdE5upSgAkPTp7hI6S6POlU2hhFMtkH5HXFtGfh8L5u75WU
         kMJR4LlI0iFDTjMARnw3mSmgFfyNlDJOr0kO7+IRrKyElfSxLoKBQ3aQtH+BwSNj2BQh
         mo6H7BYnDKfl7dZSL4X81vxxEeLYIEMEIU+rFVGROizvs7iuBiEgNIvdF6UUud5BUGDr
         QA3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EA0qkbRaoKZN2LJIyAhcaamMLi0dAd0M02lNssX5Iok=;
        b=QYrCn+rIWamyoVDE/VDYhpMxdGd2eiawNiP3Layv1GzB7AnVDV/VzezHOpH1lSRIFc
         V7zj6Kjoidt4D4MlQnJSLkOn8qfoFjjTPrmQEeyojPUtlzTUJEjBNxxiztpK3AEtOYL6
         DIYmqDqb72Um9XzYSczToi4nZMePBUQlWo5DgbVhPv4JhaBltnhqv2bOGtfwGiSpwjZd
         ykRUpGjstOVl2cUf9Kw03xrpiLrRIpsFsCV0PEigVXlXIkAiRIgJsaB1TDXXyXPNrG5h
         GDvvaYJLKgHgzOW47J5bE0Hwt8p46v9/sXSp6yccCbstBoT3gt22zWOFYmXxSsTc83Kg
         aZmg==
X-Gm-Message-State: AOAM5311YDpFjkeWwKRwnkeOWxhRwFdbtBkf+hRuEKIKuIEHX6VMWgSz
        7t+YIfLqkTyBtNGZlgG0/nU=
X-Google-Smtp-Source: ABdhPJwbqHz+srlkVIl/yRjEeVWNby3WH8gSVVOFq9YkjVFnloTKo6i7xUwrMQU8eZlg7QSc0SLJWg==
X-Received: by 2002:a17:907:1b21:: with SMTP id mp33mr19866000ejc.580.1640773428350;
        Wed, 29 Dec 2021 02:23:48 -0800 (PST)
Received: from localhost.localdomain ([2a00:f41:3894:b142:1667:a0ff:5387:8a85])
        by smtp.gmail.com with ESMTPSA id n8sm6189490edb.41.2021.12.29.02.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 02:23:47 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: use proper TWD binding
Date:   Wed, 29 Dec 2021 11:23:14 +0100
Message-Id: <20211229102314.5423-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Block at <ff800400 0x4c> is a TWD that contains timers, watchdog and
reset. Actual timers happen to be at block beginning but they only span
across the first 0x28 registers. It means the old block description was
incorrect (size 0x3c).

Drop timers binding for now and use documented TWD binding. Timers
should be properly documented and defined as TWD subnode.

Fixes: 2961f69f151c ("arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 984c737fa627..6e738f2a3701 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -273,9 +273,9 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0x00 0x00 0xff800000 0x3000>;
 
-		timer: timer@400 {
-			compatible = "brcm,bcm6328-timer", "syscon";
-			reg = <0x400 0x3c>;
+		twd: timer-mfd@400 {
+			compatible = "brcm,bcm4908-twd", "simple-mfd", "syscon";
+			reg = <0x400 0x4c>;
 		};
 
 		gpio0: gpio-controller@500 {
@@ -330,7 +330,7 @@ reset-controller@2644 {
 
 	reboot {
 		compatible = "syscon-reboot";
-		regmap = <&timer>;
+		regmap = <&twd>;
 		offset = <0x34>;
 		mask = <1>;
 	};
-- 
2.31.1

