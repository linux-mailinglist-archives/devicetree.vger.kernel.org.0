Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC86B6B5C34
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 14:23:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbjCKNX4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 08:23:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbjCKNXz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 08:23:55 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEE406B950
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 05:23:53 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id s22so10160174lfi.9
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 05:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678541032;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwysB/HxtkhvD1Lkzv8uYufq7BInyVs0XV9o2nsB4rY=;
        b=B1HS81xKJ1DFL5MMZtoAtydjpTuKonyq1CQT5oyQKTJOUTH+l/n65SnnN91FB2M6rL
         7M7RNs35qx6Y61G4HipPn75M5fL3xb4hrmePKlR4vS0Wp04wJKnciQhhHNFQU1UjTYmO
         n43pPXymPLuyTv7Cq3x1dfVx9DoGRNijaf1oqxlzHftw/KCl7ucfQVJEh18fLjJNCHjU
         9TF2oVUe9vGqZHrDqB5CP70ApNas/rJSyG4BeWHaS1FE68bu52EqnLeNJvPLPd+ycERe
         V3pwqb0ub5qyPgI2Ie3E0criWuWY0aQSOuaLOP7vreJpn7OMBA9ovHKwOtQM5mxB61b7
         MLvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678541032;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mwysB/HxtkhvD1Lkzv8uYufq7BInyVs0XV9o2nsB4rY=;
        b=TsSuoeEFI0FF8hPDvsLj0L9plnpWn61+PTEKp5A8Oa0WlCbcT8DvPZ2s4Ezz2HiX00
         /vdZGNhwKTs/jEwOHfwyvcjTzEvISGgNFiYvMnmFDYDzFbkZBNuPAgMffFPCmYH42Z1j
         TAYSQjbAYj0C3vSZC/kqSLhxygldWgnKp8j/KGtdT7rqWeJzIFOIIeSr1ZVH5PmsIZKm
         mx6sqy5eLYfdGSt+eLCyVvGknBPpqQ99+NZh4T24pNeyFve6dvlH6mCa4YkVsLC9SGrW
         8TKwh+xmdpVVY+RUgdfgOgjft10Q1QByY/Q/WJP9Eom8c2W2SUnVvmiXT/pX/KOL9w01
         7fgg==
X-Gm-Message-State: AO0yUKXB6phvg/LCn9I4OVERHRhv1InKOcB8GRNWdTTH8//XFpW7dugA
        u0W+EK1BHpPs5zIt0rWgrRs3I4PcZLf3efSHIUs=
X-Google-Smtp-Source: AK7set93KtzXTE7IuTXK7bD6BzqiqMiCL55R4ynHqHmB48xvvaIdnpsUSplz3rpDpFJv9buG+3g4xg==
X-Received: by 2002:a05:6512:33d1:b0:4d8:86c1:4772 with SMTP id d17-20020a05651233d100b004d886c14772mr1693626lfg.7.1678541032033;
        Sat, 11 Mar 2023 05:23:52 -0800 (PST)
Received: from 0000-cover-letter.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id t13-20020a19ad0d000000b004d7bfd3b683sm317296lfc.17.2023.03.11.05.23.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 05:23:51 -0800 (PST)
Message-ID: <640c80e7.190a0220.f011e.0c6c@mx.google.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sat, 11 Mar 2023 15:54:59 +0300
Subject: [PATCH 0/2] *** SUBJECT HERE ***
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS autolearn=no
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

Sergey Lisov (2):
  devicetree: synopsys-dw-mshc-common: add "fifo-access-32bit" property
  dw_mmc: add an option to force 32-bit accesses to 64-bit device
    registers

 .../bindings/mmc/synopsys-dw-mshc-common.yaml |   6 +
 drivers/mmc/host/dw_mmc.c                     | 125 +++++++++++++++++-
 drivers/mmc/host/dw_mmc.h                     |   2 +
 3 files changed, 131 insertions(+), 2 deletions(-)

-- 
2.38.3


