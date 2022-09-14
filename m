Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A62485B89E4
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 16:08:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbiINOIJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 10:08:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbiINOIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 10:08:07 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24CAE20F
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 07:08:06 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id bj14so25860522wrb.12
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 07:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=BQx+uulNm6R/5MluC29SBYikinFCFdCK/W6Yr3LL0NM=;
        b=tBqFjbufT5zyCZh4goHZYvwhwCDPB27j2IaHqyGOwX2wVO6zkyH1o1Pg0d9BKXi2Xw
         Zp2bCedRU4ZK/m+ynqTqyXtyy/LM53N2/fqB4cEcZNuLMCTIfyP4EhQ1lxuaCGyxJWuG
         y3Y0K6ZFSpUaCXpIHnnoyRBUnZHcp62JznYg0ssscGpILnvD792fI2eaoYOiJXgYTYzb
         nAcv/LGXVEt9MNbozhzg2OQXVmtFJCxABV9HXsmzIV8AHgewZTG3fw2oRSsvI7eQj1rP
         xSGy3ZQekEaFuHoyLu/DHZ0Owo0wmg06jtESI5Xpl517RZByYMYy8R8AS6BMZmBrBvbH
         Xj9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=BQx+uulNm6R/5MluC29SBYikinFCFdCK/W6Yr3LL0NM=;
        b=iCjuJVwCODuorJqX09bsa6MEef4bkJDIPnLLsXNpxes0lJfWaJeVAD3Ntaou9q6XLn
         3YmfSaapLzBVWZfIZFhWexMxzkNMGI+09l3Modqlq3sAdEF9Hp5LULUipDFZLNY9HJQJ
         IyIMf6DzEKxnQbgitWoC3mHrECOiAEUfCr9UmqadRYPGIPNHx0VkFJzMoilzFGfjVmpb
         WkQ6pA1mpsR60RaYPIayXoIo7o4Sa1BU/iAoi3Y4NrggNtalIWoPe+7YJyL1A5eJ1moN
         gylSRQgWQZYNUqCZIHHFX3etydMFMAsd8rP95Is5lJXgde/0NF3FBbRD/VDHk+HQjGYs
         jJ2A==
X-Gm-Message-State: ACgBeo1gybfktfP/uWuz1UdCGzkON3NVRLFysKUgE13l7SD7HrrlElx9
        vhhAQ2E/ht3NRC7izLHPmcugpw==
X-Google-Smtp-Source: AA6agR7OawfsHtKM6YfVpzKrUfvlbNaTzo2vS9gItttBHh6BEj+5IBvnK+cCx6IeQa21iHV4NMeaDA==
X-Received: by 2002:a5d:6b8c:0:b0:228:db02:711e with SMTP id n12-20020a5d6b8c000000b00228db02711emr21213583wrx.218.1663164484681;
        Wed, 14 Sep 2022 07:08:04 -0700 (PDT)
Received: from jerome-BL.theccd.local ([89.101.193.66])
        by smtp.gmail.com with ESMTPSA id z12-20020a5d654c000000b00228e1e90822sm13303767wrv.112.2022.09.14.07.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 07:08:04 -0700 (PDT)
From:   Jerome Neanne <jneanne@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org, dmitry.torokhov@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, catalin.marinas@arm.com,
        will@kernel.org, lee.jones@linaro.org, tony@atomide.com,
        vigneshr@ti.com, bjorn.andersson@linaro.org, shawnguo@kernel.org,
        geert+renesas@glider.be, dmitry.baryshkov@linaro.org,
        marcel.ziswiler@toradex.com, vkoul@kernel.org,
        biju.das.jz@bp.renesas.com, arnd@arndb.de, jeff@labundy.com
Cc:     afd@ti.com, khilman@baylibre.com, narmstrong@baylibre.com,
        msp@baylibre.com, j-keerthy@ti.com, jneanne@baylibre.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org,
        linux-omap@vger.kernel.org
Subject: [PATCH v5 0/6] Add support for TI TPS65219 PMIC.
Date:   Wed, 14 Sep 2022 16:07:52 +0200
Message-Id: <20220914140758.7582-1-jneanne@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi everyone,

Sending again v5 adding missing maintainers to the initial list.
bindings and regulator are already there as it is based on the regulator tree branch for-6.1:
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git

Changes in v5:
- Remove pm_power_off functionality as it is unused in ARM64 systems
- Change mfd subject to prefixes matching subsystem

Validation:
regulator: tps65219: Fix .bypass_val_on setting
reported by Axel Lin has been validated on board. 

Regards,
Jerome

Previous versions:
v4 - https://lore.kernel.org/lkml/20220825150224.826258-1-msp@baylibre.com/
v3 - https://lore.kernel.org/lkml/20220805121852.21254-1-jneanne@baylibre.com/
v2 - https://lore.kernel.org/lkml/20220726103355.17684-1-jneanne@baylibre.com/
v1 - https://lore.kernel.org/lkml/20220719091742.3221-1-jneanne@baylibre.com/


Jerome Neanne (5):
  DONOTMERGE: arm64: dts: ti: Add TI TPS65219 PMIC support for AM642 SK
    board.
  DONOTMERGE: arm64: dts: ti: Add pinmux and irq mapping for TPS65219
    external interrupts
  DONOTMERGE: arm64: dts: ti: k3-am642-sk: Enable tps65219 power-button
  mfd: tps65219: Add driver for TI TPS65219 PMIC
  arm64: defconfig: Add tps65219 as modules

Markus Schneider-Pargmann (1):
  Input: Add tps65219 interrupt driven powerbutton

 MAINTAINERS                             |   1 +
 arch/arm64/boot/dts/ti/k3-am642-sk.dts  | 115 ++++++++
 arch/arm64/configs/defconfig            |   3 +
 drivers/input/misc/Kconfig              |  10 +
 drivers/input/misc/Makefile             |   1 +
 drivers/input/misc/tps65219-pwrbutton.c | 149 ++++++++++
 drivers/mfd/Kconfig                     |  14 +
 drivers/mfd/Makefile                    |   1 +
 drivers/mfd/tps65219.c                  | 320 ++++++++++++++++++++++
 include/linux/mfd/tps65219.h            | 345 ++++++++++++++++++++++++
 10 files changed, 959 insertions(+)
 create mode 100644 drivers/input/misc/tps65219-pwrbutton.c
 create mode 100644 drivers/mfd/tps65219.c
 create mode 100644 include/linux/mfd/tps65219.h

-- 
2.17.1

