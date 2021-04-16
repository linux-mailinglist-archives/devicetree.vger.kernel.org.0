Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B89A9362120
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 15:38:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244074AbhDPNij (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 09:38:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240255AbhDPNii (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 09:38:38 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C1BFC061574
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:12 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id a25so17803754ljm.11
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RmttyCPjrXQ9RQx5eGB3bW0a1zo7MFX8xzV2IsnghVY=;
        b=VaypvTS5vCy8kngeiZXpnU1RxdbXD2ytf53DZbY2kHqAmPrjIn99jwwuc/M1Ebv+FH
         rngSJlBmbqXpH/6FVhPI77KndkW54juSS+I9046I3G11GGNM6HUlDIBjDPqRYzWZ1c1W
         78w6KZ0JkrK5IIUsjCRXOXrYJq80nidH9BSIigDoiwdFWHm2PMmraGj6WFAEzx68shso
         iOPQOcLOoIMGiYGQ30G3+PRL45XlMlH4Gcnj6GBJfqCIdfH/ssQRc95egyuFtzMg5wGo
         +42xUv473JONB8Tl4VYJ2UNWVAd+W4UYkX836DrHYCKlC9KBGriIawj7+aGIHKfEClgD
         5N6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RmttyCPjrXQ9RQx5eGB3bW0a1zo7MFX8xzV2IsnghVY=;
        b=CKm86zfgiS1NEe8eAl1HnJ0kK5eq/uR5w5NrgN+hwFStVIdwbaXmj3Z691jYBk71fX
         9wfWI0MkzGRL/VsbGW23wxjQBzLiAJgOTT4CxhFrD754eJEjlxFAhIJ8CzFfSvQLobdO
         DPvzsWcayUsjfvqtk578CBjW7T/ksBzAcCYOrjuLPQ0iVqFZMlnqyPs/CtcEhp99kp+g
         HqEWE9KvwFCwq7fxrS7Pk1QKeG4sQPCQS7qykeFdlx4pwieQIPa8/kN1lzw/PmMIYcEG
         cSmKD1UpA3J7a0OwX7BOk3HW/IWM7/jNl/YGKASB/xB+cSl0lvZxHI1xOd4f3ZvItBNH
         +hLQ==
X-Gm-Message-State: AOAM532rC/u2D9piZn3dYxhJ0lX2kSxdTQa0KD6Hw74NSgcziaLgLZFH
        +qdr2xf+cQRP43ZcaJs0c+o=
X-Google-Smtp-Source: ABdhPJxfnliE2Nlcwp2KdfZsr0U7Sm18N/gLIpCFVwiOg6QZ1V1fh2iqZFT5F94wSPyJP5oAurs0VA==
X-Received: by 2002:a2e:90d1:: with SMTP id o17mr2654994ljg.92.1618580291075;
        Fri, 16 Apr 2021 06:38:11 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id y14sm948405ljy.18.2021.04.16.06.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 06:38:10 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH stblinux 3/6] ARM: Cygnus: dts: fix NAND nodes names
Date:   Fri, 16 Apr 2021 15:37:50 +0200
Message-Id: <20210416133753.32756-3-zajec5@gmail.com>
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
 arch/arm/boot/dts/bcm-cygnus.dtsi      | 2 +-
 arch/arm/boot/dts/bcm911360_entphn.dts | 4 ++--
 arch/arm/boot/dts/bcm958300k.dts       | 4 ++--
 arch/arm/boot/dts/bcm958305k.dts       | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-cygnus.dtsi b/arch/arm/boot/dts/bcm-cygnus.dtsi
index 0025c88f660c..8ecb7861ce10 100644
--- a/arch/arm/boot/dts/bcm-cygnus.dtsi
+++ b/arch/arm/boot/dts/bcm-cygnus.dtsi
@@ -460,7 +460,7 @@ sdhci1: sdhci@18043000 {
 			status = "disabled";
 		};
 
-		nand: nand@18046000 {
+		nand_controller: nand-controller@18046000 {
 			compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1";
 			reg = <0x18046000 0x600>, <0xf8105408 0x600>,
 			      <0x18046f00 0x20>;
diff --git a/arch/arm/boot/dts/bcm911360_entphn.dts b/arch/arm/boot/dts/bcm911360_entphn.dts
index b2d323f4a5ab..a76c74b44bba 100644
--- a/arch/arm/boot/dts/bcm911360_entphn.dts
+++ b/arch/arm/boot/dts/bcm911360_entphn.dts
@@ -82,8 +82,8 @@ &uart3 {
 	status = "okay";
 };
 
-&nand {
-	nandcs@1 {
+&nand_controller {
+	nand@1 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
 		nand-on-flash-bbt;
diff --git a/arch/arm/boot/dts/bcm958300k.dts b/arch/arm/boot/dts/bcm958300k.dts
index b4a1392bd5a6..dda3e11b711f 100644
--- a/arch/arm/boot/dts/bcm958300k.dts
+++ b/arch/arm/boot/dts/bcm958300k.dts
@@ -60,8 +60,8 @@ &uart3 {
 	status = "okay";
 };
 
-&nand {
-	nandcs@1 {
+&nand_controller {
+	nand@1 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
 		nand-on-flash-bbt;
diff --git a/arch/arm/boot/dts/bcm958305k.dts b/arch/arm/boot/dts/bcm958305k.dts
index 3378683321d3..ea3c6b88b313 100644
--- a/arch/arm/boot/dts/bcm958305k.dts
+++ b/arch/arm/boot/dts/bcm958305k.dts
@@ -68,8 +68,8 @@ &uart3 {
 	status = "okay";
 };
 
-&nand {
-	nandcs@1 {
+&nand_controller {
+	nand@1 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
 		nand-on-flash-bbt;
-- 
2.26.2

