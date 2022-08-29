Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 357AE5A4318
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 08:22:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229644AbiH2GWL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 02:22:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229504AbiH2GWK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 02:22:10 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BBE041D22
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 23:22:10 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id h13-20020a17090a648d00b001fdb9003787so2246009pjj.4
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 23:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=message-id:date:subject:cc:to:from:from:to:cc;
        bh=K1FjpVHqTZWuFBiFwdMThJZJFwYGDL27q7f57M6QvWk=;
        b=hHnOqJBKL6fGupKuQ70HKYcCKIrf88Jpa5GOcoAiec18PT+6BOQAZG5lU8E063Ol4R
         WhXREUHiYNoR9kRpVDChRILpi972ba/gEc8kMOPcSvZTdPkUkEQaAGgUrCPDcQ3Y81p7
         QhM0ETIGkm04agdrXZ1PJMwlCKT0cix3FnVmJ14EDfoW038c1cMZiwfZPhjyn08BKuP3
         SWXV5GKgw7zZW55DWtlEjIjig3q0w1e4RyyS+94gM/RV0KiJN83GT9Tx9HxTMnHEWYWx
         uhD8b7teD9aG9dAS2l/g1Ux/HPEs1nUhBKo95ghZcdLSEilKo/zrVcPhg4kLodEL5UoB
         9N3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=K1FjpVHqTZWuFBiFwdMThJZJFwYGDL27q7f57M6QvWk=;
        b=WkiGOM2jBMrRmkNmurWaDfD5HrOD9dl0lWg1P6jwqgiCoWDqyW7dPk/dwPODnqDpfv
         /r8KXjFh3qQl0B6uwYdSR4NXdAMHJwmci5D1teNtigMD5wo5RnQynvt9/URbcWrsB8SO
         84KAh7ba0rBAlpzL22WsYYvWnLR7h4+DwPKDMbu/2n6ZQycqoFSe50sNG4VcZo/Wirf3
         yQbF65525hXqWfvdOWue9vM/4dINGDouE2GDU0cPKuYfGyb5381lG2AQEwT7uzbM6+KY
         ibDZtyXAy3OKL1iTE3vXwfpPf/Bzc+8V+rlfRpRMzNG0uP2lgJTC6fwy+EuDdVzcKRaD
         Ow2w==
X-Gm-Message-State: ACgBeo25wNoz8WQMFCDSCkCOllUbORgujYr641+WicVGLxt8gCBHHu6m
        dXpopYUlvN/WVxLzk7tJSu0wQw==
X-Google-Smtp-Source: AA6agR6wFV+N0b3bXUosUXzcWeejtIfnveQRomEYoZKiiyARyOk63eGmbSedst884SDdeCKlg7MwKw==
X-Received: by 2002:a17:902:a58c:b0:174:3c97:d9a1 with SMTP id az12-20020a170902a58c00b001743c97d9a1mr13616616plb.22.1661754129647;
        Sun, 28 Aug 2022 23:22:09 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id mp10-20020a17090b190a00b001f333fab3d6sm5817972pjb.18.2022.08.28.23.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Aug 2022 23:22:09 -0700 (PDT)
From:   Zong Li <zong.li@sifive.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        palmer@dabbelt.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, greentime.hu@sifive.com,
        conor.dooley@microchip.com, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Zong Li <zong.li@sifive.com>
Subject: [PATCH 0/3] Rename sifive L2 cache to sifive CCACHE
Date:   Mon, 29 Aug 2022 06:21:59 +0000
Message-Id: <20220829062202.3287-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since composible cache may be L3 cache if private L2 cache exists, we
should use its original name "composible cache" to prevent confusion.

This patchset contains the modification which is related to ccache, such
as DT binding and EDAC driver.

Greentime Hu (1):
  soc: sifive: l2 cache: Rename SiFive L2 cache to composible cache.

Zong Li (2):
  dt-bindings: sifive-ccache: rename SiFive L2 cache to composible cache
  EDAC/sifive: use sifive_ccache instead of sifive_l2

 ...ifive-l2-cache.yaml => sifive-ccache.yaml} |   6 +-
 drivers/edac/Kconfig                          |   2 +-
 drivers/edac/sifive_edac.c                    |  12 +-
 drivers/soc/sifive/Kconfig                    |   7 +-
 drivers/soc/sifive/Makefile                   |   2 +-
 drivers/soc/sifive/sifive_ccache.c            | 221 ++++++++++++++++
 drivers/soc/sifive/sifive_l2_cache.c          | 237 ------------------
 include/soc/sifive/sifive_ccache.h            |  16 ++
 include/soc/sifive/sifive_l2_cache.h          |  16 --
 9 files changed, 253 insertions(+), 266 deletions(-)
 rename Documentation/devicetree/bindings/riscv/{sifive-l2-cache.yaml => sifive-ccache.yaml} (92%)
 create mode 100644 drivers/soc/sifive/sifive_ccache.c
 delete mode 100644 drivers/soc/sifive/sifive_l2_cache.c
 create mode 100644 include/soc/sifive/sifive_ccache.h
 delete mode 100644 include/soc/sifive/sifive_l2_cache.h

-- 
2.17.1

