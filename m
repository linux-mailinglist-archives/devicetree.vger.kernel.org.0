Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 398D52EC9EA
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 06:16:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726489AbhAGFQO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 00:16:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725970AbhAGFQN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 00:16:13 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89E75C0612F6
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 21:15:30 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id q4so2890143plr.7
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 21:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=veLiPLptQPatfIKZ55m17NpOdTlfTsyV4zGOGB1KjD0=;
        b=GZTm+0fKGDN75n1VaB2xqy6SPEh0CpZxMX24JMwAozI8QJGbQb/ygcQ8W34NCvbqTt
         MGv90E8rxhdjg9hkTpAOxMwF234gOE2ooYEtQdzBLgcVxBD3Hz/O8zWpyxLQu3WWrmDT
         AXBWgG3/SlPMT7O5TyRom38Dq6hbZrtDRxZ20Mp0I2jZzVwYqBLl2nJeEs3GHHmv7bi8
         GMlLC3c1I6OReyi2bulptuGc58ZZAsHgwjZsWywZM1ZB+G5Ru60Db0ij/0dwUu9b9yhv
         JMAJim0oOWFFS+5jDvFQjO0Rxpz+XSSwk/n+K1qRGumeIZA3Wku4qW97jyyezfa0jtsa
         gfSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=veLiPLptQPatfIKZ55m17NpOdTlfTsyV4zGOGB1KjD0=;
        b=c14J/g78oRVG6tCmNnf9gLajb7mpSg18ufTIQGfvfNW+Ca8SPoB2xm/7sJ03Wr1cPT
         aIO/PeDSF070alKlaUgtWSF8VCdQi9TFoo3YJLV9CYze5BxKNCaM6/YOeCwAtKD0Ch/J
         2Ln212GWP7ZIaAIfvpTrjugkIOKTSttGz2Ns2qRhc+r1KJLhRPZHBFrphIyT6xQS8Ec0
         73Us6XLM+JKW0E8+z/VwLxx5EQRYS/yKJ3N6KK+SfHBZZJe9Peay+e8UvQEQ7RYknsWT
         l97jRH1GXtTzUaKRKoks/ZMJk+RmFmmVtANcs4gPO1HLJcXjwzRcqSM2CwuvSl8NsiBw
         r0AQ==
X-Gm-Message-State: AOAM53045xE537vPUz4kx5OUSoGOulLimuYZUQCjw5naDTSEUMFh3qel
        7T6iC1cfYvV72ewjviQmGrTF7g==
X-Google-Smtp-Source: ABdhPJwEaQDf/oNyjrW67E9uvdaxm0yeBtQtn0qsc5+sZVNaVTHprnnAaiUlR/CS3sa0MkhiDQCGww==
X-Received: by 2002:a17:903:22ca:b029:dc:9882:1f79 with SMTP id y10-20020a17090322cab02900dc98821f79mr7383369plg.33.1609996530149;
        Wed, 06 Jan 2021 21:15:30 -0800 (PST)
Received: from localhost ([122.172.20.109])
        by smtp.gmail.com with ESMTPSA id ds24sm3559263pjb.30.2021.01.06.21.15.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 21:15:29 -0800 (PST)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>, anmar.oueja@linaro.org
Subject: [PATCH V2 2/2] scripts: dtc: Build fdtoverlay and fdtdump tools
Date:   Thu,  7 Jan 2021 10:45:20 +0530
Message-Id: <d6e4edd213433d24a2a5c7e6a816bc40b0ada32d.1609996381.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <be5cb12a68d9ac2c35ad9dd50d6b168f7cad6837.1609996381.git.viresh.kumar@linaro.org>
References: <be5cb12a68d9ac2c35ad9dd50d6b168f7cad6837.1609996381.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We will start building overlays for platforms soon in the kernel and
would need these tools going forward. Lets start building them.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 scripts/dtc/Makefile | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index 4852bf44e913..c607980a5c17 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -1,12 +1,18 @@
 # SPDX-License-Identifier: GPL-2.0
 # scripts/dtc makefile
 
-hostprogs-always-$(CONFIG_DTC)		+= dtc
+hostprogs-always-$(CONFIG_DTC)		+= dtc fdtdump fdtoverlay
 hostprogs-always-$(CHECK_DT_BINDING)	+= dtc
 
 dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
 		   srcpos.o checks.o util.o
 dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
+fdtdump-objs	:= fdtdump.o util.o
+
+libfdt_dir	= libfdt
+libfdt-objs	:= fdt.o fdt_ro.o fdt_wip.o fdt_sw.o fdt_rw.o fdt_strerror.o fdt_empty_tree.o fdt_addresses.o fdt_overlay.o
+libfdt		= $(addprefix $(libfdt_dir)/,$(libfdt-objs))
+fdtoverlay-objs	:= $(libfdt) fdtoverlay.o util.o
 
 # Source files need to get at the userspace version of libfdt_env.h to compile
 HOST_EXTRACFLAGS += -I $(srctree)/$(src)/libfdt
-- 
2.25.0.rc1.19.g042ed3e048af

