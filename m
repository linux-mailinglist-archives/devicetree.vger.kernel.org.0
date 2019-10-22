Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 330A5E0350
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2019 13:47:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388136AbfJVLqr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Oct 2019 07:46:47 -0400
Received: from mail-pf1-f201.google.com ([209.85.210.201]:36207 "EHLO
        mail-pf1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387977AbfJVLqr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Oct 2019 07:46:47 -0400
Received: by mail-pf1-f201.google.com with SMTP id 194so13189573pfu.3
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2019 04:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=+WgkN+jFywmJXVgKU05Ya5YyFfdneuxiMlHIArCBK5c=;
        b=spSSgg67SiV5zrSWNM7crPZfxyUeNONQ5ZefWzhiBj0HxsRoKAiVIj19ZUUeQ6gfsT
         p+4Vx3dMtOzHcYor+2y11h4PSstY+dErlPoSK4VwkFChu2pMI6IlE4ajoQs/dHLWdMNI
         KqExQndtAmV3SvQUgvYYsUgqjBIpMHH7N1SWBPaU3e4ZX2knnBIgyjUmmn3mU88wGa/7
         UNLtAgnl6E1XT8FDLbZOvvXCXoLG5Rm389sBg1+HX3AmafYXJ8qcPdbZm8yQ2dAhQ0xB
         5f16NXoRuTKjugNcj1Gi8Mo7mKo8ikqrtIeHvhyoy6DMBBkzaDYvBgqKqWkFBU0jE/hl
         JskQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=+WgkN+jFywmJXVgKU05Ya5YyFfdneuxiMlHIArCBK5c=;
        b=jdvfOW9wgdrlUJjzC38fdwojaJrjecC12jRXJm6p3QSXtpK1i36Qs2/7TL4heaX6VD
         SmU5UFmhVA0D/UmZIbaJB5CK5i335z6hlWpVzGhV0PzemJ8f9g/oV8MgzJfHJOZN4qmW
         cU8qYicn7y9pD5oS5WkkH7LUNSoRedkoGbI12C7Td/IJUTtreKpyxHtl/GxqkWkwZPJG
         JkHoaURndpOwC6BjqO5NbHPY/Re5Be2nfQtcODeXxIuOaF+VzjljhBk+HFY0k5N/wIaU
         Ubg4E1oY3Jx/tDH3D33nU2sdXnpkbV/MNyfeoiOdgte3tqobHocIK5Yq0e+oCDCpK0fb
         YLIw==
X-Gm-Message-State: APjAAAVk8Z3YjSfWtQe1aYMadvHagR+RodbtKNUGxH2byjcOOK5AfD4C
        azKfHW9Fyq5g/ketC7pbSKWCwkXA6Nj6
X-Google-Smtp-Source: APXvYqy/ziqoEer4WzV0Nf0anG6/SXW8LGXGMhUoQ0nDrgt9a/HYV7SzXWbn1s5tu4qK4rUZHL44Bfeti+4c
X-Received: by 2002:a63:9751:: with SMTP id d17mr3414778pgo.427.1571744804770;
 Tue, 22 Oct 2019 04:46:44 -0700 (PDT)
Date:   Tue, 22 Oct 2019 19:44:59 +0800
Message-Id: <20191022114505.196852-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 0/6] ASoC: mediatek: mt8183: support DP audio
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org, narmstrong@baylibre.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        a.hajda@samsung.com, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@siol.net,
        dri-devel@lists.freedesktop.org, allen.chen@ite.com.tw,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

(This series depends on https://lore.kernel.org/patchwork/patch/1126819/
 which has not applied to the maintainer's tree yet.)

This series makes mt8183-mt6358-ts3a227-max98357 support DP (display port)
audio output.

ASoC: hdmi-codec: add PCM trigger operator
- add a PCM trigger callback if codec driver is interested in PCM events.

drm: bridge: it6505: bridge to hdmi-codec
- add audio feature support of it6505.
- bridge to hdmi-codec so that ASoC can use the audio feature. 
- defer the "enabling" after receiving PCM START or RESUME event.

ASoC: dt-bindings: mt8183: add a property "mediatek,hdmi-codec"
ASoC: mediatek: mt8183: use hdmi-codec
- bind to hdmi-codec in mt8183-mt6358-ts3a227-max98357.

drm: bridge: it6505: report connector status
ASoC: mediatek: mt8183: support HDMI jack reporting
- use the mechanism from the following patch
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-September/155302.html
  to report jack status (from DRM to ASoC).

Allen Chen (1):
  drm: bridge: it6505: bridge to hdmi-codec

Tzung-Bi Shih (5):
  ASoC: hdmi-codec: add PCM trigger operator
  ASoC: dt-bindings: mt8183: add a property "mediatek,hdmi-codec"
  ASoC: mediatek: mt8183: use hdmi-codec
  drm: bridge: it6505: report connector status
  ASoC: mediatek: mt8183: support HDMI jack reporting

 .../sound/mt8183-mt6358-ts3a227-max98357.txt  |   2 +
 drivers/gpu/drm/bridge/ite-it6505.c           | 191 +++++++++++++++++-
 include/sound/hdmi-codec.h                    |  13 ++
 sound/soc/codecs/hdmi-codec.c                 |  31 +++
 sound/soc/mediatek/Kconfig                    |   3 +-
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   |  36 +++-
 6 files changed, 266 insertions(+), 10 deletions(-)

-- 
2.23.0.866.gb869b98d4c-goog

