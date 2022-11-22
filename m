Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 756EE6331EA
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 02:09:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231967AbiKVBJd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 20:09:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231876AbiKVBJP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 20:09:15 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82B3F54B0D
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 17:08:09 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id z20so17118387edc.13
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 17:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NXlietmMDnMDDCbd3vt3QmKB/26LHM3Ufg/KK8xRGJ8=;
        b=m0TewJWW7KhTdSXchwcIkyxlc1EkvKyFWq5uJQv+yKMBp+IF5UtjELWqTQSb6qyCew
         kJHBq5X2f6gtjHpqsgh3S4R+eSNqeSybw4Z++QF6NViBx9aQNs9n6HbaVslpThBjx+8Y
         z85ErMR41r9qSXqg2hznA9QNL6CaZ4N3UymM3Ml9fqxpmgFNJHzKuK3g51mbb04B14oL
         6Cc1EOYi14h1Qu7wmDAPRkY4+Ot8gdVQMu+ubmNtFivjU97hBzmtHhCtlwuUdI9UF9ee
         kueWGK/JDg0GEw9aVPF4x3B+j2tCzomWngtlys7Z8cxOYlblZulqOdR0txPc88AqW6W2
         nhPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NXlietmMDnMDDCbd3vt3QmKB/26LHM3Ufg/KK8xRGJ8=;
        b=wcG+ux6FNGvI5RpvsFSWX3I2w9+Zjjnws+DDWT79Vc9LsukRvC/1pItGYdkeISJ2UX
         0i35o3xFpGMv87zNBAj2uStwAKmgZIItWkWoACXnixOABAQ22hy/NpFX4rKg21VltdWn
         7Zjot8t+tXIRC7+bdWU85dspgZbhiBXv9j+uOxzF+XmYZCWiR5sK8k/DKHswaG7G6kHJ
         yyf+7HLWnpg6xeNZAzoxm5PskP9O9nUACmSScS7OZoLUMvyjxCJh6m+Ps+mP76LqZKvz
         p3DCjpW0fojJ5XPD85L1SlpwCZAOzjUJcmR9b6aAhtcRBfmun3r5+/2AZK7HwwGNjK41
         tPJQ==
X-Gm-Message-State: ANoB5pnVJGDj1E8497CX+ZKyGdZOzY8QHs8n2WxpdkEMBbFdPJrNUlpj
        36mmWujiw4eIcKA1vkEchz4HzYdpUj43OzKH
X-Google-Smtp-Source: AA0mqf6YHtIfMeR6UPTvsarDA6CMoaDvypsfuFvEc487eJW3bla0HrQAC73iEkA2LGGrx+B9tWkmow==
X-Received: by 2002:aa7:cc14:0:b0:468:58d4:a10e with SMTP id q20-20020aa7cc14000000b0046858d4a10emr19202803edt.222.1669079287797;
        Mon, 21 Nov 2022 17:08:07 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709064dcd00b007030c97ae62sm5514683ejw.191.2022.11.21.17.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 17:08:07 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        krzysztof.kozlowski@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v2 0/7] Remove the pins-are-numbered DT property
Date:   Tue, 22 Nov 2022 02:07:46 +0100
Message-Id: <20221122010753.3126828-1-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

During the review of my MT8365 support patchset
(https://lore.kernel.org/linux-mediatek/20221117210356.3178578-1-bero@baylibre.com/),
the issue of the "pins-are-numbered" DeviceTree property has come up.

This property is unique to Mediatek MT65xx and STM32 pinctrls, and
doesn't seem to serve any purpose (both the Mediatek and STM32 drivers
simply refuse to deal with a device unless pins-are-numbered is set to
true).

There is no other use of this property in the kernel or in other projects
using DeviceTrees (checked u-boot and FreeBSD -- in both of those, the
flag is present in Mediatek and STM devicetrees, but not used anywhere).

There is also no known use in userspace (in fact, a userland application
relying on the property would be broken because it would get true on
any Mediatek or STM chipset and false on all others, even though other
chipsets use numbered pins).

This patchset removes all uses of pins-are-numbered and marks the
property as deprecated.

v2:
  - Deprecate the property instead of removing it completely from
    schemas
  - squash some related commits

 Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml | 5 ++---
 Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml        | 7 +++----
 arch/arm/boot/dts/mt2701.dtsi                                          | 1 -
 arch/arm/boot/dts/mt7623.dtsi                                          | 1 -
 arch/arm/boot/dts/mt8135.dtsi                                          | 1 -
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi                                 | 1 -
 arch/arm/boot/dts/stm32f7-pinctrl.dtsi                                 | 1 -
 arch/arm/boot/dts/stm32h743.dtsi                                       | 1 -
 arch/arm/boot/dts/stm32mp131.dtsi                                      | 1 -
 arch/arm/boot/dts/stm32mp151.dtsi                                      | 2 --
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi                              | 1 -
 arch/arm64/boot/dts/mediatek/mt8167.dtsi                               | 1 -
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi                           | 1 -
 arch/arm64/boot/dts/mediatek/mt8173.dtsi                               | 1 -
 arch/arm64/boot/dts/mediatek/mt8516.dtsi                               | 1 -
 drivers/pinctrl/mediatek/pinctrl-mtk-common.c                          | 6 ------
 drivers/pinctrl/stm32/pinctrl-stm32.c                                  | 5 -----
 17 files changed, 5 insertions(+), 32 deletions(-)



