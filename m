Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3090B64C0C5
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 00:43:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229699AbiLMXnx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 18:43:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236790AbiLMXnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 18:43:52 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23F0838B7
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:43:50 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id a16so20183013edb.9
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=18mlTDNeiNFp6aWfotvUw04NGasXq2KV7GNkrVMvEq8=;
        b=T9MdtWhx9DYyvvjsEzjQl6MfBrC9tm62K6mcS9HZ7BmF3ZvVjbZifSDI2vuAgf5gk/
         NbJXPdFr8No+2EhbIPw6rPFe4FpbAytdJYCm6oTqAz0jtF0qmdousDKNpRjV34K3VwpN
         tqh87lFvh7HsTFOnfY7PxJXDwDyMEwJiewiBVCEpNhdJ4k4cQLYumGWQKmZA1P2itFfm
         rvHsnQg5HfCz5Fkq1AP2tYfz/1KeAnMgzYbqhJSkz7aRPrKRd3hl+htZfV0twEsCnm5M
         sDF9Np5pD4aBoiReX/VupgFJ02+bs5SeUGiKW46cR2h5RTWbfDgG7+wffQBY8hRVYnAW
         A17g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=18mlTDNeiNFp6aWfotvUw04NGasXq2KV7GNkrVMvEq8=;
        b=3NyFTkYL3XRO5FgD9dGnbHTbwaMAxs8IMEEni9TQjpu9kvbO1ESljObh+ORpZthcO2
         3Ujf7OfhbhZSMCiQCFmFTgZnpViponG3DZPS8mDOX9sf0Bcwe6ceN4iFfHA2odXwX3yL
         c/9OG3CYFB6p1lrQo71hAT5zyqdbZwMxwYJmZ7alpRcWkijFU4mha1N1oapwmdgqUtUn
         k2aNJ5fhufibZQmKmpodQGCYGJXXjugzFVVNZwnD3LHfgT+1fA14i4pWjCYK3y92TuYA
         4Dq9vhMMk27xZwiUdJF/AjZEsaW4PFF/w0pMXmgt/O8atodEVbpebiF0eWHxLDG/vzqA
         ykkQ==
X-Gm-Message-State: ANoB5pmbnic7wrUo1UB6Yyn8mnimKnb9/Kj+uwnjcX5Nv4cfjCSqqbwC
        9VK6wkofQ+tJKkXvvAeMEnlAOQ==
X-Google-Smtp-Source: AA0mqf4/fdjI2Xl5pRIkZamgtW8MHGY4kmaFW+1fTlA7+HIsSasi3rauh4dTiFFNRQjdNZw9JvP9gQ==
X-Received: by 2002:a05:6402:205c:b0:46d:c48c:50eb with SMTP id bc28-20020a056402205c00b0046dc48c50ebmr24569458edb.13.1670975028638;
        Tue, 13 Dec 2022 15:43:48 -0800 (PST)
Received: from predatorhelios.fritz.box (dynamic-093-129-109-038.93.129.pool.telefonica.de. [93.129.109.38])
        by smtp.gmail.com with ESMTPSA id f5-20020a05640214c500b00458b41d9460sm5407498edx.92.2022.12.13.15.43.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 15:43:48 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v5 0/7] Add minimal MT8365 and MT8365-EVK support
Date:   Wed, 14 Dec 2022 00:43:39 +0100
Message-Id: <20221213234346.2868828-1-bero@baylibre.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds minimal support for the MediaTek 8365 SOC and the EVK reference
board, allowing the board to boot to initramfs with serial port I/O.

v5:
  - Reorder top-level entries in mediatek,mt8365-pinctrl.yaml to match
    example-schema
  - Use consistent quotes

v4:
  - Remove pins-are-numbered references that have been holding things up
    now that the patches removing it from dt-bindings have landed in linux-next

v3:
  - Remove a number of components that are not yet supported (they will
    come back alongside the corresponding drivers)
  - Address issues found by dt_binding_check (mostly fixing pinctrl
    bindings)
  - Address issues pointed out in comments
  - Reorder patches

v2:
  - Add missing dt-bindings documentation
  - Small cleanups addressing issues in v1 pointed out by Krzysztof Kozlowski

Bernhard Rosenkränzer (4):
  dt-bindings: arm64: dts: mediatek: Add mt8365-evk board
  dt-bindings: irq: mtk, sysirq: add support for mt8365
  dt-bindings: mfd: syscon: Add mt8365-syscfg
  dt-bindings: pinctrl: add bindings for Mediatek MT8365 SoC

Fabien Parent (3):
  dt-bindings: usb: mediatek,mtu3: add MT8365 SoC bindings
  dt-bindings: usb: mediatek,mtk-xhci: add MT8365 SoC bindings
  arm64: dts: mediatek: Initial mt8365-evk support

 .../devicetree/bindings/arm/mediatek.yaml     |   4 +
 .../interrupt-controller/mediatek,sysirq.txt  |   1 +
 .../devicetree/bindings/mfd/syscon.yaml       |   1 +
 .../pinctrl/mediatek,mt8365-pinctrl.yaml      | 197 ++++++++++
 .../bindings/usb/mediatek,mtk-xhci.yaml       |   1 +
 .../bindings/usb/mediatek,mtu3.yaml           |   1 +
 arch/arm64/boot/dts/mediatek/Makefile         |   1 +
 arch/arm64/boot/dts/mediatek/mt8365-evk.dts   | 163 +++++++++
 arch/arm64/boot/dts/mediatek/mt8365.dtsi      | 343 ++++++++++++++++++
 9 files changed, 712 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8365-evk.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8365.dtsi

-- 
2.39.0

