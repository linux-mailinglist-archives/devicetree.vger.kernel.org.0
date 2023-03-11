Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 084F26B5D56
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 16:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbjCKP1C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 10:27:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229928AbjCKP1B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 10:27:01 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC866E6FC6
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 07:27:00 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id n2so10387352lfb.12
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 07:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678548419;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwysB/HxtkhvD1Lkzv8uYufq7BInyVs0XV9o2nsB4rY=;
        b=BN+kXtBVyUXcWeex7cVEyxJDt6LuI1tWWPhaQGVzFbdC6HrWn6n6c4Xz/8IzbFMM1E
         2SXjccHI1mHNhXF+bLmBs5OtOkJwQSsRNWsP5wktQncIdDyv2HLAKN3AQDA3eRGKaFCI
         buEmCBXmJeWiFpROTyBJBoaxUhtXJQIeGCuQ+HTXNVVzNqeBdv8kNAphGQ1c72YvPbZd
         BEt8YjvvVnvfKijfpiScnsaCS0xz25SOaX59aF/EDgaEtqUilrrhXeo0YyppqlnmGRue
         X24g+XveLKjQYI5UCv1CWZmurjPH34U7UljghQXJ1k4PoAMLX/T/DMCBHQ+NtirF7v+Z
         DQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678548419;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mwysB/HxtkhvD1Lkzv8uYufq7BInyVs0XV9o2nsB4rY=;
        b=e4hE4pgXRCJBQKccejWbue91mOSFNxyHjAmNpDA3tNBZc8vu4f67E+ZcK4dHk3OUFK
         iMlrF6QdQsXK4KY18+pQ8JbC96SNGMEiPMFeQvmL7VSutQXz4v/dXMpRM5X7ni6U5RE/
         ngJJdKBc3h2K0q8szlee8FNUb2+mQbGSPSO0de36KObkDJb3AhdR1mQruxaSFXTWboYk
         tE/HoXgKxcbxcHavdkzefya6I71nBcta+kHw8R8Ny376G+wO0rT7h8UUrkCBOtxTiJdX
         Vj5w3nxmy2LnuOcltyWZRfQAzNv9MBoqkl0RxG44MpYHPl5UcAnowfId2lTcyovBrFS2
         4/Cg==
X-Gm-Message-State: AO0yUKW4tHBdXCkMzzgCttVRv+d+fLisoi3fJWT8muA7IXE1/ZbNbUul
        H29JklvnHljfL9odTTf2KhKy2SK8f4j6xCMOBqQ=
X-Google-Smtp-Source: AK7set8ui0xZNByofJWFVB8OnWDRY2MOGR9RQYkrSH9ncEMsF7UnGpmXBW+AAixL0Q4/q25FcbYLwQ==
X-Received: by 2002:ac2:4905:0:b0:4e7:dd1e:e521 with SMTP id n5-20020ac24905000000b004e7dd1ee521mr8082033lfi.9.1678548418940;
        Sat, 11 Mar 2023 07:26:58 -0800 (PST)
Received: from 0000-cover-letter.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id q2-20020ac25102000000b004d342e1332csm346541lfb.25.2023.03.11.07.26.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 07:26:58 -0800 (PST)
Message-Id: <1678548256.0817535-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sat, 11 Mar 2023 18:23:00 +0300
Subject: [PATCH 0/2] dw_mmc: fix DW MMC cores with 32-bit bus on 64-bit Linux systems
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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


