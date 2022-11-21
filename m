Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F4AA63273B
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 16:03:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231810AbiKUPDM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 10:03:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231918AbiKUPC6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 10:02:58 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6564AE2B57
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:51:52 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id c129so12794858oia.0
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8q7SKQ9g5/zxPNM7fJ8X/EZ+UjWDF2jimLKwk1nqyfU=;
        b=cr71KAWq/USQsv/3oDTOIdP9Io0YYVB/WRMI/qWv+/CdkqKU85iHKQ/irQkZl0Oi77
         LD8Av7H6MjGMV18hxoU1eTLo7BaIfyfVlglJkKlp5Eu0LAstncc/eV970fGBRnvVTbz3
         Z8WQK36XyDJNP1arfefosJrHFKgiWBFlk2AF53avkIbiLVOAopx2Z7IGRl2AgLHScz4u
         afHrkrWemWx+G+CLsOElaZ07E01IJhZ/Fja9ba6w2zIFBB0LEz6oQ9yzlUBQ3+aCyiAQ
         wBBfWQoin3b5nTt1rTC3SmpoMYnmV/BIw8vgNekibCPPwBGlxIZXnP0RBZAPiBc0KdLv
         Clig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8q7SKQ9g5/zxPNM7fJ8X/EZ+UjWDF2jimLKwk1nqyfU=;
        b=vmxVwscdJ3TZw3W7LHNOiVVelNHaVg7DFxTsCcR+LhXdgU5y0FQKx98ONRdA1Xtf0h
         n5a7AgwQpY1KHTNe26ntQaN7RBhDRGeFQarOtggfWLYkbvd8uwnubak8+YG8dqXQLwTD
         e5scpxWUcn67204f+ath6EqtkPQbrjE6fZOW7jZNXmDuk8kgNTQeQHS4x1M8i9LESCa6
         Ww2VvDqmS5IihaOgPX9Fqk4h1h2rwhQLMHX4bjxi0xEyGv9kmxO53fddjkNcZHdB/SUA
         Ek85euPbIvk4InffxbozPmI/2w+BWV+MkMJ/KYNlHdc3MnbVH8zOb4SpXAfhYyX62O0C
         zj9A==
X-Gm-Message-State: ANoB5pnjX4OUaQyQmPeC7yAu6LMXoVwJZ8YYkoAa2LYhpG1MkhJ60EeL
        N1GtfpUXWDgELY44rwidZiI=
X-Google-Smtp-Source: AA0mqf6XLaQkLV1krOuwJHcmGJGiO0WS/zgS5WXhtmLYjYIL03KOKYkgK5xRVR7tHf2zLG4QEXF5oA==
X-Received: by 2002:a05:6808:2024:b0:35a:90d3:ef29 with SMTP id q36-20020a056808202400b0035a90d3ef29mr12337541oiw.241.1669042311687;
        Mon, 21 Nov 2022 06:51:51 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5204:9130:9b29:a926])
        by smtp.gmail.com with ESMTPSA id b43-20020a056870392b00b0011d02a3fa63sm2661434oap.14.2022.11.21.06.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 06:51:51 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Reinhold Mueller <reinhold.mueller@emtrion.com>
Subject: [PATCH 3/3] arm64: dts: imx8mm-emcon: Change LED node names
Date:   Mon, 21 Nov 2022 11:51:14 -0300
Message-Id: <20221121145114.2362260-3-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221121145114.2362260-1-festevam@gmail.com>
References: <20221121145114.2362260-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

'green' an 'red' are not valid names for the LED nodes and
give the following warnings when running:

make dtbs_check DT_SCHEMA_FILES=leds-gpio.yaml

  DTC_CHK arch/arm64/boot/dts/freescale/imx8mm-emcon-avari.dtb
arch/arm64/boot/dts/freescale/imx8mm-emcon-avari.dtb: leds: 'green', 'red' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
	From schema: Documentation/devicetree/bindings/leds/leds-gpio.yaml

Change them to led-0 and led-1 instead.

Cc: Reinhold Mueller <reinhold.mueller@emtrion.com>
Fixes: 2449d0440a2b ("arm64: dts: imx8mm: Add support for emtrion emCON-MX8M Mini")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi
index 0dbdc9ec3fe5..421f0aa317c7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-emcon.dtsi
@@ -18,14 +18,14 @@ som_leds: leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpio_led>;
 
-		green {
+		led-0 {
 			label = "som:green";
 			gpios = <&gpio3 4 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 			linux,default-trigger = "heartbeat";
 		};
 
-		red {
+		led-1 {
 			label = "som:red";
 			gpios = <&gpio5 10 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
-- 
2.25.1

