Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEE45480B76
	for <lists+devicetree@lfdr.de>; Tue, 28 Dec 2021 17:43:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232398AbhL1QnM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Dec 2021 11:43:12 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:49394
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229843AbhL1QnL (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Dec 2021 11:43:11 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 08FE83F1A5
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 16:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640709791;
        bh=QEjdNCFh1I2/FVAvbi9/CNnV0tj1pywVMVJDrsQ6S/M=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=hO9SBTCvj4yJwTZp4qQSCrRm12qihM+xaKjm7ujrza1iXtVu9AQTt5G36Vx95Gfvi
         EsijNpVbzvR166Ax2BY7iX/DxHHwx70mPpi4tJl6is55ctFMtWFWIJxV8g8AyYQuMU
         XZNCvv2PlSwwTcb1gF5a6Sp79afhLQPtBjS9m7aanaD9UzODD8kA53Gu+ixpsBwtuz
         hZeK5/1XDBJ4qdwrMNqAnwYhQad2SUx91h47nurd+KDw0GjwbIhhAzfUVAAbQwTx+R
         yx7bhEYsYAntoj/cdmQ67XC9hk9ZZi2wv1f7ruADMUvlgzCNKLRBSRDH3XYhRAW5lr
         NTzXM3pddjQuA==
Received: by mail-lj1-f199.google.com with SMTP id z9-20020a2e3509000000b0022d8e7f5889so5876645ljz.16
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 08:43:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QEjdNCFh1I2/FVAvbi9/CNnV0tj1pywVMVJDrsQ6S/M=;
        b=1d2/J4ujgrQOO6o1ZO4/xeUYV3diEpNNQ+ULsA6yd8tR6TIGqqGpeKZHt3YQyn/8vM
         OYO/n1CEQ4g7HYRLgARXF/+JfVhlysJIIohKfsWUKtJIC5BcQN8kCnIm0Cp/ssTko0sH
         vhrp1heFEyfoF8esCNSoQ/Nrm57dDym+ANYixy5fIp2Cw2RrCW78YnQu8yI+9204YgGK
         bLHeWFj4UtOrpdebNYYYWObPBy6Wg0PfzZ9nIR4dnZsDPkc70QIAUF/aWj+sVrtsNkNS
         8ZCC0KR0E3j7/+YqqzOw3YVBW2fX1h6tgjdQvLhzD/qwZwSpC7c2rbUPkShaMVtqydY+
         Hvyw==
X-Gm-Message-State: AOAM531S8GJLAhfqC0y+dpYll8oJcoIjwJkMl/oHgIfrRi/a4piPaQUc
        LsCZ+5bYISfYXPm2gedQnhWJ6O28pVFFZtKmJbRTNUlcn6aImBV2O19V8LNTHCZHjVp74+0JCs0
        5e5D6WIsP946KOywV4sN0oHDWc8nGaDz6gUaUL0E=
X-Received: by 2002:a05:6512:2103:: with SMTP id q3mr12696201lfr.538.1640709790381;
        Tue, 28 Dec 2021 08:43:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyuF3oWT8cZMD7Nqx/2DjV9aAVXl8AQ/O4g5c+EzTbwKY07FXphsdOMJMAV+vz7PorU0kowRQ==
X-Received: by 2002:a05:6512:2103:: with SMTP id q3mr12696184lfr.538.1640709790220;
        Tue, 28 Dec 2021 08:43:10 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id u5sm968701lja.36.2021.12.28.08.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 08:43:09 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 0/3] regulator/mfd: dt-bindings: maxim,max77802: convert to dtschema
Date:   Tue, 28 Dec 2021 17:43:02 +0100
Message-Id: <20211228164305.35877-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Dependencies:
1. DTS patch: nothing depends on it, sending here so Rob's automatic
   checker won't complain about DTS.
   I will take it via Samsung SoC tree.

2. Final MFD patch depends on regulator, so the two last patches could
   go via Rob's, Mark's or Lee's trees. :)

Best regards,
Krzysztof

Krzysztof Kozlowski (3):
  ARM: dts: exynos: drop unsupported MAX77802 regulators on Odroid XU
  regulator: dt-bindings: maxim,max77802: Convert to dtschema
  dt-bindings: mfd: maxim,max77802: Convert to dtschema

 .../devicetree/bindings/mfd/max77802.txt      |  25 ---
 .../bindings/mfd/maxim,max77802.yaml          | 194 ++++++++++++++++++
 .../bindings/regulator/max77802.txt           | 111 ----------
 .../bindings/regulator/maxim,max77802.yaml    | 118 +++++++++++
 MAINTAINERS                                   |   2 +-
 arch/arm/boot/dts/exynos5410-odroidxu.dts     |  12 --
 6 files changed, 313 insertions(+), 149 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/max77802.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77802.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/max77802.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77802.yaml

-- 
2.32.0

