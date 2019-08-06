Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 67F1C83219
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 15:05:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731532AbfHFNFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 09:05:12 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:34555 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726877AbfHFNFL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 09:05:11 -0400
Received: by mail-wm1-f67.google.com with SMTP id w9so8911205wmd.1
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 06:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=aOEiMClLlNGKFVgF1uc0XEaaUElK/j2HAOeb7aEDvFU=;
        b=QrHunvwKeKucFciStUYnaBDIvwjbtVpPHlnqiz3nLHv64cImQ6ZWapGOmwJODU4VLP
         ZPiVt2SwMBihahTHWCN8XcNpI7HrQmpTJ9Nt97qmanE1n8BPpAj6nVn0N9iOrtOR0tjK
         Xe7xUq7BxMHTpM7mc/qVw/xUG7J5a5cMVEgnDkCyi0zvvRYU4jsTYBbPEsKrHRuOrtmK
         T76ta9UFaZaEqXcNeykmL0Mtxlem0QkosHKK/Jbaa6eUCG96kG1nCSfnulsxCeMpCW83
         4NxW5N1Of460J2bRdadsQd8c5hT74maA0jDsrCLx6tBs96NuNwmYViLWPg0Mn67OE90j
         2yBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aOEiMClLlNGKFVgF1uc0XEaaUElK/j2HAOeb7aEDvFU=;
        b=Hj6MvoJrQdAvEtV7fn6Pl11XsKscdyvCMeA/dVOad29bHz6vMWh9pAyHRXXNtSvadN
         /3SLk4l7teFbwLy2AlKw7+vHvy0n09XAgIBhIA+V5ax167J9XaF1+Fc7cVeURXNRFPkp
         S8TvTJPRQOAnO9tjS013U9zOh/lV0lPyRWwLtnKSpepxT+w26vO2/xjJW+Jie9kDgBmy
         PBhpmEfM5+8tQ/PBQ8bM4jxYDHP7bVKCueTM+ERt5iddwnbEockGzVxs+XtpCbn8Bo+s
         8KV26GjojHtAqIqwdDYVHxMlkNqtDrE9WVNKNEbxtTtWb4EL5X8SFTtv5MTtmctnuVbe
         zIqQ==
X-Gm-Message-State: APjAAAWBI6PGGODUaOT0oqi9ALOhQCPZ2CpRdeCtSoAPLZs6OcnIwe18
        8N+zxIPMM2Gpx8x8DVu5Cl/oVw==
X-Google-Smtp-Source: APXvYqzZdDSexSvzr2ocbt3H/8w9W8songZyclA+NoREaLstGEeN4Xmf95HAcs1eq0OWGBEqyn2/kw==
X-Received: by 2002:a05:600c:2182:: with SMTP id e2mr4842124wme.104.1565096710025;
        Tue, 06 Aug 2019 06:05:10 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id j33sm201888738wre.42.2019.08.06.06.05.07
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 06:05:07 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     daniel.lezcano@linaro.org, khilman@baylibre.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/6] Add support of New Amlogic temperature sensor for G12 SoCs
Date:   Tue,  6 Aug 2019 15:05:00 +0200
Message-Id: <20190806130506.8753-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchs series add support of New Amlogic temperature sensor and minimal
thermal zone for SEI510 and ODROID-N2 boards.

First implementation was doing on IIO[1] but after comments i move on thermal framework.
Formulas and calibration values come from amlogic.

Changes since v2:
  - fix yaml documention 
  - remove unneeded status variable for temperature-sensor node
  - rework driver after Martin review
  - add some information in commit message

Changes since v1:
  - fix enum vs const in documentation
  - fix error with thermal-sensor-cells value set to 1 instead of 0
  - add some dependencies needed to add cooling-maps

Dependencies :
- patch 3,4 & 5: depends on Neil's patch and series :
              - missing dwc2 phy-names[2]
              - patchsets to add DVFS on G12a[3] which have deps on [4] and [5]

[1] https://lore.kernel.org/linux-amlogic/20190604144714.2009-1-glaroque@baylibre.com/
[2] https://lore.kernel.org/linux-amlogic/20190625123647.26117-1-narmstrong@baylibre.com/
[3] https://lore.kernel.org/linux-amlogic/20190729132622.7566-1-narmstrong@baylibre.com/
[4] https://lore.kernel.org/linux-amlogic/20190731084019.8451-5-narmstrong@baylibre.com/
[5] https://lore.kernel.org/linux-amlogic/20190729132622.7566-3-narmstrong@baylibre.com/

Guillaume La Roque (6):
  dt-bindings: thermal: Add DT bindings documentation for Amlogic
    Thermal
  thermal: amlogic: Add thermal driver to support G12 SoCs
  arm64: dts: amlogic: g12: add temperature sensor
  arm64: dts: meson: sei510: Add minimal thermal zone
  arm64: dts: amlogic: odroid-n2: add minimal thermal zone
  MAINTAINERS: add entry for Amlogic Thermal driver

 .../bindings/thermal/amlogic,thermal.yaml     |  54 +++
 MAINTAINERS                                   |   9 +
 .../boot/dts/amlogic/meson-g12-common.dtsi    |  20 ++
 .../boot/dts/amlogic/meson-g12a-sei510.dts    |  56 +++
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |  60 ++++
 drivers/thermal/Kconfig                       |  11 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/amlogic_thermal.c             | 336 ++++++++++++++++++
 8 files changed, 547 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
 create mode 100644 drivers/thermal/amlogic_thermal.c

-- 
2.17.1

