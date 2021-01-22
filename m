Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44F5B3000C2
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 11:55:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727325AbhAVKws (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 05:52:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727377AbhAVKvh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 05:51:37 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DA29C0617A7
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 02:51:05 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id b5so3525854pjl.0
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 02:51:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Mj8NkcRMiBcX8enUu0QdAFt4QvkXJ54u28VgjHZrnr8=;
        b=INxEBZOQHpe111nBfLB+3bNd6+RN9DFzc2OWu9iizQXyYIdz4XMaOf/jxNFMJBgmms
         vosF1GBO+qfSFoc+neKr0WcW+8P6DXBVECICNv3zAZ5t+CpDFhrmDlLyNdDwEVlWoeUj
         MBw2Mj2SYZt+XxyiQ4EKRqiNY/7+gu0R5LBVgu1DT3Fb9YPU/yl05KjbPi+QNaZhmUII
         9nN0rJfXEqKDTwtOSS1+Zwg0UhGxrFEoHNDaRkzRUdPH6g9hJcfSlo4Vd8plEC5Ty2AD
         LDFRixw/0gs70JkvlZuhGt+qO+BMV4hciyAWWj5zx3gbSC3mdAYLNo5L2kW4n1GovZG7
         LmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mj8NkcRMiBcX8enUu0QdAFt4QvkXJ54u28VgjHZrnr8=;
        b=feTU9XxMEK5CL5uN3LxtAI7EnnT4QUKo3Cf0Ns7X9meNCe8TcmTvuNAmMd3Hek6Ew2
         BUr2us71DHVAHTUCaFVRWNSS93FoAYEj8pXXc/mZxEugmhReRuuAFZmwVDkaqUYrWm1j
         dWoL/lknwt6byeGfKxCD3QptccYyqW9YTJz36NSR8G9ql969HpfuKxlMSeJDKERlFoFC
         WKBsYpgvOxxCecby9orXgqQTeGTPEigHYO0FurqrXu27EVYyLt7U/9JG1nihC234dS6f
         9EV0Z557OSfhAr+GnMld2SrkPwNJVwvoi+bryPZxrLlxZW9tjUD6VQFoVnLsFJn89KpB
         kWmg==
X-Gm-Message-State: AOAM532laHKDkFdxPM4f2/O2F7IozCKkF/K0CWmVR7x6K4fetRkUIF2E
        XSkFvSl2n6DlHpj/uehBiifSfIPn/m+z4A==
X-Google-Smtp-Source: ABdhPJzzrRNMWc6u8vjsE/paDaL9qnO2/wq10WFkIh3pP+ZA1JjkWDpQESqc3BWG4h6v41bQshBi1A==
X-Received: by 2002:a17:90b:1a87:: with SMTP id ng7mr4801788pjb.211.1611312664993;
        Fri, 22 Jan 2021 02:51:04 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id c189sm8682506pfb.175.2021.01.22.02.51.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 02:51:04 -0800 (PST)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        linux-kernel@vger.kernel.org, anmar.oueja@linaro.org,
        Bill Mills <bill.mills@linaro.org>,
        David Gibson <david@gibson.dropbear.id.au>,
        devicetree@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>
Subject: [PATCH V6 2/6] scripts: dtc: Build fdtoverlay tool
Date:   Fri, 22 Jan 2021 16:20:32 +0530
Message-Id: <2dfec4acb1bfbab08b431908ace0a77cc3279434.1611312122.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1611312122.git.viresh.kumar@linaro.org>
References: <cover.1611312122.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We will start building overlays for platforms soon in the kernel and
would need fdtoverlay going forward. Lets start building it.

The fdtoverlay program applies (or merges) one or more overlay dtb
blobs to a base dtb blob. The kernel build system would later use
fdtoverlay to generate the overlaid blobs based on platform specific
configurations.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 scripts/dtc/Makefile | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index 4852bf44e913..5f19386a49eb 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -1,13 +1,17 @@
 # SPDX-License-Identifier: GPL-2.0
 # scripts/dtc makefile
 
-hostprogs-always-$(CONFIG_DTC)		+= dtc
+hostprogs-always-$(CONFIG_DTC)		+= dtc fdtoverlay
 hostprogs-always-$(CHECK_DT_BINDING)	+= dtc
 
 dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
 		   srcpos.o checks.o util.o
 dtc-objs	+= dtc-lexer.lex.o dtc-parser.tab.o
 
+libfdt-objs	:= fdt.o fdt_ro.o fdt_wip.o fdt_sw.o fdt_rw.o fdt_strerror.o fdt_empty_tree.o fdt_addresses.o fdt_overlay.o
+libfdt		= $(addprefix libfdt/,$(libfdt-objs))
+fdtoverlay-objs	:= $(libfdt) fdtoverlay.o util.o
+
 # Source files need to get at the userspace version of libfdt_env.h to compile
 HOST_EXTRACFLAGS += -I $(srctree)/$(src)/libfdt
 
-- 
2.25.0.rc1.19.g042ed3e048af

