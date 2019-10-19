Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E4830DD707
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2019 09:03:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725379AbfJSHDK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Oct 2019 03:03:10 -0400
Received: from mail-pl1-f202.google.com ([209.85.214.202]:55069 "EHLO
        mail-pl1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725283AbfJSHDK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Oct 2019 03:03:10 -0400
Received: by mail-pl1-f202.google.com with SMTP id j9so5134752plk.21
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2019 00:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=d0XyTmgfeAre5YC2OnNwo/Pr1PqjNkWbfyJ5reUpD1M=;
        b=gSckZJdIoFFxrOxNfz8OOIHcGK+aCKXcKoIN0v4bDseFxXjGU4RlKRbVMelhdfGh3a
         RVfGRMdhKgu+aJgPhLKiQTaWJ0xm8zLrJvkfrREWPmqR7bRk/8ZsXSFv100BTDEIFCY9
         0kCV82YuFU/km+t+Tr6XeYNhohtKFFQqyeeT6qdp0VODRdhwRt+/cQdWHhEPuR0KTBrE
         X86PTsteaUZx+UXtxt4G3LCTsWkJvhhLqauWfZXYRTqoepVS+Gi7dGhmk5XS9SZNIIr4
         cUm3c0YzXvXfpPijxRTJIJY5GDm6V5TUVWEMQRiVKuYzTK1HdTIiIzF9YT6ME8crgO1S
         Xvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=d0XyTmgfeAre5YC2OnNwo/Pr1PqjNkWbfyJ5reUpD1M=;
        b=r6rdtjafB0RZ88VZWPqC/ll4HgpV9r6ShNgD9BBM4AAMN4uJNxB+Um/njrlCVfMeU1
         f3WMRbfGllk8n3hippQIof7BUudzKsRzrARFwJk+1M2r26ib6rJVDmaO1BMwX3nsIlB6
         F9r9VgyoDi+32ZUDGrVQQqq0p0LRADV3KHJU+JOoRR2zhcVC02IO7zebYQhXXNhkNDia
         kBobQXq8BCHFGpVt99bKIwzazQsIl1fKI6kZsyMMn/p8kCh/uRNtIePLcFWrVsc0juOO
         xLQMOWi1g3PRPJ1SD0BtaouuODoRIM4W28YnSra+yPMHhjj64+d72n6neMwiY68k9vpK
         7Fow==
X-Gm-Message-State: APjAAAWJ/Dc2WrS/FkUR0eXxjfRi7vbQfZs/qsFsrGHwqxoXe0Ro0owd
        k64eWASwSNwj4ubY1PAa6h8B2HUoexj6
X-Google-Smtp-Source: APXvYqzEGT16epUCp5nzQ6XZ+L8Hc3IzAUWo4NSxm6buinTSwg7NBNeZ73ax3MOptOf39U8ffnLcW/c6v/JW
X-Received: by 2002:a63:287:: with SMTP id 129mr749320pgc.190.1571468589134;
 Sat, 19 Oct 2019 00:03:09 -0700 (PDT)
Date:   Sat, 19 Oct 2019 15:02:50 +0800
Message-Id: <20191019070254.23870-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH v5 0/4] ASoC: mediatek: mt8183-mt6358-ts3a227-max98357:
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

ASoC: cros_ec_codec: support WoV
- makes cros_ec_codec support WoV.

ASoC: mediatek: mt6358: support WoV
- sets necessary registers on mt6358 to support WoV.

ASoC: dt-bindings: mt8183: add ec-codec
ASoC: mediatek: mt8183: support WoV
- make machine driver mt8183-mt6358-ts3a227-max98357 support WoV
  if ec-codec is in DTS.

Changes from v4:
- remove the first 6 commits which have merged
- fix a compile error by adding Kconfig dependency
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/156992.html

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

Tzung-Bi Shih (4):
  ASoC: cros_ec_codec: support WoV
  ASoC: mediatek: mt6358: support WoV
  ASoC: dt-bindings: mt8183: add ec-codec
  ASoC: mediatek: mt8183: support WoV

 .../sound/mt8183-mt6358-ts3a227-max98357.txt  |   3 +
 drivers/platform/chrome/cros_ec_trace.c       |   1 +
 .../linux/platform_data/cros_ec_commands.h    |  69 ++
 sound/soc/codecs/Kconfig                      |   2 +
 sound/soc/codecs/cros_ec_codec.c              | 700 +++++++++++++++++-
 sound/soc/codecs/mt6358.c                     | 105 +++
 sound/soc/mediatek/Kconfig                    |   1 +
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   |  70 +-
 8 files changed, 946 insertions(+), 5 deletions(-)

-- 
2.23.0.866.gb869b98d4c-goog

