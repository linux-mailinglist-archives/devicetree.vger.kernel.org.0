Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F3A2781725
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 05:22:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244699AbjHSDWO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 23:22:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245728AbjHSDVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 23:21:40 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB264683
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 20:21:20 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1c0fa9dd74fso914521fac.3
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 20:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692415274; x=1693020074;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0N8mpoFGrtc++1hccbmV6ouGcoHkBTOt7nhNexKk1uY=;
        b=huvj8t+Wq7I18MAsbdZZFM/WebSvwjQPXDlnoF86knXhqzpqcfzrOtATjLhr1zartq
         Oo6BVIXhSH8nxKn3JnY8/zEevc1d1PiZvCcNqpuGVX6LidwDZrDBLSdm2x9SPzDbfb3I
         SbyVPiEuJu2c5qmRHmLlihRIsR+krgZKhPTOinesGQ0Cu86VJCL5a04VyfMQbutpMJeU
         cuqoABzQexwGzNTcJAP/8jlvwEoHzilF34truIAcmaC2KsX5kyMxPeKIdo6YNFb407Hv
         F2Nq25DHxmuuh3p1kKeA+qbv4ZkrGp7VZru3Ls/iWMhx7mdl81pWNKyLJcklMwtvR9+V
         giuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415274; x=1693020074;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0N8mpoFGrtc++1hccbmV6ouGcoHkBTOt7nhNexKk1uY=;
        b=PP4VKoUXS6hseODkm9zlyXuZyGSl9YXTnebslKAlXPYkowWEoiMWjUHhk+lfKBcqsa
         3JKR2PGRe7wQMsVv0aspaOVcGgujnsvnxtI8PthOcNhHvqWZNuFn/AK1SHLYMQJdOcAT
         qV4Su2mTGDPnJVR/j9wAM+1x5VyWLJxyKSObouca54k9xDKgB+vaTCIVXitW+2z/yNsX
         pgNEH32yua4kvFxTeQZ95HxPhmZCY3jGvd2fs1v6ID0nq0CxMquEnG0dCiCL3GaIl59d
         oYSIg8Ex5TVTsjUsPhmIb9KuRyQVkz0VVZRxdhA7MeRT8n4XiG69um2+dzDH3gakBYj8
         jSYQ==
X-Gm-Message-State: AOJu0Yyo6Dd0LU2IKwenUUxFkGD0PZ3AaYBxJ44f/YIFPqM9t3vSM3OB
        oELRp/imPYXReitBI7XpyGc=
X-Google-Smtp-Source: AGHT+IGssFU1yymib3R+VDHnmeaA0HJVAii9n5zn0OhwL13HkIvfQAmzXI4kUFQN3/CMCQfVg1eUsA==
X-Received: by 2002:a05:6871:68e:b0:1b0:2f63:4ff6 with SMTP id l14-20020a056871068e00b001b02f634ff6mr1550300oao.1.1692415273939;
        Fri, 18 Aug 2023 20:21:13 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id ch16-20020a056871c41000b001c02f12abd0sm1728265oac.38.2023.08.18.20.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:21:13 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, me@crly.cz,
        uwu@icenowy.me, samuel@sholland.org, jernej.skrabec@gmail.com,
        wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 0/4] Add Anbernic RG-Nano
Date:   Fri, 18 Aug 2023 22:21:01 -0500
Message-Id: <20230819032105.67978-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-Nano handheld gaming device

Changes since V1:
 - Added additional pwm pin configs to sun8i-v3s.dtsi and removed
   default config for pwm0 in lieu of defining it for each board.
 - Noted in patch notes that additional hardware of UART debug port,
   USB port (in gadget mode) also work, and that USB host mode does
   not work.
 - Identified GPIO responsible for enabling external speaker amplifier
   and defined it, allowing onboard audio to work.
 - Removed ac_power_supply node.
 - Set regulator min and max values to the same value as defined in the
   schematics.
 - Removed definition for reg_ldo1. This regulator is hardware
   configured so the value did not affect anything, however the driver
   must be updated to support the correct value of 3.3v in this case.
 - Removed usb0_id_det-gpios as I cannot confirm these are correct.

Chris Morgan (4):
  ARM: dts: sun8i: V3: add alias to cpu node
  arm: dts: sun8i: V3s: Add pinctrl for pwm
  dt-bindings: arm: sunxi: add Anbernic RG-Nano
  ARM: dts: sunxi: add support for Anbernic RG-Nano

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 arch/arm/boot/dts/allwinner/Makefile          |   1 +
 .../allwinner/sun8i-v3s-anbernic-rg-nano.dts  | 219 ++++++++++++++++++
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi    |  14 +-
 4 files changed, 238 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts

-- 
2.34.1

