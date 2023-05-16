Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1835704F05
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:16:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232617AbjEPNQm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:16:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232321AbjEPNQm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:16:42 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C2BAA7
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:16:41 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-64357904632so2971329b3a.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684243000; x=1686835000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lvk2eCTeFxnOegJLRKuQYsp3qkoShxPgWkq7zqncysc=;
        b=G8TxbNZAyJLDeAWzY88l2egKcO+5IwuQzapnrO6iFlRwBviZYEJFwb5oVm+KbD1bHw
         AOacLw1t6AqmJPGlRUTYTWl8czSYbPO9otBq2rV/Y2qMpMKTqcbyy0dj0JSEn/muwFti
         QEFtlEJu09QuYzvPqczd0S0vMig89LCBmRLU6HlmPEw2Zd8j/9NYRfh7049HvyXx16X9
         GAZW8FA8DL+V0T2kxS9ww3z68KizJHzaPWskTVmV/UJ7RVl/1zWxWz6/OIY32iHna0ZA
         2Y84v+Mt1Hd3ir0NgCRYtb6RcAMNCqRFnvoKDdvIY2Zn1fn7Xm9SPV1UlvlS3EBvWovL
         gB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684243000; x=1686835000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lvk2eCTeFxnOegJLRKuQYsp3qkoShxPgWkq7zqncysc=;
        b=J5W7YtTOusxjPS4vVSUug/v0K6Qcc46oX0UkdOU+h7BXh+owAOAhIhH0uHefrrWzsC
         aAoVdKJxIAEDjIeRwIzkCOfBlSmpmI59L0LOlpHMkO6OozIjlxA88A9IRgbHy1Z0cMDB
         f0S5kH5/EIoLkAknRpQSAJa45fbDJKiOFdefsSEaXlCM8rx7mxvc29C4sG8ctbAwUdgB
         blm/ia8llb4qn5GVZeUo4I2DbLLkmqcJPMidkdZ7zQ4Ru3Q2EzCUGJLvdSThPwz6qxET
         62HYRVPakR1CXFbwDOSRxP0qQSEe0z7c7ouuKJE0jBvCw1bsmk/WVf3d4PE+4ueU4z3k
         WT2Q==
X-Gm-Message-State: AC+VfDz29bZVCFLDvbi4ogSAAHbIMwRs+3GBol5BA3swTSY64JVTi6MP
        ADX2f0kNHopZJ2RVX2n57X8=
X-Google-Smtp-Source: ACHHUZ73yjg63AgSN9Se97DiGnX4h6MvKNrMIBgFoo/KD7e29+kzP+RwWdMh/bv1VqKimJ7uAO8ZWQ==
X-Received: by 2002:a05:6a21:6da6:b0:f1:1ab5:5076 with SMTP id wl38-20020a056a216da600b000f11ab55076mr14677545pzb.2.1684243000433;
        Tue, 16 May 2023 06:16:40 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:12fe:baa9:ec21:f64b])
        by smtp.gmail.com with ESMTPSA id s19-20020a170902b19300b001ab0159b9edsm9361010plr.250.2023.05.16.06.16.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 06:16:39 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     daniel@zonque.org
Cc:     haojian.zhuang@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: pxa300-raumfeld: Replace deprecated spi-gpio properties
Date:   Tue, 16 May 2023 10:16:30 -0300
Message-Id: <20230516131630.580213-1-festevam@gmail.com>
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
'gpio-miso', 'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'miso-gpios', 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/pxa300-raumfeld-common.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi b/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
index 147c99191dc2..5e93f315588a 100644
--- a/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
+++ b/arch/arm/boot/dts/pxa300-raumfeld-common.dtsi
@@ -74,9 +74,9 @@ spi: spi {
 		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&spi_pins>;
-		gpio-sck = <&gpio 95 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio 98 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio 97 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio 95 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio 98 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio 97 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <
 			&gpio 34 GPIO_ACTIVE_HIGH
 			&gpio 125 GPIO_ACTIVE_HIGH
-- 
2.34.1

