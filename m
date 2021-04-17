Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B5CC362CA1
	for <lists+devicetree@lfdr.de>; Sat, 17 Apr 2021 03:13:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235000AbhDQBL4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 21:11:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234136AbhDQBLz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 21:11:55 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD87FC061756
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 18:11:30 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id t22so20339201pgu.0
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 18:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oFRDKw0dH3PiLiKz6mJo37/a7HDsMiEOCgW3zJ4ySpQ=;
        b=CI/YrdY4BoPfvyDsXCUQr0YtgGQc6ApLTyncG1WvbL5A5F7lcNkgKzLo81sUCQ4TWt
         s/k26P9BKA9G+gkJPeYNc3rQDO981jPCULKxeAWhle4cSa5LqtlFdg5GkxYx9AZsvXPJ
         xCUG6kNm+KDXKVuJYLG0YfNxTJsS9UjO7skVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oFRDKw0dH3PiLiKz6mJo37/a7HDsMiEOCgW3zJ4ySpQ=;
        b=PD5xYYyGn7LQ9kMMDvZfahlrLhSTUBa+o5YSUE7ABVSwmHJr4wdNpN0IAQYUrAbjEL
         LbCMYB9lgCS9UaXm+NKtj1wTjYklK3JomuNSlnCg94xPrb/3yN6DYgEoE+PqbaM3I8k/
         QpyR/D3icjk8sYcQ5jKNdRC0ewCiwKOukRIISxyUT6tJh/6jIfltxnxIhc6i51NIEFME
         Sb5TgNDqeLpFotafcU47r2P3rC3uZM9JDD+hVSF/EU0IarnH14BlYG1VUBUT1Lui4x/1
         LpifGQWfJ5O+vgP3iMjL0DFi1Cim14YAZsGONFWureYOnk6uOAIT5slCJxnJd1Dl+EY2
         O00A==
X-Gm-Message-State: AOAM530f7krXmaggL7Q11CWIIHnOn6JY6HRm4bI5O4691rHnowuVcpCo
        72RbXLsoIC68Hccd/rp+2JgTH1RNbl10eg==
X-Google-Smtp-Source: ABdhPJxqmXvxD4LBQIPax7OSnpomD/4jNcX4OFrGrMf0MgZTSCaSU8ragurZcjW6leHMWAKc/4BGXA==
X-Received: by 2002:a65:5b85:: with SMTP id i5mr1424835pgr.269.1618621890046;
        Fri, 16 Apr 2021 18:11:30 -0700 (PDT)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id x17sm2181515pjr.0.2021.04.16.18.11.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 18:11:29 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, olof@lixom.net, arnd@kernel.org
Cc:     w@1wt.eu, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 0/3] ARM: mstar: Add initial support for M5Stack UnitV2
Date:   Sat, 17 Apr 2021 10:10:12 +0900
Message-Id: <20210417011015.2105280-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds basic support for the soon to be released M5Stack
UnitV2 based on the SigmaStar SSD202D.

With the rest of the commits in my tree the SPI NAND, ethernet, USB etc
should work so the UnitV2 should be fully usable with a mainline-ish
kernel.

Hopefully this will encourage someone else to help with cleaning
up and pushing the commits for these SoCs.

Link: https://m5stack-store.myshopify.com/products/unitv2-ai-camera-gc2145

Daniel Palmer (3):
  dt-bindings: vendor-prefixes: Add vendor prefix for M5Stack
  dt-bindings: arm: mstar: Add compatible for M5Stack UnitV2
  ARM: dts: mstar: Add a dts for M5Stack UnitV2

 .../devicetree/bindings/arm/mstar/mstar.yaml  |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 ++
 arch/arm/boot/dts/Makefile                    |  1 +
 .../dts/mstar-infinity2m-ssd202d-unitv2.dts   | 25 +++++++++++++++++++
 4 files changed, 29 insertions(+)
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m-ssd202d-unitv2.dts

-- 
2.31.0

