Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8639D751F9A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 13:12:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234350AbjGMLMO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 07:12:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229913AbjGMLMN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 07:12:13 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF6402690
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 04:12:11 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4fb960b7c9dso1074606e87.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 04:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689246730; x=1691838730;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7F2VqRkNnanQmzsZgDU0wjctQv+3KrqiPN+MNUqHJRc=;
        b=Sg2I5Mf23hj4V+3EoPmqRpAh/c1ef0z3Meo8cgXBGwW+btztGKueA/H45vOGx/tn8Z
         Z8TxdJLOVFKZVvLNCDm/c04zNmuqbsNGvAFWp0vEh0ZjjRRmKVYHcAmicC6FJ2HrkF2e
         as6sx8Lpb1PLpf5Z0jWvW5cq7s6sczgaN80fiiwdRC4EVaurZBYzh6hcMOydZUbOv32O
         fnCoMmKZ53HFa51ZdW9B7Qus2dPlArOeZmsxcxZFE4J+DeKK/IL5Cis3rfWY9/xtDyuL
         8cdExyJkDuwKUAh7G/L6QvUkoeibTnv2deJmU3aw1lrRPibPydSJO2Bc6Tr647kHSP9L
         lDKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689246730; x=1691838730;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7F2VqRkNnanQmzsZgDU0wjctQv+3KrqiPN+MNUqHJRc=;
        b=O7zdmLtzCEtJVJUnlQgqN0zQCLmcIks+qpOCGV2THj4bu0eCwlNxzZJSJS08VVihxt
         oX7v0Mdk56VNmLcGa4n7ky03UlYapYCQ82YdzxtPd4UPbgMDyFkK22XZfMJrdQCzXy+Z
         kT9q36P2r1KQoROpSAUfJKfX1hs44F1mYWHN2UqNfzSMV6oLa5XYnpCJ3ul0+pCxDC8J
         5gRYuR4yrGfHvAxUGEhU2yZ1ts8D2X82JWp2P5pNvf/x9ZteghQy96Tf41RyWLtSiumr
         0ENuElIesQG6YixrwbPc0SLJq1cr5MxJtF/2/Ha9+wkvT5/D1ATYKu1XJEISLTIqsi5Z
         H51Q==
X-Gm-Message-State: ABy/qLbrwxRkNYoUZ00jm9A26Adp4AnjoE0x0azab0zU6P5tBVdYvmku
        cD810l2QjM9iL42N9V9X2z4=
X-Google-Smtp-Source: APBJJlGPNHzNklItxtLj6IhPMlCqzw7XU6HhPxNZ7iWY9jWyI7Dj4v074K+i+0hrofeALI4SmdbGNg==
X-Received: by 2002:ac2:4e89:0:b0:4fb:9341:9921 with SMTP id o9-20020ac24e89000000b004fb93419921mr835866lfr.52.1689246729823;
        Thu, 13 Jul 2023 04:12:09 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id r4-20020ac252a4000000b004f8422b7991sm1070080lfm.154.2023.07.13.04.12.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 04:12:09 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM53573: Fix Ethernet info for Luxul devices
Date:   Thu, 13 Jul 2023 13:11:45 +0200
Message-Id: <20230713111145.14864-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Both Luxul's XAP devices (XAP-810 and XAP-1440) are access points that
use a non-default design. They don't include switch but have a single
Ethernet port and BCM54210E PHY connected to the Ethernet controller's
MDIO bus.

Support for those devices regressed due to two changes:

1. Describing MDIO bus with switch
After commit 9fb90ae6cae7 ("ARM: dts: BCM53573: Describe on-SoC BCM53125
rev 4 switch") Linux stopped probing for MDIO devices.

2. Dropping hardcoded BCM54210E delays
In commit fea7fda7f50a ("net: phy: broadcom: Fix RGMII delays
configuration for BCM54210E") support for other PHY modes was added but
that requires a proper "phy-mode" value in DT.

Both above changes are correct (they don't need to be reverted or
anything) but they need this fix for DT data to be correct and for Linux
to work properly.

Fixes: 9fb90ae6cae7 ("ARM: dts: BCM53573: Describe on-SoC BCM53125 rev 4 switch")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../boot/dts/broadcom/bcm47189-luxul-xap-1440.dts   | 13 +++++++++++++
 .../boot/dts/broadcom/bcm47189-luxul-xap-810.dts    | 13 +++++++++++++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
index b9dd50844419..0f6d7fe30068 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
@@ -45,3 +45,16 @@ button-restart {
 		};
 	};
 };
+
+&gmac0 {
+	phy-mode = "rgmii";
+	phy-handle = <&bcm54210e>;
+
+	mdio {
+		/delete-node/ switch@1e;
+
+		bcm54210e: ethernet-phy@0 {
+			reg = <0>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
index cb22ae2a02e5..4e0ef0af726f 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
@@ -81,3 +81,16 @@ pcie0_chipcommon: chipcommon@0 {
 		};
 	};
 };
+
+&gmac0 {
+	phy-mode = "rgmii";
+	phy-handle = <&bcm54210e>;
+
+	mdio {
+		/delete-node/ switch@1e;
+
+		bcm54210e: ethernet-phy@0 {
+			reg = <0>;
+		};
+	};
+};
-- 
2.35.3

