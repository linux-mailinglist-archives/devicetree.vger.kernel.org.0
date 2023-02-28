Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 396256A5AFF
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 15:45:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229647AbjB1Op1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 09:45:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjB1Op0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 09:45:26 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20CCFCA29
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:45:25 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id t11so13570446lfr.1
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AS4WvwLyb5IvtXzJGUQWxLiWhdnxdLa0eY1ifwUebww=;
        b=ivDcz8dm3b4iYjQeg0pKEqGjwQm2CpDDg7DzCdz7fBeOtnwOZf/ihYmKePSQOhi2z1
         vse+/jcpwwD6IghpSahkEhujRqP3NgtaFzeEIQpaGCsDky0FRi5ktU4wCt3OwOE3NPAB
         4+zy57UBHo2Ng714kkU2PNmBicm+eKGowasL5yCYGQpOaY5Bv+aj+YFFIdgFAnP+cxJ0
         O4NioNcPc0cu2Y2MFgl0reiCaRzfN73XoD6zieSGid4DBE8vTWj77OhXEbxLOhaFuDau
         cI3b1SAqobW/aryqqqGkiist6XI05/SHJ+UAtsDr8PS/OVzucQRA9Bc6mIHUxjTOtWj3
         VQoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AS4WvwLyb5IvtXzJGUQWxLiWhdnxdLa0eY1ifwUebww=;
        b=hbCnhvDazarthZhtLoSjgaxsCeVMwecB5gXzllhjYabVyOXabCp98glY0XoZLcUEjG
         jQdmCtl5wyX1ACunCpm4STlLVq+ckkVafaFhqOm+DGPX0atj0bhGizMdcXHgQqt5rIWa
         ViAxQa7kVHbWIQZVQQ07bbMc3CbiZTsB8pCPsEkadtn5h+zjTocBKtiTKJ2iFEAszyG/
         XJQ0gtt1L/0dWq43SA39rOx3xU2r8HA5rTdZhDdHtJhi3U4A8iIrjbjx5HX0nSG6n4+D
         jShZuP0qZzjxbU/GZawgXWTPXnBq77hM3IPy57Av2YHHhBgIItKGD1FcG6Ea95rCHG5t
         PefQ==
X-Gm-Message-State: AO0yUKV+/+kYf/zd3DLPE0sCV3LCmwvnZEGMu/OnkGOQ92jpWvzomQJC
        AiEBXIPAOxzbAKVYqyOIpwO8ueH52U8=
X-Google-Smtp-Source: AK7set+cmhPgCsFWPjuLwq/QWwizug5xjH4UId9xs7OY/Nvxyu+YMCoBZQHo0j8bgdf7pg4xOEdDow==
X-Received: by 2002:ac2:5690:0:b0:4e2:337d:65d3 with SMTP id 16-20020ac25690000000b004e2337d65d3mr710686lfr.40.1677595523404;
        Tue, 28 Feb 2023 06:45:23 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id z23-20020ac24197000000b004ddef915fe4sm1360514lfh.274.2023.02.28.06.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 06:45:22 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/3] arm64: dts: broadcom: bcmbca: bcm4908: add on-SoC USB ports
Date:   Tue, 28 Feb 2023 15:45:18 +0100
Message-Id: <20230228144520.21816-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 has 3 USB controllers each with 2 USB ports. Home routers often
have LEDs indicating state of selected USB ports. Describe those SoC USB
ports to allow using them as LED trigger sources.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../boot/dts/broadcom/bcmbca/bcm4908.dtsi     | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
index f4cf0f835db7..457805efb385 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
@@ -148,6 +148,19 @@ ehci: usb@c300 {
 			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
 			phys = <&usb_phy PHY_TYPE_USB2>;
 			status = "disabled";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ehci_port1: port@1 {
+				reg = <1>;
+				#trigger-source-cells = <0>;
+			};
+
+			ehci_port2: port@2 {
+				reg = <2>;
+				#trigger-source-cells = <0>;
+			};
 		};
 
 		ohci: usb@c400 {
@@ -156,6 +169,19 @@ ohci: usb@c400 {
 			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
 			phys = <&usb_phy PHY_TYPE_USB2>;
 			status = "disabled";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ohci_port1: port@1 {
+				reg = <1>;
+				#trigger-source-cells = <0>;
+			};
+
+			ohci_port2: port@2 {
+				reg = <2>;
+				#trigger-source-cells = <0>;
+			};
 		};
 
 		xhci: usb@d000 {
@@ -164,6 +190,19 @@ xhci: usb@d000 {
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 			phys = <&usb_phy PHY_TYPE_USB3>;
 			status = "disabled";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			xhci_port1: port@1 {
+				reg = <1>;
+				#trigger-source-cells = <0>;
+			};
+
+			xhci_port2: port@2 {
+				reg = <2>;
+				#trigger-source-cells = <0>;
+			};
 		};
 
 		bus@80000 {
-- 
2.34.1

