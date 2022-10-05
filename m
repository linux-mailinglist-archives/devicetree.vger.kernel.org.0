Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 098685F52F3
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 12:55:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229620AbiJEKz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 06:55:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbiJEKz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 06:55:27 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C270965831
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 03:55:25 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id j16so13429393wrh.5
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 03:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Hx3lo8iVf7+CPJL6lCE6hKeJnw4lGzp6yArcYS4WFY0=;
        b=CAI2yMPZ0AfpixNqwNV8uaM/lVcWdjhCRGO9KsXgIce3L11kurZia/mIYNw1k0O52Z
         7bhRs46EPQBa3oST9u/qbugdq7llfpVJOT09Nh2qwQiYFIm7L6GAk2F5X89w1onZ3SSG
         TfffOft5OxE0WX35YAKaKukWlHe++Fx+DDKyUAqtW0cNmRLklLhpa2UvT4sd4UXRsbxc
         hP2kFdr70J0BvjOZAofBmef+j7ZFtTgLJwmXRYGivnbRzj17BVHu+3fyZ/gWZeJq7qti
         H8aBcAGQ5luLQjMEk/HFdP3pIW4NAH/IbrQPimJY+4GUXMsyxEvuFM/cT0Xou4qxMMsX
         Q2ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Hx3lo8iVf7+CPJL6lCE6hKeJnw4lGzp6yArcYS4WFY0=;
        b=dL7nKbNohc/9zRe+kNpEAjbJ40N6O9itdTezcfuuNWZ9IrELY4ieGf8EWdQyakHT/A
         UyoOLHeVdr9d9w5rtCJlJEx6TSZHhPupaIFrshbkZy6voIMf52CKkHGhy61of0GQKbSb
         8tPscD1noecWZDZT8e1RI6407Wi+VlgNCxkVzjujqjMSkG+G6Ds7KYSU+0nUv9VqVW3r
         FkgpsLs3UF+KmyTipnli7QsWhwdJeioBhBaLMa6pM1FCOL2RgvdGrQFOrziTI25tmxdf
         3zvTt+lZGf/bwdEkYOIff9lL9UNDKsoTQFBMSguGharf0HudhSJyV8ubdba+Q/Oidry6
         DZ+g==
X-Gm-Message-State: ACrzQf04DuKRp/LIzmdQEIUxvbJW+G1OVb87+f5yzMZzDfISWUrLtNl3
        XgLbT8fCTICjkgCzBXpmUrYMgw==
X-Google-Smtp-Source: AMsMyM7xVM01Ds+CYcPqh+zpNO5vwN33VsP1sxzIfyPWRVel8KOKAuV5qGXFb5XzF2ljAqzuV4oJ9A==
X-Received: by 2002:a5d:4bcd:0:b0:22c:dfba:6b61 with SMTP id l13-20020a5d4bcd000000b0022cdfba6b61mr15668457wrt.424.1664967324393;
        Wed, 05 Oct 2022 03:55:24 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id i30-20020a1c541e000000b003b486027c8asm1604133wmb.20.2022.10.05.03.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 03:55:24 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     kaloz@openwrt.org, khalasa@piap.pl,
        krzysztof.kozlowski+dt@linaro.org, linusw@kernel.org,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] ARM: dts: intel-ixp42x-welltech-epbx100: add ethernet node
Date:   Wed,  5 Oct 2022 10:55:10 +0000
Message-Id: <20221005105510.3512132-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ethernet node for the first port of intel-ixp42x-welltech-epbx100.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../boot/dts/intel-ixp42x-welltech-epbx100.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/intel-ixp42x-welltech-epbx100.dts b/arch/arm/boot/dts/intel-ixp42x-welltech-epbx100.dts
index f5846a50e4d4..b444003c10e1 100644
--- a/arch/arm/boot/dts/intel-ixp42x-welltech-epbx100.dts
+++ b/arch/arm/boot/dts/intel-ixp42x-welltech-epbx100.dts
@@ -76,5 +76,23 @@ partition@fff000 {
 				};
 			};
 		};
+
+		/* LAN port */
+		ethernet@c8009000 {
+			status = "ok";
+			queue-rx = <&qmgr 3>;
+			queue-txready = <&qmgr 20>;
+			phy-mode = "rgmii";
+			phy-handle = <&phy5>;
+
+			mdio {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				phy5: ethernet-phy@5 {
+					reg = <5>;
+				};
+			};
+		};
 	};
 };
-- 
2.35.1

