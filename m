Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87D4A4AAFAA
	for <lists+devicetree@lfdr.de>; Sun,  6 Feb 2022 14:58:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241418AbiBFN62 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Feb 2022 08:58:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241123AbiBFN62 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Feb 2022 08:58:28 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 852AEC0401C6
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 05:58:21 -0800 (PST)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 57D4D3FE41
        for <devicetree@vger.kernel.org>; Sun,  6 Feb 2022 13:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644155892;
        bh=mhgmyPNP0m0BNQfRJEs+RA1d8S2sGALTwPK2/PdoeqQ=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=v5oXsn68VIdN1DEfQjdrnLMIbNtjhKQVdRTLIpyWFGu7KtADdIH2BnaBBaRqkNYs3
         sJPwrs5EqumdYc0vg/ll5QJhqNFCMfobsjWcIh+LevVwnGKg6laZRBIarHg1moOzcB
         W4ueC0DJGi4DkgbaMlT+ymkKVgIHNM2ZBocrdbTqdqnRYjEvEdWtljwury4QAvoSpF
         hvUoZbZTztKYGPsCw9slT6LWPrgznnynRcqGrMWCBitsr9sJK5uSS9MlWbcmNWuF1t
         q3JLFYknEammWovNUMefdyW4glbF9svB8fNiuKvY5S1mrsj7yBoGLiGrjQNF2cw2Zy
         J+BHo2sbD79jQ==
Received: by mail-wm1-f71.google.com with SMTP id r205-20020a1c44d6000000b0037bb51b549aso2120390wma.4
        for <devicetree@vger.kernel.org>; Sun, 06 Feb 2022 05:58:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mhgmyPNP0m0BNQfRJEs+RA1d8S2sGALTwPK2/PdoeqQ=;
        b=p+Xs6cQ1DdGCPnntKI01Wob4nlD4E7jtEknGG03lmMY8Qz1sQpCAe8CT+2mtIoVGvV
         xzJfPlixvGnpyhEwJpI5Ssa5n21uYE5er+yh9ZEvvulEBNHlRtzGI+R4nNMc0J4epPmw
         3GGgiopEWLrQNKbG7cz/7+TvzceyYWLWQfIkKV0Vfb6gq38gwc2r+HNVTwDLRF3cjc0S
         t5+4oevDq53+PoFSmv/heCvgN8lw97jH599Mt683uY8fFCbKUjc4S5WRQQ1Eltam1nye
         xa7TINVI9Ty7fjYPSd/i60v6/7LuP3jschIem+luDxanm0zyztUvvBYUMsfer/zBGQ3j
         Govg==
X-Gm-Message-State: AOAM532hXSee6f+uyEQBUBMUV3vrnb5limv3jGB9jg2NbdoA0TKp1D3F
        tVbiM+dRwRj5zWofS1TAN9DRkf3fQctUG3Uiofc1bDE47Lszel3cZ78ioK8zhw9+5T4QKywT2FD
        jzWusAq5/yfASSno43q/0p1ZFORv7IdUd3Q/ru/8=
X-Received: by 2002:a5d:6c67:: with SMTP id r7mr6590030wrz.518.1644155891714;
        Sun, 06 Feb 2022 05:58:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwkiHDCFlLARyPWdpSZMkOvUKQbIp825ke8GbU3gUeldtdtLFyU8aMsXLtKzR3p0cg53OhdNg==
X-Received: by 2002:a5d:6c67:: with SMTP id r7mr6590019wrz.518.1644155891514;
        Sun, 06 Feb 2022 05:58:11 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id e9sm8296888wrg.60.2022.02.06.05.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Feb 2022 05:58:11 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lukasz Luba <lukasz.luba@arm.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/8] dt-bindings: memory: convert to dtschema
Date:   Sun,  6 Feb 2022 14:57:59 +0100
Message-Id: <20220206135807.211767-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v2:
1. Re-order patches so timings get converted earlier. This fixes dt-checker
robot report.
2. Add Dmitry's review tag.
3. Three new patches:
   #6: dt-bindings: memory: lpddr3: deprecate passing timings frequency as unit address
   #7: memory: of: parse max-freq property
   #8: ARM: dts: exynos: remove deprecated unit address for LPDDR3 timings on Odroid

Changes since v1:
1. Drop patch 1 (ARM dts) - applied.
2. Correct description in lpddr2-timings (Dmitry).

Best regards,
Krzysztof

Krzysztof Kozlowski (8):
  dt-bindings: memory: lpddr2-timings: convert to dtschema
  dt-bindings: memory: lpddr3-timings: convert to dtschema
  dt-bindings: memory: lpddr3: convert to dtschema
  dt-bindings: memory: lpddr3: adjust IO width to spec
  dt-bindings: memory: lpddr3: deprecate manufacturer ID
  dt-bindings: memory: lpddr3: deprecate passing timings frequency as
    unit address
  memory: of: parse max-freq property
  ARM: dts: exynos: remove deprecated unit address for LPDDR3 timings on
    Odroid

 .../ddr/jedec,lpddr2-timings.yaml             | 135 +++++++++
 .../memory-controllers/ddr/jedec,lpddr2.yaml  |   6 +-
 .../ddr/jedec,lpddr3-timings.yaml             | 157 +++++++++++
 .../memory-controllers/ddr/jedec,lpddr3.yaml  | 263 ++++++++++++++++++
 .../memory-controllers/ddr/lpddr2-timings.txt |  52 ----
 .../memory-controllers/ddr/lpddr3-timings.txt |  58 ----
 .../memory-controllers/ddr/lpddr3.txt         | 107 -------
 .../samsung,exynos5422-dmc.yaml               |   3 +-
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi |   7 +-
 drivers/memory/of_memory.c                    |   6 +-
 10 files changed, 564 insertions(+), 230 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2-timings.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3-timings.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/lpddr2-timings.txt
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/lpddr3-timings.txt
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/lpddr3.txt

-- 
2.32.0

