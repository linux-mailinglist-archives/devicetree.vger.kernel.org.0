Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 63A96E4C2B
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2019 15:30:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439284AbfJYNaX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Oct 2019 09:30:23 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:41546 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726393AbfJYNaW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Oct 2019 09:30:22 -0400
Received: by mail-pg1-f193.google.com with SMTP id l3so1552131pgr.8
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2019 06:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pgk2VpYDvWxnQGOn4CatnKUbEjzqifjDf+V5kplLk3Y=;
        b=hkoiNtYvvdlvP8l6YHJ0NAcOrbqzyTeM8GV5/CrfA0sqk7Un42PZnP+hIk4FRUHCIp
         uJrYQ2nf1MsX5xGpT+4LwiS2I3HKNvMGsveUyU2msEa+qqz8o7Wpw53WLVf2C//dpdWz
         NESc7oSR3+f7btvnpogS3AxngiEYpeuPmaTk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pgk2VpYDvWxnQGOn4CatnKUbEjzqifjDf+V5kplLk3Y=;
        b=bmGO/2Utpz4fdEhzL9NvcQwPuRQ2UP/8IXth7tjhi9Y2yi8XQl2ss35PpOErkcpkKc
         vnhgg2cRW8FPKOfDmUtZiqEXsUlF3UxfFlxmqd+72bxlfUhHsb858kjxbfoaalkqMoBk
         l3fZ81PI1rKkgKKsJVqEJ6VjLMmzdRJ0kS9lanm7dzRS/xsJH/wwXC6l2LKMuHRFIiy6
         nj21o3iytEe+Ba/YHXGD6w8eYsP6ECkNhWJCehXF0yp9RnHt/yz8V/e8RNYRxfG4xtfa
         n9bXnb/6hdHHtLpDjphz6iM3vXuODowSnVmcLJB8VM9WdQ8yjkVsIt+PUzWYG3/hYOPz
         yGxw==
X-Gm-Message-State: APjAAAXGogxTVlRpkING2cpVPFV91qFsoofYuOb0uWgCcPMg3/3n4+uG
        BHdCG5UNhyKCrneNEQqzCwYAXQ==
X-Google-Smtp-Source: APXvYqzpgx+nnjFmllOVgEw2I1Zze+v/IxDlqkvyVnWJ0/LUdRWU4MyQ5DhY20Cz7S6cmMoKn0X/FQ==
X-Received: by 2002:a65:4bc3:: with SMTP id p3mr4465303pgr.188.1572010221995;
        Fri, 25 Oct 2019 06:30:21 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
        by smtp.gmail.com with ESMTPSA id q20sm2534518pfl.79.2019.10.25.06.30.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 06:30:20 -0700 (PDT)
From:   Cheng-Yi Chiang <cychiang@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Jonas Karlman <jonas@kwiboo.se>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Russell King <rmk+kernel@armlinux.org.uk>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, dianders@chromium.org,
        dgreid@chromium.org, tzungbi@chromium.org,
        alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Cheng-Yi Chiang <cychiang@chromium.org>
Subject: [PATCH v8 0/6] Add HDMI jack support on RK3288
Date:   Fri, 25 Oct 2019 21:30:01 +0800
Message-Id: <20191025133007.11190-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series supports HDMI jack reporting on RK3288, which uses
DRM dw-hdmi driver and hdmi-codec codec driver.

The previous discussion about reporting jack status using hdmi-notifier
and drm_audio_component is at

https://lore.kernel.org/patchwork/patch/1083027/

The new approach is to use a callback mechanism that is
specific to hdmi-codec.

The dependent change on hdmi-codec.c

6fa5963c37a2 ASoC: hdmi-codec: Add an op to set callback function for plug event

has been merged to upstream.

Changes from v7 to v8:

1. rockchip_max98090: Allow three different use cases:
   max98090-only: For backward compatibility where DTS does not specify HDMI node.
   HDMI-only: For HDMI-only board like veyron-mickey.
   max98090 + HDMI: For other veyron boards.
   Pass different compatible string to specify the use case.

2. Add more maintainers to cc-list for new device property reviewing.

Cheng-Yi Chiang (6):
  drm: bridge: dw-hdmi: Report connector status using callback
  ASoC: rockchip-max98090: Support usage with and without HDMI
  ASoC: rockchip_max98090: Optionally support HDMI use case
  ASoC: rockchip_max98090: Add HDMI jack support
  ARM: dts: rockchip: Add HDMI support to rk3288-veyron-analog-audio
  ARM: dts: rockchip: Add HDMI audio support to rk3288-veyron-mickey.dts

 .../bindings/sound/rockchip-max98090.txt      |  38 +-
 .../boot/dts/rk3288-veyron-analog-audio.dtsi  |   3 +-
 arch/arm/boot/dts/rk3288-veyron-mickey.dts    |   7 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  11 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  41 +-
 include/drm/bridge/dw_hdmi.h                  |   4 +
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 392 +++++++++++++++---
 8 files changed, 425 insertions(+), 74 deletions(-)

-- 
2.24.0.rc0.303.g954a862665-goog

