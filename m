Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C07D05482D7
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 11:15:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235761AbiFMJGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 05:06:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234090AbiFMJGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 05:06:11 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34D18E0C1
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 02:06:09 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id a15so6260232wrh.2
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 02:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=qr8/LM6evBoP5b+HOlMBRpsk6pXFAPvhsWzREdbW/mY=;
        b=LgtD7RYkh3lSCSjw+3rkl5SwMZ9WZI80UQ1oxeA5Sl0XP/Hp6DL1lQQcHRda/ap4vS
         1swl6mte5Fexii0IBk6vfDhF434j9wGLya1qjzue0K7bGmmIsHnjdpKwtLn24evdrAjd
         JTvd57AeHBhF7RH0zimNlcbvzztMdCj9SsNJhz6XVpqGQ3rpdln5fx4VIBZTAnIK1sQq
         7doqyLrSmX9TbOFqQ57KUt/qBIjyt1nny1w2UslSLkNICIF2yrO17pqq99x37vnOES+8
         6UJzqqybIWcbHPG9o1S6OSTk1PV9th+SOI5kFr8ME2LDCRhkR7OArNAwNhCu+O+45uxV
         aJQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qr8/LM6evBoP5b+HOlMBRpsk6pXFAPvhsWzREdbW/mY=;
        b=nrU2KbV6iDPd12H0D0HVL8k5Lb6FStH5WQOj9/Bjgapjum9LmMMIij/VlQ+QRrxWeB
         IPaa8hW5PoiSrIRzj0wx764SBZwEL0C9Ews5iW+1npQ8SvrmASVKtpAePz8RDN/az+YI
         +CXPUmSbjh46HjL6YntEiBM3iB77xyC2BWr2Qt9fxL/kAqoGS3mg2OJ9zj6El83WhjSG
         UukcgWC6uEc5JodP2HmyhlbIARiO+Yqtu52ZsJWEalYyeBi96yfZmDXthGnVZ527jm6e
         gqA27hAZ6g4MtDzSi4a1IdBhf+nsRz63qz/55BUEepr0m+iqZeuPV59gXu4ztAuNKnHL
         My7w==
X-Gm-Message-State: AOAM531bUsmEvSlF0wCmGQkMo1ilHCDfNOKn5HSIasx7vOx3dZFVAUhq
        RsHuEZKE34iT0rBKpsFFCAEK4A==
X-Google-Smtp-Source: ABdhPJyxFLmGgbQ6ro3eya6KoNMXOtfDHRpUHIzqWSokW7tblNVQ2gjDy98TByL9Bt344uOSQfOXhw==
X-Received: by 2002:a5d:684d:0:b0:219:e68b:55f4 with SMTP id o13-20020a5d684d000000b00219e68b55f4mr15480266wrw.215.1655111167639;
        Mon, 13 Jun 2022 02:06:07 -0700 (PDT)
Received: from localhost.localdomain (192.201.68.85.rev.sfr.net. [85.68.201.192])
        by smtp.gmail.com with ESMTPSA id d9-20020adffd89000000b002102d4ed579sm7806465wrr.39.2022.06.13.02.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 02:06:07 -0700 (PDT)
From:   Jerome NEANNE <jneanne@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org, will@kernel.org,
        lee.jones@linaro.org, jneanne@baylibre.com
Cc:     khilman@baylibre.com, narmstrong@baylibre.com, msp@baylibre.com,
        j-keerthy@ti.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH 0/5] Add TI TPS65219 PMIC support for AM642 SK board.
Date:   Mon, 13 Jun 2022 11:05:59 +0200
Message-Id: <20220613090604.9975-1-jneanne@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

1-Regulators: full implementation
Visual check: cat /sys/kernel/debug/regulator/regulator_summary
Validation: userspace-consumer and virtual-regulator required
to test further

enable/disable:
cat /sys/devices/platform/userspace-consumer-VDDSHV_SD_IO_PMIC/state
echo disabled > /sys/devices/platform/userspace-consumer-VDDSHV_SD_IO_PMIC/state
echo enabled > /sys/devices/platform/userspace-consumer-VDDSHV_SD_IO_PMIC/state

change voltage:
cat /sys/devices/platform/regulator-virtual-ldo1/min_microvolts
echo 1000000 > /sys/devices/platform/regulator-virtual-ldo1/min_microvolts
echo 3000000 > /sys/devices/platform/regulator-virtual-ldo1/max_microvolts

Voltage changes monitored on LDO1 output on TP84 for k3-am642-sk board

2-Low power Mode (STBY)
A regulator set_mode with a standby mode is implemented (not tested)

3-Reset WARM/COLD
implemented not tested

4-SD Card VSEL_SD
Implemented, appears in summary as: tps65219-LDO1-SEL-SD GPIO control
not tested

5-Interrupt Pin (nINT)
Not implemented

6-SW Shutdown
Implemented not tested
Note: enters in competition with other source during probe

7-PB Startup and Shutdown
Can be derived from 65217/8 implementation but postponed,
interrupt support required first.

Jerome NEANNE (5):
  regulator: dt-bindings: Add TI TPS65219 PMIC bindings
  mfd: drivers: Add TI TPS65219 PMIC support
  regulator: drivers: Add TI TPS65219 PMIC regulators support
  arm64: Kconfig: Introduce CONFIG_MFD_TPS65219 and
    CONFIG_REGULATOR_TPS65219
  arm64: dts: ti: Add TI TPS65219 PMIC support for AM642 SK board.

 .../bindings/regulator/ti,tps65219.yaml       | 146 ++++++++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts        | 102 ++++++
 arch/arm64/configs/defconfig                  |   2 +
 drivers/mfd/Kconfig                           |  15 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/tps65219.c                        | 296 ++++++++++++++++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/tps65219-regulator.c        | 334 ++++++++++++++++++
 include/linux/mfd/tps65219.h                  | 245 +++++++++++++
 10 files changed, 1151 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/ti,tps65219.yaml
 create mode 100644 drivers/mfd/tps65219.c
 create mode 100644 drivers/regulator/tps65219-regulator.c
 create mode 100644 include/linux/mfd/tps65219.h

-- 
2.17.1

