Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EE506D3E32
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 09:42:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231637AbjDCHm0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 03:42:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229698AbjDCHm0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 03:42:26 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 064EBBBA6
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 00:42:25 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id r11so28243222wrr.12
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 00:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680507743;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4FKs9G1qfziPxaUbbaWncDXvhRRlRA5Ou7da0j8TnEE=;
        b=dm7n+gszII6Swd6jfKciMWqz1hlk/6NfMd4h/9lY9t5jOPqkpAbF23Bz/dj6XuofS1
         /XzHvCHDFBLMluxVu9o0vRZHLJEyWGxXY20qOn7WPsp6R4EpS5p9Fjxb9AtDaLO2E8zx
         xLN9ZKrkJGq3/SHqdCOFUhdVyKT19PLJPtEgEudDUtgxwjmr3OTdiOz1480KzsKfqPm6
         aDVGv1/6V1u1jH53bHDsvjNLsDp8e99VUtrgjFBuCA5aLcMfZ7nxpJkUtlEMK6HTA1rS
         ESNn3ZwibSquQxwwaJyFD9mtAhM3qE/a35bkjIp7kDsoQtJYVUKg4J/uOnWh2EyP4U+M
         59dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680507743;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4FKs9G1qfziPxaUbbaWncDXvhRRlRA5Ou7da0j8TnEE=;
        b=g9miG7on3cvxLjF6iFqA59yXyjmciTpZ5cw8Ub/wl4guOfAyFNictSDW2z2KESO/jf
         zT9LfqCXeBJf/eGBKnNpS5B5sY1VqS20TrcQHQ4ejqYHr5J+9IpYh+Ygqv39jY8XGYLg
         7WOlYO9o3bdBjCbZqS9hv9WFOwg9QQhkwv67DFazpLdqwwI6WhI2agezxpdwrX7vhz0X
         K2OCE5CIdrWc8gY8A4mzkmvIa+MxUMWMm6naxrNxUBBbXg0RcIV1pkBLm3LdqdgQXeA4
         nNPtiGsnS3cCjsAcoXNfG97aqJ5tPY7GCtNrdmtgGUCulQ0bVp6SmaUXxLqnggwOCgmk
         Cgkw==
X-Gm-Message-State: AAQBX9egCgbn3uC6iiXOyCQEWlDBamnemdDb7l9XW3ey0TyJ6dSwo+18
        FrhChg4tnJWK4eSBE6mJJLDTvtqra2NmKZZ/i+zxCw==
X-Google-Smtp-Source: AKy350Y2SmJ+IW9vBUcivgJfKUmWg0WDTKG2/7r/sec9GgkoKMkY1oon4b+qU67Bf3lJCYfPVdSGIw==
X-Received: by 2002:adf:f18c:0:b0:2c5:5687:5ed5 with SMTP id h12-20020adff18c000000b002c556875ed5mr25697439wro.18.1680507743417;
        Mon, 03 Apr 2023 00:42:23 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q14-20020adff94e000000b002e62384d17dsm8180482wrr.21.2023.04.03.00.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 00:42:23 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH RFC v2 0/4] ARM: oxnas support removal
Date:   Mon, 03 Apr 2023 09:42:17 +0200
Message-Id: <20230331-topic-oxnas-upstream-remove-v2-0-e51078376f08@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFmDKmQC/42OQQqDMBBFryKz7hQTUWpXhUIP0G1xEc1EA5rIR
 INFvHuDJ+jy/Q///R0CsaUA92wHpmiD9S6BvGTQDcr1hFYnBpnLIi8KgYufbYd+cyrgOoeFSU3
 INPlIqCpJta4rQ0SQFloVCFtWrhvShlvHMYUzk7HbqfzA+/WEJoWDDYvn73kjirP6yxgF5li2u
 rwZLbQW5jFap9hfPffQHMfxA9FgyG3hAAAA
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Russell King <linux@armlinux.org.uk>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-oxnas@groups.io,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Daniel Golle <daniel@makrotopia.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With [1] removing MPCore SMP support, this makes the OX820 barely usable,
associated with a clear lack of maintainance, development and migration to
dt-schema it's clear that Linux support for OX810 and OX820 should be removed.

In addition, the OX810 hasn't been booted for years and isn't even present
in an ARM config file.

For the OX820, lack of USB and SATA support makes the platform not usable
in the current Linux support and relies on off-tree drivers hacked from the
vendor (defunct for years) sources.

The last users are in the OpenWRT distribution, and today's removal means
support will still be in stable 6.1 LTS kernel until end of 2026.

If someone wants to take over the development even with lack of SMP, I'll
be happy to hand off maintainance.

The plan is to apply the first 4 patches first, then the drivers
followed by bindings. Finally the MAINTAINANCE entry can be removed.

I'm not sure about the process of bindings removal, but perhaps the bindings
should be marked as deprecated first then removed later on ?

It has been a fun time adding support for this architecture, but it's time
to get over!

[1] https://lore.kernel.org/all/20230327121317.4081816-1-arnd@kernel.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Only keep first 4 patches for v6.4, the rest will be done later split per subsystem
- Link to v1: https://lore.kernel.org/r/20230331-topic-oxnas-upstream-remove-v1-0-5bd58fd1dd1f@linaro.org

---
Neil Armstrong (4):
      ARM: dts: oxnas: remove obsolete device tree files
      ARM: oxnas: remove OXNAS support
      ARM: configs: remove oxnas_v6_defconfig
      dt-bindings: arm: oxnas: remove obsolete bindings

 Documentation/devicetree/bindings/arm/oxnas.txt    |  14 -
 arch/arm/Kconfig                                   |   2 -
 arch/arm/Makefile                                  |   1 -
 arch/arm/boot/dts/Makefile                         |   3 -
 arch/arm/boot/dts/ox810se-wd-mbwe.dts              | 115 -------
 arch/arm/boot/dts/ox810se.dtsi                     | 357 ---------------------
 .../dts/ox820-cloudengines-pogoplug-series-3.dts   |  93 ------
 arch/arm/boot/dts/ox820.dtsi                       | 299 -----------------
 arch/arm/configs/oxnas_v6_defconfig                |  92 ------
 arch/arm/mach-oxnas/Kconfig                        |  38 ---
 arch/arm/mach-oxnas/Makefile                       |   2 -
 arch/arm/mach-oxnas/headsmp.S                      |  23 --
 arch/arm/mach-oxnas/platsmp.c                      |  96 ------
 13 files changed, 1135 deletions(-)
---
base-commit: fe15c26ee26efa11741a7b632e9f23b01aca4cc6
change-id: 20230331-topic-oxnas-upstream-remove-a62e9d96feee

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>

