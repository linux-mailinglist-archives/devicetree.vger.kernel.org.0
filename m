Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D2CB1B2488
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2020 13:05:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726120AbgDULFh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Apr 2020 07:05:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726628AbgDULFh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Apr 2020 07:05:37 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E442FC061A10
        for <devicetree@vger.kernel.org>; Tue, 21 Apr 2020 04:05:36 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id x77so3839563pfc.0
        for <devicetree@vger.kernel.org>; Tue, 21 Apr 2020 04:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WvF21qmP3gF9P7JZJ1ONcszxypmYyGE19tvUhWUTsVs=;
        b=h+1WGBmhpgBtdaANZUwwMqTOtqCaHeP8LEw5UWv2vHgLHr/sm2q1g/zutfJc3XCFY5
         2a426+CkciRwHnsNtSmp2IC36uhc193CxU8uvnyojGagWNbqLGXkCrqZycjGRJass4yv
         v08www/I7ltHOkci3lA0Ub2nYKge1VZpCKO3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WvF21qmP3gF9P7JZJ1ONcszxypmYyGE19tvUhWUTsVs=;
        b=Johf1efaatAZ3vuNoGz7SPSrR7unh4fHt/FdxreHa4H3G4NtE9fDx3rOdQwjRKJOP+
         MT7+8Pu1Mjxi4i7+zwKL3etHGb9/l+zk8kfivYtNm/sfbwZ+76SJvkGRiZCHpN8QsnCp
         WuQ1InfDKBGnyhAJO8DHEQtYsxnEkoin07T3dQrIDIDKny1SOdoiMT38D2ayZa1CdZ/e
         A3/L2UduwEThyYU1XTy0zhbpUOH+k9mArYCqmxowBPDbxmaxjv8bba4aRFzQM2dfu2Kg
         6LQ4d9d/AuMfNSfoYTAQ9Srfnp+YrIguqtNiSbXMKsNweEDE9vBG5prT3pfjmRJhmapE
         40sQ==
X-Gm-Message-State: AGi0PuYKwI9ScoX2S0zPLW9l9WgAvOwctWDks1zrrQJ0cKyv3GSZ2wpO
        i5hxUQ5zGhl7djwyCJqrxbRBbQ==
X-Google-Smtp-Source: APiQypL4PFUwg5GwPRrSlb0y3fSgyECAShAITRonjEWPiB9jvTC9CBnU3LdyUl5Ks5ZaHOn5MmV5AA==
X-Received: by 2002:a63:1d52:: with SMTP id d18mr20242532pgm.443.1587467136316;
        Tue, 21 Apr 2020 04:05:36 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
        by smtp.gmail.com with ESMTPSA id j10sm2217695pfa.57.2020.04.21.04.05.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 04:05:35 -0700 (PDT)
From:   Evan Benn <evanbenn@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     xingyu.chen@amlogic.com, jwerner@chromium.org,
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
Subject: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor Calls.
Date:   Tue, 21 Apr 2020 21:05:18 +1000
Message-Id: <20200421110520.197930-1-evanbenn@chromium.org>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
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
 drivers/watchdog/arm_smc_wdt.c                | 194 ++++++++++++++++++
 6 files changed, 252 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

-- 
2.26.1.301.g55bc3eb7cb9-goog

