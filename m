Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 003674C78F2
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 20:49:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbiB1Tqy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 14:46:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiB1Tqx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 14:46:53 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 403801FC2DB
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 11:45:39 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id i66so103641wma.5
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 11:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Jtav+ye5zt0JLObFlHB/P1ii2kpmM4YgE+fQMwFycY=;
        b=CNNLF4MgGchbX1I+o+yz78iK3EtrZSEGilx7b+5yATKdv5i5cZER41P0/dGoVDR8mQ
         fTe3qip40qKi7OwttqXMqJ7Cp5Sgu/sYYHARdf7AgJzA1hCAADBkMYFnmzHo1qO0mikl
         vyj2eERIXqi7TP4cE+FvV06xleJBlcz4yVJWPYE1qCJDDtR9tSTsy1XT1iNNQ7hD4RI/
         VAp1cpltliP6jmAkFxfDrVbVt2TyQ8hXwDDdkXI1x+WYrsEfabJTNtJp3HjVmUiZwz2f
         rO3Z9sJar52q22MXGp1BCeV/pMGqAb7kb7Yv9KgN+6gtbN1ZjdR2nGNy83cuwYgkwCEP
         hoGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Jtav+ye5zt0JLObFlHB/P1ii2kpmM4YgE+fQMwFycY=;
        b=JVPeVTMjgue0zrM+lz8Q2Z/RinXGocj5KVLYyzamawzasCS7C+vYLEqqHzbGMlMX5G
         XTT4QaxsdmRTJ8Ak4EkhZdvh5BG0LHLefySvxSnJt19pw6KNs8lMp/X+ujEp4FhJ7RPQ
         XgfUvvegMw6jKhVP0afhTHf4/AXSvLSSbBxkftgyFDaXOWK5pQTZtzOS9THDSYD0ShX/
         V64F8AgzfJOdB50AcZQTUO7nto9Qii7n66sXqvYUwZbp03evC0SsFn5QCCpgJj0ga05s
         fQbgZ2ptOwBI4dQ4ftnMXkmiWpycGX2w484GhCvSPUAZe2cejNAIQBWzu1jeOgCl58aO
         RYQQ==
X-Gm-Message-State: AOAM5317c2PPdQdZJMXiqF0Z2dMOThW6IexVYo/VieWARObQDtCjdC2K
        U/Y4iEDt1h7zST3+Vn+nNFPHrQ==
X-Google-Smtp-Source: ABdhPJwyJWqzDklkz7cVxk89jp/moqyfQCBYnpDhUWCT5StXL++rHv+NFwmzQLD2FTRIqS2G8tWanA==
X-Received: by 2002:a1c:f003:0:b0:381:17f5:21b8 with SMTP id a3-20020a1cf003000000b0038117f521b8mr14441311wmb.158.1646077243764;
        Mon, 28 Feb 2022 11:40:43 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 11:40:43 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 00/16] crypto: rockchip: permit to pass self-tests
Date:   Mon, 28 Feb 2022 19:40:21 +0000
Message-Id: <20220228194037.1600509-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello

The rockchip crypto driver is broken and do not pass self-tests.
This serie's goal is to permit to become usable and pass self-tests.

This whole serie is tested on a rk3328-rock64 with selftests (with
CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y)

Regards

Corentin Labbe (16):
  crypto: rockchip: use dev_err for error message about interrupt
  crypto: rockchip: do not use uninit variable
  crypto: rockchip: do not do custom power management
  crypto: rockchip: fix privete/private typo
  crypto: rockchip: do not store mode globally
  crypto: rockchip: add fallback for cipher
  crypto: rockchip: add fallback for ahash
  crypto: rockchip: better handle cipher key
  crypto: rockchip: remove non-aligned handling
  crypto: rockchip: rework by using crypto_engine
  crypto: rockhip: do not handle dma clock
  ARM: dts: rk3288: crypto do not need dma clock
  crypto: rockchip: rewrite type
  crypto: rockchip: add debugfs
  arm64: dts: rockchip: add rk3328 crypto node
  crypto: rockchip: add myself as maintainer

 MAINTAINERS                                   |   6 +
 arch/arm/boot/dts/rk3288.dtsi                 |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  12 +
 drivers/crypto/Kconfig                        |  10 +
 drivers/crypto/rockchip/rk3288_crypto.c       | 283 +++--------
 drivers/crypto/rockchip/rk3288_crypto.h       |  68 ++-
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 214 +++++----
 .../crypto/rockchip/rk3288_crypto_skcipher.c  | 449 +++++++++++-------
 8 files changed, 533 insertions(+), 513 deletions(-)

-- 
2.34.1

