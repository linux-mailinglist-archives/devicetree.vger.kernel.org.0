Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71E4D639CDB
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 21:41:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229641AbiK0UlG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 15:41:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbiK0UlF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 15:41:05 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82824C741
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:41:03 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id u27so3534130lfc.9
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fnqM8n9PGKGOvzAFEIiFMORJd4lJURGGn2BL+kEfNIQ=;
        b=vs2qhd9D4zvjiwLqg3Vfjy1XJCOSrrmrj9Fm4gBeZv2riWyP8Sbzb/j6TDcAv3txKL
         /Ojqg6f2+NrgPtRI5vVr8cTH/7W4ZEoNEc/9r2uJ1FKQDTK7Lehoj2VsgMh4wJQiUQie
         14qb2VlBUnJhmJ5CxVhjDeUBlLSWNhR646cAGp9fmymUw5Fw/jIKd/7bTrwCHLr6HS/I
         LIeXh09TwEVuvfCo3E6RpwDl2VGeEFUrI1ouKieKaLg4u+Du1U/WPLV46T2L6XapopGE
         o2wUlBgL2md+QslIWkOPzmqVhdRm+HuJqVbvgMrRMud6AEfJ4oA4AOevIHIj5qLL3F+s
         Y59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fnqM8n9PGKGOvzAFEIiFMORJd4lJURGGn2BL+kEfNIQ=;
        b=Wc3pI1HTdwbfzXYTrQwLjaWVHHE7cTgGa0OkyjBqs1DfS+HJxZGMtQI+ZHp9xcwHiD
         Q9xH7cgzeL1Kx1XoUgpsXMW0EITln5qut0i6VRgxdnP9bSxxctFWzq/bid0MQgqtqJpH
         Evm/DdqRJjc7erfLOYSIyyTNpCesIJJSLoD+5CipVOJEQ97WeiG9sZBNLLFSCERSVSIl
         ubXHur9LX2GY2JV3nPPoTXzQmVFUtBQRjdXZnPlvcpc1RCNJtv0EJ4x3d/v4kqUSH/PO
         TX4ZICBZ8PczY1LakCjMpcjKp7OqMsZq/0q8PlzbUim33qTUZYImuCDH2T1ZpTQ8EER+
         vmMQ==
X-Gm-Message-State: ANoB5pkD8pLdBvItxnduYAmJi5YSsNi2k33x0unoBJjp+jUThsvvE87/
        JO2SIsWygVFgPJnbsW4MWOSpOw==
X-Google-Smtp-Source: AA0mqf6p5Yvfm9RBuO07olapiME1mbnRSXDUX3FGr319MQtgH4Z6VWefEbtTH5wZlK3lshfJ9H7zGQ==
X-Received: by 2002:a05:6512:e9d:b0:4b1:8698:9f3e with SMTP id bi29-20020a0565120e9d00b004b186989f3emr15263055lfb.421.1669581661879;
        Sun, 27 Nov 2022 12:41:01 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bi39-20020a05651c232700b002773ac59697sm644607ljb.0.2022.11.27.12.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 12:41:01 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Vincent Knecht <vincent.knecht@mailoo.org>,
        Nikita Travkin <nikitos.tr@gmail.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Andrew Davis <afd@ti.com>, Gene Chen <gene_chen@richtek.com>,
        Bjorn Andersson <andersson@kernel.org>,
        ChiYuan Huang <cy_huang@richtek.com>,
        Luca Weiss <luca@z3ntu.xyz>, Neil Brown <neilb@suse.de>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/6] leds: dt-bindings: use unevaluatedProperties:false and few fixes
Date:   Sun, 27 Nov 2022 21:40:52 +0100
Message-Id: <20221127204058.57111-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v1
================
1. New patch #3: dt-bindings: leds: lp55xx: switch to preferred 'gpios' suffix
   (Fixing DTS in separate patches, see [1] [2] which superseded [3])
2. New patch #6: dt-bindings: leds: ti,tca6507: correct Neil's name

[1] https://lore.kernel.org/linux-devicetree/20221127203240.54955-1-krzysztof.kozlowski@linaro.org/T/#md1ccb03ee81f820e0c7b8043111d56b5ed0d1e2f
[2] https://lore.kernel.org/linux-devicetree/20221127203034.54092-1-krzysztof.kozlowski@linaro.org/T/#m17f1d2f79a35fce43509edc351a84bc9dab980c1
[3] https://lore.kernel.org/linux-devicetree/20221125173602.cnipos5oo4ncxsac@mercury.elektranox.org/

Best regards,
Krzysztof

Krzysztof Kozlowski (6):
  dt-bindings: leds: use unevaluatedProperties for common.yaml
  dt-bindings: leds: lp55xx: allow label
  dt-bindings: leds: lp55xx: switch to preferred 'gpios' suffix
  dt-bindings: leds: lp55xx: rework to match multi-led
  dt-bindings: leds: mt6360: rework to match multi-led
  dt-bindings: leds: ti,tca6507: correct Neil's name

 .../bindings/leds/issi,is31fl319x.yaml        |  1 +
 .../devicetree/bindings/leds/leds-aw2013.yaml |  1 +
 .../devicetree/bindings/leds/leds-gpio.yaml   |  2 +-
 .../devicetree/bindings/leds/leds-lp50xx.yaml |  8 ++++
 .../devicetree/bindings/leds/leds-lp55xx.yaml | 47 ++++++++++++++++++-
 .../devicetree/bindings/leds/leds-mt6360.yaml | 43 +++++++++++++++--
 .../devicetree/bindings/leds/leds-pwm.yaml    |  2 +-
 .../bindings/leds/leds-qcom-lpg.yaml          | 12 ++++-
 .../devicetree/bindings/leds/leds-rt4505.yaml |  1 +
 .../bindings/leds/leds-sgm3140.yaml           |  1 +
 .../devicetree/bindings/leds/ti,tca6507.yaml  |  4 +-
 11 files changed, 111 insertions(+), 11 deletions(-)

-- 
2.34.1

