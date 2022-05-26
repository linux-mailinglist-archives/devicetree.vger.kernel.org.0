Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B3865354B3
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:42:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348822AbiEZUlh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:41:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348926AbiEZUlf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:41:35 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 057CE339
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:41:34 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id fd25so3162184edb.3
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iDU4xBC5nWMNmyCg1ZxLXPk4J0emRkItlM3WQU2JAnA=;
        b=njmUR1XglcBE+JRzoM0q8gmFW5nTrNyW5GkBvAmW48aW5lNqDLKUiJkKeJyy1x020d
         KGucZ+w7ACN9g/i2f2ea68jt6RYW7yUkV+BrvkhA2DzmLVrTr7Z4+1FBdiiKLzh+4XEF
         q+FP5dBGJxACKOw5iEH2HE1S9y/lqskUuAvYsX/GHiO5rd5F5UmB4mASf9ErNDel3+2H
         LMHHjG8ZJzCxDm+Nhc7If0LAgoGhgkY88SGQ5Hih7lVjhIeKtsy95SauXk2c9AQCCU+l
         rZsiSO/L4jpQWNguq1GKmkqUf6NSc6x1TgTLIkPCtsvTvAY48TLYjJ+oH8zan9b6nROK
         A4xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iDU4xBC5nWMNmyCg1ZxLXPk4J0emRkItlM3WQU2JAnA=;
        b=x4gwDFuzX/kDe2N7HxijICQJwBa/0O1iltI8NuGKjDUeUmglA12LvqAUZ2n5uJVshA
         X32v1wwM+WEAHKF8E3kEkGZgD5g4fwZoOpowKksXvhR3t6axgyboYlWQCqm3O3D4D2Yt
         ShastvQJOA5aQ7zSrJlt3zEri97r8Ot+WH86/4rayUGbdJgDt0+tcwoB2OhW9q79f1/s
         hNUQ1JLCsTo7QS8SzoijnyeqMeJ+nXHJXy6aS0yqSe+RGg3yArrOqyic4Brt664egKA+
         EAFh7jzl8GCtCdaT9r0l2w0wwDEMQcAtm6gpx6TAVtpAzhacAgMtBspDyqDaVfgzHJj5
         +L2g==
X-Gm-Message-State: AOAM533m4HFxzpK5xQRMBTBh06SRBK3C0x8g6SgQKpJlgUuKWRynuMNo
        f00D96CEKlRiht78ZbpbjACihg==
X-Google-Smtp-Source: ABdhPJw2cOeuIEGTQNwPOb/HuniCTNdhsvrUqMAxNn50imGeVksbRSzX3nol7SaI2Kgsf0CL2JOy6A==
X-Received: by 2002:a05:6402:1d51:b0:41f:cf6c:35a5 with SMTP id dz17-20020a0564021d5100b0041fcf6c35a5mr42029179edb.25.1653597693596;
        Thu, 26 May 2022 13:41:33 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y11-20020a170906070b00b006fec28bd09fsm815590ejb.22.2022.05.26.13.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:41:32 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: aspeed: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:41:27 +0200
Message-Id: <20220526204127.831853-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/aspeed-bmc-portwell-neptune.dts | 6 +++---
 arch/arm/boot/dts/aspeed-bmc-quanta-s6q.dts       | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-portwell-neptune.dts b/arch/arm/boot/dts/aspeed-bmc-portwell-neptune.dts
index 61bc74b423cf..a5e64ccc2b3a 100644
--- a/arch/arm/boot/dts/aspeed-bmc-portwell-neptune.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-portwell-neptune.dts
@@ -24,17 +24,17 @@ memory@80000000 {
 	leds {
 		compatible = "gpio-leds";
 		postcode0 {
-			label="BMC_UP";
+			label = "BMC_UP";
 			gpios = <&gpio ASPEED_GPIO(H, 0) GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 		postcode1 {
-			label="BMC_HB";
+			label = "BMC_HB";
 			gpios = <&gpio ASPEED_GPIO(H, 1) GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
 		postcode2 {
-			label="FAULT";
+			label = "FAULT";
 			gpios = <&gpio ASPEED_GPIO(H, 2) GPIO_ACTIVE_HIGH>;
 		};
 		// postcode3-7 are GPIOH3-H7
diff --git a/arch/arm/boot/dts/aspeed-bmc-quanta-s6q.dts b/arch/arm/boot/dts/aspeed-bmc-quanta-s6q.dts
index 69e1bd256271..46cbba6305b8 100644
--- a/arch/arm/boot/dts/aspeed-bmc-quanta-s6q.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-quanta-s6q.dts
@@ -65,19 +65,19 @@ leds {
 		compatible = "gpio-leds";
 
 		BMC_HEARTBEAT_N {
-			label="BMC_HEARTBEAT_N";
+			label = "BMC_HEARTBEAT_N";
 			gpios = <&gpio0 ASPEED_GPIO(P, 7) GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
 		};
 
 		BMC_LED_STATUS_AMBER_N {
-			label="BMC_LED_STATUS_AMBER_N";
+			label = "BMC_LED_STATUS_AMBER_N";
 			gpios = <&gpio0 ASPEED_GPIO(S, 6) GPIO_ACTIVE_LOW>;
 			default-state = "off";
 		};
 
 		FM_ID_LED_N {
-			label="FM_ID_LED_N";
+			label = "FM_ID_LED_N";
 			gpios = <&gpio0 ASPEED_GPIO(B, 5) GPIO_ACTIVE_LOW>;
 			default-state = "off";
 		};
-- 
2.34.1

