Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48613647314
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 16:32:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230319AbiLHPbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 10:31:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230381AbiLHPav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 10:30:51 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21C8483259
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 07:30:44 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id h10so2040534wrx.3
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 07:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h77EcyzmHrKVFjoWMhSpWChgCbULzYbCN7M8zPTR4Iw=;
        b=QgAChH6txpKBJOTvAjnQBz3MysBSBiOnM5ttfAOm8LpwpJ97PQJ8EmkR9SCHMcabT5
         vFh5XmCYpbB+uyotqBwdWN/MV12wGjYu8sIXBvteNu+qwwGqg0RqxMVYrkL5Fmg42D1s
         Vw+s0On6BlcqG3i2ZEvuWQSAeVxXYNlWqYa/QUL1I4JOu9okydOJVcxTtaAYC/qlTHkz
         It0ii48J1VnQLMQ2PG5qZ3buHA11R5HeBQvTIk2Ef8EvtW9FwRuae4juJ42ocUPuIBQf
         xzNMtHlxR9shDDM4GT1gkvEEFCsqKJvfwposyXsLOnwkhrWXSsf2Q2BMgKQqw41O6pJC
         16gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h77EcyzmHrKVFjoWMhSpWChgCbULzYbCN7M8zPTR4Iw=;
        b=Cymuku2RLvOAcRHDBLWqwbeYJyn/uFBZS5lTtZo/+LK5jhL67d+1tnazBjV1fxo70W
         sL+j84uLvztJ1MgzDCPmOR+ictCLWBFbQqb+Xs3slzcEYXcYrwVJ9E+HY9U67QXpdPXr
         0MvjUDuJMHWWWWQC5K1XYzZZNcz8YuFBZ1NulGmU/UKSL7y+3V/byl1XHsJ/gx4pHHd1
         oK8SO0MP26BImDyBuhCfdQZXLr6l5ZKTaxqYUtikT/I7mtUf1nA44joMhjk8+MIScuKR
         S+Lr/qVkkpnFsXQJpE/PeZu1qx+dGFUiBeOm485eeCHTqr2FP1AzITTvEycoSFGGkG3L
         rfow==
X-Gm-Message-State: ANoB5pnXIbq0JWVowqYJxqSjZIAbZmDIJHzvIbE/RjsVZ0dWRfp4VMJZ
        naAXWX0MinTt5hLd+IjLQfHXHg==
X-Google-Smtp-Source: AA0mqf5K5q5nQ3njTNZN5t/9f0Vch718YFsJMVTBQEXPX4bIWOp+q5Hl1/ug4qvyMu45VA6losj1Tg==
X-Received: by 2002:adf:dc4b:0:b0:242:149:9f0b with SMTP id m11-20020adfdc4b000000b0024201499f0bmr1682892wrj.55.1670513442704;
        Thu, 08 Dec 2022 07:30:42 -0800 (PST)
Received: from predatorhelios.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h10-20020a5d504a000000b002366553eca7sm10673239wrt.83.2022.12.08.07.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 07:30:42 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v4 0/7] Add minimal MT8365 and MT8365-EVK support
Date:   Thu,  8 Dec 2022 16:30:33 +0100
Message-Id: <20221208153041.3965378-1-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
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
2.38.1

