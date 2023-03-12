Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 322796B6A13
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 19:28:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232198AbjCLS1g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 14:27:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231411AbjCLS1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 14:27:19 -0400
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A605584A6
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:22:08 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id ek18so9021170edb.6
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678644947;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bdTNsWpg9ZM8ehZQeKtTu+6KMOIWutkVZQ0G5s6b6sY=;
        b=alVgkxxg0LNEkVuCBluHNYNVoEr0ZCuSDVwmpA3/OHq4p+qs27uwrXJl07WgzJMaqX
         fIHpaFxKgIS8VW+Mu2hoif62SuBi2LZ04sWyfoxtQFNCFtJQDbB4VyBVQHuqDRdXvvf9
         UsXnfg1wYSHG6tbxOYI9G/nUuzApPyiIhbho7G257bQnTg4fbSbPHz4mG6iIRB7uBYkt
         LQuvZ6emwW4jVn4zIsTZtXGYduKRcLGqFtPlAGS3o9XJTLn2i8AGfLVDABzK7ndQLEGp
         YnVu3rXdm+lmgEfUGFcSUWLXKui0Crc0K7FqyAYe27ualpQzo2ufH1UGJH4SyV8zkog+
         3MPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678644947;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bdTNsWpg9ZM8ehZQeKtTu+6KMOIWutkVZQ0G5s6b6sY=;
        b=VmJRWNGWd3il/r4GRAHjybd/8mAMgQF4hpo4H72T+x7xavuZA+oAx8JZpK609iIsKY
         ZZ1zTIPUbEkntmKbnlMKXobAldoZUJ/CavnVSrjm2sKZNIMzpDRTwdr3qHw4vRNkt4dW
         1w6BMBEJUopz7PxVBCBKQIcGvqK10W3xEt0JlqzjQXh3YUMhsgp7AN2Bc0wE8jtERXPp
         LABV6I9rAbmjPsSEzowGpdFFc4wyTSUtBt/BRErdxAFQXTa1ARNYi09ChXvNPZR6+EFp
         D2t31SKRFoLdp8NKUt/21EkhIJy+WpPxml4yaa/BxxPxKjWaL7H6gAbklkn0la1qreBb
         33zg==
X-Gm-Message-State: AO0yUKUjdFeNT+hnSizzARJM/B8ELA1dFzigkgHB9ZmGQ4f1UJVNuztd
        SJiataNOTBwqcuz47RHVvWC4IN9/O0CKm7Br
X-Google-Smtp-Source: AK7set8KT/fSjq4VWRIYmtyBYLgYYFfKeRA2PaFqXExEvvbUpTMXuNbkgzpOzF1erzbQBGnybzXZgg==
X-Received: by 2002:ac2:59ce:0:b0:4e8:11e1:f90d with SMTP id x14-20020ac259ce000000b004e811e1f90dmr6117004lfn.51.1678644270359;
        Sun, 12 Mar 2023 11:04:30 -0700 (PDT)
Received: from 0000-cover-letter.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id w17-20020a056512099100b004dc4bb914c7sm721459lft.201.2023.03.12.11.04.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 11:04:29 -0700 (PDT)
Message-ID: <640e142d.050a0220.c9bd.1ac3@mx.google.com>
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
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
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


