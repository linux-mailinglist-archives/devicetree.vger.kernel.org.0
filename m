Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACD576B69FB
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 19:19:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232159AbjCLSTX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 14:19:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231818AbjCLSTF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 14:19:05 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 842075AB6B
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:12:03 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id r27so12950848lfe.10
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678644624;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bdTNsWpg9ZM8ehZQeKtTu+6KMOIWutkVZQ0G5s6b6sY=;
        b=GdQe6hF1zdRarAcuRIwMc/VyJigVgskBLDuiGdu5anUdpZmmjCgpcH3nTuWbmiFTnj
         3U+ejg0OZHkgCrHfzH9qZyCzimhudoBxEgYmy+ZE8nj4Fb1yqixYPfUM1CagEhjY5ntf
         hXY9bbobSK4bA4AWoxU6k+aGitjTNQvXAXJHsRY14iWWUq7LUXGHAih0C9bxfV+a47Pg
         TlQSI7qBxXH6Vly7mIMSyKg9JKVMLp35Umd5G1liXThvFiIITHFQhsxkOevxA0es1G2X
         Y95avd1GHkYgBJE5cBvox16fl626VLZC+Dg80fyCWygT1EDV61/aQ1tip3/9s8e2wvnF
         P1pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678644624;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bdTNsWpg9ZM8ehZQeKtTu+6KMOIWutkVZQ0G5s6b6sY=;
        b=JBcXyjiWTcRa6byM6fHs779dH75VWjlWFv2KeBRpXRHXhQ42/8nY11i1dVRIEJEYlR
         Q6if9ovBzlne5SiUJMzu9x/p6gpOLqkOLI1ZbeQmLRgplh5A+xXsn+0aq1Gwfpq4U/WX
         enJ0P7N5RaiCWMPPsRpuuXdZyF/5lmiYPXT/GKkWZw2p2hZm2fnhAMdqpUZOowiJwWpg
         vngskFZ40dTLSduR6QnkGbAuz/+dY+8Rfd2ycGTUFTZXlq5f2ZB+bC5UMOwN1NOYEvOA
         jGCKg4BPyZE48UAk84pp1V1u9Ri9U8Rh5AMznhURhBGAuDhW6iBKwlrix85S+Lwxd5Jm
         UBBQ==
X-Gm-Message-State: AO0yUKX7ACxQp3DDN40xYOwIw459ZQDiowsonIB7mYp2cT/yg5irNJWr
        CysDJswN++VU1/hAMOdtwl3gEHFOwdT3fzQw
X-Google-Smtp-Source: AK7set+RJTEbrjklFl8es66BzOhT595l76iJiBESeVO2mjrsLCuok6on4x8FFG7svfg6fsznqymg5Q==
X-Received: by 2002:ac2:533c:0:b0:4dd:9aec:e468 with SMTP id f28-20020ac2533c000000b004dd9aece468mr9142958lfh.58.1678644624335;
        Sun, 12 Mar 2023 11:10:24 -0700 (PDT)
Received: from 0000-cover-letter.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id h19-20020ac25973000000b004db4936c866sm715593lfp.38.2023.03.12.11.10.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 11:10:24 -0700 (PDT)
Message-Id: <1678644516.665314-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sun, 12 Mar 2023 20:58:50 +0300
Subject: [PATCH v5 0/3] mmc: dw_mmc: fix DW MMC cores with 32-bit bus on 64-bit Linux systems
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DesignWare MMC cores have a configurable data bus width of either 16, 32, or 64
bytes. It is possible, and some vendors actually do it, to ship a DW MMC core
configured for 32-bit data bus within a 64-bit SoC. In this case the kernel
will attempt 64-bit (readq) accesses to certain 64-bit MMIO registers, while
the core will expect pairs of 32-bit accesses.

It seems that currently the only register for which the kernel performs 64-bit
accesses is the FIFO. The symptom is that the DW MMC core never receives a read
on the second half of the register, does not register the datum as being read,
and thus not advancing its internal FIFO pointer, breaking further reads. It
also seems that this FIFO is only used for small (less than 16 bytes)
transfers, which probably means that only some SDIO cards are affected.

Changelog:

v5:
- rename "samsung,exynos78xx-dw-mshc" to "samsung,exynos7885-dw-mshc"
- rename "samsung,exynos78xx-dw-mshc" to "samsung,exynos7885-dw-mshc"

v4:
- split dt-bindings and dts update into separate commits
- add an explanation why it'ss necessary to change the compatible string

v3:
- removed "fifo-access-32bit" devicetree property
- added "samsung,exynos78xx-dw-mshc" compatible string
- added "samsung,exynos78xx-dw-mshc-smu" compatible string

v2:
- added commit messages

v1:
- added "fifo-access-32bit" devicetree property
- added DW_MMC_QUIRK_FIFO64_32
- added new dw_mci_{pull,push}_data* variants (...-data64_32)

Sergey Lisov (3):
  dt-bindings: exynos-dw-mshc-common: add exynos7885 variants
  mmc: dw_mmc: add an option to force 32-bit access to 64-bit FIFO
  arm64: dts: exynos: fix wrong mmc compatible in exynos7885.dtsi

 .../bindings/mmc/samsung,exynos-dw-mshc.yaml  |   2 +
 arch/arm64/boot/dts/exynos/exynos7885.dtsi    |   2 +-
 drivers/mmc/host/dw_mmc-exynos.c              |  43 +++++-
 drivers/mmc/host/dw_mmc.c                     | 122 +++++++++++++++++-
 drivers/mmc/host/dw_mmc.h                     |   2 +
 5 files changed, 167 insertions(+), 4 deletions(-)

-- 
2.38.3


