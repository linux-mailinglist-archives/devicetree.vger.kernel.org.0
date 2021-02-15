Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F61F31C323
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 21:42:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbhBOUmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 15:42:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbhBOUmP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 15:42:15 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D680CC06178A
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:26 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id r23so9467107ljh.1
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=f2vud9FYihwZwBcd0ZX7QXrGZwYrdLQaFuR8oz36xRk=;
        b=cdFUw2aJ8h7PK6ZIUQdLV9l9o37oN3/uOqSMbUUgH9HnxJO/Q+/Gh8rwr61BU+LaZA
         g9ms/udrxOz682iYhtlR2XF7xY44LHtbGzMJVxIvJijH7LN6Xlzrw1gVwthrwml+VKLB
         CpoHpygSQl92kGPMQPmgXncg4s1+RA6ycb4wweTzBiXu/6TkzO/m3fpHje3GVXpcUmuO
         eFLDAbUAXjaATsWeN+11o+RSrtippM3A+jEXKU7xnKaM0auneclUsr/18EDMs1zwj5yQ
         CvQLyUcg//8sIZ3aPgWY43PKon7Ce+9jPhwNfO+kI2L+1ggklyTvQSRWdFSP9A/MdL6n
         Zf+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f2vud9FYihwZwBcd0ZX7QXrGZwYrdLQaFuR8oz36xRk=;
        b=Qdlf5amKEVj7EI7HvVU/9v/LGIyoGVhvo4m5uTDDiiPhBY8VGVpfkA3F5+HaH781bN
         Fx8C9nljxp4ycwOgkF1GfKuX7pV2kUOaPOKrfC5C1zMqtZWJkvKblShkZZh8ZvtoZzZt
         W0bjLSol/Gkvl9c3rgPlY+B6vlEun7N77RNj9tqs3djs3dsdis8B6A2vEcBoMR8uTK6b
         FFtegHk6iwUFrBoaKEExCvawHa2RF8ujnLycBSEzr9el3INBS/lTDqPQ4BCwQZvawsYz
         /SgCmV/0jbky3i8FQ7va3L0CryFcucTXkBkdZjdkTzkL0Ot0nh+8SjCWilMa1khTu3B/
         x+TA==
X-Gm-Message-State: AOAM530GFef1/RtLL27D66+Wi5NH9Wt4xkJnb9hgOnfKArfj7DputwZf
        K5vLwdZfMSmKCrBXSnywaHo=
X-Google-Smtp-Source: ABdhPJwl062O/s0YSouyZUL6H4gHZ6idDZh7neDOFFwmufxUHrxGQOw3oPgrkF9BuT9AH7BTVUmLnA==
X-Received: by 2002:a2e:a487:: with SMTP id h7mr10559672lji.59.1613421685393;
        Mon, 15 Feb 2021 12:41:25 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x36sm2922841lfu.129.2021.02.15.12.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 12:41:25 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 5/5] arm64: dts: broadcom: bcm4908: describe firmware partitions
Date:   Mon, 15 Feb 2021 21:41:05 +0100
Message-Id: <20210215204105.27830-5-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210215204105.27830-1-zajec5@gmail.com>
References: <20210215204105.27830-1-zajec5@gmail.com>
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

