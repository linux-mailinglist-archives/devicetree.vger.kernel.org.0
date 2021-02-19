Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B4E231F4E9
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 06:51:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbhBSFvi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 00:51:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbhBSFvh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Feb 2021 00:51:37 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43966C06178A
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:57 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id c17so13621314ljn.0
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=f2vud9FYihwZwBcd0ZX7QXrGZwYrdLQaFuR8oz36xRk=;
        b=a9KEmY1wiZJqNQ7xsBJHRifd1m9ei1PALjMgRph321ov540Y0zWNBH87tuZIyPaE3+
         L0CIn0wVZB2uf7naui0NimAUgrVDEzf7Egisz/D1YocSQxEm9cXS6oO9WztktFWLhb5S
         Ps4LvGDv95SoMelGfGWgSBZRbnlPUAayjFn8CnahX0/SP9UxbYBjmbUAYXO2+BhJTNTx
         Yfb1+ORkWG+OFBD9ExMQ1K3O5L45CKrOdW0UsD8FtXRpv/67RvgK8hW3VPDvvUdDNzoa
         voy4164DdubumBaZrHoZwy1ylv0G/vnJbYWFZ+h4OlkD2rbpGm7DQXWCx7bfv25a2+Kh
         Ut2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f2vud9FYihwZwBcd0ZX7QXrGZwYrdLQaFuR8oz36xRk=;
        b=l0uyh7LwfPbHip6zv83UGYfOiN8CPFMTGQ9QRcbRR+8yfYSuo3h3GBeHiCjgOx+j5n
         1eeLDo0GEc39so2XxaZc1xGiR5XpBkPJ8jywHQEFsWOfy3pSvVDICfdFmJ0rumOTZsMj
         kmnN44J9X0caQ1joxGcbHRB/fglYhF03II8kKy+lXip5S0N6enNQw7q5MKYerdwd0LI+
         Zz4VquSEtTolvhk9scs8moDBUcEtKEcLhwPodEQizq49WJhsgtKx95L/0P2FVqVVqlkk
         CQ+hLS56hvYLwlM3DKQoiDrNSl0LGhvy3YQQp64Up91qz+yeMS7RZ8OXu2XsE7nlTg3G
         blYQ==
X-Gm-Message-State: AOAM531I8gP8nI4ErgucohVv53z/z3kHtfzIg/j/ExL8xXU23nzYVYbo
        9pTSBQBC7TNTKSSVdrf32zI=
X-Google-Smtp-Source: ABdhPJwEkRKKN6xTLC0QSzqjN8mIJtEC6TgUOA+57EqDE69CxxKGIE6ceY+ZV0eG1M2u4oBsqddBIQ==
X-Received: by 2002:a2e:b0ca:: with SMTP id g10mr2699017ljl.31.1613713855862;
        Thu, 18 Feb 2021 21:50:55 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n8sm819712lfe.276.2021.02.18.21.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 21:50:55 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 5/5] arm64: dts: broadcom: bcm4908: describe firmware partitions
Date:   Fri, 19 Feb 2021 06:50:30 +0100
Message-Id: <20210219055030.3997-5-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210219055030.3997-1-zajec5@gmail.com>
References: <20210219055030.3997-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 bootloader supports multiple firmware partitions and has its own
bindings defined for them.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts  |  1 +
 .../dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts  | 12 +++++++++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
index 0d02986c80ab..7b24ad365a3c 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4906-netgear-r8000p.dts
@@ -135,6 +135,7 @@ partition@0 {
 		};
 
 		partition@100000 {
+			compatible = "brcm,bcm4908-firmware";
 			label = "firmware";
 			reg = <0x100000 0x4400000>;
 		};
diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
index bb06683d6acf..7240a9ee9812 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908-asus-gt-ac5300.dts
@@ -122,7 +122,7 @@ &nandcs {
 	#size-cells = <0>;
 
 	partitions {
-		compatible = "fixed-partitions";
+		compatible = "brcm,bcm4908-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
@@ -130,5 +130,15 @@ partition@0 {
 			label = "cferom";
 			reg = <0x0 0x100000>;
 		};
+
+		partition@100000 {
+			compatible = "brcm,bcm4908-firmware";
+			reg = <0x100000 0x5700000>;
+		};
+
+		partition@5800000 {
+			compatible = "brcm,bcm4908-firmware";
+			reg = <0x5800000 0x5700000>;
+		};
 	};
 };
-- 
2.26.2

