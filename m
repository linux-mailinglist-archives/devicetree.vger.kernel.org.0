Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A15BDAEF1
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 16:00:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437364AbfJQOAf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 10:00:35 -0400
Received: from mail-yb1-f201.google.com ([209.85.219.201]:53411 "EHLO
        mail-yb1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437275AbfJQOAf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 10:00:35 -0400
Received: by mail-yb1-f201.google.com with SMTP id m18so1779719ybf.20
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 07:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=eTwvoxixG9e7fAxl5QzNwRqb5cdZfoKTNKkC1RqsVr0=;
        b=mALvokSa+V5WXvm3ssROhiyT4o2IFPLamPw3xItea5wPgAF/9erpezVWSByLUXBwxZ
         T5sRoTVEp0XebAU7Kyy2kIZYXKMaDKxM2K+3B1fRCAo4m9NgdJ+nA/9Y76ZubeRTgB0m
         XMZzWQOaTNyKOLWd3LEvuQC6Wrw/fRJg+VbSdrfM7wZ3Qjjyo1EkVP1eOmk8/y+QyFUv
         JnYiILRoxjIumIFf7MK0vBHFZF3b7osXjluFiqrt3owCqySogBJU9tv+84bV1dvmo22n
         xxQ64lQ9/OFDc9IDqbnMRTHByLyer9jmyz8xhBFVbXCpqgGa+UuNUDaeLw0EfYNGFLrB
         ks/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=eTwvoxixG9e7fAxl5QzNwRqb5cdZfoKTNKkC1RqsVr0=;
        b=LqNIZSy+vEhB4No4w9633psda8sDi1yEWwhHxc3nibFoirbQI+f23F/U4V4PrgeBEt
         arpEcElJgKpOACbAI7dvEIh6uHO6FgazYwNMZTdtH3vvHBqCnEqGDX5yL5utXNTfn9Ds
         QLDfR0sCMZgMMtchH8Ta/C1PA9tapAPE7gCJIhn6A07J388a6XiF49U0LKHaIL+fzREa
         wlZ4V10hvrzKFaqU/1ae8Bspbfe6N0Syxb4Zu/g3r4NsmT9X8pOAUKYtH2c+LQK9Vhi8
         web4NT8A96b4ZyDfZy3ITKDV5CdoPg9BXMi6cZElpJvIU7uqWDqkUVLyClvYdHvBQ6Ur
         ojRA==
X-Gm-Message-State: APjAAAVco0Cea7ZyW+kfBbkzDJpyfFkU4MK7HxjAC/uMTu7A22HbDW76
        p5Ev+TB+6apE7eEr6QcVWeu0SgNMwTAA
X-Google-Smtp-Source: APXvYqw5iS5oR/4K5Pyu87yPL/HYeiH+rEbgwHFAIZXcpDDXPaoB+Z3XDhYBuxu84fTDHoNY6omWpRrxyLFY
X-Received: by 2002:a25:a0d0:: with SMTP id i16mr2266509ybm.96.1571320833154;
 Thu, 17 Oct 2019 07:00:33 -0700 (PDT)
Date:   Thu, 17 Oct 2019 22:00:05 +0800
Message-Id: <20191017213539.00-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v4 00/10] ASoC: mediatek: mt8183-mt6358-ts3a227-max98357:
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

Changes from v3:
- fix a compile error by adding ifdef
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156750.html
- fix a coccinelle warning
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156754.html

Changes from v2:
- rebase upon to "don't use snd_pcm_ops" series
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156170.html
- fix sparse errors
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156328.html
- use "reg" for SHM binding
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156657.html

Changes from v1:
- fix a compile error and make kbuild bot happy
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156315.html

Tzung-Bi Shih (10):
  platform/chrome: cros_ec: remove unused EC feature
  ASoC: cros_ec_codec: refactor I2S RX
  ASoC: cros_ec_codec: extract DMIC EC command from I2S RX
  platform/chrome: cros_ec: add common commands for EC codec
  ASoC: cros_ec_codec: read max DMIC gain from EC codec
  ASoC: dt-bindings: cros_ec_codec: add SHM bindings
  ASoC: cros_ec_codec: support WoV
  ASoC: mediatek: mt6358: support WoV
  ASoC: dt-bindings: mt8183: add ec-codec
  ASoC: mediatek: mt8183: support WoV

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

