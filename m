Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1421A5EBCBA
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 10:07:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231716AbiI0IHn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 04:07:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229982AbiI0IH2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 04:07:28 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47F7A10239C
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 01:01:53 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id o20-20020a05600c4fd400b003b4a516c479so4975113wmq.1
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 01:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Lbh/c4vCkGtXonzdpXdp4XQ0sSxf7/y8kx7FY8V2Teo=;
        b=BPWFqeFE/urWJLLIaffyOd62/9aionydmnuP+9XMmZJffpqDs6QmZ/24AkuJ3D7N84
         ByyBfct8LiRIIoyZDV3HMUi2jYHyTutDESS42723sHZikNFRK4kLjyTW/USb2BUiQ62r
         DZTlUdoqciHoSoHPfhYhnuY1IOWe2MO+E9yVo8TRCi7jNRkAgWWpDJ0pogSk9WnIPWa1
         P0iLnnUs45yJhQOHL96REtFFMBQ1EkGWklMdv6M8YzSldMPZ6WWoUbFiM+BcJyE74VrK
         qLR8yhFB4nqn/2R2RSy2y/GnCP3+Yl5J9YPCOuS85oryBpOs39PYU5ik7ebJy8oeIWOr
         bd2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Lbh/c4vCkGtXonzdpXdp4XQ0sSxf7/y8kx7FY8V2Teo=;
        b=foND+ISfwxPqu9+jy5HJnsDE1Rz+Xgc/ws53N7PZD0AEQ028RHZCWOl4E0o9rbXAQX
         mHSTOZCNU+1nxlv033yWyo7i3H8Ttw0bN93/Iex/K46pXvhOTRB+OkxTyGW+NacE2ivb
         n5RbAtRCyXCBfbZQvYaepSYVC5l/Q335Jd2xHZyO5NdRH9etdWqhIMXfM68KpBe7MJyO
         w8tJAGcH7a6Qg8sPLgHp/rgJXW0GjZahCO9hP0TLcNejnn5DeRD2ioEOCgwVh0F7drhQ
         2NC0coVynqFLXDQxwLME/L6yh47tqNeBzT9JxFcA89YztV7zWtKxtFJN/xuffVkIF70r
         QmAQ==
X-Gm-Message-State: ACrzQf1dpLOE8DyZ6rTq3J5qGkjjSDjZAX9bBdvnM0y82r98Zhn4QkGG
        qcqyqhDJsULapXk/yzVW/QmWDg==
X-Google-Smtp-Source: AMsMyM4F+y88kC71sg139FfgxCHot0WplCztNaRCYtlq/L2u4WA2oLX8IoD9BEP1Q6eR5bWasJoqmg==
X-Received: by 2002:a7b:ce08:0:b0:3b4:ff9b:3d89 with SMTP id m8-20020a7bce08000000b003b4ff9b3d89mr1639769wmc.31.1664265666615;
        Tue, 27 Sep 2022 01:01:06 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p4-20020a1c5444000000b003a5c7a942edsm13357199wmi.28.2022.09.27.01.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 01:01:05 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, davem@davemloft.net, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH RFT 0/5] crypto: rockchip: add crypto offloader V2
Date:   Tue, 27 Sep 2022 08:00:43 +0000
Message-Id: <20220927080048.3151911-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello

Rockchip rk3568 and rk3588 have a common crypto offloader IP different
than rk3228 one.
I started to work the driver for this IP on a rk3588 based board, but this SoC
is still not upstream.
So it is why I send this serie asking for test since I own no rk3568 and
I need to be sure datasheet is right.

Note: I keeped all rk3588 reference intentionaly, but probably it will need to
be removed until this SoC was upstream.

Regards

Corentin Labbe (5):
  crypto: rockchip: move kconfig to its dedicated directory
  dt-bindings: crypto: add support for rockchip,crypto-rk3588
  MAINTAINERS: add new dt-binding doc to the right entry
  crypto: rockchip: support the new crypto IP for rk3568/rk3588
  ARM64: dts: rk3568: add crypto node

 .../crypto/rockchip,rk3588-crypto.yaml        |  71 ++
 MAINTAINERS                                   |   1 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  14 +
 drivers/crypto/Kconfig                        |  32 +-
 drivers/crypto/Makefile                       |   2 +-
 drivers/crypto/rockchip/Kconfig               |  56 ++
 drivers/crypto/rockchip/Makefile              |   5 +
 drivers/crypto/rockchip/rk3588_crypto.c       | 646 ++++++++++++++++++
 drivers/crypto/rockchip/rk3588_crypto.h       | 221 ++++++
 drivers/crypto/rockchip/rk3588_crypto_ahash.c | 346 ++++++++++
 .../crypto/rockchip/rk3588_crypto_skcipher.c  | 340 +++++++++
 11 files changed, 1703 insertions(+), 31 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
 create mode 100644 drivers/crypto/rockchip/Kconfig
 create mode 100644 drivers/crypto/rockchip/rk3588_crypto.c
 create mode 100644 drivers/crypto/rockchip/rk3588_crypto.h
 create mode 100644 drivers/crypto/rockchip/rk3588_crypto_ahash.c
 create mode 100644 drivers/crypto/rockchip/rk3588_crypto_skcipher.c

-- 
2.35.1

