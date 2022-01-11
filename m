Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6B148B436
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 18:44:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343892AbiAKRoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 12:44:19 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53438
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1344170AbiAKRoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 12:44:18 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 31B79402FB
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 17:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641923057;
        bh=K6TIKqnjo6Z8t6mBeP487I6M6x6bhz5R1p4bPRLMzE8=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=Qr3Nn54ojkcNcPMPfp+vpMJSkssuqWoKmiCc72L8gBFgK/kWa4sc2FmvgSKDufLaM
         iXXR7OvSnBKI/m2NLsOAKrEgC3sUXGrwRiDujEZjyh7SlYuC7ZgSy4p5aQqjmWJcV/
         E07UJ+0sIc9lxKXebpukJXLkPemmrhI80uLjtz2TCjWOi1RLFh7qJQcsEYj7fQg+SA
         9d7DzI5ilOP6jHuicgmn6THteUhX9TpWtSUlc8cNVM8UULNBCAtYvV5rAFIPJJ1uoy
         bQFHUnWQl6XDKjzKQletIQKLYC9MwDJVi9Tfx2W7Aq1klTAp8XkVuL6hoKjm8qi3At
         3OWif2MYY0bsg==
Received: by mail-ed1-f69.google.com with SMTP id o20-20020a056402439400b003f83cf1e472so14016009edc.18
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 09:44:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K6TIKqnjo6Z8t6mBeP487I6M6x6bhz5R1p4bPRLMzE8=;
        b=W2YTmnn07uCgD4yMN2B/rkzEALjmbgwOBKduq88Wz69LmB5EyVDd4vTg8vBiKn51Co
         4cBYuHSuTS3HNc3tjaTZm+ThDG/Jt1sKPvDqwpQo+gVZj/iB4OfVh5DYXdvDMPl+lJMd
         mHo3RhpQqbIPqKkX849B4lZF3lxvEBm5D/pXc/ir9RIK6rzaM/1r/FBT7qY8EDJUEET6
         KTfZrHD+US/ZZs9oObprjpSLcMMS0vUz6O2gAQjTIang+imccOnH+wf1cPtGXGX7AflS
         jHZlO0SeZ2EM9tTYVyZjFtRuI+mKSkCkcaFyONMG7Uno7XWB/iq7d/670WjvDAxt/THi
         XyNA==
X-Gm-Message-State: AOAM532FS0gfyxo5/JIIDinXxkkM9Vh0MWH5UhL4BFLKtk0rT3DWYBnw
        jXKUdOkxEOAgPcfKzEcK1GIztPsYXFLprx2xlXbKW0F+uLhjxdqBfYUsYgU8VJUFbIynzN4Rzbz
        aymkJ03oS9cOH43aisv71KKDPPX063ObUbESGbQQ=
X-Received: by 2002:a17:906:65c8:: with SMTP id z8mr4793716ejn.727.1641923056537;
        Tue, 11 Jan 2022 09:44:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzaIofwwxy3qHNgZ3nVD9aWtNXx8g9e2xukgwL5AYPdzN+YUnwiTMTAX3Y/lQKKaSOAWYQCAg==
X-Received: by 2002:a17:906:65c8:: with SMTP id z8mr4793703ejn.727.1641923056331;
        Tue, 11 Jan 2022 09:44:16 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id g9sm3758657ejo.222.2022.01.11.09.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 09:44:15 -0800 (PST)
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
Subject: [PATCH v2 0/4] mfd/power/regulators: dt-bindings: max14577: convert to dtschema
Date:   Tue, 11 Jan 2022 18:43:33 +0100
Message-Id: <20220111174337.223320-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v1
================
1. MFD: Use absolute path to schemas
2. Regulator: mention all allowed properties,
   additionalProperties=false, add min/max values for voltages and
   current, don't use patternProperties when not needed.

Dependencies
============
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
 .../bindings/regulator/maxim,max14577.yaml    |  92 +++++++++
 MAINTAINERS                                   |   3 +-
 arch/arm/boot/dts/exynos3250-monk.dts         |   2 +-
 arch/arm/boot/dts/exynos3250-rinato.dts       |   2 +-
 7 files changed, 375 insertions(+), 150 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/max14577.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max14577.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/maxim,max14577.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max14577.yaml

-- 
2.32.0

