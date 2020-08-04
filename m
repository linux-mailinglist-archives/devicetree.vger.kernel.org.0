Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A90023BF76
	for <lists+devicetree@lfdr.de>; Tue,  4 Aug 2020 20:48:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727880AbgHDSsq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Aug 2020 14:48:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727816AbgHDSsq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Aug 2020 14:48:46 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 976EAC06174A
        for <devicetree@vger.kernel.org>; Tue,  4 Aug 2020 11:48:45 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id o23so16158576ejr.1
        for <devicetree@vger.kernel.org>; Tue, 04 Aug 2020 11:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=k6n9Bx3dS7/rl5+hEQcop2J6ordeV//9xvdRouOCTy8=;
        b=hg7DVeAuoJ8QIOV9tq9Uk8NDmJQs7QY+/+0GaEmeFug3QJKKIl9TecClodaq5ryqwX
         bQCilQCYYffU16LTepCDIh+agVs9uQUSAQV6Zx4EpcaBJyd6yRu2vZkKqAjc+V8p6wD1
         sVeMAe3SNpy6Kx7H/NJxH6bmXtKpYRJfAls1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=k6n9Bx3dS7/rl5+hEQcop2J6ordeV//9xvdRouOCTy8=;
        b=V7cA+Bpt/YjuBC9ejzN7R5bhnoRShc7tU2/o16xXVfB8TUUqKKDV6zkU2XdDA65OC6
         AkvVkdUbBbADXq4St4zx0CnWrm5CwgSEWXslr+aCG4hcaOW0iOcfb9YmaJSVtO8z7q8B
         Jx2PJjSnP4BkqSqJG910K1PFOPqwdKQkv66ElETpzX67u4BdP8WqGLm3hAWZ7cP1wuys
         TDOAAXXV+jsSGgGNeLHMxVcREcwFv5/4HI8UCQyGWQIykH8dGpHDXM6AsAj1aYb3BPhw
         G1TJzHRTuiMwErtJCRc4ysYHNZTT3Dr24sQi+gps34KEiWV1deDXZLrt/tCxuZ27os/e
         gkkA==
X-Gm-Message-State: AOAM533vsZAQ/j44Z5NjWpsy45BRGCofmuSxkawS29fSVPjUMjAmayBy
        aMfeqTCLNGRVytRNfs03Yuz5HNajYmBmoIydBf8n5A==
X-Google-Smtp-Source: ABdhPJzErpOyOvNE+rPIf2h1XLHlZ/Z9OnqOzuXaEJHun6C5kwQFsKbupJpAwtgn1WjEhgl1H9J/a3e/s+vx+8dRcCU=
X-Received: by 2002:a17:906:d187:: with SMTP id c7mr23685263ejz.196.1596566924085;
 Tue, 04 Aug 2020 11:48:44 -0700 (PDT)
MIME-Version: 1.0
From:   Markus Mayer <mmayer@broadcom.com>
Date:   Tue, 4 Aug 2020 11:48:32 -0700
Message-ID: <CAGt4E5tMdG9gZbx43MeXpiPnqe0sy9bYKQmZ1oJCSwTL=Xf7Dg@mail.gmail.com>
Subject: Build error caused by "arm64: dts: agilex: add nand clocks"
To:     Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Device Tree <devicetree@vger.kernel.org>,
        Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I don't know if anybody else is seeing this, but for me the commit
"arm64: dts: agilex: add nand clocks"[1] is causing a build error
while generating DTS files for ARM64.

The error goes away when I drop the commit.

$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig dtbs
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/kconfig/conf.o
  HOSTCC  scripts/kconfig/confdata.o
  HOSTCC  scripts/kconfig/expr.o
  LEX     scripts/kconfig/lexer.lex.c
  YACC    scripts/kconfig/parser.tab.[ch]
  HOSTCC  scripts/kconfig/lexer.lex.o
  HOSTCC  scripts/kconfig/parser.tab.o
  HOSTCC  scripts/kconfig/preprocess.o
  HOSTCC  scripts/kconfig/symbol.o
  HOSTCC  scripts/kconfig/util.o
  HOSTLD  scripts/kconfig/conf
*** Default configuration is based on 'defconfig'
[...]
  DTC     arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mq-thor96.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-rmb3.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8mq-zii-ultra-zest.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8qxp-ai_ml.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtb
  DTC     arch/arm64/boot/dts/freescale/imx8qxp-mek.dtb
  DTC     arch/arm64/boot/dts/freescale/s32v234-evb.dtb
  DTC     arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dtb
  DTC     arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dtb
  DTC     arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dtb
  DTC     arch/arm64/boot/dts/hisilicon/hi6220-hikey.dtb
  DTC     arch/arm64/boot/dts/hisilicon/hip05-d02.dtb
  DTC     arch/arm64/boot/dts/hisilicon/hip06-d03.dtb
  DTC     arch/arm64/boot/dts/hisilicon/hip07-d05.dtb
  DTC     arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dtb
Error: arch/arm64/boot/dts/intel/socfpga_agilex.dtsi:313.15-16 syntax error
FATAL ERROR: Unable to parse input tree
make[3]: *** [scripts/Makefile.lib:309:
arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dtb] Error 1
make[2]: *** [scripts/Makefile.build:497: arch/arm64/boot/dts/intel] Error 2
make[1]: *** [Makefile:1306: dtbs] Error 2
make: *** [Makefile:336: __build_one_by_one] Error 2

Regards,
-Markus

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d4ae4dd346cd49302d157b129ead2f60d3a82534
