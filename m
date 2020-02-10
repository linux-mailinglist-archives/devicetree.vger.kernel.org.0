Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0F59C156F7D
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2020 07:36:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726621AbgBJGgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Feb 2020 01:36:23 -0500
Received: from mail-pg1-f173.google.com ([209.85.215.173]:39675 "EHLO
        mail-pg1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726170AbgBJGgW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Feb 2020 01:36:22 -0500
Received: by mail-pg1-f173.google.com with SMTP id j15so3359939pgm.6
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2020 22:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lo17ppS/z0H1lSs1uTt0PZLLJNNtFvUKsUcqWlfn7Dc=;
        b=bUN6TfTE7usvEbrf47ULqCV7Q1Wmo6/Vzyto8zU5n07Oijvw4PAsNQlaYy5fRB+Own
         LBZXlJr3KquKZ+JciXDyIRgUHtAVe27qImHD4CtpQCOp6qC9h4wib31fnJ40b+jIxn/S
         6ytT9ejZ497xQAfK5M11UhTtxBHR5HpdXQsBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lo17ppS/z0H1lSs1uTt0PZLLJNNtFvUKsUcqWlfn7Dc=;
        b=jYob/AP1yov+PfBeeouZtuPXhEwN7PNxmsuoHiGIeAEozbBQDhWeeYWWh6gjzUTNrk
         HIUiHUSeu6HyaliUQdttyVfuHp7ING6zRyc3LSYTTN7EFeP7hpQ2+V4TBtaQMjZJYcBc
         2uDNYsSIfFY3hMhx4Ocyf7gE2QL+H/9iaTKKVndJr9dmOVbKo2L0WCca2UwEUNzM5lXP
         AWmKnd90thlVVM7wacfttiOmbE/rFUQ7zFJrSlmHlu72B+S1fBWdDob8kls1siAtRLZO
         +vQ9EandvtILxqNEaqTJG42+B9o3zC1yWL9omQCatCeyeKae52B2NBIegj6dnORxD6Wg
         lW+Q==
X-Gm-Message-State: APjAAAUYxmC2S2Vz3a5xXZruvK+vxS6NihvVSEjWXRNNwcfmyMpaQxML
        /fnyPOxalXo6K9+TNcf9T5c84g==
X-Google-Smtp-Source: APXvYqyV5uXjYlcd6ghIM6ap/HEp0sTQIJM1ZhrD03kxdqxEcvdfBDVhE8hzFps31kS5WDBa6r922Q==
X-Received: by 2002:a62:6342:: with SMTP id x63mr11616369pfb.103.1581316580334;
        Sun, 09 Feb 2020 22:36:20 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id f15sm11070041pgj.30.2020.02.09.22.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2020 22:36:19 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Daniel Kurtz <djkurtz@chromium.org>
Subject: [PATCH v7 0/5] Add mt8173 elm and hana board
Date:   Mon, 10 Feb 2020 14:35:19 +0800
Message-Id: <20200210063523.133333-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds devicetree and binding document for Acer Chromebook R13 (elm)
and Lenovo Chromebook (hana), which are using mt8173 as SoC.

Changes in v7:
- add pull-up for da9211 to fix spurious interrupts

Changes in v6:
- fix several unit name warnings in mt8173.dtsi and mt8173-elm.dtsi

Changes in v5:
- add gpio-line-names for gpio controller

Changes in v4:
- fix dtbs_check errors on cros-ec-keyboard
- add comments for second source touchscreen and trackpad

Changes in v3:
- address comments in v2, major changes include:
  * move uart aliases from mt8173-elm.dtsi to mt8173.dtsi
  * remove brightness-levels in backlight
  * add interrupt for da9211
  * move pinmux for sdio_fixed_3v3 from mmc3_pins_default
  * remove some non upstream property
  * checked on schematic, cd-gpio in mmc1 should be GPIO_ACTIVE_LOW

Changes in v2:
- fix mediatek.yaml
- fixup some nodes and remove unused nodes in dts

Hsin-Yi Wang (5):
  dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
  arm64: dts: mt8173: add uart aliases
  arm64: dts: mt8173: fix unit name warnings
  arm64: dts: mediatek: add mt8173 elm and hana board
  media: mtk-mdp: Use correct aliases name

 .../devicetree/bindings/arm/mediatek.yaml     |   22 +
 arch/arm64/boot/dts/mediatek/Makefile         |    3 +
 .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
 .../boot/dts/mediatek/mt8173-elm-hana.dts     |   14 +
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   70 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1173 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |   43 +-
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |    8 +-
 9 files changed, 1350 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

-- 
2.25.0.225.g125e21ebc7-goog

