Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2995C617AC0
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 11:24:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230296AbiKCKYU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 06:24:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbiKCKYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 06:24:18 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C44ABE38
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 03:24:17 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id a5so2225516edb.11
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 03:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m10p0Sft+OvE7fxW1MSxKEs6H8ZtGhHpardB7yvlL/0=;
        b=FO9PGlgNTHPgGrO8rrrHuW5bci6SUu0OT4ltPSg8XKtaVRAc6mlKyaEWwoFqrItXD7
         Nnq7jg2Jd2/Y/FSrYi6scHymE0BZTWbhoauIlN8rskUlYX5WQcCenU1zGGl/gEbAsKCb
         dAMFiNPUPMFdoMnT3VgU8VY1IEs+d9VCRsjU/Zs78sbIckltsS+/cfErftB1DFw2hofw
         tfzsy/hjd1jrOPX77BsPeDS4k7tOynaaj/hEq99XU3zQJ6niGOOCMOImKQhbaOcQjptB
         Qh5JA+aY48/q6JJvWVRnMjy8T3Wxf9mINYhLnbYBVRP5/VkEGyXGYAvGZgSkih9/HphH
         SZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m10p0Sft+OvE7fxW1MSxKEs6H8ZtGhHpardB7yvlL/0=;
        b=WZrmp1yMUgwiFgwA5Ix+73f6S8i/uXPf+RJuEzvULtAz3XF5NNqWfPuLtNKIJ+wO22
         kguhO1x6i7/YqYwClL3B5GYd5uS1lwbjODJ3nIJKzqRI54XU4j3mb7eMpMdB25buMY5W
         pwyEYtpJVcyzR0+dFKcvTKzfeOCoTO4pw5TWmFQXiy2fX6h0MeeD7icdWXvhAP+PBpoe
         E02MoXlmCqmw6ojx8tqmxBVJpyLncGg3Z/mX/IFh39QjhWwMwvFHsw4GZIEeVfXG8bHZ
         ATtWuyFDUSG4gjGmJjeV12kq4JVoLS66//Nupad+OcJQcxVnmzFW3AFS/eqybXrkhuO2
         4kLQ==
X-Gm-Message-State: ACrzQf1WXK6zdvHiPHYoi+njtTqp+HowxqNUfXToSW9xRj0yJZae6t3i
        rCrCfo0IQRaDxvTumi7t3sE=
X-Google-Smtp-Source: AMsMyM51i+U6PDuhcwwyvJX4sFHJJbGsQT+HxgAwLt+Ug7fh/i/Xll7eljulSGdzmLLhxJXhWD2Iug==
X-Received: by 2002:aa7:c78e:0:b0:456:c524:90ec with SMTP id n14-20020aa7c78e000000b00456c52490ecmr29396655eds.192.1667471055629;
        Thu, 03 Nov 2022 03:24:15 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id p5-20020aa7cc85000000b004643f1524f3sm325869edt.44.2022.11.03.03.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 03:24:15 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: bcm63138: drop invalid "nand" interrupt name
Date:   Thu,  3 Nov 2022 11:24:06 +0100
Message-Id: <20221103102406.18339-1-zajec5@gmail.com>
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

String "nand" was never a valid interrupt name. It was never documented
and never used in Linux or U-Boot driver. It most likely comes from a
copy & paste mistake ("nand" is used in "reg-names").

The whole "interrupt-names" property is optional and can be skipped.

Fixes: b5762cacc411 ("ARM: bcm63138: add NAND DT support")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm63138.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm63138.dtsi b/arch/arm/boot/dts/bcm63138.dtsi
index b774a8d63813..7c1f656e3278 100644
--- a/arch/arm/boot/dts/bcm63138.dtsi
+++ b/arch/arm/boot/dts/bcm63138.dtsi
@@ -211,7 +211,6 @@ nand_controller: nand-controller@2000 {
 			reg-names = "nand", "nand-int-base";
 			status = "disabled";
 			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "nand";
 		};
 
 		bootlut: bootlut@8000 {
-- 
2.34.1

