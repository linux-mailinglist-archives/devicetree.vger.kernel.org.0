Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 126D16F57E1
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 14:28:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbjECM2t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 08:28:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbjECM2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 08:28:48 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3768110E5
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 05:28:47 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2a8afef50f2so52234911fa.2
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 05:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683116925; x=1685708925;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P9TINMhNvD4iFgDl9q787YpZQATv7CyKtUu8ciEROlE=;
        b=iK1jUe0P2d/SFBREJ+5V9i2tPa8ypr6XFN8MEuDtln14cm9Y1Ru0J6ghxw1cMMnvVj
         VfMArG6TDk2sS9c/BVwzEIq3lYL4MzVe25Jx06Am5EUBp7LRAy77uWsjQjVVJguiOB8S
         /hetVC+bXOPshLa3WGtjaSgxG5zVl06BGuW4zTVENbSsdXDY36xr8xv4XPyUfaREkGyl
         fnuT/s/4tjFoicVs8rElXrxgThShv0izhqYy28O6IudkGkIvWqCPrLc6kcTxOtO/vzYV
         6KJN01qQnw1HEEPQdYiZSdvDQehWyLRMDd3azJx0r/VwWllAJnds0RvIXenyow/mhgB0
         GjYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683116925; x=1685708925;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P9TINMhNvD4iFgDl9q787YpZQATv7CyKtUu8ciEROlE=;
        b=dCKdcuK5CaGKp0BPKxrXruojAW+Iov3ACDrl3HsxBrN3sxMXTQwsefq3oCvEOksTT1
         GopycpOM/cklQ/LTHEh1muV3+oOMVzEfSoGvvJv4Ru3U4u/LB4/T9qAJ4YLLwPW4Ue/8
         rPrk5H0qkiUKIBIV69a2qR/lMwFao/YtWF4lA9x6nUTS7uxfq5rHdn7xp+Y6kKL9NVpB
         PVEIsnBngPrU44w7/k7Wx1PcP7MbXbwj6Z6BgpLjY023SqdPl6CFwL5rqv8RBaqOXyBH
         xhQFqMfwDr8KJY0mk2H84rIQOibGiwiXQnahX2/e9ntA9VaZ2zmj0rz5DnTVQLtu3I65
         87Dg==
X-Gm-Message-State: AC+VfDw9SYvv+JWIv7sOagLVF4aRMAQXkpfdkFtrZviG9ETyTmUjdZix
        Td9dgQEUfP1U4lQlIp8kJfmgRua4COg=
X-Google-Smtp-Source: ACHHUZ5NJsxoFQ+QHUOSXLbDWtdEVCe9u0idf96WHxkWapbtlYvlNMCQ/uznOjjy3VEkGyy+EsRzkg==
X-Received: by 2002:a2e:7410:0:b0:2a9:b6fe:18c5 with SMTP id p16-20020a2e7410000000b002a9b6fe18c5mr5810673ljc.52.1683116925335;
        Wed, 03 May 2023 05:28:45 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id b10-20020a2e988a000000b002ac77768608sm149744ljj.100.2023.05.03.05.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 05:28:44 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Drop "clock-names" from the SPI binding
Date:   Wed,  3 May 2023 14:28:30 +0200
Message-Id: <20230503122830.3200-1-zajec5@gmail.com>
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

There is no such property in the SPI controller binding documentation.
Also Linux driver doesn't look for it.

This fixes:
arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dtb: spi@18029200: Unevaluated properties are not allowed ('clock-names' was unexpected)
        From schema: Documentation/devicetree/bindings/spi/brcm,spi-bcm-qspi.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm5301x.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index 2890fa3c5e67..bc36edc24510 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -335,7 +335,6 @@ spi@18029200 {
 				  "spi_lr_session_done",
 				  "spi_lr_overread";
 		clocks = <&iprocmed>;
-		clock-names = "iprocmed";
 		num-cs = <2>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.35.3

