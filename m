Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EFA32CC8D6
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 10:55:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726962AbfJEIzZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 04:55:25 -0400
Received: from mail-pf1-f201.google.com ([209.85.210.201]:50830 "EHLO
        mail-pf1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726134AbfJEIzZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 04:55:25 -0400
Received: by mail-pf1-f201.google.com with SMTP id q127so6492145pfc.17
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2019 01:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=pphLcKzubt6/3xgcmeykLYyBQzlEs6RSKdSQWX0sxDM=;
        b=HNvVT6WeTyt18Cxfm115qmEHUzDBxDS33Xse/+6Ac8mPdknVe5icL784u81qWxspgB
         c/CQbibe7y+Y0uxDJfcdwmDZ/McY7m5HNTnT/HF51rVRD56djx2RZI1SqijGnbz06ZuM
         Fi2HU8ci57dqUwE/7BGWmeQ18eWFXIC9gOGCYg2QGzlwuIV7a8RV7zKYq4l1ObLOf6Va
         6VQKL/kIGbQP00EPfgt3X/S+dj3Ca1E4B600gvHrTBBgItC3501nnuqzGG+LQJOG5+VR
         ERiG31VDiNvW9uevVp1qUoX8U+NE34Ru17fEPSMEvdXIMuaRMvDzrdho0m5g1KEpQVzc
         e2IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=pphLcKzubt6/3xgcmeykLYyBQzlEs6RSKdSQWX0sxDM=;
        b=eCfGohjA56gL1VMy+6yrWyDcKbrj9kmyCslwuazXxj3b3JI6b1D2b9oJQDyWLf8QCu
         tryjgeq6fqXJd+VjdJmrRGVQuegsHBR0MAf/qov814//ALGFHT91LtWiERbaHM9pEHXH
         bF8qHWfCGZkJohJkyZYkObtOeHNS25V6UpmKtb9P2H9xt5KBZrh8BRMtnH+H4qrkaVOi
         3MmkUvqmAF3y5476ieEa2uWHuAzSLRjclo348wbG+OjAJcoeuM30u+0573/NHc/DUBww
         xd83EPUvg+G1Gj2hSJ8vhCeBL4sE8C89bsumpPPTEDiVbYCOrbd4p6aKoEjc/GWqTuCF
         /3Tg==
X-Gm-Message-State: APjAAAW03DTN/da5kL3oZ2T6sbPIAHkQpL+T4J085izenFBJFq2bvQfJ
        AJLxSmdTqvp/7C8XSYU00Lq3boImniLV
X-Google-Smtp-Source: APXvYqyImMF03MMzTr5muxRkyJaCj3f7Y/q/aYeXW/YCc8aiv4Sn44DDbaUS90H1MoVvDCJEVZn18YlEtFKi
X-Received: by 2002:a63:d058:: with SMTP id s24mr19068377pgi.189.1570265722952;
 Sat, 05 Oct 2019 01:55:22 -0700 (PDT)
Date:   Sat,  5 Oct 2019 16:54:59 +0800
Message-Id: <20191005085509.187179-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH v2 00/10] ASoC: mediatek: mt8183-mt6358-ts3a227-max98357:
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
 sound/soc/codecs/cros_ec_codec.c              | 1125 +++++++++++++----
 sound/soc/codecs/mt6358.c                     |  105 ++
 sound/soc/mediatek/Kconfig                    |    1 +
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   |   70 +-
 8 files changed, 1292 insertions(+), 326 deletions(-)

-- 
2.23.0.581.g78d2f28ef7-goog

