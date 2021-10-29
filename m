Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E4AB440005
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 18:05:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229760AbhJ2QIE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 12:08:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbhJ2QIE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Oct 2021 12:08:04 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C6A6C061570
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 09:05:35 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id c28so21889733lfv.13
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 09:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vi0JgunxuyZtRIPxOufhgNFMyRZcVM3TTx+P5jDIfDQ=;
        b=l4tr/NAIl7Vc41iT7P8eVkayySEEvOQ54kGbpcKMglCBpzL3U7j6M2iZzKL87/CoYq
         VcGkdcokJlkr3UQcMSdDDPvzYveRWKrT4LhTllIo+5MA8h/b8eGQtcMaRHWn/YetaQ18
         HsWwUAkIQ/Hxvpxh5nEP5FsoTpOm8YH0m7fdqhGlQaVSboUUW/e4rI+O8jk5vxNzLQFd
         T1WV8fAsLuA9Ta1NCRwpL2p3c9OcJVNXxogBSWShaNwRlUK5C7/ZqZ5pR94dvmcGCq8F
         sJCRphQjt4dTnpbGcQiWYrs4NXprCiEa9B1DrDcUgLNtkoGVOUF9BrMD2ClJ9g6IjEAU
         3iEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vi0JgunxuyZtRIPxOufhgNFMyRZcVM3TTx+P5jDIfDQ=;
        b=0G7VvQEaN1pHTd6Nf21h5+jhrv5U2hKscChKGvYwDhiymOhAf7BdoU6S0hWQ/fJFoi
         pfBvhO/A8KxIJ0AD+64eC65Jid4qJ/Zsw0lfMFgfbt5YuBX2QssaSDoJfzVz3lLX3qbK
         sB9nJkx9PFIviWGIb+RPbbPESeaudwy+DRg4R6QhlQCzyew1cc5z8t7UCa4xTNH16/KM
         5d5pTdH3XcJ9yiQUhbVrMl8yvvk8C65/e2si76Jw9j+1OnD1t4Wv0LWq7EUiXVTTgi8I
         oiO4e08LUOmIeHA+qJxA/kkj0A1CV5rbwI405E95W7V6EHjXgmmBPi5icgH3jRQME3yI
         mjuA==
X-Gm-Message-State: AOAM531LPFB9OGXJNhCjOZrgZXyMHwbrYxgSlibfu11cRapVGkDoTwqw
        Mm9keH/1QWr+s5+V/5rva14=
X-Google-Smtp-Source: ABdhPJxQcRK0OssXhIMXdLDAnY2z+gpW80xbBLy0scAYFCMgpTQbFmtuBK5x3Q/Im94DclUvDtWjmQ==
X-Received: by 2002:a05:6512:6cf:: with SMTP id u15mr10609701lff.532.1635523533776;
        Fri, 29 Oct 2021 09:05:33 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id 25sm651744ljh.50.2021.10.29.09.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Oct 2021 09:05:33 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: update CRU block description
Date:   Fri, 29 Oct 2021 18:05:23 +0200
Message-Id: <20211029160523.2812-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This describes CRU in a way matching documentation and fixes:

arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dt.yaml: cru@100: $nodename:0: 'cru@100' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
        From schema: /lib/python3.6/site-packages/dtschema/schemas/simple-bus.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm5301x.dtsi | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index d4f355015e3c..e1cffef4935a 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -421,14 +421,14 @@ dmu-bus@1800c000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		cru@100 {
-			compatible = "simple-bus";
+		cru-bus@100 {
+			compatible = "brcm,ns-cru", "simple-mfd";
 			reg = <0x100 0x1a4>;
 			ranges;
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			lcpll0: lcpll0@100 {
+			lcpll0: clock-controller@100 {
 				#clock-cells = <1>;
 				compatible = "brcm,nsp-lcpll0";
 				reg = <0x100 0x14>;
@@ -437,7 +437,7 @@ lcpll0: lcpll0@100 {
 						     "sdio", "ddr_phy";
 			};
 
-			genpll: genpll@140 {
+			genpll: clock-controller@140 {
 				#clock-cells = <1>;
 				compatible = "brcm,nsp-genpll";
 				reg = <0x140 0x24>;
@@ -448,6 +448,11 @@ genpll: genpll@140 {
 						     "sata1", "sata2";
 			};
 
+			syscon@180 {
+				compatible = "brcm,cru-clkset", "syscon";
+				reg = <0x180 0x4>;
+			};
+
 			pinctrl: pin-controller@1c0 {
 				compatible = "brcm,bcm4708-pinmux";
 				reg = <0x1c0 0x24>;
-- 
2.31.1

