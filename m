Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4739978B727
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:20:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231158AbjH1SUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:20:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232950AbjH1STz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:19:55 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E275184
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:53 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1c4cd0f6cb2so1937024fac.0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693246792; x=1693851592; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uPIXJhPu2X8m2txJVpiaWX2oUV0sHJhqCmozZ4S/pdU=;
        b=FTXyfL5kGmGrSNxQnfN2YDFm+6BZhoJeNqQjaKiVC0Iuftws08gdo76Bg0KVcUPkJS
         oEDjIONLKPhljDEFxsprs1ihiZ6om9+Iz6WYOest1vELFjVe/6pZqp7dgEZpmDVqKVr3
         Iav9Cr8dlJm0/KehLfcy6c7IxCY5gJXFAVTKrZScxndwjdx5AmvsBqqGdBz6QcCEQqoZ
         91nyAESKW4za/adUKQsOF6KuvKePdUPpPiTMgLhGj2Ri1F0NcPipYbwiiLUOu27nwIAn
         /YtLH1FgdZQVFfnHOQ8Tz5D6vV67ACo0lDPNs1iUeELmS8ZOllz2pV7xnZOXrDdDEwWl
         eWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693246792; x=1693851592;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uPIXJhPu2X8m2txJVpiaWX2oUV0sHJhqCmozZ4S/pdU=;
        b=iSYYVoesKa4dDAN4Emi3YViHRjK4ibfIvuxnQRzvDolCw/TGEsy+Qpfb2P3DQD/3jw
         eYmvmDeqHmctg6RwtMWQYVIY3icQr2RAsu6b5KpblyrHqaS306K7uaCFC63fK35i/enl
         ZOpCDZEIt52p4TSGbqniEtKv3h1jG26RYVxaf7Yb0MBbcRGPWhPJwOfdDkwkQRV7nQWF
         8Z3GM1TfZA0okQYAmogLCq5z7wBLD5s2yYwUrrRJEDSGLR0tumBtlJjibQhnNhKZoGNf
         kxIyVTL4HGyrxR31G3+CMSijHI4DkrApHfYEjeCosuNAaGUO2eGxSqZehytxXlsjVArb
         8j6g==
X-Gm-Message-State: AOJu0YxM09og6GWE1uuzJ80xiq5nTM4GDcKr+m0iJqYw1er4uDJD0++O
        w5DmTQ7LHDbaellxGMj7EsA=
X-Google-Smtp-Source: AGHT+IEbZDjV/2eRM8CJYeGP2th9r2jDnUcAK42bxqYB+XGxVoi/KNSZvdqWSYc/4pBb/MM5iCGdOw==
X-Received: by 2002:a05:6870:e747:b0:1c4:d01e:48b0 with SMTP id t7-20020a056870e74700b001c4d01e48b0mr258400oak.6.1693246791635;
        Mon, 28 Aug 2023 11:19:51 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a9d620a000000b006b99f66444bsm3695927otj.71.2023.08.28.11.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 11:19:51 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, airlied@gmail.com,
        andre.przywara@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 0/8] Add Anbernic RG-Nano
Date:   Mon, 28 Aug 2023 13:19:33 -0500
Message-Id: <20230828181941.1609894-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-Nano handheld gaming device

Changes since V3:
 - Added PHY to the OHCI and EHCI nodes. Note that the PHY driver
   currently forces the PHY to host mode always; a correction to
   the PHY driver or removal of the phy values from the OHCI and EHCI
   nodes are necessary to get otg mode working properly.
 - Disabled SoC RTC in favor of external clock. The SoC RTC is not
   set up correctly in hardware and runs fast, whereas the external RTC
   keeps accurate time. This matches the BSP.
 - Added labels to GPIO pins to aid in readability.

Changes since V2:
 - Add display support.
 - Add USB host support.
 - Removed CPU frequency and voltage parameters, as CPU regulator may
   be tied into additional areas that need further testing.
 - Added regulator names back, as they appear to have been accidentally
   dropped in v2.
 - Updated notes to denote all hardware tested and working.

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

Chris Morgan (8):
  dt-bindings: vendor-prefixes: document Saef Technology
  dt-bindings: display: panel: mipi-dbi-spi: add Saef  SF-TC154B
  arm: dts: sun8i: V3s: Add pinctrl for pwm
  dt-bindings: usb: Add V3s compatible string for EHCI
  dt-bindings: usb: Add V3s compatible string for OHCI
  ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s dts
  dt-bindings: arm: sunxi: add Anbernic RG-Nano
  ARM: dts: sunxi: add support for Anbernic RG-Nano

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../display/panel/panel-mipi-dbi-spi.yaml     |   1 +
 .../devicetree/bindings/usb/generic-ehci.yaml |   1 +
 .../devicetree/bindings/usb/generic-ohci.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/allwinner/Makefile          |   1 +
 .../allwinner/sun8i-v3s-anbernic-rg-nano.dts  | 284 ++++++++++++++++++
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi    |  35 +++
 8 files changed, 330 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-v3s-anbernic-rg-nano.dts

-- 
2.34.1

