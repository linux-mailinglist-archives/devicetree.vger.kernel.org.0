Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 269756B687F
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 18:02:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbjCLRCU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 13:02:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbjCLRCR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 13:02:17 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29AA5392A5
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:02:16 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id t11so12870923lfr.1
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678640534;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6UV8fqbjOdVKsnwcy5S2/ICsUmjKXmCtfZ/sJfhZkPI=;
        b=KNXzPsdBGdUvS2gqn8VnvAc3Emlvk6qxkhGzj5NrxEV57k9DYuDArKki/BkMZKtc3m
         q2VW9x5bjT2MFI7hDx7NDopqkcNFeVEUhrjKEFhIhH4R2ZZyugF9j1h8m1cWxXbrws+U
         FEi/w1+H9iy0PHguSRfGI0RBSkx7PiQ06U7k0uQPdf1IZp63dNOaUBKTknN16/h2+9Z9
         898Ep/NT4MhWH2MXThzBUK/EiLsd1cH+LpT9uVUH1jtdQ+yqrZBnySatoiAnvtOwqiPv
         FL82cx/9hFGzrRp4vKeGSfow6MhiPIqCHsmUhLdkjj8EST5HLO5zCCbrKWXsC7eTbaZr
         qytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678640534;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6UV8fqbjOdVKsnwcy5S2/ICsUmjKXmCtfZ/sJfhZkPI=;
        b=USccXsFLhUbCq16dZkOW6BDqZS+bLMqFdaFiSK7NnTKBGVuSAK8hjIUpdalBh1k/nG
         fhy/UAwVXUU/3xr2DUTir28Tc3ZS1o1aqVqUuNwq977r5hOEF/z98+ZtwUWXId3HJlSZ
         QJQdRSrxMQ3/irj0UEQaNDfrnLnlgiu98gvc3K0x4ww0n1hmmq4Ogpv8g1lESMITwo1Y
         pv9knJXNhTuQp3rwRVpiloK0tGLY9MA4kRcsqhx0Q2d3ZiKEvvhz+nE7r5ggV3BZKIy/
         KL6J7/Pk7jx9rws7nFtf4sSnL9O4LsO8EzIPl4CWjqgqvz2b/10AT7WAUMflSPEDDiQX
         zRKA==
X-Gm-Message-State: AO0yUKV12e502TXR11ru4UmjenKhXw8zcoCnunIa/K2RDcEvT3JR6J1R
        qeDXpEh3Ue8FOiyzPLd7iN6yTcIfOQ1I8SNb
X-Google-Smtp-Source: AK7set/CO8mvar3mtNk9dLLjCnMuQ2RDgt8C5yaoY2P1ehOA5bt+dtYXg/lamnaWnEY3zC+hVxSUZg==
X-Received: by 2002:ac2:5606:0:b0:4e0:ee54:fa2a with SMTP id v6-20020ac25606000000b004e0ee54fa2amr8569351lfd.6.1678640534289;
        Sun, 12 Mar 2023 10:02:14 -0700 (PDT)
Received: from 0000-cover-letter.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id y1-20020a2e9d41000000b002945b04e1ebsm704909ljj.94.2023.03.12.10.02.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:02:14 -0700 (PDT)
Message-Id: <1678640497.9030156-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sun, 12 Mar 2023 19:59:30 +0300
Subject: [PATCH v4 0/3] mmc: dw_mmc: fix DW MMC cores with 32-bit bus on 64-bit Linux systems 
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
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
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
  dt-bindings: exynos-dw-mshc-common: add exynos78xx variants
  arm64: dts: exynos: fix wrong mmc compatible in exynos7885.dtsi
  mmc: dw_mmc: add an option to force 32-bit access to 64-bit FIFO

 .../bindings/mmc/samsung,exynos-dw-mshc.yaml  |   2 +
 arch/arm64/boot/dts/exynos/exynos7885.dtsi    |   2 +-
 drivers/mmc/host/dw_mmc-exynos.c              |  41 +++++-
 drivers/mmc/host/dw_mmc.c                     | 122 +++++++++++++++++-
 drivers/mmc/host/dw_mmc.h                     |   2 +
 5 files changed, 165 insertions(+), 4 deletions(-)

-- 
2.38.3


