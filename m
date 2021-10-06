Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E5F6423EB3
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 15:24:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238344AbhJFN0G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 09:26:06 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:37848
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238768AbhJFNZz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 09:25:55 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7C7A93F499
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 13:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633526642;
        bh=V+hluEgRJjqVht5qKdWyp1/U0W3007gMbYlNxX8GigA=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=tV7LeQw1epr2cKuuZKepMdW89BkIEgbz4Yr6gRwlG1B31Obys26296wj0ZmvL9dkT
         w6Shbv0hjvQcJIU727Nq91j2dego4NB0P0D88oN/YMS7XQwq04UE9hr/TLvBiJH//8
         nMChtse/MQaie6fTaJVdOi4Gc1KJf1XsRrdAAvHnWbVBbEUBctEt9Of9Wi3CdBIYEZ
         G706wgAMa0pY0X2IbHpxfbXL6WV58uv3tloASwoqpiO02IKatBbTgv3AMWdmCQc411
         RZZMPaOU89BGdZ0rAAkSeEwCvLB0Lr8OQllhfl4IZjgb6v6JHzK40Gc3O3iHv3wDXN
         GeFnDnt8MMXYA==
Received: by mail-lf1-f71.google.com with SMTP id c6-20020a05651200c600b003fc6d39efa4so1980381lfp.12
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 06:24:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V+hluEgRJjqVht5qKdWyp1/U0W3007gMbYlNxX8GigA=;
        b=CTroIfq5tW+7ZqfpGC+Yhh1cbM6BclVvs7Urm47QNK4v7f3qCHa1qkAik+OReAVPcV
         2h5J0K5vmcQMbTpZqC+kfcQmf8CHv99zfI+SqyGM5HKWIe2NEmmfD7W3+ToyZ6revWZe
         45IAW0Ft0aSbYnMDN2LXbqr71Z3vJAlTo3N4NL0JYtxtDgVca3qB9/oUEiY+lTB331L1
         E7x7bmAmGVpMfjevXWmcInRazA+bBpMb0UtMbTHLg1IYvemNvrvlr+8Dtwyia1A6uukt
         uyxXXc8p1XMbxUbcuP8/6qcGEJgI7JaFW0vBXSLr5tP3wNl+UVENjndv/gor96YFPKFa
         0jvA==
X-Gm-Message-State: AOAM532h96I8GGHGC97DitKKxc686RyX2iYbTIwCdwtpK333qJ8zTUSW
        e1vgZ17LgFmJQt4oDcqvFI7UhZibkGpWE6uRJZ5zu0nLZ2YjHblf2eQtaNiWMJ7IXPH8hM3RfxD
        WpVyjOyxXghM/EL/xjRWSOryG9CjljycoHhu0nsM=
X-Received: by 2002:a05:651c:44f:: with SMTP id g15mr30072051ljg.396.1633526641811;
        Wed, 06 Oct 2021 06:24:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxIYlWNEbj8/47t8HcXnaczo+J+CX9tbfMdsDZMuuvo+eey1DO0juu9idFhEgf4/NpOvbliSw==
X-Received: by 2002:a05:651c:44f:: with SMTP id g15mr30071906ljg.396.1633526640134;
        Wed, 06 Oct 2021 06:24:00 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y12sm2002819lfg.115.2021.10.06.06.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 06:23:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 00/10] regulator/mfd/clock: dt-bindings: Samsung S2M and S5M to dtschema
Date:   Wed,  6 Oct 2021 15:23:14 +0200
Message-Id: <20211006132324.76008-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi All,

Changes since v2
================
1. Add Rob's tags.
2. Remove "regulator-name" from properties (all regulator dtschema).
3. Move "unevaluatedProperties" higher to make code easier to read (all regulator dtschema).
4. Add ref-type to op-mode property (patch 6: s5m8767 regulators).

Changes since v1
================
1. Drop DTS patches - applied.
2. Fully remove bindings/regulator/samsung,s5m8767.txt .
3. Minor subject reformatting and few typos in text.


Intro
=====
This patchset converts all devicetree bindings of Samsung S2M and S5M
PMIC devices from txt to dtschema.

It includes also two fixes because later conversion depends on it
(contextually).


Merging/dependencies
====================
1. Regulator related binding changes depend on first two commits (the
   fixes), because of context.
2. The mfd bindings depend on clock and regulator bindings.

The fixes and bindings changes (patches 1-10) should go via the same
tree.  For example regulator or mfd tree.

Another alternative is that regulator patches (1-2, 4-6) go via Mark who
later gives MFD a stable branch/tag to pull. Then the clock and MFD
bindings would go on top via MFD tree. Or any other setup you would like
to have. :)


Overview of devices
===================
Essentially all Samsung S2M and S5M PMICs are very similar devices. They
provide the same functionality: regulators, RTC, 2 or 3 clocks and main
power management (e.g. power cut to SoC).

The differences are mostly in registers layout and number of regulators.

The drivers are built around one common part, mfd/sec-core.c, and share
some drivers between devices:
1. MFD sec-core for all devices,
1. one clock driver for most of devices,
2. one RTC driver for all devices,
3. three regulator drivers.

The regulator drivers were implementing slightly different features,
therefore one regulator binding for all devices does not make much
sense.  However the clock device binding can be shared.

The final dtschema bindings try to implement this - share only the clock
bindings.

Best regards,
Krzysztof

Krzysztof Kozlowski (10):
  regulator: s5m8767: do not use reset value as DVS voltage if GPIO DVS
    is disabled
  regulator: dt-bindings: samsung,s5m8767: correct
    s5m8767,pmic-buck-default-dvs-idx property
  dt-bindings: clock: samsung,s2mps11: convert to dtschema
  regulator: dt-bindings: samsung,s2m: convert to dtschema
  regulator: dt-bindings: samsung,s2mpa01: convert to dtschema
  regulator: dt-bindings: samsung,s5m8767: convert to dtschema
  dt-bindings: mfd: samsung,s2mps11: convert to dtschema
  dt-bindings: mfd: samsung,s2mpa01: convert to dtschema
  dt-bindings: mfd: samsung,s5m8767: convert to dtschema
  dt-bindings: mfd: samsung,s5m8767: document buck and LDO supplies

 .../bindings/clock/samsung,s2mps11.txt        |  49 ---
 .../bindings/clock/samsung,s2mps11.yaml       |  45 +++
 .../bindings/mfd/samsung,s2mpa01.yaml         |  91 ++++++
 .../bindings/mfd/samsung,s2mps11.yaml         | 267 +++++++++++++++
 .../bindings/mfd/samsung,s5m8767.yaml         | 307 ++++++++++++++++++
 .../bindings/mfd/samsung,sec-core.txt         |  86 -----
 .../bindings/regulator/samsung,s2mpa01.txt    |  79 -----
 .../bindings/regulator/samsung,s2mpa01.yaml   |  62 ++++
 .../bindings/regulator/samsung,s2mps11.txt    | 102 ------
 .../bindings/regulator/samsung,s2mps11.yaml   |  44 +++
 .../bindings/regulator/samsung,s2mps13.yaml   |  44 +++
 .../bindings/regulator/samsung,s2mps14.yaml   |  44 +++
 .../bindings/regulator/samsung,s2mps15.yaml   |  44 +++
 .../bindings/regulator/samsung,s2mpu02.yaml   |  44 +++
 .../bindings/regulator/samsung,s5m8767.txt    | 145 ---------
 .../bindings/regulator/samsung,s5m8767.yaml   |  74 +++++
 MAINTAINERS                                   |   9 +-
 drivers/regulator/s5m8767.c                   |  21 +-
 18 files changed, 1080 insertions(+), 477 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/samsung,s2mps11.txt
 create mode 100644 Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/samsung,s2mpa01.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
 delete mode 100644 Documentation/devicetree/bindings/mfd/samsung,sec-core.txt
 delete mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mpa01.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mpa01.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mps11.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mps11.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mps13.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mps14.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mps15.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s2mpu02.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/samsung,s5m8767.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/samsung,s5m8767.yaml

-- 
2.30.2

