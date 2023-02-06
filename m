Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E9B968C222
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 16:48:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230503AbjBFPsG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 10:48:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230344AbjBFPr5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 10:47:57 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C1452A99A
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 07:47:36 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id b13so12471131ljf.8
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 07:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pmo77UKoMzXJKQUoQ1g2vDSwLCWdCS5ldkpiJoejADo=;
        b=EmRe6OclOanTEHjba9UzNYrndAHNwQl+yKbKfLh/5PMne20zgrSKN1FV49IGkc5iz6
         qR2HJl8y5sGzInCMlnrLmSn6wxJTfbZImIPB7qhNUxD0iJJmSKruPrjjpOBAwqUa+HtM
         YMix0G2KJDeK8vu/BIOnWLeNUcBDMW5ZXiczIDR3hOOknTXjG26VoLur/VfHALQlba9G
         kKzcVKRb90kC2bM328TYUdLGkaVD62IPETxEjSa8RwhdDf6pOFSMiY7bLpCH9RpMP/Cr
         w4GySQt+OhjaEHNgUFmiW6DDSGGxgXLTleAsZ7K7N6vkKErW8E7qmBCftHw20hc9umjL
         ZtQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pmo77UKoMzXJKQUoQ1g2vDSwLCWdCS5ldkpiJoejADo=;
        b=11gia9P+uKl/dlgSSxIftEFjgpMpW2uLkE9XsiLPg/H1xLQ60KrmKL/GD3SZ1QZHQM
         3P7qd+W2DTvUA9PsWsfXASWeQyw8UTT8IIZF606+Jy/1i1/FHihQA5qJZhZr1Cru3SZl
         Nfu5yRfWSV+8boJDzXh44uB6eFDB5CZlwOYdrjuFOOW7BPPDW2Wt57qHhCpXsriWEPQ0
         BLueRTYo2ucd9zIKA0e1IvNUjDHca5zWbusMsS0NktWtJWPp80ohNtaVWJz7hNb6450h
         rfBJ6aN4PVQtJrQ/WWzoJo9clJW/uuTnl1W1cCm86ZmtzDOPyqVWKm8BOdDx5oD/E4+i
         Fp6w==
X-Gm-Message-State: AO0yUKUbHmCQvsVhuGokRgrlndHsJg61MFsBP+Z4ysDSAs+ZLoQsJtAE
        VXsO8OJ7E8kc2E8iX5NFIcx7Yyz22uuVdZSM
X-Google-Smtp-Source: AK7set8VgB8x+u2fKo/xUB5QQ/nIAphdD6XyVN1SVaEXvN+z54+kI6GdvhBPc7hl+Iv0AoY2gWQUMQ==
X-Received: by 2002:a05:6000:14c:b0:2c3:dceb:4743 with SMTP id r12-20020a056000014c00b002c3dceb4743mr62208wrx.57.1675697697416;
        Mon, 06 Feb 2023 07:34:57 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id e12-20020a5d500c000000b002c3ea9655easm2197317wrt.108.2023.02.06.07.34.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 07:34:56 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/7] ASoC: dt-bindings: meson: covert axg audio to schema
Date:   Mon,  6 Feb 2023 16:34:42 +0100
Message-Id: <20230206153449.596326-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert AXG audio dt-binding documentation to schema

Changes since v1:
* Drop 2 patches applied with v1
* Drop node name patterns
* Fix examples indentation
* Yaml fixups requested by Krzysztof

Jerome Brunet (7):
  ASoC: dt-bindings: meson: convert axg tdm interface to schema
  ASoC: dt-bindings: meson: convert axg tdm formatters to schema
  ASoC: dt-bindings: meson: convert axg pdm to schema
  ASoC: dt-bindings: meson: convert axg fifo to schema
  ASoC: dt-bindings: meson: convert axg spdif input to schema
  ASoC: dt-bindings: meson: convert axg spdif output to schema
  ASoC: dt-bindings: meson: convert axg sound card control to schema

 .../bindings/sound/amlogic,axg-fifo.txt       |  34 ----
 .../bindings/sound/amlogic,axg-fifo.yaml      | 112 +++++++++++
 .../bindings/sound/amlogic,axg-pdm.txt        |  29 ---
 .../bindings/sound/amlogic,axg-pdm.yaml       |  82 ++++++++
 .../bindings/sound/amlogic,axg-sound-card.txt | 124 ------------
 .../sound/amlogic,axg-sound-card.yaml         | 183 ++++++++++++++++++
 .../bindings/sound/amlogic,axg-spdifin.txt    |  27 ---
 .../bindings/sound/amlogic,axg-spdifin.yaml   |  86 ++++++++
 .../bindings/sound/amlogic,axg-spdifout.txt   |  25 ---
 .../bindings/sound/amlogic,axg-spdifout.yaml  |  79 ++++++++
 .../sound/amlogic,axg-tdm-formatters.txt      |  36 ----
 .../sound/amlogic,axg-tdm-formatters.yaml     |  88 +++++++++
 .../bindings/sound/amlogic,axg-tdm-iface.txt  |  22 ---
 .../bindings/sound/amlogic,axg-tdm-iface.yaml |  55 ++++++
 14 files changed, 685 insertions(+), 297 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-pdm.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-pdm.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-sound-card.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-sound-card.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-spdifin.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-spdifin.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-iface.yaml

-- 
2.39.0

