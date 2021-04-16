Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4584E36211E
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 15:38:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244072AbhDPNih (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 09:38:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240255AbhDPNig (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 09:38:36 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BD8CC061574
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:10 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id y4so4683171lfl.10
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9jfz7fbTVIPkfHaT+BLnxYLVC21pmKo6ftsKL38PVi8=;
        b=CDV0JZwCTnBeAwx4Ry1PxVxYzG/V9uQpcwDIDP4ikaVXwi3oOikgnPVQ2GJhcNQi+p
         YbtrDXRUUVOcmKXw9WbqaChN5fSLoD7Nk5Yz4084b0PpAvkxullROIto4CKfks2+AH44
         Bmogmqh1tQcXiI34XIBqqLy7Gdr8DpsQrfY6AHEJjs3PI8uPNcsLhKV0c696FXIpaxeV
         gN9rrprktGi0R21Vht2D9v3/lh95LfQ9NRpIe1ulwEEklTQc/Tt38paBC50f4VjDiLqi
         STLrzZDz1Mvmlqnf5iPSeDprNkXZCM14cZmmeMw0V+4bjOZw1l9knvGjGYyGVtI9W95J
         SAvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9jfz7fbTVIPkfHaT+BLnxYLVC21pmKo6ftsKL38PVi8=;
        b=RPmKWXq3AOD0q8d1Efx+tHHLUuznzjd7dsQL4Es6+hBbDHJYRh6fYVlSODuXIhv2Vn
         j3M0ybhY6pQZoT5pHu7NBHfZCLMUUFJdZAT2KyohhauQpYQ59movCJW2zufCs9Xzc3qM
         A71DsGNqIENh+x/MP6CPdDtVArzb/bESy04VJYFaOMrvsdMcbGg2Hi1dn0gd3bBuC2Yh
         a+I9U91TOictusigWtnx/bRCMLTJijWwzO5EQq3/xAbLrOb5jR+j5Hmeh01MBneQB9NY
         k7dfvndbrRJMqNM/ScLkRTaV5pjvvktDmZBZ+N8cEj0Kq+Yaq20IUqEtNHjohFU/mQUV
         Uvsw==
X-Gm-Message-State: AOAM530qpVEm7U+vTRXsiC/jkD4TkyVT47X/jOq7BZmYIKrB7wencrXf
        kbwtcxUDB3s2ApoiudgTeS4=
X-Google-Smtp-Source: ABdhPJy6gb+rZs2v9BJ1U3EcIOfJGglvNFVzKekXmEfDxW4G+sei6aHVeWoA9Yb5n1nVVYvBHcfDCQ==
X-Received: by 2002:a05:6512:3741:: with SMTP id a1mr3062348lfs.121.1618580289148;
        Fri, 16 Apr 2021 06:38:09 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id y14sm948405ljy.18.2021.04.16.06.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 06:38:08 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH stblinux 2/6] ARM: brcmstb: dts: fix NAND nodes names
Date:   Fri, 16 Apr 2021 15:37:49 +0200
Message-Id: <20210416133753.32756-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210416133753.32756-1-zajec5@gmail.com>
References: <20210416133753.32756-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This matches nand-controller.yaml requirements.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm7445-bcm97445svmb.dts | 4 ++--
 arch/arm/boot/dts/bcm7445.dtsi             | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm7445-bcm97445svmb.dts b/arch/arm/boot/dts/bcm7445-bcm97445svmb.dts
index 8313b7cad542..f92d2cf85972 100644
--- a/arch/arm/boot/dts/bcm7445-bcm97445svmb.dts
+++ b/arch/arm/boot/dts/bcm7445-bcm97445svmb.dts
@@ -14,10 +14,10 @@ memory@0 {
 	};
 };
 
-&nand {
+&nand_controller {
 	status = "okay";
 
-	nandcs@1 {
+	nand@1 {
 		compatible = "brcm,nandcs";
 		reg = <1>;
 		nand-ecc-step-size = <512>;
diff --git a/arch/arm/boot/dts/bcm7445.dtsi b/arch/arm/boot/dts/bcm7445.dtsi
index 58f67c9b830b..5ac2042515b8 100644
--- a/arch/arm/boot/dts/bcm7445.dtsi
+++ b/arch/arm/boot/dts/bcm7445.dtsi
@@ -148,7 +148,7 @@ aon-ctrl@410000 {
 			reg-names = "aon-ctrl", "aon-sram";
 		};
 
-		nand: nand@3e2800 {
+		nand_controller: nand-controller@3e2800 {
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.26.2

