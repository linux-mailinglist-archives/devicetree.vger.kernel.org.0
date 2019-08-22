Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5369A3E9
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 01:38:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726888AbfHVXiW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 19:38:22 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:42443 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726865AbfHVXiV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 19:38:21 -0400
Received: by mail-wr1-f68.google.com with SMTP id b16so6921878wrq.9
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 16:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mxo0eAEf3fJwKk0DHfBYnFpenezLkSgCZl+oCD3TV3M=;
        b=dsMUqV6r4O2zGkVt3hW+Fx7aIsyRgpSQErbvTBN7+ZPaKFr9tuyizHRQVNeMj8c4XL
         WFqYh1lZiXvZUF8xFPzF25S0ERpoYImdgLie7gREL490yoNp1SvV8CBy/YApGjaF1xfb
         YMQXlQfC5sVNrCpzMUAAR8I5GJpnuxwlW6wz/sOa45gwrVdGDthTfDW7U08uwMNtn/bg
         RYUxSd6OeQCpxstLos3AlTzNgqV4UDeRrK+BP8U4DIahtvTu7depDZnlMMDU8KeiSp1E
         TyATForz+R18C3S+TDdHTIV2Aw67+PvqLnMsmtOkgF6lE+Gfu7jnCB4RljVzbuI2rQik
         ta4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mxo0eAEf3fJwKk0DHfBYnFpenezLkSgCZl+oCD3TV3M=;
        b=TJLoXJH/YFlIyVLpH/eeOYVeuvHX6v8oTEYj1fvva6hcEQWDEzWcILORTA9mvD7YEN
         b2OuL+1/RfZBQcTz4daedLSIKxiqwmHain1wd5hof7Ady6pJVnCnM+lRxQTJlYxk3wqx
         4+xuR6+KRgTkd7LLt7zKqjrEwjpjH4DCbFLmGveGgMVnPrkuq87XrlwZiMQfoh8vaO/j
         NLd6U/4mum9Bs88k6mWA9Pt28yxmr1+7D/eAUBoavymO+HGIwWcdymcoLiFxlyRfCPul
         1enH5Kx6H5UbNJaWg8nRyJjR2IS2GaaEtiTExXbKOSsYS/ZbppiZ2x5gC6uE5/ViZO7h
         o3aw==
X-Gm-Message-State: APjAAAX10g/iT1e6mhE3C8wZS1okHFNvg8b0/xt+nPBLWbOvWw+ZdbLB
        pMFG6UKZkteijDmeM5yXU9dPPg==
X-Google-Smtp-Source: APXvYqzVwNyXgKAoUxu6i1pDAVSMuh+VIbRZnl5lFohQGcKO7KCWaa0n9xm8Y4YFV9dQ970h6z0pmA==
X-Received: by 2002:a5d:4ec6:: with SMTP id s6mr1210862wrv.327.1566517099942;
        Thu, 22 Aug 2019 16:38:19 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id f134sm1705157wmg.20.2019.08.22.16.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 16:38:19 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, vkoul@kernel.org
Cc:     spapothi@codeaurora.org, bgoswami@codeaurora.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v4 0/4] ASoC: codecs: Add WSA881x Smart Speaker amplifier support
Date:   Fri, 23 Aug 2019 00:37:55 +0100
Message-Id: <20190822233759.12663-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Resending this series due to a typo in yaml filename!

Thanks for reviewing v3 patchset, here is v4 with addressing the comments in v3

This patchset adds support to WSA8810/WSA8815 Class-D Smart Speaker
Amplifier which is SoundWire interfaced.
This also adds support to some missing bits in SoundWire bus layer like
Device Tree support.

This patchset along with DB845c machine driver and WCD934x codec driver
has been tested on SDM845 SoC based DragonBoard DB845c with two
WSA8810 speakers.

Most of the code in this driver is rework of Qualcomm downstream drivers
used in Andriod. Credits to Banajit Goswami and Patrick Lai's Team.

TODO:
	Add thermal sensor support in WSA881x.

Thanks,
srini

Changes since v3:
 - updated slave bindings according to Rob's Suggestion.
 - moved bindings to yaml

Srinivas Kandagatla (4):
  dt-bindings: soundwire: add slave bindings
  soundwire: core: add device tree support for slave devices
  dt-bindings: ASoC: Add WSA881x bindings
  ASoC: codecs: add wsa881x amplifier support

 .../bindings/sound/qcom,wsa881x.yaml          |   44 +
 .../soundwire/soundwire-controller.yaml       |   75 ++
 drivers/soundwire/bus.c                       |    2 +
 drivers/soundwire/bus.h                       |    1 +
 drivers/soundwire/slave.c                     |   52 +
 sound/soc/codecs/Kconfig                      |   10 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/wsa881x.c                    | 1134 +++++++++++++++++
 8 files changed, 1320 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
 create mode 100644 Documentation/devicetree/bindings/soundwire/soundwire-controller.yaml
 create mode 100644 sound/soc/codecs/wsa881x.c

-- 
2.21.0

