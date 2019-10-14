Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BF0B0D629D
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 14:34:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730665AbfJNMeT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 08:34:19 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:46744 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730394AbfJNMeT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 08:34:19 -0400
Received: by mail-oi1-f194.google.com with SMTP id k25so13551283oiw.13
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 05:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8iLjshTXGmcUkjH1jEkadZShwPFBLspbffes+yRjZgY=;
        b=D2cc9wrHifvrfvQCRkPEFLOEnC9L7yarowrEwRrhChFpDWaZmJDbx3+iNUpPrNLJES
         It0SY7S1izs74cNZTCgkSRLgkwNsBwRjqEPpGEI60islljgaW0z9GqoCP+GH5g/uLIQd
         cfgRe+CJvQPB82W5jsrZ+2lgRsYVqjNMFZd0AEnbD17NIhudcjM2jwtPnVh81YaKzuNw
         QT3kwwSQkSxrELJYN+Y+nHwatzawh14/cJA43PRC5xNJwmDMw5evatBVTXXgtiAaMwzl
         Akr5Nsz6F500RnshJGPen8WHOdx5skVBzJzHuPWV0vqXpf1/hTrd3naAbdmx+wLiHIZf
         h8aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8iLjshTXGmcUkjH1jEkadZShwPFBLspbffes+yRjZgY=;
        b=VjFOnsCZBwn9ixx+KHE9HhEE4/En9/mGEmvQzXICxR9mO78FFexiCCQD3Vyc6lIi0S
         K8rvuhWGWCBCCBMjQWoO+8wH/3ABB0smOl5IoYukvSvXsJ5nUsECgsawzpWAAzFeXMli
         AG8TJgr/mVJBeqC2W/kMMOpDdO/PulyOFFPMVEA7FmSsF4G6v+SDTKC2GTER7ooZ8ST3
         i/XKLki5iBCCcGxP/D76V+0u5wVQXYCjnv7BzoM3hJZDuOVIshgmdEc1OsTrxQN4rTxP
         v9uJM02JZVPNFCN3HD848dl458iSHgMfheLa6T52UJc2IdU1qz28cjhRB5TQWb+uTbW6
         cIaw==
X-Gm-Message-State: APjAAAUpdydI4dmX2lRPxT5l97gcCVWERb8MCw1rXpxAIcHEP9t2slE+
        uEhRM9jYWsiivkKCxvLV+1Ms1YYKq28leDFYadAF0Q==
X-Google-Smtp-Source: APXvYqynDK6URPYcg8UEy4tlUHS7DSTW0ic6uunNazq6QOzQY21CpX4H9Rxs2YzjthRV3K0epyXM8/Tnwh8fQZOe0GY=
X-Received: by 2002:a05:6808:4c3:: with SMTP id a3mr24505140oie.82.1571056457681;
 Mon, 14 Oct 2019 05:34:17 -0700 (PDT)
MIME-Version: 1.0
References: <20191014102022.236013-1-tzungbi@google.com>
In-Reply-To: <20191014102022.236013-1-tzungbi@google.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Mon, 14 Oct 2019 20:34:06 +0800
Message-ID: <CA+Px+wXt0Y95t3qzdxWaP94w+Jnr30sRUHfa97FymPvG25Y6qA@mail.gmail.com>
Subject: Re: [PATCH v3 00/10] ASoC: mediatek: mt8183-mt6358-ts3a227-max98357:
 support WoV
To:     Mark Brown <broonie@kernel.org>
Cc:     ALSA development <alsa-devel@alsa-project.org>, robh+dt@kernel.org,
        devicetree@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@google.com>,
        Gwendal Grignou <gwendal@google.com>,
        Nicolas Boichat <drinkcat@google.com>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Dylan Reid <dgreid@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 14, 2019 at 6:20 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> This series makes mt6358, cros_ec_codec, and mt8183-mt6358-ts3a227-max98357
> support WoV (wake on voice).
>
> The first 3 commits are some cleanups and refactors.  It looks like
> breaking the existing interface.  But please be noticed that, the
> cros_ec_codec has not used by any real device yet.  The refactor is
> very necessary to keep the style consistent and for easier to further
> extend and maintain.
>   platform/chrome: cros_ec: remove unused EC feature
>   ASoC: cros_ec_codec: refactor I2S RX
>   ASoC: cros_ec_codec: extract DMIC EC command from I2S RX
>
> The 4th commit extends the feature offered from EC codec.
>   platform/chrome: cros_ec: add common commands for EC codec
>
> The 5th commit changes the behavior of setting and getting DMIC gains.
>   ASoC: cros_ec_codec: read max DMIC gain from EC codec
>
> The 6th and 7th commit make cros_ec_codec support WoV.
>   ASoC: dt-bindings: cros_ec_codec: add SHM bindings
>   ASoC: cros_ec_codec: support WoV
>
> The 8th commit sets necessary registers on mt6358 to support WoV.
>   ASoC: mediatek: mt6358: support WoV
>
> The last 2 commit make machine driver mt8183-mt6358-ts3a227-max98357
> support WoV if ec-codec is in DTS.
>   ASoC: dt-bindings: mt8183: add ec-codec
>   ASoC: mediatek: mt8183: support WoV
>
> Changes from v1:
> - fix a compile error and make kbuild bot happy
> https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156315.html
> Changes from v2:
> - rebase upon to "don't use snd_pcm_ops" series
> https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156170.html
> - fix sparse errors
> https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156328.html
> - use "reg" for SHM binding
> https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156657.html
>
> Tzung-Bi Shih (10):
>   WIP: platform/chrome: cros_ec: remove unused EC feature
>   WIP: ASoC: cros_ec_codec: refactor I2S RX
>   WIP: ASoC: cros_ec_codec: extract DMIC EC command from I2S RX
>   WIP: platform/chrome: cros_ec: add common commands for EC codec
>   WIP: ASoC: cros_ec_codec: read max DMIC gain from EC codec
>   WIP: ASoC: dt-bindings: cros_ec_codec: add SHM bindings
>   WIP: ASoC: cros_ec_codec: support WoV
>   WIP: ASoC: mediatek: mt6358: support WoV
>   WIP: ASoC: dt-bindings: mt8183: add ec-codec
>   WIP: ASoC: mediatek: mt8183: support WoV

Ha..I noticed here are some "WIP" prefixes forgot to remove.  To not
generate too much flood, will fix in later versions.

>
>  .../bindings/sound/google,cros-ec-codec.txt   |   24 +-
>  .../sound/mt8183-mt6358-ts3a227-max98357.txt  |    3 +
>  drivers/platform/chrome/cros_ec_trace.c       |    5 +-
>  .../linux/platform_data/cros_ec_commands.h    |  285 ++++-
>  sound/soc/codecs/cros_ec_codec.c              | 1128 +++++++++++++----
>  sound/soc/codecs/mt6358.c                     |  105 ++
>  sound/soc/mediatek/Kconfig                    |    1 +
>  .../mt8183/mt8183-mt6358-ts3a227-max98357.c   |   70 +-
>  8 files changed, 1296 insertions(+), 325 deletions(-)
>
> --
> 2.23.0.700.g56cf767bdb-goog
>
