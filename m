Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BE1E281412
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 15:34:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726569AbgJBNeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 09:34:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBNeg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 09:34:36 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3792C0613D0
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 06:34:34 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id o20so1225585pfp.11
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 06:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ViPTzj087zkbAeUxiUkd10L4hw2bpChdJQz/eom05Xs=;
        b=YtoZj8Qlq0KoV5Vv5Iwd6zL1PvI9UQgeu0ScJDwCVcI7sOIYj8OdtixYO43LVMWdEm
         ndWD1pIJo5sv4nKtNTh311V6m+qIqkthOhc6gsEq/tWreG1tnqZm0GWQdsT0UMobkmw5
         fUBG6UIhk6nyaT5xkM3QDBQ3zjxFovPcQMAz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ViPTzj087zkbAeUxiUkd10L4hw2bpChdJQz/eom05Xs=;
        b=HImqFUadUwBGLuWpAMYC1e9/3qd6BeF27roMTp1LTMI5ybbCprUGgRVVbuaSg4NxXy
         Bq8w3msLSdhNSOo9i5lEZXvyGW0IXSTEMA8f6OtgwCOiFw9k83vH9hRYtSmHpYluKkJI
         YDCL7l7KOLkhCATPIuwaceW+MSlqaAtcracr9mvuhZVAR/5ShQt5czerg1iTmp41dtSq
         l81crdXHT9Gij/33U1IR4RPjNK18+ny18Q7M0MvcRs4J1EkPD6uftOBkHzqO/HIMDGSI
         fL++gO+t9TQ98aJruupb1dKbz6PBc2M6h2F3FAAa2mIUCe/lZWFTegU78uoDw5Bd9wLX
         hcog==
X-Gm-Message-State: AOAM531pRdzf+nFwYtTPuNhzMazI1m4bbzWytivwxYLnDxaIyc+dif0b
        HaIAqwseQT21WpVCkIbQ9kZO9IPUf3zkDw==
X-Google-Smtp-Source: ABdhPJyltF3pO67bl3jb3gcEPWV5yGLyFSorGya+l9F6U8GZcXySxsbslze7MNg1Rb22P/PVxWvCsg==
X-Received: by 2002:a62:6147:0:b029:142:2501:34e8 with SMTP id v68-20020a6261470000b0290142250134e8mr2743784pfb.65.1601645674188;
        Fri, 02 Oct 2020 06:34:34 -0700 (PDT)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id k14sm1708219pjd.45.2020.10.02.06.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 06:34:33 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        mark-pk.tsai@mediatek.com, arnd@arndb.de, maz@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 0/5] ARM: mstar: wire up interrupt controllers
Date:   Fri,  2 Oct 2020 22:34:13 +0900
Message-Id: <20201002133418.2250277-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mark-PK Tsai's driver for the MStar interrupt
controller should be going into 5.10[0].

This small series selects the driver when building
support for MStar/SigmaStar Arm v7 SoCs, adds the
instances of it to the base dtsi and wires up the
interrupt for pm_uart.

Differences from v1:

- Added two extra commits that fix up the file names
  for the MStar dtsi/dts files as requested by Arnd.

Daniel Palmer (5):
  ARM: mstar: Select MStar intc
  ARM: mstar: Add interrupt controller to base dtsi
  ARM: mstar: Add interrupt to pm_uart
  ARM: mstar: Add mstar prefix to all of the dtsi/dts files
  ARM: mstar: Fix up the fallout from moving the dts/dtsi files

 MAINTAINERS                                   |  4 +---
 arch/arm/boot/dts/Makefile                    |  6 +++---
 ... mstar-infinity-msc313-breadbee_crust.dts} |  2 +-
 ...sc313e.dtsi => mstar-infinity-msc313.dtsi} |  2 +-
 .../{infinity.dtsi => mstar-infinity.dtsi}    |  0
 ...s => mstar-infinity3-msc313e-breadbee.dts} |  2 +-
 ...336n.dtsi => mstar-infinity3-msc313e.dtsi} |  2 +-
 .../{infinity3.dtsi => mstar-infinity3.dtsi}  |  2 +-
 ...=> mstar-mercury5-ssc8336n-midrived08.dts} |  2 +-
 ...c313.dtsi => mstar-mercury5-ssc8336n.dtsi} |  2 +-
 .../{mercury5.dtsi => mstar-mercury5.dtsi}    |  0
 arch/arm/boot/dts/mstar-v7.dtsi               | 20 +++++++++++++++++++
 arch/arm/mach-mstar/Kconfig                   |  1 +
 13 files changed, 32 insertions(+), 13 deletions(-)
 rename arch/arm/boot/dts/{infinity-msc313-breadbee_crust.dts => mstar-infinity-msc313-breadbee_crust.dts} (90%)
 rename arch/arm/boot/dts/{infinity3-msc313e.dtsi => mstar-infinity-msc313.dtsi} (87%)
 rename arch/arm/boot/dts/{infinity.dtsi => mstar-infinity.dtsi} (100%)
 rename arch/arm/boot/dts/{infinity3-msc313e-breadbee.dts => mstar-infinity3-msc313e-breadbee.dts} (89%)
 rename arch/arm/boot/dts/{mercury5-ssc8336n.dtsi => mstar-infinity3-msc313e.dtsi} (87%)
 rename arch/arm/boot/dts/{infinity3.dtsi => mstar-infinity3.dtsi} (84%)
 rename arch/arm/boot/dts/{mercury5-ssc8336n-midrived08.dts => mstar-mercury5-ssc8336n-midrived08.dts} (89%)
 rename arch/arm/boot/dts/{infinity-msc313.dtsi => mstar-mercury5-ssc8336n.dtsi} (87%)
 rename arch/arm/boot/dts/{mercury5.dtsi => mstar-mercury5.dtsi} (100%)

-- 
2.27.0

