Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C713270E76D
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 23:38:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238618AbjEWVif (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 17:38:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233758AbjEWVid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 17:38:33 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABAE8FA
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:32 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3909756b8b1so134188b6e.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877912; x=1687469912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=arqptb0OK5jJvfCDv3LmhvqgIyzYXs27jb/mT9pkapg=;
        b=Opz4IE1pgS3b+YNtQXnRxbTZ9Xc9wk5U+dXsSL5bASel6njkJGJD1McpafVnUDHNTX
         gAM4ZPUaaJCttEi/15Ylm6U6nsOFg4s8BYTdHzPAFYp4uuIrXYXUKZU70TgAy1/4OB07
         SvEvCUEUqfEyGxcdtHbzXOUPPhkXt9soUGYhOpJyWbrhhrl70Blyek6cf+IWtLZHMhld
         TRoKc6pH4+b3eMrHDHH30ZCzpOHEcv4oc7nBKHnR5TEvYRNIvGV+/Cdibx61eLZlKtSt
         dyn8dE4RbO6sxAfKUBsUrhkF6LUmIQdGuoI04kAsnDoZK/y1p5DtIzw6hZD4bagNJSs5
         BZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877912; x=1687469912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=arqptb0OK5jJvfCDv3LmhvqgIyzYXs27jb/mT9pkapg=;
        b=MdK2XPEpeke+x4IQomIehgDiYysDJM145tgaaUlKLNlDbCCgh7vuSdplx1aLF+UFr3
         mVWuPcOyORc74rztTgWmauBb+qUW08JI1tf53AuX6RHARy280Y/bzsSywh8VcfSAPWmF
         CkMt7WVEHqs92sG/ifTxXD+W6pnxwDFqUQyDn+cKsEAD+8h9SWe1cLMY1wvV+OQpd2h5
         51qG5Ebo3oaXHV4Qznx3WZuB4eYQH2oaZY8KsPt6HMLZQV3o33kfNuMIkbeq0JqReWqo
         85G+cYGtqIFd/kNluziXYo7BWdNt0mwE9QTiaUj3pdQdvAD5x3NdIvEGyYrmOHVxhz8O
         F2mA==
X-Gm-Message-State: AC+VfDwjKcLYbRwQjCHmZ063wajR2o0xRcP+gNcar7Xc2GErjxceULky
        /fhw00axI5L7UjC7BPMHLueqq/fQ08JPRA==
X-Google-Smtp-Source: ACHHUZ4NZdtIsaO5n44Zn7IKr1DzCMLgEaBZw8ilmvOfkDar/T7XjSOMt5GKhFnsBoinBC59QI98xQ==
X-Received: by 2002:a05:6808:216:b0:396:42a9:9877 with SMTP id l22-20020a056808021600b0039642a99877mr7898056oie.37.1684877911885;
        Tue, 23 May 2023 14:38:31 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:31 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        zyw@rock-chips.com, sebastian.reichel@collabora.com,
        andyshrk@163.com, jagan@amarulasolutions.com, broonie@kernel.org,
        perex@perex.cz, tiwai@suse.com, lgirdwood@gmail.com,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/6] Add Support for RK3588s Indiedroid Nova
Date:   Tue, 23 May 2023 16:38:19 -0500
Message-Id: <20230523213825.120077-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the RK3588s based Indiedroid Nova. Note that this
series is dependent on regulator support for the RK806 being
upstreamed.

https://lore.kernel.org/linux-rockchip/20230515152044.GT10825@google.com/

Chris Morgan (6):
  ASoC: es8328: Enabling support for 12Mhz sysclk
  arm64: dts: rockchip: add default pinctrl for rk3588 emmc
  arm64: dts: rockchip: Add sdio node to rk3588
  dt-bindings: vendor-prefixes: add Indiedroid
  dt-bindings: arm: rockchip: Add Indiedroid Nova
  arm64: dts: rockchip: Add Indiedroid Nova board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 761 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  18 +
 sound/soc/codecs/es8328.c                     |  17 +
 6 files changed, 804 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts

-- 
2.34.1

