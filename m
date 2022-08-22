Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48BF359C1DE
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 16:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235397AbiHVOrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 10:47:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235466AbiHVOpY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 10:45:24 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FC7B248C2
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 07:45:22 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id bs25so13520794wrb.2
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 07:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=IMH0wVoJhc1Ycztouvr0JOiX6tFg+IdkseqQF/l41XU=;
        b=a8LgB6dxvrnNo6HSr4dF5TcaSB3xK2TzxBTQ26T+saIpMMsbc+pnRQmDiKvyCs6fnQ
         e7JYnQJqHdwpHEHIrIhIt9lJgT3lfL6D+bSfTbgooakUDnTJZ+o7wlT6EuAMY7D09Rpm
         70AKRn3UycXyqhN5AHvG/scg9YgbcAsV05Bk0vsx6aVHlQBNanO54Ml1rKIF1RxN5o3t
         h2PbBGmyJAkhITziNuUL8vZFxUShDqZbNG1ENDTaKz3ByPQp5tMv1uyZPhk1TFx5cVaM
         w/MwQPDP5lgtsyHJ+pAiUzI/k2HNoVMFPn9aEA5ymjILZaK7px0bjajdhz6bU8p0oJdG
         R2+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=IMH0wVoJhc1Ycztouvr0JOiX6tFg+IdkseqQF/l41XU=;
        b=NKzgE66cyWxBoUWORfxpULxgNawbTMLdvgUW02DZWxhKdQN3QoU22OcglYSbjjA9UC
         mv+Z+ZNPxRP7Z5z+eOlOAKUtTVSgPAzSOpYqpXtmjomID7ZhO3bbEfPVZuD1QCeusliO
         GeJicnf3+ZQUDpBtO+Qh3vZxokAJyu9T1f19fZ4y/7irY/4LLPMUpeFu4IsbLlj61WiY
         gZjA6ZOv9FND1Po8Gfr40QYwrnADprOaO8DmWsRaNmgUi69kmHOryRdWE1ZBR/xlFTTd
         es5REeexGUaSYThcsKN993J/xmPY2d1OdF+bI+l1TvRXf8x4fg1l82slhwVJRkpzj7B4
         /mog==
X-Gm-Message-State: ACgBeo1ElewoV8KLPxuDx2yjapTLGtwOYO7B0sL/TEeVvCWykFtSqSXD
        XispY87COoLZoho+qvXMU/Bwdg==
X-Google-Smtp-Source: AA6agR4erdnjvw/jkmfls/AyT/KCqbqXNSZqdyKxtQx5jliqXa0V0rwxhFEY6l7D749SDWll+tEa4w==
X-Received: by 2002:a05:6000:104f:b0:225:29be:a39c with SMTP id c15-20020a056000104f00b0022529bea39cmr10779384wrx.641.1661179520706;
        Mon, 22 Aug 2022 07:45:20 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4090:a245:8020:2658:1f7c:362:3e99])
        by smtp.gmail.com with ESMTPSA id z24-20020a1cf418000000b003a5dadcf1a8sm14670935wma.19.2022.08.22.07.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 07:45:20 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v3 0/4] soc: mediatek: MT8365 power support
Date:   Mon, 22 Aug 2022 16:42:59 +0200
Message-Id: <20220822144303.3438467-1-msp@baylibre.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this series contains patches related to the support of mt8365 power
domains. Thanks for your feedback so far.

Best,
Markus

Changes in v3:
- Mainly redesigned WAY_EN patch to be easier to understand
- Rebased onto v6.0-rc1
- Several other stuff that is described in the individual patches

Changes in v2:
- Updated error handling path for scpsys_power_on()
- Minor updates described in each patch

Previous versions:
v1 - https://lore.kernel.org/linux-mediatek/20220530204214.913251-1-fparent@baylibre.com/
v2 - https://lore.kernel.org/linux-mediatek/20220725081853.1636444-1-msp@baylibre.com/

Alexandre Bailon (2):
  soc: mediatek: Add support of WAY_EN operations
  soc: mediatek: add support of MTK_SCPD_STRICT_BUSP cap

Fabien Parent (2):
  dt-bindings: power: Add MT8365 power domains
  soc: mediatek: pm-domains: Add support for MT8365

 .../power/mediatek,power-controller.yaml      |   2 +
 drivers/soc/mediatek/mt8365-pm-domains.h      | 147 +++++++++++++
 drivers/soc/mediatek/mtk-pm-domains.c         | 194 ++++++++++++++----
 drivers/soc/mediatek/mtk-pm-domains.h         |  29 ++-
 .../dt-bindings/power/mediatek,mt8365-power.h |  19 ++
 5 files changed, 346 insertions(+), 45 deletions(-)
 create mode 100644 drivers/soc/mediatek/mt8365-pm-domains.h
 create mode 100644 include/dt-bindings/power/mediatek,mt8365-power.h

-- 
2.37.2

