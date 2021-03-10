Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5233A334966
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 22:06:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230260AbhCJVFd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 16:05:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231759AbhCJVFH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 16:05:07 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73540C061574
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 13:05:07 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id h4so27501129ljl.0
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 13:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9NkjJGprAExyfH/MidWRX+sYTetoCVQv9mTT/jXkFVE=;
        b=VqkYAp2Yi/u8TDu2+MjdYHUrZ5KWGwCdnf5uZGc9ngmBKhLvmiVBlQsyOaiUP8N8w+
         2XIWhMMjdixyec6RQwriv7E+UbAUy6wCy1enB2SCTjzDrcVnDYAToboHap2up+DCQ1Y0
         ltKk4R/BQ1R/MbbT+xKZUHJRr66O3E1Uw6rFZyVjDJRzZ0iN6UlINn4NfYrhAkPxcXHw
         kp8EoqhmMygP08AJ1C/9cJN5eSTXigPAkCc2SAbQBNzcGC1t+eZAHGIxcwr2F5+RYIvK
         0VxiymYeBw+u05TwH6lumymunwqTbopOQjiByJyVVJFHlEP2jVyj2dHpfZ1r7xmXbGlL
         MSyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9NkjJGprAExyfH/MidWRX+sYTetoCVQv9mTT/jXkFVE=;
        b=JI3KOMieMW1BLmjsz+TucHTofo8cGFUe+GRKdrvcV2AF/JNWt8AFTOkOVvjixvYkGH
         g/triYOhv1yzzY2wFzyMUND1cpS/bLoXVRt8r36QnS/1s435xSHodgXZBr76Xt3BjwYj
         P6cM1GlphWco7GY3l+CGOGAPJuWtpX43yPdiRYIf7LrFQUCisMI4sQUWgfod1ZTvETrD
         qb5aqc+Lj9biftHfMROOOJCCDsuSYsv7Gy8JM2b2kdYWAUXYi3XnuRAVKVikxHRgBJ+O
         yvdYAfH7ktcOR6ge2eIqSoJgJIE81kxc42i472EYl22w1d5+NHiUZGJtCm0LOzfgPBdq
         +fMA==
X-Gm-Message-State: AOAM533Zs/uePsU8uRyYFz+BeLJNEtEXohF+snu/aDWEBL0i+BxrfxQ/
        /ZM3ukcXhWygfvQDzELPGJE=
X-Google-Smtp-Source: ABdhPJxYnz/bwnQ1DdPEGQUtUVP45yFvO8wanVwF1Bk5PCVqVuY/ZGDyUU626mOQXMX8vE1jz9pt3w==
X-Received: by 2002:a2e:9e8e:: with SMTP id f14mr2985097ljk.140.1615410305974;
        Wed, 10 Mar 2021 13:05:05 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id o11sm134787lfu.157.2021.03.10.13.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 13:05:04 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Describe NVMEM NVRAM on Linksys & Luxul routers
Date:   Wed, 10 Mar 2021 22:04:46 +0100
Message-Id: <20210310210446.24369-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Provide access to NVRAM which contains device environment variables.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
This validates cleanly (dtbs_check) with:
dt-bindings: nvmem: add Broadcom's NVRAM
from the git://git.kernel.org/pub/scm/linux/kernel/git/srini/nvmem.git
---
 arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts  | 5 +++++
 arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts    | 5 +++++
 arch/arm/boot/dts/bcm4709-linksys-ea9200.dts     | 5 +++++
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts  | 5 +++++
 arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts    | 5 +++++
 arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts    | 5 +++++
 arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts    | 5 +++++
 arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts | 5 +++++
 8 files changed, 40 insertions(+)

diff --git a/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts b/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts
index 41548d6d479a..5bac1e15775a 100644
--- a/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts
+++ b/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts
@@ -21,6 +21,11 @@ memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
+	nvram@1c080000 {
+		compatible = "brcm,nvram";
+		reg = <0x1c080000 0x180000>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
index 432254383769..9316a36434f7 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
@@ -21,6 +21,11 @@ memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
diff --git a/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
index 38fbefdf2e4e..9b6887d477d8 100644
--- a/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
@@ -22,6 +22,11 @@ memory {
 		      <0x88000000 0x08000000>;
 	};
 
+	nvram@1c080000 {
+		compatible = "brcm,nvram";
+		reg = <0x1c080000 0x180000>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
index 4b24b25389b5..1dc0cb0fae22 100644
--- a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
@@ -22,6 +22,11 @@ memory@0 {
 		      <0x88000000 0x08000000>;
 	};
 
+	nvram@1c080000 {
+		compatible = "brcm,nvram";
+		reg = <0x1c080000 0x100000>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 
diff --git a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
index a6dc99955e19..4b8117f32d26 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
@@ -22,6 +22,11 @@ memory@0 {
 		      <0x88000000 0x18000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
index ff98837bc0db..5fecce0422c7 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
@@ -22,6 +22,11 @@ memory@0 {
 		      <0x88000000 0x18000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
index b76bfe6efcd4..cbe8c8e4a301 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
@@ -22,6 +22,11 @@ memory@0 {
 		      <0x88000000 0x08000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
index 32d5a50578ec..24ae3c8a3e09 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
@@ -22,6 +22,11 @@ memory@0 {
 		      <0x88000000 0x18000000>;
 	};
 
+	nvram@1eff0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1eff0000 0x10000>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
-- 
2.26.2

