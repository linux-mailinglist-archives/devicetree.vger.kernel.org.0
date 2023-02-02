Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3C8F6886A7
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 19:38:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbjBBSiH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 13:38:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231905AbjBBSiE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 13:38:04 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEA484F851
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 10:37:24 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id t7so2565274wrp.5
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 10:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H85BNtbicOdZEb38uhjtGBMxJZW5JkXIotuHsx7Jfnk=;
        b=IbFgd4TJ33+H4SaOwRyEWu6cWJiQiPeX9lhQApCcR7ems5iUP2ftxi1ogXy60RDAH3
         EQB5FEo0lzHU016yPfz3Gl0swVHOUsKVKlXteWQI40qYhCT6YWBM/ZZtLck1TpU+HdJF
         oiUWrOki6KugGbsRQ0bo0aUuADU2QZEr3VUD58M8KhGjy5GPcDjaHUFnxEFJuyrDEqZh
         rL6IHIAKB6OGmXwnjw1Qc7KXXM4YXNuKQzn6x1yT52ZA+Temm2XxFL+dxOV9dacF22Y8
         EIsPjJlVBSVT4QNR/qfs5kNDYvzjK8dcFTjsZ5ThvMYirB+641tpIWORaVrYJDGGjwiN
         bGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H85BNtbicOdZEb38uhjtGBMxJZW5JkXIotuHsx7Jfnk=;
        b=UOo9i9+GbrtS7uk7dHMxTc95m0E1ZHk9WLy84jTaIf31EOeNooJHBGMci7L/lWChQ6
         MtMNrqXX/eykWwiLsGzjN/AX+Djnl3LB+4AoYSpUrv4LjQ1IN61gZYwsoPfdbds28h0Q
         bOVNeaS8neXaPu80o6pjL75ScdgdMUR4CC+U/ZAYNNLXNH16gFzMIteaEf20VtiefQBu
         OymKofsp/rr8LpKyklCGbvUxgDdH2ljQx1RFtLtRGqbwkUbBsdrzvKpSXYEBiPxtDmE4
         A0b0LdlSA58SCUBG+LX8M7bLokqfyNPV0sQwqtH3vnRlIesbCjS4LQ8ZSISZhV5ZtgKw
         s1xQ==
X-Gm-Message-State: AO0yUKW6a6QNmTfP0VD2XQFGrpjhCe4l067Q+/jD9Y9EM8YMO4DEkCHE
        FXd4A2ZM+sVv1RCni/umMawviA==
X-Google-Smtp-Source: AK7set+VKQzzzrAghb4KlHvOyHw5gRfGxFCvlSyBRvRuD7rBtzhM9j1p4cLIk2Ze/JvU6OPDnwyIHw==
X-Received: by 2002:a05:6000:188f:b0:2bf:bd69:234b with SMTP id a15-20020a056000188f00b002bfbd69234bmr8166688wri.32.1675363043086;
        Thu, 02 Feb 2023 10:37:23 -0800 (PST)
Received: from localhost.localdomain (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id p12-20020a5d48cc000000b00241fab5a296sm164664wrs.40.2023.02.02.10.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 10:37:22 -0800 (PST)
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
Subject: [PATCH 0/9] ASoC: dt-bindings: meson: covert axg audio to schema
Date:   Thu,  2 Feb 2023 19:36:44 +0100
Message-Id: <20230202183653.486216-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert AXG audio dt-binding documentation to schema

Jerome Brunet (9):
  ASoC: dt-bindings: create component common schema
  ASoC: dt-bindings: meson: fix gx-card codec node regex
  ASoC: dt-bindings: meson: convert axg tdm interface to schema
  ASoC: dt-bindings: meson: convert axg tdm formatters to schema
  ASoC: dt-bindings: meson: convert axg pdm to schema
  ASoC: dt-bindings: meson: convert axg fifo to schema
  ASoC: dt-bindings: meson: convert axg spdif input to schema
  ASoC: dt-bindings: meson: convert axg spdif output to schema
  ASoC: dt-bindings: meson: convert axg sound card control to schema

 .../bindings/sound/amlogic,axg-fifo.txt       |  34 ----
 .../bindings/sound/amlogic,axg-fifo.yaml      | 116 +++++++++++
 .../bindings/sound/amlogic,axg-pdm.txt        |  29 ---
 .../bindings/sound/amlogic,axg-pdm.yaml       |  86 +++++++++
 .../bindings/sound/amlogic,axg-sound-card.txt | 124 ------------
 .../sound/amlogic,axg-sound-card.yaml         | 182 ++++++++++++++++++
 .../bindings/sound/amlogic,axg-spdifin.txt    |  27 ---
 .../bindings/sound/amlogic,axg-spdifin.yaml   |  90 +++++++++
 .../bindings/sound/amlogic,axg-spdifout.txt   |  25 ---
 .../bindings/sound/amlogic,axg-spdifout.yaml  |  83 ++++++++
 .../sound/amlogic,axg-tdm-formatters.txt      |  36 ----
 .../sound/amlogic,axg-tdm-formatters.yaml     |  90 +++++++++
 .../bindings/sound/amlogic,axg-tdm-iface.txt  |  22 ---
 .../bindings/sound/amlogic,axg-tdm-iface.yaml |  59 ++++++
 .../bindings/sound/amlogic,gx-sound-card.yaml |   2 +-
 .../bindings/sound/component-common.yaml      |  21 ++
 .../devicetree/bindings/sound/dai-common.yaml |  11 +-
 17 files changed, 731 insertions(+), 306 deletions(-)
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
 create mode 100644 Documentation/devicetree/bindings/sound/component-common.yaml

-- 
2.39.0

