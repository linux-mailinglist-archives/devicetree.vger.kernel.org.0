Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF5B53000E0
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 11:57:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727190AbhAVKzL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 05:55:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727497AbhAVKvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 05:51:42 -0500
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CF72C061794
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 02:51:02 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id 15so3438136pgx.7
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 02:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PYJHN29z38YJQy9+aRfXhxK7SVaDLVhX0WgONtRAors=;
        b=AP04QnPEq4omjlVd+XdVlwgJ67Xem0dBgHqNS1NMAk3e7DwbaWW8RgDO+sQnmk2ARX
         GXttGe+eUwii441N+kRqjfw+Nmtm3EQLerO+0c3mptkNBWOXHKMF2BiY6Dc3zrv+16U5
         cMfFkO8sy/tywJhIyqwV1UyWjPk9fF04TYurPsgJvwhAcHHFX+0WOq6p1VB6b6taJiED
         ARoPTT0Wtw5Skh++d6MVcWawwTedLM3WJHGiN3m/nL5/aTrGOi/2hUrJP7GSOhAGK54w
         jjpV3CYIJGNLPoW/HXSoC8PjvTYpgOxPzxT2B+qXt0gXHkKojMdMEaMsfok103U3xGpH
         j7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PYJHN29z38YJQy9+aRfXhxK7SVaDLVhX0WgONtRAors=;
        b=DvR8q6cqjERrueK9JXpwlRWl+6A4K2w+1dcZfNl5WyEs5xqT8Zog7gGLwAKPexO0hZ
         6tCGyg70NwI0Ix+C7F/byKOdBoHJaVv+sOgTL6CcregGZHWjAtSDLYK3430A2o3ORdEi
         N1u/q54A1le2DZmSd/C4owY/Xp/WCKXBYafaY3khPDY8RWNDcsT4m/sf/zl5WA0X+ghL
         sCeCOtrFgUJfVSOiHyrFQV8rV675G6lzvRJUYDfDg+RD3E5+f0jj1odcB41uJKr+OOvU
         kVf39hv5/BDcaP2L1kZr0y+7nPh+RxiGh49i653w37dAVhNR8KVeQrEoEMzgiVo+L4r7
         jQCQ==
X-Gm-Message-State: AOAM5305xy+604a+NWQDXZzMAKBu9IHsOgdrdoPt3v3xhwAVGX0zCtJv
        2xfO1bucHASnPsWEx+WeHtFwwg==
X-Google-Smtp-Source: ABdhPJzMDKgsXcHTNjkAK8idSBD+8LqnsqtyCcKAjRIZ3d6iRLMd2Qg5S5AlRQCOi9Jhpq7agsAiTg==
X-Received: by 2002:a63:574c:: with SMTP id h12mr4116854pgm.79.1611312661973;
        Fri, 22 Jan 2021 02:51:01 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id s9sm1776905pfd.38.2021.01.22.02.51.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 02:51:01 -0800 (PST)
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
Subject: [PATCH V6 1/6] scripts: dtc: Fetch fdtoverlay.c from external DTC project
Date:   Fri, 22 Jan 2021 16:20:31 +0530
Message-Id: <41f7158a707f20980e71a8d254c1d7aed84ad371.1611312122.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1611312122.git.viresh.kumar@linaro.org>
References: <cover.1611312122.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We will start building overlays for platforms soon in the kernel and
would need fdtoverlay tool going forward. Lets start fetching it.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 scripts/dtc/update-dtc-source.sh | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/dtc/update-dtc-source.sh b/scripts/dtc/update-dtc-source.sh
index bc704e2a6a4a..32ff17ffd089 100755
--- a/scripts/dtc/update-dtc-source.sh
+++ b/scripts/dtc/update-dtc-source.sh
@@ -37,6 +37,7 @@ DTC_SOURCE="checks.c data.c dtc.c dtc.h flattree.c fstree.c livetree.c srcpos.c
 LIBFDT_SOURCE="fdt.c fdt.h fdt_addresses.c fdt_empty_tree.c \
 		fdt_overlay.c fdt_ro.c fdt_rw.c fdt_strerror.c fdt_sw.c \
 		fdt_wip.c libfdt.h libfdt_env.h libfdt_internal.h"
+FDTOVERLAY_SOURCE=fdtoverlay.c
 
 get_last_dtc_version() {
 	git log --oneline scripts/dtc/ | grep 'upstream' | head -1 | sed -e 's/^.* \(.*\)/\1/'
@@ -54,7 +55,7 @@ dtc_log=$(git log --oneline ${last_dtc_ver}..)
 
 # Copy the files into the Linux tree
 cd $DTC_LINUX_PATH
-for f in $DTC_SOURCE; do
+for f in $DTC_SOURCE $FDTOVERLAY_SOURCE; do
 	cp ${DTC_UPSTREAM_PATH}/${f} ${f}
 	git add ${f}
 done
-- 
2.25.0.rc1.19.g042ed3e048af

