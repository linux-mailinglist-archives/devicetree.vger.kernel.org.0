Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2837435DDE
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 11:27:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231321AbhJUJ3n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 05:29:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231320AbhJUJ3m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 05:29:42 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCAC3C06161C
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 02:27:26 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id i12so1072185wrb.7
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 02:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DZYjp3Dh8hYAEBhaoFo5fj7lc6MgCHR723xl76CUYQw=;
        b=53f8z8rb58oZUqdOszfjJfIxosmnNwBcT1tAWZBniM9HagD5l5e0NJ8M5Oi4LwEmaE
         0pmfn0sSI9zhlBuDjCHI6LvDeNF8e4YQrNVKDeRJ03VQ+xkOANXibCao2miiaaAtVERk
         WHM3i67jMrN0iEMwhYdibUilq9GW9ZGmpLseHf/SX9T+xLW1iLih8aBd/HiETzTFrDCn
         O2bZTFE1SVtseOO1JGcYp3AqMs2T5lc2ft6QIVD+IvTuNCd0LvWem6Xv+Aw7eIXVZjS+
         QYLM3b93FYUKaMpAk1YI1I0dmzD0xOnzREXZnU1uL1p8LLzuyScie0IEUZR47dGFS1U9
         ToMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DZYjp3Dh8hYAEBhaoFo5fj7lc6MgCHR723xl76CUYQw=;
        b=VXefpt119TfetpAbzHFPTvMuaTpwzPilEbFOqfDTm6621VUtra3rA0BUnfgj7A49Q5
         qnCwTQgStwmDHyFP+q3vdP/zy4APwl6CO0vhmQ5uWA/rIfqA9NQ/wV26VCk/hC1VTqIP
         cFXIaEM1ntDGvnPPys7rynb+R9dksDOF7VZczWnny8Kl3CFt/cg/wRpWugYSeOZrTzS9
         stSiEwX5ksab6JQHX3qXAV3A4+dQb+bJA0iojY73oRB8Wp5FPIGsoYXb3sh0TdGwrDul
         VMh5i9fQY4kZWUDGbfrtismqNL6Z2WEDGUl75so8tFmQqZLJ4aR/BvGQvMri7mMw3/+k
         liqw==
X-Gm-Message-State: AOAM531Y6H1FSCsVoYL372cQ1dlMic0Q6KjOpQNNNiGXqsglYZc/Ki6G
        pxZkcr5yfxDZ4bYX+ckagWVpnQ==
X-Google-Smtp-Source: ABdhPJxKwvQe1h4U5lHSzGW5G0U7Y6O6CUrkRgxaTKQUauPRqxI+Wryg0o4Rsh3TqDUBSnokeRxL1Q==
X-Received: by 2002:adf:f305:: with SMTP id i5mr5850502wro.155.1634808445339;
        Thu, 21 Oct 2021 02:27:25 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
        by smtp.gmail.com with ESMTPSA id d3sm4538468wrb.36.2021.10.21.02.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 02:27:25 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v5 0/7] drm/mediatek: Add mt8195 DisplayPort driver
Date:   Thu, 21 Oct 2021 11:27:00 +0200
Message-Id: <20211021092707.3562523-1-msp@baylibre.com>
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

In v5 I reworked the mtk-dpi so that dpintf is only using the same three clocks
as dpi does. This lead to the removal of the separate dpintf binding document.
Also there are minor updates to the mtk-dp binding and driver.

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
v4  - https://lore.kernel.org/linux-mediatek/20211011094624.3416029-1-msp@baylibre.com/


Markus Schneider-Pargmann (7):
  dt-bindings: mediatek,dpi: Add DP_INTF compatible
  dt-bindings: mediatek,dp: Add Display Port binding
  drm/edid: Add cea_sad helpers for freq/length
  video/hdmi: Add audio_infoframe packing for DP
  drm/mediatek: dpi: Add dpintf support
  phy: phy-mtk-dp: Add driver for DP phy
  drm/mediatek: Add mt8195 DisplayPort driver

 .../display/mediatek/mediatek,dp.yaml         |   87 +
 .../display/mediatek/mediatek,dpi.yaml        |   11 +-
 MAINTAINERS                                   |    1 +
 drivers/gpu/drm/drm_edid.c                    |   74 +
 drivers/gpu/drm/mediatek/Kconfig              |    7 +
 drivers/gpu/drm/mediatek/Makefile             |    2 +
 drivers/gpu/drm/mediatek/mtk_dp.c             | 2813 +++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_dp_reg.h         |  535 ++++
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  199 +-
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h       |   12 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   |    4 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |    1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |    6 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |    1 +
 drivers/phy/mediatek/Kconfig                  |    8 +
 drivers/phy/mediatek/Makefile                 |    1 +
 drivers/phy/mediatek/phy-mtk-dp.c             |  219 ++
 drivers/video/hdmi.c                          |   83 +-
 include/drm/drm_dp_helper.h                   |    2 +
 include/drm/drm_edid.h                        |   18 +-
 include/linux/hdmi.h                          |    7 +-
 include/linux/soc/mediatek/mtk-mmsys.h        |    2 +
 22 files changed, 4019 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp_reg.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-dp.c

-- 
2.33.0

