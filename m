Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16259799597
	for <lists+devicetree@lfdr.de>; Sat,  9 Sep 2023 03:36:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231160AbjIIBgC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 21:36:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231144AbjIIBgB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 21:36:01 -0400
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF7BF186
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 18:35:56 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5711d5dac14so561871eaf.0
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 18:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694223356; x=1694828156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SYXpMUBXqi5GP561H6HvmWBrQEsjeeV8nwPogcVw8Zk=;
        b=c+BZw4itW8/ty2xhp6na/4R6n0FUqF+P4or7ab4PB8V/7AvV9VdlI+Be32vN6DYgiu
         Ec03XBzQo3uLklPqGbTTF7UFyGgOt/50f8JLkSqblr/+NslOo5jhNwqfuA+HzhD4+OV3
         iKHiuRiXvlfcMrfsaP1idofdR+fvYmgGq/4g1UrawkhQhnGcTcF3bVGVLVu6sxS0pZzD
         NPeMcnml0Oqnj2+eYCRqWoKkauQPwZiFv5WWyE2gRv7OE/zb/Kcea9T9JLWnNnnBou6y
         wF1p9UbJT8XnF+PHdZEMn7Nh3KTy57qGMsLPwdQaeFdua3PfRyKtbLw2jt6t+W9XT02D
         wj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694223356; x=1694828156;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SYXpMUBXqi5GP561H6HvmWBrQEsjeeV8nwPogcVw8Zk=;
        b=tvFo1uE5DvQBP5nh1GEGFmexlWC0/f+nifO6C2YdYep2D0FZ3Ocb64yfe0m/GuYhc5
         Ex4TUTo6vdSMf2Oi1DZWUK/n2sYxqm7NwLTU1Oevfu1Pv9SuEDH/6qBoLwD+qb3xQsdW
         vl5Trbwbyu7J8DjAJRII+s15mniW07+KurE7rHbl09TLwTtWSLKyVkxV7cb9QHFhDmTE
         BSEkP5EaiE5QPdhpIGAXBd4hzeOo+WqPPybjqJ0MjtXQ3u3ti1IOIK3mYgUgLx13db3q
         Mghaxs3+vmzDCRcPMOjPI/o5dsLlricsq3IcW2CTUxWa/LJnbU97wQaPPji/bBGKqF5A
         c+9w==
X-Gm-Message-State: AOJu0YyUfE0hIw1GkhHSuj/9SlKo98wcc/l9hh+r1okpLpWd4y7lcfiT
        VAAx7Do/M8qMBJo6GOzcFWgbKkIuH5Q=
X-Google-Smtp-Source: AGHT+IHg0bdUMOLMJkdf7cnrJxgciYw1w3GLfn+hwhVjF1OQ/6bETO8Bd3tZdV5PBsXGxq9pzy/8yg==
X-Received: by 2002:a05:6820:555:b0:571:1906:47f0 with SMTP id n21-20020a056820055500b00571190647f0mr4621634ooj.1.1694223356147;
        Fri, 08 Sep 2023 18:35:56 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:3785:ad26:cd88:709])
        by smtp.gmail.com with ESMTPSA id v62-20020a4a5a41000000b005634ef4f1c0sm1301483ooa.31.2023.09.08.18.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 18:35:55 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, m.felsch@pengutronix.de,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] arm64: dts: imx8mp-debix-som-a-bmb: Fix EEPROM #size-cells
Date:   Fri,  8 Sep 2023 22:35:47 -0300
Message-Id: <20230909013547.958134-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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

The mac-address is passed as a subnode of the eeprom and its 'reg'
property describe a range of addresses in the eeprom.

Therefore, #size-cells should be set to 1 instead of 0.

This fixes the following schema warnings:

imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: #size-cells:0:0: 1 was expected
	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: mac-address@0:reg: [[0], [12]] is too long
	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: mac-address@c:reg: [[12], [12]] is too long
	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'mac-address@0', 'mac-address@c' were unexpected)
	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
index 0b0c95432bdc..0afd90224a59 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-som-a-bmb-08.dts
@@ -220,7 +220,7 @@ eeprom@52 {
 		reg = <0x52>;
 		pagesize = <16>;
 		#address-cells = <1>;
-		#size-cells = <0>;
+		#size-cells = <1>;
 
 		/* MACs stored in ASCII */
 		ethmac1: mac-address@0 {
-- 
2.34.1

