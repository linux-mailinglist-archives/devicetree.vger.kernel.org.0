Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AD0E428A1B
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 11:47:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235522AbhJKJtH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 05:49:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235709AbhJKJsb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 05:48:31 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA073C061745
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:31 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id r10so54222052wra.12
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eSc57xuE9GFmk4sxP/W9phMrvO3YpoWm1qxIDAy9GJs=;
        b=aLMYJJl2jay10utJpCqgLmwjoJoHF2aWNffZ8CcQdQbjpmToq1xKpzaix08JuBwetA
         n15W8fKyqZhVG3QRv36cWd8qXOPo//x+dDwbY+YzcxYCdcJsOsuFtJgy1hPxgDVfs5Lg
         V0hqggcuQ08di7ZkzkVpudUVokVEYmNKzx0gk0mfEV7PxTFUP4AzPeEUlHyarb1QJnpu
         vV7FeRP0kJ49E8L0rXCaAuc4O2MGCjQqvqB/R1iraABe8wTaMiQW5Rkcqc5Ip1O3Rp2+
         GZeyaaTeyhQFIoZhM/jTR5qfghgQjGLsZoglkhL6NIxAWBfVkGcSfHgWrnXUhriYYgqL
         klbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eSc57xuE9GFmk4sxP/W9phMrvO3YpoWm1qxIDAy9GJs=;
        b=Qn6/z6DM7o8dMq/BLlfYwcvAs1QJzAwMnm2EdrIIihkNS0zCyyWG6KUzI2tCO9gXdk
         6rvMon5WI6PgSyzWS/rsOdecYCmPdzVQITyVo0CRS9pxSV44Ijh3xzNlehDaCGOBIJav
         lL0V7V+4IYqXDW0RlObifdDFXIivykEDSnsNbcEpyfsKQyGMxc1HUq43314yNoWRz9sK
         1HXq1jJCbCDhTN00qvRExtRSnWrF5Zf8GLLCvqOJJGzgEjJ8wcKcwm2dp8DpLOZUdm9+
         g6Zx6qTEevXqb7jrixY+2FlMtTS6hyPgTDmGbmFPGzQV+izFqYVnXMZ3bBoCOMKLKDQ+
         2jfQ==
X-Gm-Message-State: AOAM530O9iO375ibLa1i/JYNsYtWEfmo/oXviRqpZxBZUSr2vE4kfP7o
        uCyJRhNd8FTtafZnMdNIJqSBLg==
X-Google-Smtp-Source: ABdhPJwkrZ9coXI9B2VtoJT63Rqn0d6J1tuxlDndRciOkM9VYSuyidpeDF3QUBhFQb6wD8MsN7tNdQ==
X-Received: by 2002:a7b:cc0d:: with SMTP id f13mr18750694wmh.85.1633945590291;
        Mon, 11 Oct 2021 02:46:30 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id o8sm21349291wme.38.2021.10.11.02.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 02:46:29 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 0/7] drm/mediatek: Add mt8195 DisplayPort driver
Date:   Mon, 11 Oct 2021 11:46:17 +0200
Message-Id: <20211011094624.3416029-1-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi everyone,

this series is built around the DisplayPort driver. The dpi/dpintf
driver and the added helper functions are required for the DisplayPort
driver to work.

In v4 I split the phy driver and dp driver into two patches as
requested. Also I added an entry for phy-mtk-dp in MAINTAINERS and made
tiny fixups to the binding files.

The series is based on v5.15-rc1 but also applies cleanly on linux-next.
Note: This patch series is currently tested on v5.10 and I am still
working on testing it on v5.15.

Thanks in advance for any feedback and comments.

Best,
Markus


Functional dependencies are:
- Add Mediatek Soc DRM (vdosys0) support for mt8195
  https://lore.kernel.org/linux-mediatek/20210921155218.10387-1-jason-jh.lin@mediatek.com/
- Add MediaTek SoC DRM (vdosys1) support for mt8195
  https://lore.kernel.org/linux-mediatek/20211004062140.29803-1-nancy.lin@mediatek.com/

Older revisions:
RFC - https://lore.kernel.org/linux-mediatek/20210816192523.1739365-1-msp@baylibre.com/
v1  - https://lore.kernel.org/linux-mediatek/20210906193529.718845-1-msp@baylibre.com/
v2  - https://lore.kernel.org/linux-mediatek/20210920084424.231825-1-msp@baylibre.com/
v3  - https://lore.kernel.org/linux-mediatek/20211001094443.2770169-1-msp@baylibre.com/


Markus Schneider-Pargmann (7):
  dt-bindings: mediatek,dpintf: Add DP_INTF binding
  dt-bindings: mediatek,dp: Add Display Port binding
  drm/edid: Add cea_sad helpers for freq/length
  video/hdmi: Add audio_infoframe packing for DP
  drm/mediatek: dpi: Add dpintf support
  phy: phy-mtk-dp: Add driver for DP phy
  drm/mediatek: Add mt8195 DisplayPort driver


 .../display/mediatek/mediatek,dp.yaml         |   89 +
 .../display/mediatek/mediatek,dpintf.yaml     |   86 +
 MAINTAINERS                                   |    1 +
 drivers/gpu/drm/drm_edid.c                    |   74 +
 drivers/gpu/drm/mediatek/Kconfig              |    7 +
 drivers/gpu/drm/mediatek/Makefile             |    2 +
 drivers/gpu/drm/mediatek/mtk_dp.c             | 2825 +++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_dp_reg.h         |  535 ++++
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  248 +-
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h       |   12 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   |    4 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |    1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |    6 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |    1 +
 drivers/phy/mediatek/Kconfig                  |    8 +
 drivers/phy/mediatek/Makefile                 |    1 +
 drivers/phy/mediatek/phy-mtk-dp.c             |  218 ++
 drivers/video/hdmi.c                          |   83 +-
 include/drm/drm_dp_helper.h                   |    2 +
 include/drm/drm_edid.h                        |   18 +-
 include/linux/hdmi.h                          |    7 +-
 include/linux/soc/mediatek/mtk-mmsys.h        |    2 +
 22 files changed, 4156 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp_reg.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-dp.c

-- 
2.33.0

