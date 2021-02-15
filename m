Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A916231C320
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 21:42:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229782AbhBOUl7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 15:41:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229706AbhBOUl7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 15:41:59 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A50DDC0613D6
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:18 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id u25so12560876lfc.2
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 12:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IVjaIaRbqlpUvVVjm3dgVVPkqMxmHj9OmCW8KmZpBks=;
        b=kzeesFyU30HSperSB9cSSVpsxliMrLABN967YZTwOvu+sfICKKiZSFneTcclT3/oeX
         ALJXVhwtcW6R91T11w3lCtReEpzVCu0zbF/ygYLLmNyOYcGZh4v5UeTOXsHO6Na6Vt6l
         wBrT196oVEtVAxDdBuphxLUoLP4ymsGLw0Kv5/5hCW59CghB9YFj0q0a11G9UseCkv63
         TFHO1BYlwIH2p2YI5CIT/SyZZOvk6pJ9a1orfqTr9Nf17hOv8rYEtfPgPf7/7W6RSv7O
         MceIeKjgMnWEyXzeLe95Gka7Aat5eihjbDMupz2cFl6n5kBnkylOSQv0bELDbzy4W+Il
         x7KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IVjaIaRbqlpUvVVjm3dgVVPkqMxmHj9OmCW8KmZpBks=;
        b=JG9wAbp1y73nA2kP/RQgzsZTro342QkjkPOklY6EwDw+HiZgLWZB5Xa143n90P8ckN
         jbt35ZqxQ/3PksHEwLHCr1e/h39kiGAbl0TaPtwZiQ2/U03K0DViE1uOs6/zPUDuUa6m
         dQ4Ll8VNpK+qTMqn/Nv6nyufxyMhbdt83+im3MtkWG6Amd88+d9clbPEX36xEVG8Hy22
         bmR6/FyhG2cNwfyGBNbnTvy0INH5sBwyW6ATT+kU1UtvJB/gGjPJuqjgRg/COs+5gcYx
         lEfcJrw4N5QbT7fYFI15rStJqE7CTU+a6NBU5iR9TNtr58vJ+At+l2CpWTXQOHUun3vb
         OwSQ==
X-Gm-Message-State: AOAM533r3l6JdV4pRIQeCm/y+YrB0oVex5/SQNgGkMbxK+7o5XcmgfA6
        8svENykaUCBBWcDHxfSDBaM=
X-Google-Smtp-Source: ABdhPJyTtk0VxBZT6K/NibC2iC7fQyJIxTjXTA1LiMmaYUKhUUC70tbjDKtB3lrfbGFBhmxPagXbqg==
X-Received: by 2002:a05:6512:21a5:: with SMTP id c5mr9336137lft.125.1613421677255;
        Mon, 15 Feb 2021 12:41:17 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id x36sm2922841lfu.129.2021.02.15.12.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 12:41:16 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/5] arm64: dts: broadcom: bcm4908: describe Ethernet controller
Date:   Mon, 15 Feb 2021 21:41:02 +0100
Message-Id: <20210215204105.27830-2-zajec5@gmail.com>
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

BCM4908 SoCs have an integrated Ethernet controller.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 358958105337..2d2c23292508 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -112,6 +112,14 @@ soc {
 		#size-cells = <1>;
 		ranges = <0x00 0x00 0x80000000 0x281000>;
 
+		enet: ethernet@2000 {
+			compatible = "brcm,bcm4908-enet";
+			reg = <0x2000 0x1000>;
+
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "rx";
+		};
+
 		usb_phy: usb-phy@c200 {
 			compatible = "brcm,bcm4908-usb-phy";
 			reg = <0xc200 0x100>;
@@ -199,6 +207,18 @@ port@3 {
 						phy-mode = "internal";
 						phy-handle = <&phy11>;
 					};
+
+					port@8 {
+						reg = <8>;
+						phy-mode = "internal";
+						ethernet = <&enet>;
+						brcm,use-bcm-hdr;
+
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+						};
+					};
 				};
 			};
 
-- 
2.26.2

