Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F8DF1F56D
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 15:19:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727968AbfEONTH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 09:19:07 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:41628 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727917AbfEONTF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 09:19:05 -0400
Received: by mail-wr1-f68.google.com with SMTP id d12so2641253wrm.8
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 06:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JG2kah723rKt+6zVIVINToTJ1x5sX35cOTL/TkyEYK4=;
        b=vZJh22fkqgxxzQYvoRgM2gvXtNWcFHA4w/ZhpXhg3KcO5ZYtjNKkseZoctyABSvJYM
         JNXexdB8b7YXqUh/5OWvK48RZeoIDCCWPoWronkJubu2sqLNjPQOW88bdogK8PEQiGMc
         zo18n9fcq58uSAzG5iop6qietQv3MER71K3ppvb1yVZfJU6VdcoOQw+MQJ5O8306Lvma
         zamrxMsrIEPwYPooRGHEPa8l06Q2BaP/8XZRivdDkyAdSFUNR7NzuEmlMhamIM5YXg0N
         xZpBDhwzk3jHq7UNVDBVdogplW0YEikZzTMBBfQpXXSVQWmKU8oFYxHSHbA6GbytzTEi
         Eqag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JG2kah723rKt+6zVIVINToTJ1x5sX35cOTL/TkyEYK4=;
        b=seAeU84QUK41W3fwcLvVVHBPUcOOKFGtMBNwzL1wb5Yfxz9yNifx4gOPwYS+aByDxj
         lPsIwWedF6i6mrbau3iil1yqKOe2P2zvfw7RyxWmw1Y2tW0NkRMKwfqIqDoBZwKbG5GL
         +Cf/CR9X1/UrmVm72DCHGD4I341b64LhWHGdr+Lqg4dhHlpMB2JZNtLCSVm82JJxBizz
         wlAZHeC0HGEXXERk5wEDAktsEBduYI105MCvv0Hfof7Rdpa92KmuFLfed1UYERismEgK
         2eidsiJE/YdS7lH+qBSXbYlUWjmnD0iWda/PYgPXikuVRvD/emarRex4uWVTVyh/KAcZ
         9M3Q==
X-Gm-Message-State: APjAAAXSGKvSNgDCz9U11nJIOg8sSlQRwQinaHXo1BeVUrf706tO0U1z
        B4AtQ6sNsJKaXfo3JRg4BWZ+QQ==
X-Google-Smtp-Source: APXvYqwBEr5yG88UvIos7c0fJnIW12gLKqi73L00zTVXIyfiLBv41bjumlNMgrgZkorOKeNy3+7XIw==
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr189913wrt.197.1557926342964;
        Wed, 15 May 2019 06:19:02 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id b206sm2789848wmd.28.2019.05.15.06.19.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 15 May 2019 06:19:02 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 0/5] ASoC: meson: add hdmitx glue support
Date:   Wed, 15 May 2019 15:18:53 +0200
Message-Id: <20190515131858.32130-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On the Amlogic SoC, there is a glue between the SoC audio outputs and the
input of the embedded Synopsys HDMI controller.

On the g12a, this glue is mostly a couple of muxes to select the i2s and
spdif inputs of the hdmi controller. Each of these inputs may have
different hw_params and fmt which makes our life a little bit more
interesting, especially when switching between to active inputs.

This glue is modeled as codec driver and uses codec-to-codec links to
connect to the Synopsys controller. This allows to use the regular
hdmi-codec driver (used by dw-hdmi i2s).

To avoid glitches while switching input, the trick is to temporarily
force a disconnection of the mux output, which shutdowns the output dai
link. This also ensure that the stream parameters and fmt are updated
when the output is connected back.

Jerome Brunet (5):
  ASoC: meson: axg-card: set link name based on link node name
  ASoC: dapm: allow muxes to force a disconnect
  ASoC: meson: add tohdmitx DT bindings
  ASoC: meson: axg-card: add basic codec-to-codec link support
  ASoC: meson: add g12a tohdmitx control

 .../bindings/sound/amlogic,g12a-tohdmitx.txt  |  55 +++
 .../dt-bindings/sound/meson-g12a-tohdmitx.h   |  13 +
 sound/soc/meson/Kconfig                       |   8 +
 sound/soc/meson/Makefile                      |   2 +
 sound/soc/meson/axg-card.c                    |  31 +-
 sound/soc/meson/g12a-tohdmitx.c               | 413 ++++++++++++++++++
 sound/soc/soc-dapm.c                          |   2 +-
 7 files changed, 518 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,g12a-tohdmitx.txt
 create mode 100644 include/dt-bindings/sound/meson-g12a-tohdmitx.h
 create mode 100644 sound/soc/meson/g12a-tohdmitx.c

-- 
2.20.1

