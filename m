Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BBAE74144D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jun 2023 16:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229832AbjF1OyV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jun 2023 10:54:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229647AbjF1OyU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jun 2023 10:54:20 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 193DC19B4
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 07:54:18 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4fb7589b187so5567897e87.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 07:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1687964056; x=1690556056;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9/0nNN44VNRNUJVhh4K+B/77Q53o4u445deZJq878Zg=;
        b=3U/AqUXHlkLWMESSviAmOFThRvVcswBGYbBOWKK59lj1GZ2VqgQ1+pSZko0dtzN7UP
         Ca7Aio6JPmkKxeQi8G4zYUDlNZmWxxWurWQduxodhFykzHp5qF/t5qpxLP4ZyyZBeyhH
         ZP8RRglbiprZPTTaA4iGl3+yGE9fOZ2dS+Ch4Xm+ysB7yIR8g8dT1BqDqbwjt/9F4BeN
         NDjVPJlnTXwtg2ATTLDUEMiKxFDkDtSOiAo7HkspOVOTz1cLdgZoULtjtI5AEgY7H2Ew
         1Mh6lE0Lgr1B4aNyF8rjQYpzYhA8jD9/McHP9A71ucdr594dMUZQFOrI1aIfs14UKod2
         cxWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687964056; x=1690556056;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9/0nNN44VNRNUJVhh4K+B/77Q53o4u445deZJq878Zg=;
        b=Qo+nA+bIblBdbEtmqTmSubtw+yTt6wd1C6qYsNR+Ge8sACVKNvIVs51Fg5NAHBwQ/b
         GeO7QFnonXPaSxTxsCiHJDAortwEzQMCYUFJ5+cK8R911gLVHdU3kMbeq+IQSQK0CS4j
         yYqlb8hOBhYVkdGTXqM2IM15NZQEPOm/6XbYDEPfN0lm2J+82LrnPniE8hpBHj7qbfcn
         DwPKmaWqzSkJKG1L/qh7YFn75MLN5Hyv55yHvW5cO+HXq4TDQnSjjzlIifGhFXkAxzqn
         4pmtMC2mikNac7GJ3Zahd7BWWc1EvLevEn16yZBY0VGrXWpCfaz3jB2//acE9GWldlmE
         m29g==
X-Gm-Message-State: AC+VfDwODg7XFfxcB8WOP2wGGRBu3pOISjI3p5RFlBMqRwvyIYd/9Y2P
        U/GUdwyzfKtz4wfvR4HqF4++Jg==
X-Google-Smtp-Source: ACHHUZ5hKqR6Qa4F5o02E1EftTHMMD7L0/abbxO4ZsmrimeO6vZ7sL5KrmRVU9LTa27Amjnnr3F8Bw==
X-Received: by 2002:a19:431c:0:b0:4f9:58bd:9e5a with SMTP id q28-20020a19431c000000b004f958bd9e5amr10705065lfa.27.1687964056264;
        Wed, 28 Jun 2023 07:54:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id k16-20020a05600c0b5000b003fba6709c68sm4846278wmr.47.2023.06.28.07.54.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jun 2023 07:54:15 -0700 (PDT)
From:   Julien Stephan <jstephan@baylibre.com>
Cc:     Julien Stephan <jstephan@baylibre.com>,
        Andy Hsieh <andy.hsieh@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Conor Dooley <conor+dt@kernel.org>,
        daoyuan huang <daoyuan.huang@mediatek.com>,
        devicetree@vger.kernel.org,
        Florian Sylvestre <fsylvestre@baylibre.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
        Louis Kuo <louis.kuo@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Moudy Ho <moudy.ho@mediatek.com>,
        Phi-bang Nguyen <pnguyen@baylibre.com>,
        Ping-Hsun Wu <ping-hsun.wu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sumanth Korikkar <sumanthk@linux.ibm.com>,
        Vasily Gorbik <gor@linux.ibm.com>
Subject: [PATCH 0/4] Add Mediatek ISP3.0
Date:   Wed, 28 Jun 2023 16:52:51 +0200
Message-ID: <20230628145412.1610260-1-jstephan@baylibre.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series add the support of the Mediatek ISP3.0 found on some
Mediatek SoCs such as the mt8365. The driver is divided into 2 parts:

* SENINF: the sensor interface
* CAMSV: this driver provides a path to bypass the SoC ISP so that image
  data coming from the SENINF can go directly into memory without any
  image processing. This allows the use of an external ISP or camera
  sensor directly.

The SENINF has several inputs connected to phys. The PHY module is
available here: https://lore.kernel.org/all/20230620121928.1231745-1-jstephan@baylibre.com/

The SENINF driver is based on previous work done by Louis Kuo available
as an RFC here: https://lore.kernel.org/all/20200708104023.3225-1-louis.kuo@mediatek.com/

Louis Kuo (2):
  dt-bindings: media: add mediatek ISP3.0 sensor interface
  media: platform: mediatek: isp_30: add mediatek ISP3.0 sensor
    interface

Phi-bang Nguyen (2):
  dt-bindings: media: add mediatek ISP3.0 camsv
  media: platform: mediatek: isp_30: add mediatek ISP3.0 camsv

 .../bindings/media/mediatek,mt8365-camsv.yaml |  113 ++
 .../media/mediatek,mt8365-seninf.yaml         |  301 ++++
 MAINTAINERS                                   |   10 +
 drivers/media/platform/mediatek/Kconfig       |    1 +
 drivers/media/platform/mediatek/Makefile      |    1 +
 drivers/media/platform/mediatek/isp/Kconfig   |    2 +
 drivers/media/platform/mediatek/isp/Makefile  |    3 +
 .../platform/mediatek/isp/isp_30/Kconfig      |   35 +
 .../platform/mediatek/isp/isp_30/Makefile     |    4 +
 .../mediatek/isp/isp_30/camsv/Makefile        |    7 +
 .../mediatek/isp/isp_30/camsv/mtk_camsv.c     |  334 ++++
 .../mediatek/isp/isp_30/camsv/mtk_camsv.h     |  200 +++
 .../isp/isp_30/camsv/mtk_camsv30_hw.c         |  474 +++++
 .../isp/isp_30/camsv/mtk_camsv30_regs.h       |   59 +
 .../isp/isp_30/camsv/mtk_camsv_video.c        |  781 +++++++++
 .../mediatek/isp/isp_30/seninf/Makefile       |    5 +
 .../mediatek/isp/isp_30/seninf/mtk_seninf.c   | 1559 +++++++++++++++++
 .../isp/isp_30/seninf/mtk_seninf_reg.h        |   99 ++
 18 files changed, 3988 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8365-camsv.yaml
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8365-seninf.yaml
 create mode 100644 drivers/media/platform/mediatek/isp/Kconfig
 create mode 100644 drivers/media/platform/mediatek/isp/Makefile
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/Kconfig
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/Makefile
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/camsv/Makefile
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/camsv/mtk_camsv.c
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/camsv/mtk_camsv.h
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/camsv/mtk_camsv30_hw.c
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/camsv/mtk_camsv30_regs.h
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/camsv/mtk_camsv_video.c
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/seninf/Makefile
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/seninf/mtk_seninf.c
 create mode 100644 drivers/media/platform/mediatek/isp/isp_30/seninf/mtk_seninf_reg.h

--
2.41.0
