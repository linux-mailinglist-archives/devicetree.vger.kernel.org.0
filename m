Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4538F41167B
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 16:11:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230289AbhITONQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 10:13:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230175AbhITONQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 10:13:16 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8754BC061574
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:11:49 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id u8so17087353lff.9
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OQOFE5y9ycvOLV6kUv7mBo8sAEzsIvCI7O9/P/xpkzU=;
        b=pPrG9whETFwnozM/pcPcE4wgercsJmKs915JbN0KNujpai3g5xZdwHOtaQd8lEfVpR
         rp/0hSaGvy5oe/1tFGO0L0rXQwDEZopLHbDr+bxXDUYnHMt5dZSO/uCcJZnY91bAnuH1
         qZ1AIvU+ZZ7Rvb7VfU2zb1eNtpFSPN0Oy1QywxgKfWTlpiuvJS/2C2pp0QrUbmxDgWMG
         pZ2nS5nKUFL4AABEs7LDnbEv/RlUDL1MuzbVQxOoZEMWwXcdAXLyD2Aj+gZgo6V8RUfN
         K7yDziV2YQ23Ac4TBsdN5N+4u3JzWQNB0mOOK+8pGxhPdZZfcQDJobb8UdDkvVoGMrVD
         26og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OQOFE5y9ycvOLV6kUv7mBo8sAEzsIvCI7O9/P/xpkzU=;
        b=CzHPSGfoGRI8vIJ4SMzWtb+IvXunItUugeRNqHtQL4DIcY4LsBAL1t980r41+K04BS
         J2xXZmJdqoUAdHcyQZQLksgJvdUz3CnY6PfpCB8WzeNMN2j0IZCEpaaKCrJMx9Hil1gv
         TcUfC7veyhIR6tc2CRS+jrzAwHQfpyWdN85zkTwkxnrYLlmn+uKEipESC2jlUFVkj28E
         KQELk894odkCDeNOjBeO3tg6/SZlebILTH6M/djwDKN5ivIAXiVYtfj7qev0Xj0Z64La
         wmC+Bo7+w7Fnz1KjIHizH7x959ZEitaFtFh0enMCI0S3+sdMqlfPIG3hBxrWEs/wxlGu
         VT0Q==
X-Gm-Message-State: AOAM5325I9r5IhJRQK0EGFbVCGvQvFgvp5tWvm0S4m1OWvjXljmPBGR5
        MZebTD+kMIBwWl0bjCEQRxQ=
X-Google-Smtp-Source: ABdhPJwo0u5iZIe9lexDHB/lNjIBEivWi0tXXy59DsBOKhj9Qh1eJKdr9d66y5hrWicYtEp1E7tTUQ==
X-Received: by 2002:a19:700b:: with SMTP id h11mr18776388lfc.180.1632147035418;
        Mon, 20 Sep 2021 07:10:35 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id b7sm1273938lfj.19.2021.09.20.07.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 07:10:35 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] ARM: dts: BCM53573: Describe on-SoC BCM53125 rev 4 switch
Date:   Mon, 20 Sep 2021 16:10:23 +0200
Message-Id: <20210920141024.1409-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM53573 family SoC have Ethernet switch connected to the first Ethernet
controller (accessible over MDIO).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm53573.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/bcm53573.dtsi b/arch/arm/boot/dts/bcm53573.dtsi
index 51546fccc616..3f03a381db0f 100644
--- a/arch/arm/boot/dts/bcm53573.dtsi
+++ b/arch/arm/boot/dts/bcm53573.dtsi
@@ -180,6 +180,24 @@ ohci_port2: port@2 {
 
 		gmac0: ethernet@5000 {
 			reg = <0x5000 0x1000>;
+
+			mdio {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				switch: switch@1e {
+					compatible = "brcm,bcm53125";
+					reg = <0x1e>;
+
+					status = "disabled";
+
+					/* ports are defined in board DTS */
+					ports {
+						#address-cells = <1>;
+						#size-cells = <0>;
+					};
+				};
+			};
 		};
 
 		gmac1: ethernet@b000 {
-- 
2.26.2

