Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 352D44813E8
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 15:15:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240183AbhL2OPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 09:15:37 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:36544
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240159AbhL2OPf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 Dec 2021 09:15:35 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 060CC40710
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640787333;
        bh=UlJjLAfS40qt5leudPWhfuRwJJRufaBrjQlrhE6JqdI=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=fbUWzs3gCad0e67u/90GE275tv/Lnz4IxlIb4CyO8SrX8IEq9qC530qBY2ZtyUyG2
         LbVEUWRAivkfpwXt4XhdkTrI2Scwvqi9FvK9924yot1oxu+QDUGzSTYNlmMTZ3oy4B
         t0BL2e9Z3fULeKUqTaD6deKHMbOribBqCc5HwrscLqOxxwEvQMHJCR0Em55zKYT11e
         Rz0BoQwnNjumO8Z9wn5Kqram3f6+SOgaKjfvR8Dpu9m6Pwg/v5gThyRV+8W3pDSHb2
         Gxt3x9LbVsGtNtRNExee5WJs3rYoBH4ho1gMXqQP/0P981H/tiVIlGv24A41XsJpOb
         TH+ATPhgzt1uQ==
Received: by mail-lj1-f199.google.com with SMTP id e7-20020a05651c090700b0022d70efe931so7332542ljq.10
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 06:15:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UlJjLAfS40qt5leudPWhfuRwJJRufaBrjQlrhE6JqdI=;
        b=AF9SRHsXBQE+ScJx6c3fVsNddALTA2oXYUu/oTNnCCTsc7MP0Z+e2ldg8T+7vuTrMP
         IiuQpsO9o48vcVqxVTlKv5AYx6jy+NzOc3NK03Kkku5sfXSyBVk+zxuHtXv95JCCc+g6
         K2Aaw5R4cdUmJY6iG5y3xIbmopxu8YoRumde7mw2pDm4ey9THVro3lNHZUReGW0OsyCI
         mBbNqsVX4xf5+pFMpGFfkpXtYj63sx0o1w/l0EZLTBJNsYnQ+8ZGR74G1mXY/lbr9Ph2
         LaJMAghYlUYVXaee1wevIL0/YnEsSksbkrz1rcNiwg8sovrBSrygM7h9aSAI45AtpgQe
         Kdvw==
X-Gm-Message-State: AOAM530FeOuuo5HOG1GkGAWWVdHuAFzpkYtOSE2mu6tMlsU6BaVPKYYh
        56YmgF8gJTdbUPHHqQqKXkWrcsWDPGZz8J4kBf4ny3q3pjO7m1kcgS7BlrfNfwJuggSB3VMt2Vl
        NQNrb4OKgEXpvB30Xr5g24Zk1eZV1fO1xkj8h3io=
X-Received: by 2002:a05:651c:ba8:: with SMTP id bg40mr18007302ljb.276.1640787332073;
        Wed, 29 Dec 2021 06:15:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz5TtuMxYfpkf1FSMtnQIraHesCWHTbGXlzooBflaELIyumSIPdU/aIFK3/MPK4jIGTN5L8Vw==
X-Received: by 2002:a05:651c:ba8:: with SMTP id bg40mr18007281ljb.276.1640787331900;
        Wed, 29 Dec 2021 06:15:31 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id a16sm1316164ljm.98.2021.12.29.06.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 06:15:31 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 0/4] mfd/power/regulators: dt-bindings: max14577: convert to dtschema
Date:   Wed, 29 Dec 2021 15:15:20 +0100
Message-Id: <20211229141524.34174-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Dependencies:
1. DTS patch 1/4: nothing depends on it, sending here so Rob's automatic
   checker won't complain about DTS.
   I will take it via Samsung SoC tree.

2. Final MFD patch (4/4) depends on regulator and power, so the last
   patches (2+3+4) should go via same tree.

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  ARM: dts: exynos: Align MAX77836 nodes with dtschema on Monk and
    Rinato
  dt-bindings: power: supply: maxim,max14577: convert to dtschema
  regulator: dt-bindings: maxim,max14577: convert to dtschema
  dt-bindings: mfd: maxim,max14577: convert to dtschema

 .../devicetree/bindings/mfd/max14577.txt      | 147 -------------
 .../bindings/mfd/maxim,max14577.yaml          | 195 ++++++++++++++++++
 .../bindings/power/supply/maxim,max14577.yaml |  84 ++++++++
 .../bindings/regulator/maxim,max14577.yaml    |  81 ++++++++
 MAINTAINERS                                   |   3 +-
 arch/arm/boot/dts/exynos3250-monk.dts         |   2 +-
 arch/arm/boot/dts/exynos3250-rinato.dts       |   2 +-
 7 files changed, 364 insertions(+), 150 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/max14577.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max14577.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/maxim,max14577.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max14577.yaml

-- 
2.32.0

