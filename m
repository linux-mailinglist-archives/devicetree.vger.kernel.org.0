Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46C19402336
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 08:03:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbhIGGCK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 02:02:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231211AbhIGGCJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 02:02:09 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A2C8C061575
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 23:01:03 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id g14so14700022ljk.5
        for <devicetree@vger.kernel.org>; Mon, 06 Sep 2021 23:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X8dMzjG9Y0q9BSPyTQSvn/0Tq/6fKV3plbXWOv3vYLI=;
        b=ZJ7eas0gHsyAsbkdidFRU3ZRkS5k4e24mI4HK3X7jBUU/Gd+q0rv2mqb30bNK4S1A4
         H5rqnvODEHzu+W6HSr8Zp+tPai6uVHrSizS4XVmIvrXcAF4gzFrRe4dE+SP4rn+2cCJZ
         J/e//ELbCGbz/9e23hkocOqQeD6JDNeHgNk1SCFmNns1SiOrwuX6NL6hH5YxE/InwEqp
         fP+UciMUZExC7hJmg/hZI9EajdhfIHq1PSVSP6u/b/kT/b6jVz+Jz2Jmvd1g4xzX0Vpi
         3yH0mryatJ6jK9CHVYB0mIB7pZ+Awf9uM/EUiOQcrpDXG8KHVstJGchHS00tWFGtBx5u
         /cYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X8dMzjG9Y0q9BSPyTQSvn/0Tq/6fKV3plbXWOv3vYLI=;
        b=RBf77vLm7MXoyQ5kXTT0imK3XKjUVixlThpVktJaozkyB33dg0Ydy3BBRwstMHUM1G
         QXDYUoF/baH3lKwuMAgOT1vaJfq+cYWlpE4+jGVlETxrXnh+UehX+EByLyYVMQ4XUXfz
         WNy8Tyg3rjMJhZUsS8bZ7wAK5HsUirlLYjzXjsKszNK+QFhqheR3bJT41FsUjfzjK6ue
         hoRptoLw+0QSxBK+9mvvz7R7Xh/AZfAa9USCeYKKCmbmnqDEwkjdcjav/akTR49iqqZ/
         U3mPrCmsq+sk81lp7ASvyCaz/3liCOBIMEapkKbYXbB8Ep5hAF2dcpqx0zSc1P/zc9wD
         Ao+w==
X-Gm-Message-State: AOAM530+2RhAHAcThEJpxzHAuaDzeKm1TVlSaGSVpD9oZN29AIRbtlJ7
        Q9Zh6XBpi82n2zvTInuoO44=
X-Google-Smtp-Source: ABdhPJzUcL+ZyZVGxArLfCcqcNCsCKP8aB4JikCBLheigk2lXpruVP6yI2v7R/bwYoN5nMRO/QSBgA==
X-Received: by 2002:a05:651c:28f:: with SMTP id b15mr13601686ljo.186.1630994461401;
        Mon, 06 Sep 2021 23:01:01 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id s27sm912209lfc.58.2021.09.06.23.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Sep 2021 23:01:00 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH next] ARM: dts: BCM5301X: Specify switch ports for more devices
Date:   Tue,  7 Sep 2021 08:00:48 +0200
Message-Id: <20210907060048.26597-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Those are remaining models I have that didn't have ports yet. All
tested.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts   | 37 ++++++++++++++++
 .../boot/dts/bcm47081-buffalo-wzr-600dhp2.dts | 37 ++++++++++++++++
 arch/arm/boot/dts/bcm4709-netgear-r8000.dts   | 42 +++++++++++++++++++
 arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts | 42 +++++++++++++++++++
 arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts | 37 ++++++++++++++++
 arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts | 37 ++++++++++++++++
 6 files changed, 232 insertions(+)

diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
index 7900aac4f35a..43a5d675dd67 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
@@ -94,3 +94,40 @@ &spi_nor {
 &usb3_phy {
 	status = "okay";
 };
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			reg = <0>;
+			label = "lan4";
+		};
+
+		port@1 {
+			reg = <1>;
+			label = "lan3";
+		};
+
+		port@2 {
+			reg = <2>;
+			label = "lan2";
+		};
+
+		port@3 {
+			reg = <3>;
+			label = "lan1";
+		};
+
+		port@4 {
+			reg = <4>;
+			label = "wan";
+		};
+
+		port@5 {
+			reg = <5>;
+			label = "cpu";
+			ethernet = <&gmac0>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
index d857751ec507..d00495a8b6fc 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
@@ -117,3 +117,40 @@ eject {
 		};
 	};
 };
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			reg = <0>;
+			label = "lan1";
+		};
+
+		port@1 {
+			reg = <1>;
+			label = "lan2";
+		};
+
+		port@2 {
+			reg = <2>;
+			label = "lan3";
+		};
+
+		port@3 {
+			reg = <3>;
+			label = "lan4";
+		};
+
+		port@4 {
+			reg = <4>;
+			label = "wan";
+		};
+
+		port@5 {
+			reg = <5>;
+			label = "cpu";
+			ethernet = <&gmac0>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
index 184e3039aa86..89f992af61d1 100644
--- a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
@@ -187,3 +187,45 @@ &usb3 {
 &usb3_phy {
 	status = "okay";
 };
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			reg = <0>;
+			label = "lan1";
+		};
+
+		port@1 {
+			reg = <1>;
+			label = "lan2";
+		};
+
+		port@2 {
+			reg = <2>;
+			label = "lan3";
+		};
+
+		port@3 {
+			reg = <3>;
+			label = "lan4";
+		};
+
+		port@4 {
+			reg = <4>;
+			label = "wan";
+		};
+
+		port@8 {
+			reg = <8>;
+			label = "cpu";
+			ethernet = <&gmac2>;
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
index a6e2aeb28675..60bfd52ee677 100644
--- a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
+++ b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
@@ -118,3 +118,45 @@ &spi_nor {
 &usb3_phy {
 	status = "okay";
 };
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			reg = <0>;
+			label = "lan4";
+		};
+
+		port@1 {
+			reg = <1>;
+			label = "lan3";
+		};
+
+		port@2 {
+			reg = <2>;
+			label = "lan2";
+		};
+
+		port@3 {
+			reg = <3>;
+			label = "lan1";
+		};
+
+		port@4 {
+			reg = <4>;
+			label = "wan";
+		};
+
+		port@8 {
+			reg = <8>;
+			label = "cpu";
+			ethernet = <&gmac2>;
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
index 4b8117f32d26..b51a0ee7e584 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
@@ -68,3 +68,40 @@ &spi_nor {
 &usb3_phy {
 	status = "okay";
 };
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			reg = <0>;
+			label = "wan";
+		};
+
+		port@1 {
+			reg = <1>;
+			label = "lan4";
+		};
+
+		port@2 {
+			reg = <2>;
+			label = "lan3";
+		};
+
+		port@3 {
+			reg = <3>;
+			label = "lan2";
+		};
+
+		port@4 {
+			reg = <4>;
+			label = "lan1";
+		};
+
+		port@5 {
+			reg = <5>;
+			label = "cpu";
+			ethernet = <&gmac0>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
index 5fecce0422c7..b959a9504eea 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
@@ -68,3 +68,40 @@ &spi_nor {
 &usb3_phy {
 	status = "okay";
 };
+
+&srab {
+	status = "okay";
+
+	ports {
+		port@0 {
+			reg = <0>;
+			label = "wan";
+		};
+
+		port@1 {
+			reg = <1>;
+			label = "lan4";
+		};
+
+		port@2 {
+			reg = <2>;
+			label = "lan3";
+		};
+
+		port@3 {
+			reg = <3>;
+			label = "lan2";
+		};
+
+		port@4 {
+			reg = <4>;
+			label = "lan1";
+		};
+
+		port@5 {
+			reg = <5>;
+			label = "cpu";
+			ethernet = <&gmac0>;
+		};
+	};
+};
-- 
2.26.2

