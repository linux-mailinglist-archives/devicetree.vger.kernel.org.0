Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82458524CAA
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 14:24:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353672AbiELMYo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 08:24:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353657AbiELMYl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 08:24:41 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFBC624736E
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:24:38 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id f2so10392wrc.0
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/lkyfO2eAyTO3jx8KpN3l3Wbz2mTyqVdQD6u1bCXCsQ=;
        b=Fxvh74tV2njRBPP78K23MxdwqjHULXYFWnSf6xQsbi5pM7q2AtYojGBYVz/QIL5DGU
         rv/kHeURnBo13AaMfUsttjlguumUENusFh1V1nMJhp+lvj8AAzVceFvKqFuXvpdbHO+x
         BlvD5R/jpzd9vHgFJ4EJu/ifI/g1JHK8HRoPsVWJMaWlF53JVdJ8BOC4sB+pVLnFQGJv
         UzP9go5HKI/6DrG8D1Cey1zJZQLSZmJ7gSj8fgB19Yuteq6Esh1NVsjjSlBmprT6+ikV
         JOErLUxSKJaGLDPs4J5w/r4oMF/x1C/1pwe7SbL4vrO4kTpHurF/c+3lDUMCYy5OyDUu
         MPjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/lkyfO2eAyTO3jx8KpN3l3Wbz2mTyqVdQD6u1bCXCsQ=;
        b=M3TmfLYSvZbLmXtPihkByEVuoHneM+2F7AkHHV0KytjX4aQOv5N5JwLKN3iuYFm6fe
         TnXdeuyXQV5pCDjAarBeSsjcmMlREh+IXgddi0qzHQ0B2h+vWycJi1H6b7zSthc0FExv
         4ggTpYDGTdAp0oyOnbBneBT8rX+5h6N/n1mD4RFbZWOTSd98dP5uU2nF/hnk7tSAPrID
         gvkOW8pRCMehirh5DmU3ZOcpDZqfV7uMPZ0x8T0tfH0w2grmGD17klhxw5Dvfy2JfrjJ
         fU79hxq43szXLs+G7AaEbd485yt5dBGSr6yj/IF/Q3lqI74aI+L3AYo2ttyOpFbTdGRw
         V78A==
X-Gm-Message-State: AOAM531eWhTdZ9hjGPfJrzBSHlBuNn4C0EFmq7atxXCjLVE/R2dTLOcF
        8HvDBmhtPIfWDTrU3GnufqjS9A==
X-Google-Smtp-Source: ABdhPJzMm2OQQzDiULeaT4lb3iEjW4dZqK9nGzhntfMsYp93Vmy9+FzVEXAEerefJ8s4rk5fbca+JA==
X-Received: by 2002:adf:fc47:0:b0:20a:d494:3ee5 with SMTP id e7-20020adffc47000000b0020ad4943ee5mr27258155wrs.696.1652358277329;
        Thu, 12 May 2022 05:24:37 -0700 (PDT)
Received: from xps-9300.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id z22-20020a7bc156000000b003942a244f30sm3047819wmi.9.2022.05.12.05.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 05:24:36 -0700 (PDT)
From:   Alexandre Bailon <abailon@baylibre.com>
To:     robh+dt@kernel.org, krzk+dt@kernel.org, matthias.bgg@gmail.com,
        p.zabel@pengutronix.de
Cc:     rafael@kernel.org, daniel.lezcano@linaro.org, amitk@kernel.org,
        rui.zhang@intel.com, michael.kao@mediatek.com,
        ben.tseng@mediatek.com, ethan.chang@mediatek.com,
        frank-w@public-files.de, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, khilman@baylibre.com,
        Alexandre Bailon <abailon@baylibre.com>
Subject: [PATCH v6 0/7] Add LVTS architecture thermal
Date:   Thu, 12 May 2022 14:24:26 +0200
Message-Id: <20220512122433.1399802-1-abailon@baylibre.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch move thermal files related to Mediatek to the mediatek folder.
And introduce the new architecture LVTS (low pressure thermal sensor) driver to report
the highest temperature in the SoC and record the highest temperature sensor,
each sensor as a hot zone.
The LVTS body is divided into two parts, the LVTS controller and the LVTS device.
The LVTS controller can connect up to 4 LVTS devices, and each LVTS device
can connect up to 7 TSMCUs.

The architecture will be the first to be used on mt6873 and mt8192.

Change in v6:
        - Remove temperature aggregation (it will be added in another series)
        - Update the way to read the temperature (read one sensor instead of all)
        - Add support of mt8195
Change in v5:
        - Use 'git mv' for the relocated file.

Change in v4:
        - Rebase to kernel-v5.13-rc1
        - Resend

Change in v3:
        - [2/3]
          - change the expression in the lvts_temp_to_raw to dev_s64.

Change in v2:
        - Rebase to kernel-5.11-rc1.
        - [2/3]
          - sort headers
          - remove initial value 0 of msr_raw in the lvts_temp_to_raw.
          - disconstruct the api of lvts_read_tc_msr_raw.
          - add the initial value max_temp = 0 and compare e.q.
            in the lvts_read_all_tc_temperature.
          - add the return with invalid number in the lvts_init.

This patch depends on [1].

[1]https://patchwork.kernel.org/project/linux-mediatek/patch/20210524122053.17155-7-chun-jie.chen@mediatek.com/

Alexandre Bailon (2):
  dt-bindings: thermal: Add binding document for mt8195 thermal
    controller
  arm64: dts: mediatek: Add efuse node to mt8195

Michael Kao (4):
  thermal: mediatek: Relocate driver to mediatek folder
  dt-bindings: thermal: Add binding document for mt6873 thermal
    controller
  thermal: mediatek: Add LVTS drivers for SoC theraml zones
  thermal: mediatek: Add thermal zone settings for mt8195

Tinghan Shen (1):
  arm64: dts: mt8195: Add thermal zone

 .../thermal/mediatek-thermal-lvts.yaml        |   85 +
 arch/arm64/boot/dts/mediatek/mt8195.dtsi      |  121 ++
 drivers/thermal/Kconfig                       |   14 +-
 drivers/thermal/Makefile                      |    2 +-
 drivers/thermal/mediatek/Kconfig              |   33 +
 drivers/thermal/mediatek/Makefile             |    2 +
 .../{mtk_thermal.c => mediatek/soc_temp.c}    |    2 +-
 drivers/thermal/mediatek/soc_temp_lvts.c      | 1458 +++++++++++++++++
 drivers/thermal/mediatek/soc_temp_lvts.h      |  312 ++++
 9 files changed, 2017 insertions(+), 12 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/mediatek-thermal-lvts.yaml
 create mode 100644 drivers/thermal/mediatek/Kconfig
 create mode 100644 drivers/thermal/mediatek/Makefile
 rename drivers/thermal/{mtk_thermal.c => mediatek/soc_temp.c} (99%)
 create mode 100644 drivers/thermal/mediatek/soc_temp_lvts.c
 create mode 100644 drivers/thermal/mediatek/soc_temp_lvts.h

-- 
2.35.1

