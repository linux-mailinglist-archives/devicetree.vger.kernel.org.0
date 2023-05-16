Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0444704F1E
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:20:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233114AbjEPNU6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:20:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233071AbjEPNU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:20:57 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1A1730E8
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:20:56 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-19292e65c49so2970109fac.0
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684243256; x=1686835256;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=abWj1pj4HrmM/G81WEbKtkt9IYmjhT0rbt1Ag0l7o3U=;
        b=LDuKrxKDMQzbVqKX1y5BPLLx2nPoYq9X/nzd1f1w8k3z8oC04msmJlt3aoSVv7px2o
         EOzHiPfSaChMg3qtV4Z5tmZBPRX2lDAXAkgtwLXOPdlLsKcFr/BlJ9kGq/PxPebEJmXZ
         cHYIUUq39yzPqNMswkqEiW7xlnq3M8RStXEGnRlRte7IZcy1ZDL8dyK+2fy+67gt0N6I
         jPaFOhag9pAMyKCpgHZKaW0ES6e3PM5I2Ubjo5oQE2BjgbyEOLVQvlxLgY5JQmRbQ4a+
         LvJg9tm+ozMqrsrePrQoCH9MvK/0lolq0lhTBOLHkJluGFITG426CQRyHH0o0dmaJu+I
         pH9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684243256; x=1686835256;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=abWj1pj4HrmM/G81WEbKtkt9IYmjhT0rbt1Ag0l7o3U=;
        b=JX3njYUtUcxFiQHSVo1BCHIxI91bwlPQD/IyucvgpzDsZ5QKbBxsgVGm8JubiU97Tp
         pqDatvFsiB/MFr5WWQjmKEsiCGGqAc0sOeOgg9j6Wfp7bRG54xKQG5RysRE+XWiRgo33
         oEou0e5pggAgchbrUHSmnSJ1cVDJpLGinK7ODt8szv2hy8bDi11eyxjZHQu5jPtpbtNG
         MoWwgeqwg4aEhqdHD9fV/1wCb1YSf3WV47GuQOrz8EL7GGZc7yFiq9/lJIfbHZoio6eY
         vhA6u2d4wIOig00pdbKcFB40dq181sBYB7KOIfu85j+xurnOCp+Y6E1hBG3iuh/t3pGN
         KZ2Q==
X-Gm-Message-State: AC+VfDyIueUnK5kbrgr/c7wIRqx+w6bD6mjwiRSc/83Yj1/N1qGg96qg
        8+rX+5a0mWeyt5Qko0WQAaM=
X-Google-Smtp-Source: ACHHUZ7wifugvCJfYiCBbN/OskRFbTKk2RYhcvQ8nORyAn2ZrfNPfTZROK6sfNZ2HZRT8lQOEXBihg==
X-Received: by 2002:a05:6870:1c9:b0:192:beba:7bd with SMTP id n9-20020a05687001c900b00192beba07bdmr7040498oad.2.1684243256191;
        Tue, 16 May 2023 06:20:56 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:12fe:baa9:ec21:f64b])
        by smtp.gmail.com with ESMTPSA id g5-20020a05687085c500b00187e500e7b3sm13062779oal.49.2023.05.16.06.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 06:20:55 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     joel@jms.id.au
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: ast2600-facebook-netbmc: Replace deprecated spi-gpio properties
Date:   Tue, 16 May 2023 10:20:47 -0300
Message-Id: <20230516132047.580750-1-festevam@gmail.com>
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
 arch/arm/boot/dts/ast2600-facebook-netbmc-common.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/ast2600-facebook-netbmc-common.dtsi b/arch/arm/boot/dts/ast2600-facebook-netbmc-common.dtsi
index 31590d3186a2..0e2ba04a714d 100644
--- a/arch/arm/boot/dts/ast2600-facebook-netbmc-common.dtsi
+++ b/arch/arm/boot/dts/ast2600-facebook-netbmc-common.dtsi
@@ -31,9 +31,9 @@ spi_gpio: spi {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		gpio-sck = <&gpio0 ASPEED_GPIO(X, 3) GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio0 ASPEED_GPIO(X, 4) GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio0 ASPEED_GPIO(X, 5) GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio0 ASPEED_GPIO(X, 3) GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio0 ASPEED_GPIO(X, 4) GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio0 ASPEED_GPIO(X, 5) GPIO_ACTIVE_HIGH>;
 
 		tpmdev@0 {
 			compatible = "tcg,tpm_tis-spi";
-- 
2.34.1

