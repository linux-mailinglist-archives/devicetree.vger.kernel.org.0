Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE1481B53B0
	for <lists+devicetree@lfdr.de>; Thu, 23 Apr 2020 06:40:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725906AbgDWEkw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Apr 2020 00:40:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725854AbgDWEkv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 Apr 2020 00:40:51 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE920C03C1AB
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2020 21:40:51 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id 18so1091934pfv.8
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2020 21:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZS/LLxJx1Ds3cx4GyxEdNHynphtX9//TxQ2D60w281c=;
        b=gYhBQHtg6aVgFNpAsuZicqx3KgF2/EI40v9gzc+TTBaO0INthZs4oK+6OZXVHVVtPe
         tPKKq9v1HCjoEgO5iaf0wkIiVty4kBHme2dDPZddnnYYIlh5/960j2SdgVnZtDMaofDG
         eXV23e91++ocupsga5mbViaM8WsQYNSK8c1HE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZS/LLxJx1Ds3cx4GyxEdNHynphtX9//TxQ2D60w281c=;
        b=gWo/QMU4mo7BuiB0xQI9Sg52avZ7FBahl2juBPrwFfcIYicwLb5UH6ey4f21q4QnQn
         U09K7up0RxQF8I6sKfQyZgSQYlyppoZJXMZEtUdai0DALZupxauU58XyYXh1cx5kNNyE
         2CwYWYog6YW9lh6OVpS8v8YiZeBS+nxvhy3XXpN2daaUShl1RILtMwkvmtxn+VihGM7k
         3EvlRlVDzexQpCaS4+MRP+usH6OtB6zSEFlP7AfkMx7tBKK/okrJ/pldXVdbieKE8+fn
         Y3bTqCeXZJCk2kUEArh2mPUGIu5G6iDhyXPGzQLZwwFlB5Y9yB7QvaaQxWp8xc1pbbcG
         T+iQ==
X-Gm-Message-State: AGi0PuaiAYqb5gkGCJWYfZhonG47GqaPkr7z3TXgrbsctT79YhYi1Hpn
        zjLVO6toQYGDgyYK+p5e2Hss1A==
X-Google-Smtp-Source: APiQypLI+7/YssjfEAqA7mqNn/1Q292p/7jx+m+Js0S3rpVk2pmi9WqX7DsXMBWP/y1GcYjx6h81JA==
X-Received: by 2002:a62:d104:: with SMTP id z4mr2035568pfg.26.1587616850973;
        Wed, 22 Apr 2020 21:40:50 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
        by smtp.gmail.com with ESMTPSA id w13sm1174046pfn.192.2020.04.22.21.40.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 21:40:50 -0700 (PDT)
From:   Evan Benn <evanbenn@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     jwerner@chromium.org, xingyu.chen@amlogic.com,
        Evan Benn <evanbenn@chromium.org>,
        Anson Huang <Anson.Huang@nxp.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        "David S. Miller" <davem@davemloft.net>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        Li Yang <leoyang.li@nxp.com>,
        Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Will Deacon <will@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-watchdog@vger.kernel.org
Subject: [PATCH v5 0/2] Add a watchdog driver that uses ARM Secure Monitor Calls.
Date:   Thu, 23 Apr 2020 14:40:34 +1000
Message-Id: <20200423044036.234578-1-evanbenn@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is currently supported in firmware deployed on oak, hana and elm mt8173
chromebook devices. The kernel driver is written to be a generic SMC
watchdog driver.

Arm Trusted Firmware upstreaming review:
    https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405

Patch to add oak, hana, elm device tree:
    https://lore.kernel.org/linux-arm-kernel/20200110073730.213789-1-hsinyi@chromium.org/
I would like to add the device tree support after the above patch is
accepted.

Changes in v5:
- Change compatible to arm,smc-wdt
- Make timeleft return 0 on error
- Use type punning on smc_func_id to save an alloc
- Change compatible to arm,smc-wdt

Changes in v4:
- Add arm,smc-id property
- Get smc-id from of property
- Return a1 instead of a0 in timeleft

Changes in v3:
- Change name back to arm
- Add optional get_timeleft op
- change name to arm_smc_wdt

Changes in v2:
- Change name arm > mt8173
- use watchdog_stop_on_reboot
- use watchdog_stop_on_unregister
- use devm_watchdog_register_device
- remove smcwd_shutdown, smcwd_remove
- change error codes

Evan Benn (1):
  dt-bindings: watchdog: Add ARM smc wdt for mt8173 watchdog

Julius Werner (1):
  watchdog: Add new arm_smc_wdt watchdog driver

 .../bindings/watchdog/arm-smc-wdt.yaml        |  36 ++++
 MAINTAINERS                                   |   7 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/watchdog/Kconfig                      |  13 ++
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/arm_smc_wdt.c                | 189 ++++++++++++++++++
 6 files changed, 247 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

-- 
2.26.2.303.gf8c07b1a785-goog

