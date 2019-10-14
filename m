Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 222FED5FED
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 12:20:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730860AbfJNKUk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 06:20:40 -0400
Received: from mail-pf1-f201.google.com ([209.85.210.201]:54044 "EHLO
        mail-pf1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731123AbfJNKUk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 06:20:40 -0400
Received: by mail-pf1-f201.google.com with SMTP id x10so13094802pfr.20
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 03:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=NUWv3pS6i68MPyjlBfm0nFo2xRHgz4DI1UFPygXWc14=;
        b=Mf+/ukDvCvG79e+JKV/LbVKJnZ317XOeJkfVvPRDrUlNFL4aJeeYA8ORopngzAoY6s
         xdwCooAwsc4aUOg0vs36dVFlDSvf88OZvj5C9Dq3gJG3No2op8TbR2JVM788ZjdXRkss
         2tIrMu7pTC8/u19pHTBITL/KLx969HshJYvtt59VIzhX9ig6VlBA7t4RBz1Z0Ny5zcaa
         cEH9EpheAGIcCPgP5OGQz/Z8TCjnisJFR1Qxjx9a9XgvkkwEjq/bB9ZWNtmIzAotLNV0
         lsTzzJUOexSrh+8v6uUjTrRF5FuxGS0gjLfyQtIaxyL1XWXmjloOkVmNHoNIxVW9JaXE
         wrqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=NUWv3pS6i68MPyjlBfm0nFo2xRHgz4DI1UFPygXWc14=;
        b=tD20dZBVeTFSSkptBuJHBxfcBWNNV4cN1D2zybB6GcCpPU6nsm/YwNm2D5XEUvQRd6
         BIcTG/C31ZFaDkl7IOpkIZtT4nuDwg45e3FRDB0WTzU9fYHIz34j4dj3fATLyxJ1DpW6
         L5bH+RmaOR4hKBzAqE5BsMNzUu601vvmHx7QEAGS6uZiqlhF5C3YZgMnUGWc2DErLnys
         KsyHlRdmLpmmwPZIS46FupQe4uryz4qN2bQakNqywUfCKjtFFr7k9w0biqmLdSnimLwh
         84zup9XJM8h1zzLG149DBBEoDtHen8z/VcunwAt0XCaX1VQBJq+u9LBkhwVJmgvaW9dm
         S61Q==
X-Gm-Message-State: APjAAAUqy5zsJ1bLEMHsPHRUvRF9xwrYwT0nXS/jv5vIhWM9SlB9zaqS
        NiV9m0rKNtBUZuU5degjS5CEojvGHs6f
X-Google-Smtp-Source: APXvYqybl2o6f9MpE2y0b4jGAulKGhnTL0ZJF7GuOPvB9xeT2A80cEhd29tNE2grvM2fiuFrEaqpmfICjoBn
X-Received: by 2002:a63:c911:: with SMTP id o17mr32400264pgg.150.1571048439006;
 Mon, 14 Oct 2019 03:20:39 -0700 (PDT)
Date:   Mon, 14 Oct 2019 18:20:12 +0800
Message-Id: <20191014102022.236013-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v3 00/10] ASoC: mediatek: mt8183-mt6358-ts3a227-max98357:
 support WoV
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series makes mt6358, cros_ec_codec, and mt8183-mt6358-ts3a227-max98357
support WoV (wake on voice).

The first 3 commits are some cleanups and refactors.  It looks like
breaking the existing interface.  But please be noticed that, the
cros_ec_codec has not used by any real device yet.  The refactor is
very necessary to keep the style consistent and for easier to further
extend and maintain.
  platform/chrome: cros_ec: remove unused EC feature
  ASoC: cros_ec_codec: refactor I2S RX
  ASoC: cros_ec_codec: extract DMIC EC command from I2S RX

The 4th commit extends the feature offered from EC codec.
  platform/chrome: cros_ec: add common commands for EC codec

The 5th commit changes the behavior of setting and getting DMIC gains.
  ASoC: cros_ec_codec: read max DMIC gain from EC codec

The 6th and 7th commit make cros_ec_codec support WoV.
  ASoC: dt-bindings: cros_ec_codec: add SHM bindings
  ASoC: cros_ec_codec: support WoV

The 8th commit sets necessary registers on mt6358 to support WoV.
  ASoC: mediatek: mt6358: support WoV

The last 2 commit make machine driver mt8183-mt6358-ts3a227-max98357
support WoV if ec-codec is in DTS.
  ASoC: dt-bindings: mt8183: add ec-codec
  ASoC: mediatek: mt8183: support WoV

Changes from v1:
- fix a compile error and make kbuild bot happy
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156315.html
Changes from v2:
- rebase upon to "don't use snd_pcm_ops" series
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156170.html
- fix sparse errors
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156328.html
- use "reg" for SHM binding
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156657.html

Tzung-Bi Shih (10):
  WIP: platform/chrome: cros_ec: remove unused EC feature
  WIP: ASoC: cros_ec_codec: refactor I2S RX
  WIP: ASoC: cros_ec_codec: extract DMIC EC command from I2S RX
  WIP: platform/chrome: cros_ec: add common commands for EC codec
  WIP: ASoC: cros_ec_codec: read max DMIC gain from EC codec
  WIP: ASoC: dt-bindings: cros_ec_codec: add SHM bindings
  WIP: ASoC: cros_ec_codec: support WoV
  WIP: ASoC: mediatek: mt6358: support WoV
  WIP: ASoC: dt-bindings: mt8183: add ec-codec
  WIP: ASoC: mediatek: mt8183: support WoV

 .../bindings/sound/google,cros-ec-codec.txt   |   24 +-
 .../sound/mt8183-mt6358-ts3a227-max98357.txt  |    3 +
 drivers/platform/chrome/cros_ec_trace.c       |    5 +-
 .../linux/platform_data/cros_ec_commands.h    |  285 ++++-
 sound/soc/codecs/cros_ec_codec.c              | 1128 +++++++++++++----
 sound/soc/codecs/mt6358.c                     |  105 ++
 sound/soc/mediatek/Kconfig                    |    1 +
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   |   70 +-
 8 files changed, 1296 insertions(+), 325 deletions(-)

-- 
2.23.0.700.g56cf767bdb-goog

