Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78A0F48AB1B
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 11:13:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348546AbiAKKNo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 05:13:44 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:41792
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237533AbiAKKNn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 05:13:43 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D85B23F1A2
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 10:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641896021;
        bh=dor9qMPQ0mrrX4bfZ8uDHf6Jen+W2LQ6ZgWRYFeDuWA=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=mBHpXTQ9NSk07MLK7pvpGDnTRvRdw2s3kyy3kNedNQv2oFrKpxRaRJf/BN712aaR3
         UqHnsGjhVYeGIltNvVDaPGX1w3FTgb6sSNohtO3Yv7gXGq+hvwZ9bLRquFuwOwyjr/
         GolYdnMoH8dhagiaQ/63aHVvyKN5y/7UGouAt3bfchsHmV4mqeVFGnLIxmvmL+9TxN
         e6m/EhMorqK1thDUBHqivWSyKQzqZVQirbWuHMyP+g6AtfSo8X97eYNmoLLlkXckDN
         13jGPAohD7gpkJPjjJEXKgDz9vLFoXmDk1gswtGiAu0b2LxbNWE7sFjGJlGUys5ICX
         M95h7GKuxg1WA==
Received: by mail-ed1-f72.google.com with SMTP id eg24-20020a056402289800b003fe7f91df01so3863062edb.6
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 02:13:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dor9qMPQ0mrrX4bfZ8uDHf6Jen+W2LQ6ZgWRYFeDuWA=;
        b=24Xh9XD/tLJyogBIzSg0jmAAR/8FaOjpK3bhkoMLGPa+afhfJzm6NEARBiU/Ko2R3w
         cMw36XlvYhFPFq5AnXqoMTubyGQpwMwEhpEe52P1gUM06h8rNIAPE3r02ue0rkfMuC6G
         ZmpaSAwk1tHr8/SvoYhogM+PTAVhBMqHWvamxYMTE8AJ/fALvVaNn5vVWMYVThltEZN5
         /n0pwLAGS6KdNnqkXA8w9V/q3qE1dT5TJCTvp8SB8Qj/H5mGoZ6j7krgHlNKB2RX520v
         xaUJdiPZnmOV/yOZ9EehAfllYHdLu08/dEOgGYZZSAbZKpDg5wYzOHxuc6tZxD7dGy3W
         b5Ew==
X-Gm-Message-State: AOAM533Z5LuGxoJya4y13EgWVCCrEZHk5QGG+Oj/Sd1Wn5NKDv3cKceU
        HCN493bhAcFPapnc/WQuZZKnPl4jn03k81BPeRpzWkBBFsuTPjC4hLfTYErXzkdPSM1h0PczJpv
        IHNliQUmh1pdpnQ40I/4uLQ50+H0eBmpL+EfxNns=
X-Received: by 2002:a17:907:7812:: with SMTP id la18mr2985718ejc.361.1641896021573;
        Tue, 11 Jan 2022 02:13:41 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzS+KRg2Po2ZmPguoYjn6vWAcaef7toI3fl6TH95T7A0/0ObQGfS0r1niugTRZEPPNRwiEOTw==
X-Received: by 2002:a17:907:7812:: with SMTP id la18mr2985700ejc.361.1641896021430;
        Tue, 11 Jan 2022 02:13:41 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id 26sm3431268ejk.138.2022.01.11.02.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 02:13:41 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pratyush Yadav <p.yadav@ti.com>, linux-spi@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>
Subject: [PATCH v2 0/4] spi: dt-bindings: samsung: convert to dtschema
Date:   Tue, 11 Jan 2022 11:13:34 +0100
Message-Id: <20220111101338.58630-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v1
================
1. Patch 2: describe devices matching compatible, correct issues pointed out by
   Rob, add reviewed-by tag.
2. New patches 3 and 4.

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  ARM: dts: exynos: split dmas into array of phandles in Exynos5250
  spi: dt-bindings: samsung: convert to dtschema
  spi: dt-bindings: samsung: allow controller-data to be optional
  spi: s3c64xx: allow controller-data to be optional

 .../spi/samsung,spi-peripheral-props.yaml     |  36 ++++
 .../devicetree/bindings/spi/samsung,spi.yaml  | 195 ++++++++++++++++++
 .../bindings/spi/spi-peripheral-props.yaml    |   1 +
 .../devicetree/bindings/spi/spi-samsung.txt   | 122 -----------
 MAINTAINERS                                   |   2 +-
 arch/arm/boot/dts/exynos5250.dtsi             |   9 +-
 drivers/spi/spi-s3c64xx.c                     |  14 +-
 7 files changed, 242 insertions(+), 137 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/samsung,spi-peripheral-props.yaml
 create mode 100644 Documentation/devicetree/bindings/spi/samsung,spi.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-samsung.txt

-- 
2.32.0

