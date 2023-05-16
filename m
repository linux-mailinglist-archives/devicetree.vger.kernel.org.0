Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F0B1704EE2
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:12:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233070AbjEPNM0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:12:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233413AbjEPNMZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:12:25 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E71430C2
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:12:22 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-54f8e5472a4so1224181eaf.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684242741; x=1686834741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wPZqgabDRTDOvYUAH/txpv9GMllyEJqrs060gGGiwgg=;
        b=XqifP41N3gPoOr1Rbfc+JOC1WNpu0lQGYf9qN9xSzVxuUfrLG9ZOOACGNnGndSe3K5
         ZRrDewskwgbbqMZgf1OrrbcvHjt6lQKTRr1ESQL7lQZ7ac0utDIKVkxguX3v0T0GV6B0
         DCC7sW6GLI0FlofK1j3p/r1tRYZn7OiqjyoGN7r2iPTykv7pFNqRcD218cBEEBN+m02A
         zy2e1J6IVqJUxReC0UbBv0GP1Np6MvadnHTHJP7vPnG74AIXrK70KmMd20vdCH9rbi7h
         W1DRkQ9Sz2BJRL5vXoHbOUNJF8ECedo/UQQLBs/C08Ce8gd+dgBLd2ORQlFddh8YrhB4
         WS9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684242741; x=1686834741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wPZqgabDRTDOvYUAH/txpv9GMllyEJqrs060gGGiwgg=;
        b=VvIBOKGrYfvRrlMROsitWZz/vhOmy4FJ9J4oePaxNNUExKrR+FmSehmKHiL/ZhbEdE
         ACAxSUjcAhRQ71eekQHVSdWdSVG/BpINdo0mpuR7ssHzVL0hYWX7ECpRjWvCHj7PGKs1
         s9uAyTfcNo4YKbji4/j5EY28bJEzz6s5wCjF42NSqYTnQO+kYpaP8+EHAZTRUZeZDl+B
         jwNhawSF4jU+0fj0oreIhHJR6HQFeYYWUwzvUjD6cQI2LzE7c49qTOHCJkitE0UkUzwN
         JdkbAWBKW2Jqm+qfXxeBuXUCitTmO3Eot6kDuWWA1hDUFvwsyinMWzEpD3uKJ3zaxtM/
         bIcA==
X-Gm-Message-State: AC+VfDxjeAAjO3IKUnCorhgxU0LWWC6rruKFdohr+RnN2ub8ses6oI5i
        pqaCRatRsEBGIBO4fCXQcqPe+lp0mVOgLA==
X-Google-Smtp-Source: ACHHUZ52tu3jkUt+feaNjhsq2Y2QZgxF8vhPLnrRZdz3a4Cmjolc/iEpQAKxyzBdW7zrvbKXxl8Yug==
X-Received: by 2002:aca:3d41:0:b0:394:25b9:db19 with SMTP id k62-20020aca3d41000000b0039425b9db19mr1006831oia.2.1684242740984;
        Tue, 16 May 2023 06:12:20 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:12fe:baa9:ec21:f64b])
        by smtp.gmail.com with ESMTPSA id z83-20020aca3356000000b0039466db554dsm5395519oiz.18.2023.05.16.06.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 06:12:20 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     gregory.clement@bootlin.com
Cc:     andrew@lunn.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: armada-xp: Replace deprecated spi-gpio properties
Date:   Tue, 16 May 2023 10:11:57 -0300
Message-Id: <20230516131157.579676-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts b/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts
index 0dad95ea26c2..21b95578fe95 100644
--- a/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts
+++ b/arch/arm/boot/dts/armada-xp-lenovo-ix4-300d.dts
@@ -167,8 +167,8 @@ scroll-button {
 	spi-3 {
 		compatible = "spi-gpio";
 		status = "okay";
-		gpio-sck = <&gpio0 25 GPIO_ACTIVE_LOW>;
-		gpio-mosi = <&gpio1 15 GPIO_ACTIVE_LOW>; /*gpio 47*/
+		sck-gpios  = <&gpio0 25 GPIO_ACTIVE_LOW>;
+		mosi-gpios = <&gpio1 15 GPIO_ACTIVE_LOW>; /*gpio 47*/
 		cs-gpios = <&gpio0 27 GPIO_ACTIVE_LOW>;
 		num-chipselects = <1>;
 		#address-cells = <1>;
-- 
2.34.1

