Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9056C5B6262
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 22:56:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229783AbiILU4O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 16:56:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiILU4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 16:56:13 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 347D5476C2
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 13:56:12 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-1278a61bd57so26669870fac.7
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 13:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=3lZi4SDRtUkwdUacRohNSWHiGSF0fs1fzyFC2461Edc=;
        b=WkXY3zxpNM4pZy+Rn+RzVt43wK6J5gqw6BMBNvqgrZUjxGYJmbxmJRFlo0nCbdhmkn
         iy6Q8dnjftuV+6UFEKWFOcACpdeuyaYIT02j940idIOJaKGmzM9TLauJ9N1iFlYQZWv0
         g+OMbEm/b8vSobE1Av2DJl+6G9RuGOuXFLpYALCwJjtRTuBEL/CHz2iF/DEj1P/Pq4/S
         2WXzxjcXKknl7Wut1+bajlf2XpOpdb/32iJEnGPPUHrUcI6YQ2IeDjlk9OmBgqbZUVze
         2ya979RP2ZiBsqrWo0I54aKQuQwRyj/0N4zl1/fNBZP84z20KPxc2YrB5313MPiuQKvt
         5rLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=3lZi4SDRtUkwdUacRohNSWHiGSF0fs1fzyFC2461Edc=;
        b=uGl/nEpxcbi4gdFMvrPssOq2dLNLJjMJTCAxwzesj2l/E/f8ZE3UJjaIpCy0jimVoI
         kqEwqI/wH6zPocpCY+hkdaCZW+ru34yGMpEljYgawUXpsvX+Gm+PvS/ENNNHX8Qb6Fh2
         OyfnOaajZJ6A9BkRtIlGBBtw4qklv6UhEKGpmx0r+uKcNh9waW95E4H/4sOz30WhSKT3
         qL/4sm6XZkwvRxKGau9D9msz93swetRPUz742q2ZbA/RMO2eWtDLylnpxDviJ0pxYlLJ
         ivgWebIFsHNa+KqzeBvH8YfI9+nAtZChzMqyllsoTHa4UENvsk2X/frKt+ZJtew/l+nz
         UgLQ==
X-Gm-Message-State: ACgBeo33p9CmO0cbbqWZSo8A/gzv5sDTJIDTwbye+klqLuU2yyRU6ZhX
        pBeoWjmUxc3VXQ0TTYWnxHk=
X-Google-Smtp-Source: AA6agR4bY4/Q+A/1klG5YdpGl9FPofNYsOkRWsxrCOPpa+0xLycNpXAH9Bs6WkOmFJcsQZBAl52tmA==
X-Received: by 2002:a05:6870:c68a:b0:127:a3f9:2c16 with SMTP id cv10-20020a056870c68a00b00127a3f92c16mr119149oab.246.1663016171472;
        Mon, 12 Sep 2022 13:56:11 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id i21-20020a9d68d5000000b00639749ef262sm3385355oto.9.2022.09.12.13.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 13:56:11 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        cl@rock-chips.com, s.hauer@pengutronix.de,
        frattaroli.nicolas@gmail.com, michael.riesch@wolfvision.net,
        pgwipeout@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        vkoul@kernel.org, kishon@ti.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3 0/3] rockchip-dsi for rk3568
Date:   Mon, 12 Sep 2022 15:56:04 -0500
Message-Id: <20220912205607.5969-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
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

This series adds support for the dsi and dphy controllers on the
Rockchip RK3568.

Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.

Changes since V2:
 - Removed dsi controller patches, as those have been merged upstream.
 - Removed notes about rolling back clock drivers. If I set the parent
   clock of the VOP port I'm using to VPLL and set the clock rate of
   PLL_VPLL to 500MHz this series works correctly for my panels without
   rolling anything back (per Heiko this is the correct way).
 - Added additional details about refactoring DPHY driver to add
   2.5GHz for rk356x. All other devices still have a max speed of 1GHz.
 - Notified Heiko that the BIT(5) for both PLL_POST_DIV_ENABLE and
   PLL_POST_DIV_ENABLE_MASK is deliberate, because of how the
   phy_update_bits() works.

Changes since RFCv1:
 - Identified cause of image shift (clock changes).
 - Noted that driver works now.
 - Added devicetree nodes for rk356x.dtsi.

Chris Morgan (3):
  dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
  phy/rockchip: inno-dsidphy: Add support for rk3568
  arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x

 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
 3 files changed, 231 insertions(+), 46 deletions(-)

-- 
2.25.1

