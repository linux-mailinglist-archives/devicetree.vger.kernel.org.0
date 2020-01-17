Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2258B14025F
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2020 04:37:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729762AbgAQDh4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jan 2020 22:37:56 -0500
Received: from mail-pj1-f42.google.com ([209.85.216.42]:36585 "EHLO
        mail-pj1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729710AbgAQDhz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jan 2020 22:37:55 -0500
Received: by mail-pj1-f42.google.com with SMTP id n59so2650423pjb.1
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2020 19:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W3ZrmALb04VJvJYJRFDnB2xc6oarHSelUabhN5PENno=;
        b=S93imiwqTJgV9ntX1fa1Q4p88MPfMvVD6Z0uhgELxYfARwZGOCZkDu3BcPpqKPVcDm
         /rV0AiXUemaxpZro3ZodBQeZi8D7mKx54Z3yC6A5IjlE5ul5gU2e++Jo1EGMPQcxUB5b
         dTHjUYrKitks66CvR3LLUvGzMPibI3EBQvY4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=W3ZrmALb04VJvJYJRFDnB2xc6oarHSelUabhN5PENno=;
        b=bIilaCuL9L1IamRrsHefXERj3YJt2XkdPTcKD0A8tOJJtBllswHkj777HPzp+1tua4
         Fx/HODu0HrsYr7YwqSj5S0Zl7UZHwr+wC2+/EQt1CkgTSaellt9dKL0+znAhpXU0/l0Y
         FPT0jT4HfLCR2byj8LA1xvEicuxc3isY7TU8DOPaErVPDakiydSYqAGDctuFNRU+MvS2
         F6lX63NBuD9Qs0xC9r5q1RT4oXcC5upBHRm53hWCLHJm6jJx3eKFT+9961S+beTPo73+
         ATNrqnZP7KOaena90jSoLqmDE0Hg48XokMwsLiM72x8P03wEpdG69gHDj3+gGxsz18ol
         pg4w==
X-Gm-Message-State: APjAAAWiPjmJeKQfzaxtJKHxHeadnnVKvyW+gt1gBNMSFVXipclj78kh
        Lqp0fexoplMywrfcaHckKcoWmg==
X-Google-Smtp-Source: APXvYqz8oNglxNkmhRqIcnk3Hs0gldj3Lgjt+22dbA0S2qnTnMZGFb0p0ixnztKYQ0yeztInjhjuxA==
X-Received: by 2002:a17:90a:d986:: with SMTP id d6mr3245192pjv.78.1579232275097;
        Thu, 16 Jan 2020 19:37:55 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id j38sm25940259pgj.27.2020.01.16.19.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 19:37:54 -0800 (PST)
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
Subject: [PATCH v4 0/3] Add mt8173 elm and hana board
Date:   Fri, 17 Jan 2020 11:37:46 +0800
Message-Id: <20200117033749.137420-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds devicetree and binding document for Acer Chromebook R13 (elm)
and Lenovo Chromebook (hana), which are using mt8173 as SoC.

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


Hsin-Yi Wang (3):
  dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
  arm64: dts: mt8173: add uart aliases
  arm64: dts: mediatek: add mt8173 elm and hana board

 .../devicetree/bindings/arm/mediatek.yaml     |   22 +
 arch/arm64/boot/dts/mediatek/Makefile         |    3 +
 .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
 .../boot/dts/mediatek/mt8173-elm-hana.dts     |   14 +
 .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   70 ++
 arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   14 +
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1029 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |    5 +-
 8 files changed, 1183 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi

-- 
2.25.0.rc1.283.g88dfdc4193-goog

