Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06D9E74ADAB
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 11:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231925AbjGGJPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 05:15:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjGGJPm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 05:15:42 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB4611FF0
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 02:15:36 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fba03becc6so3560633e87.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 02:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688721335; x=1691313335;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9FjJZYNAatbuu1cji0jkL7Xcjs18H85nhXDDey1QoX0=;
        b=n8YnOu5d8+FCDoMul7Ms5n+9b2ApsbwfHcs78aXePajg5lgDSjqvqeI+8uJdOcfFtZ
         92c57RrDV9DZ8RWF+2ITqkfHCpnS/Khc018ljGEmfInEXkI7drnDNYkJJhqbdsaHw8Ae
         uqSZWb+LqgPgVCSMJEa0w3Gz5f7rwIVnHZTtya0zxowtVdlcy/jmtw/eo+ggG6hQn4vK
         MxapvIztkft21F35XUseqO2ZHw76VYkK8nNqt5AL6jjLX0WYRKblxauYWyGhsrO2pbrF
         X7SqeRUcwtiJnIHjaDitxGXaOSHRYMwsD65f4RifUNPvG5CmkK7owE+mvHJc5Z0sPPvH
         vxOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688721335; x=1691313335;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9FjJZYNAatbuu1cji0jkL7Xcjs18H85nhXDDey1QoX0=;
        b=V6RxJmHx4ogU0r4j9tqr0rJ4Vo1TBc5Yatm361WoJ+8J2PBYO9Y0feoRP2vzcpld1C
         UHYCw/4qKeoTsZzYpmIh8dWtUg7MbLEvuXacO0uT0JX+6fu+Oq6Zt5icKLwyPl8pI6AU
         zhjw6uV6hKOtSIBLes9I2TGzgdzAeFJRGQbzTs9pozt78s5mQesrBeS0FzLQEP/KXUyx
         8cr6W9mvhLzj+fBzlulRemN/JgiYomvl4TBB5KIal0I8UZGglQE073uPEKC0cGr71juF
         nt5B90XIGOMlArwi4mg5bBXi1K6OQiRX0Iz1dHy7csOKpPAaFjoPydTz/F7trNKeZkmT
         IU7g==
X-Gm-Message-State: ABy/qLZcRhuB5QQoCSgO/oIpkHDz52nshWJi9Jj3p8275C7T2Myb09Rv
        6CXmzrifqJ4R9/5D6Hhv2UM=
X-Google-Smtp-Source: APBJJlH5M7W6wDGDWeONlTaN3FlEwk0tT5K97Ta9nyHtEi3tfb5YNxb7XTU+MsZDBtGvJQVLWS3IIA==
X-Received: by 2002:a19:ca5b:0:b0:4fb:103f:7d56 with SMTP id h27-20020a19ca5b000000b004fb103f7d56mr1575906lfj.14.1688721334909;
        Fri, 07 Jul 2023 02:15:34 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id f6-20020ac251a6000000b004fba5c20ab1sm602008lfk.167.2023.07.07.02.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 02:15:34 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Add Ethernet interfaces links
Date:   Fri,  7 Jul 2023 11:15:19 +0200
Message-Id: <20230707091519.21673-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Northstar SoCs have 3 usable Ethernet interfaces each connected to one
of switch ports. They all use fixed links.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm-ns.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
index dae9c47ace76..88fda18af1f8 100644
--- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
@@ -272,14 +272,32 @@ xhci_port1: port@1 {
 
 		gmac0: ethernet@24000 {
 			reg = <0x24000 0x800>;
+			phy-mode = "internal";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
 		};
 
 		gmac1: ethernet@25000 {
 			reg = <0x25000 0x800>;
+			phy-mode = "internal";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
 		};
 
 		gmac2: ethernet@26000 {
 			reg = <0x26000 0x800>;
+			phy-mode = "internal";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
 		};
 
 		gmac3: ethernet@27000 {
-- 
2.35.3

