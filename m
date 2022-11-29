Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87AF963BB0E
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 08:54:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbiK2Hyv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 02:54:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbiK2Hyq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 02:54:46 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0774D5655F
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:54:41 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id b21so12623296plc.9
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5NIkFI1kwIuAqgBdLDYftZkp+cYs7Gl+rkFXhfcDd9E=;
        b=671OaoAhQS6Dwo5rXwzhsZrb9wnzvq8auH+g2vCFikMZNfNmPGJeViiVEy1iBiysvS
         1AwZ9srBxL0jeF74JKR01XfTQfGUlNaytgQhJ9zFNKb4MzaNoIG0RgjR9+jzA4RocMO9
         EDigzpg5Lj2C61PvF2IZDO4yG4xkvtNVRGaNF43I3KeYUHCc6rsQmyCGor/cvRb8Lu7S
         01XPxuATf28et7EJfvbUFe7i2pAS5EjGwf/X0PGeZrU6uEsTS7l3zCBCRMeJG4Hw1cUF
         FlETYQXl/ejRN9n225C6pQV5817GaoEfq5lixg3CZ6mXOJf8UavQduDDx9aMPTF96qWV
         J0JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5NIkFI1kwIuAqgBdLDYftZkp+cYs7Gl+rkFXhfcDd9E=;
        b=BTPchEr2JYCDimfC2FQN37qMvEpfdTKc/Peqk+REPt5GCXXy+UAZTllrdDWpcL60rm
         1uiIJ67ETKSMnuH3zO12OfoTLw7DzZWYdNofzkf3Cr8WU4GkW7yVlZ4R66V6IKmRLlLd
         af2VZH4l0IU7n95pwO5WM1dD/MZ+RJ6A9eGUTzZdawXQZjYLwmUHhBf7FbWfT1/QHk/+
         aBG0h+pZqRM2Dk+cEME30TUxNN6X28o+hgBTlqlcT2vhdRvjxNrG7hmvJuIMdZbTEthV
         FN9aOYyO8IKAbvp0C0oQVXhVygmNUl4zpeRYBtUbTTYD2Jv3c4t78QnfJ7blW4LgRBC1
         VApA==
X-Gm-Message-State: ANoB5plo8gPC5qNuwFUGBGWosUIXWe8Rrl3fRwl1JFqihMXCmhpIOADk
        o8/BNi1uxHrAl/PKMfl3NF/fxw==
X-Google-Smtp-Source: AA0mqf6tHj/JFi5wscb2Ij7FHO0Ur6MXOowSG+cufz0ow97qWTxxagj5+QMSTGxC8iKB0LL/WK4XRg==
X-Received: by 2002:a17:90a:588b:b0:219:c40:e5f with SMTP id j11-20020a17090a588b00b002190c400e5fmr21519016pji.49.1669708480743;
        Mon, 28 Nov 2022 23:54:40 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:54:40 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v9 0/8] ARM: Add Rockchip RV1126 support
Date:   Tue, 29 Nov 2022 13:24:16 +0530
Message-Id: <20221129075424.189655-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series combined the next level dts patches for 
Rockchip RV1126 support.

Changes for v9:
- fix serial2 alias
- collect Krzysztof ack
Changes for v8:
- fix rv1126 dtsi
- remove uart aliases
- add adc node name
- add uart dma-names
- add timer0 node name
Changes for v7:
- fix dtbs_check
- new dt-bindings patches
- collect Rob Ack

Any inputs?
Jagan.

Jagan Teki (8):
  dt-bindings: arm: rockchip: Add pmu compatible for rv1126
  dt-bindings: timer: rk-timer: Add rktimer for rv1126
  ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
  ARM: dts: rockchip: Add Rockchip RV1126 SoC
  dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
  dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2)
  ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../bindings/timer/rockchip,rk-timer.yaml     |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   2 +-
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts  |  42 ++
 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi    | 338 ++++++++++++++
 arch/arm/boot/dts/rv1126-pinctrl.dtsi         | 211 +++++++++
 arch/arm/boot/dts/rv1126.dtsi                 | 438 ++++++++++++++++++
 10 files changed, 1042 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rv1126.dtsi

-- 
2.25.1

