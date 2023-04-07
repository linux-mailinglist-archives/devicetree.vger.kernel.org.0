Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92D276DB063
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:15:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbjDGQPQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:15:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230230AbjDGQPP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:15:15 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A8F1BDC2
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:14:56 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6a37d42f989so162666a34.0
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680884095; x=1683476095;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YQ3UqBxNr7rhlT+Edf23gQ8/QI2PVguALYAFafRqkr8=;
        b=OkTeFrf4u1K1n9nK7oO6T2xMyI4y1SzMKA2i7gLkqxDnjW69ssJBJyWldbqgW6JjlV
         JMAzChqDmZg9wGv5oAlR0K+bbgRe6cYT53Rh+ubxfB3xTYZWCLSJt8sAwryZT7MUhtNZ
         ITFOzwR/uAmVgSA4bbkXujfViuEITwrQzb74knxcrfCJA/oS9hP/FIDi5Pa+UmkjTqIs
         FHn8G63hSt/PTNxI5oOVGiWiWxn3uVnSqtQwmj1u1xhUiXhWTgv7UTxTfE03gADsYkpy
         hngf9Ls+61nGKSU7MdxWAuxRtMuwnEvdWmiELdySjrP77WxD2s3/NPggGCowZK+hHm4F
         sELw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884095; x=1683476095;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YQ3UqBxNr7rhlT+Edf23gQ8/QI2PVguALYAFafRqkr8=;
        b=1/ypnTuy7HHG37fVx7NWg5KHvLfvhiNx82RS1N7xNp7zswBQozSsgfJUaFxzYJPTLb
         fK6jvi4rBdszTHR02lAfRZaSDa3nVyJHuUvMKKVEr3Pagh5utnh4CtHmWG9i/d4Ukfcr
         wBdELQsnR7aTEEEqt52RRrVLRRQ0gjsSjfdbbbf8qhwWwgAEQuaE67e1XfVFYjXJhYV2
         iWHOX5WV2AupNluyaC3dRiczq87U93FWR4B3UhtCF2szhMeDIdWqfDeURVUiKYGma1k3
         nQLyLCB/kbykgiBpR62JOlWDuOZwUqO74LKaZd1MjIoYiwKpg6KRM4I41Yq5XTeeI4fO
         TyGQ==
X-Gm-Message-State: AAQBX9eZEWIuYKUefuUJwXRNtYV3nRDNcDTy6QaFeCbuNnIy+KJFRAp/
        hvYqNwY2AxfcMG1GgpU9PbS1zdyqEc4=
X-Google-Smtp-Source: AKy350Y4V05/8PTo5Qf6jAtAtGvgxnLmqcyQG+zVlZQyWiI7Iaq0Zv3NZI4s1p6wLOvWCIDjfolhoQ==
X-Received: by 2002:a9d:469c:0:b0:69f:f4b:d4dd with SMTP id z28-20020a9d469c000000b0069f0f4bd4ddmr18581ote.0.1680884095340;
        Fri, 07 Apr 2023 09:14:55 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:7f0:b380:973d:85ce:575d:c0a1:5abf])
        by smtp.gmail.com with ESMTPSA id q25-20020a9d7c99000000b00690e21a46e1sm1801910otn.56.2023.04.07.09.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 09:14:54 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/7] ARM: dts: imx7d-sdb: Replace deprecated spi-gpio properties
Date:   Fri,  7 Apr 2023 13:14:38 -0300
Message-Id: <20230407161444.1682038-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
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
 arch/arm/boot/dts/imx7d-sdb.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
index f483bc0afe5e..25681c430393 100644
--- a/arch/arm/boot/dts/imx7d-sdb.dts
+++ b/arch/arm/boot/dts/imx7d-sdb.dts
@@ -43,8 +43,8 @@ spi-4 {
 		compatible = "spi-gpio";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_spi4>;
-		gpio-sck = <&gpio1 13 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio1 9 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio1 13 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
 		num-chipselects = <1>;
 		#address-cells = <1>;
-- 
2.34.1

