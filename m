Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8DCBCCC836
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 07:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726134AbfJEF6f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 01:58:35 -0400
Received: from mail-qt1-f202.google.com ([209.85.160.202]:41849 "EHLO
        mail-qt1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725927AbfJEF6f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 01:58:35 -0400
Received: by mail-qt1-f202.google.com with SMTP id n59so8979875qtd.8
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 22:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=u/HhHshiebt7qdyy/0fT8eo/n7HLU5nGMpl4dQQloPE=;
        b=uq4kBMRiAoFm4f6IBiCLfwNOLhnTIDboKRnPsAqYRbLdvQClbP8TdLxQm1+MjQppIq
         hdZHLoIvxg0XxpoFN+s1dCElRZOwes4ttUoe3yjBJMQ5PCMLa4mGwpuvlYW6jRH8S3kP
         GQi0UwVzCXcjimxErBq80X1etw4ko4G7rLshAeP9/mOHK8jWHOTwfbNmoJuA3o4DmgxH
         v0Nzaoz10laVBwGzYVtDI7f8UcpPJmwGxh1VqYzfrVkSpv+6vUoxUzmy3e6BFmB41b/y
         cZFYQ4ragHp6zTKAdTjoT6cHwsP46dcFP0eFx45oN3/zN5gknYKM7rikRuzoasjAdzZ/
         AyHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=u/HhHshiebt7qdyy/0fT8eo/n7HLU5nGMpl4dQQloPE=;
        b=jh4Hr3Cif827lUfpee7VcMqm1umyxwXVTf0D1VeXG4wbU4lGXwp5xBXip4yyBCr/c6
         8hDLHw0tOD0Kr3wfwpI7J2DeI8boOnM5y+1t42c6ylcqnFOhFIAn8DtjHpVyo0lFi5BW
         3SiR7Dv9+7ZDc5Maf44YiU85ReMDFQO/3qhtu/TCL34AvbMwtfKfd+gy4Gnfygk36W7o
         UnKfPoSysK/m6WS9un0FrRhmJ84Iu7+xQRXR/TPdYyMQQ4sP2I5p82rrxRydLVKF/P1K
         dDSP16EMlSTygSXiwg1ZgjOcrVmL5O6tqbp0HP7clKyhzyCqO1w9wBUf2sO8gvItfHyt
         /Pgw==
X-Gm-Message-State: APjAAAV5kn+ng79mHtG3tBhzOaufCprSE6bA252mimKXkuxfxSJmW6n4
        nn6/s4sEODuiU6YL5t/0syanzlNdYJaR
X-Google-Smtp-Source: APXvYqwB3BWb6tkEHECO3/JQ/ejewohrwxyg4ZtcONUEqpOq6AIa0rSPEjwhOuLrLwotENvn2FvaLQAwZ+5f
X-Received: by 2002:ae9:de84:: with SMTP id s126mr13701003qkf.245.1570255112606;
 Fri, 04 Oct 2019 22:58:32 -0700 (PDT)
Date:   Sat,  5 Oct 2019 13:57:58 +0800
Message-Id: <20191005055808.249089-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 00/10] ASoC: mediatek: mt8183-mt6358-ts3a227-max98357: support WoV
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

The first 3 commits are some cleanups and refactors.  It looks like breaking
the existing interface.  But please be noticed that, the cros_ec_codec has
not used by any real device yet.  The refactor is very necessary to keep
the style consistent and for easier to further extend and maintain.
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

The last 2 commit make machine driver mt8183-mt6358-ts3a227-max98357 support
WoV if ec-codec is in DTS.
  ASoC: dt-bindings: mt8183: add ec-codec
  ASoC: mediatek: mt8183: support WoV

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

