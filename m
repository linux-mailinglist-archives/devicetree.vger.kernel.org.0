Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30B746B6621
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 14:10:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbjCLNKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 09:10:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbjCLNKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 09:10:20 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 310BB460A1
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 06:10:19 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id i20so9957649lja.11
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 06:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678626617;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l2tChENWyDZGQKa5Zk1lhzLBop14+1J962hBMY2G3xM=;
        b=flGjgWmzg5R6++q+md+bHBltBhHzINXsONuWXjkWrkgbnycy0NVP+63p1p0J8igXPY
         jdrVS2FdWVo5z8uh60829vtiZGoBe8bqMpGF+Zs+fGyu5aa3Bhy4RZzOW7HYE8K+BFZr
         JMn8L3cj0Vp8Oqy6zxvZbzdPBOhNCQF4SMDeuuJRIQdHwFUAz9owZQM3r3VB7zPa1Q8U
         GNr/eNaYMrnTkQxAD+9tLxQNrVVFmQWpZuoVj1tJE4dr0BDe2xRjfN8ltc5Gczuv8fJa
         otZ/3qlZGXyhjHM+APyh+c0sYHW+ADlaE2GJzK4TH/0hw4mpG1gq8gEoArzyQPGLitPe
         WTvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626617;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l2tChENWyDZGQKa5Zk1lhzLBop14+1J962hBMY2G3xM=;
        b=2xZ39DsWcEKhDCi1mSggSZgc4JFgCqseGzKux4Ee+vabV7KgA4CN6YJtJfC6/GabVg
         7mnOHD9oalmAaCO79Jguvkg19L1DlgjYE5V6gSJvOvs5N8XGSODVqndW++ArYmdLMhMF
         Jz/SR+LGycq93rqVPfIX+pXjBv3FBMQkz/ctg99WQH52PHMsi0PX6Gax6SZ/dkxDIyvV
         Je53i2f+Dc6xDli/QBRSYroVno+g5JijOQgE1uj9UD70xK8LrI/EjinqBj3VWB7WK+M/
         UJ6coQAu/GRZIj0AIOd/dYDYGAIfxE/cjn9qQ3rqQ0X8xwqOuaN0J8TA/tlJgeibITcy
         Rfjw==
X-Gm-Message-State: AO0yUKU6qjG3z0Tusc5867qyc5RKasKoG22d/4/ysg1Gm14iIdE2wS9o
        Urk9r7PueBwlp7SIYcpTli1GOxtRqJEFaBMJ
X-Google-Smtp-Source: AK7set8A5V3a6alebc/Qcg9qHwdZM8P3i1h14o4z+f4x8VPJUQhDpvrvR496R4GFO9nUZmhVQ9+Knw==
X-Received: by 2002:a2e:8558:0:b0:295:965e:8506 with SMTP id u24-20020a2e8558000000b00295965e8506mr8925367ljj.41.1678626617181;
        Sun, 12 Mar 2023 06:10:17 -0700 (PDT)
Received: from 0000-cover-letter.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id a16-20020a2eb550000000b00295b6b7e125sm645328ljn.24.2023.03.12.06.10.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:10:16 -0700 (PDT)
Message-Id: <1678626510.1783316-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sun, 12 Mar 2023 16:03:15 +0300
Subject: [PATCH v3 0/2] mmc: dw_mmc: fix DW MMC cores with 32-bit bus on 64-bit Linux systems 
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

Sergey Lisov (2):
  dt-bindings: exynos-dw-mshc-common: add exynos78xx variants
  mmc: dw_mmc: add an option to force 32-bit access to 64-bit FIFO

 .../bindings/mmc/samsung,exynos-dw-mshc.yaml  |   2 +
 arch/arm64/boot/dts/exynos/exynos7885.dtsi    |   2 +-
 drivers/mmc/host/dw_mmc-exynos.c              |  41 +++++-
 drivers/mmc/host/dw_mmc.c                     | 122 +++++++++++++++++-
 drivers/mmc/host/dw_mmc.h                     |   2 +
 5 files changed, 165 insertions(+), 4 deletions(-)

-- 
2.38.3


