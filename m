Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA812FCB4B
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 08:13:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728093AbhATHJJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 02:09:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728030AbhATHJC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 02:09:02 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17972C0613D6
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 23:07:43 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id p18so14573985pgm.11
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 23:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PYJHN29z38YJQy9+aRfXhxK7SVaDLVhX0WgONtRAors=;
        b=c2S19u75v9Chts0QzKMx+ZayKXIoNAlL8ZNL3dQyLlx3STuOpzebHm8DZqg1ADQi4X
         tQkAJpsSFnVkiU4O3W+lIDUNH4+ZgZg2jaIJl4iRr4C+6Z0nioL/8zVyD8moRU+Xkeaj
         NH76BrNCubz6XhRsPzTfuMZhfhipO1MoZQditsYpd7ppALsgjGALC33iMDONcHYylAWd
         e/y/VKma9J2vHDBeX7dg1C2R1ej9u3P4G2eVZfLkkytSd3N5UC5vo2lDvo0LQ+oL/I+k
         YNvRgEh9+i6XVkmBZXeCajH1xfaJSNxTLfozDVNzG6P4ZPjbcW4Rp7hre7l3AdtORYOI
         X3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PYJHN29z38YJQy9+aRfXhxK7SVaDLVhX0WgONtRAors=;
        b=hmnUXGBloJLHFuBBTyW8f1zXfOc0yDT8pCpRj32x7GjWpbCjfTct8pWnNwjX88quZc
         xKgy5xrzCEEgSIOjyxu75thaoTpI0Hc2+IyQMdBjUAPx3sSLeMiDeHVfOE3+7ToRibdu
         5gsuXzemf6Picn5/QDfmfT/ttzG3YPIBYOPW4MyZcregZMNpNpAAcOX+sXCpUSMnpvlb
         5yI3n4AwCPgml8CJIsIiSN8D20wyV49MecnZ3CjlaAodOLT+Q3+qfkOvEGi/kPpPDniW
         CmaG28nDrtBjGP4IxCr8yRVdWr357icX2U4S80MqJKxLjeSoC2A1BvwSrvhsu0gTpU9x
         j8sg==
X-Gm-Message-State: AOAM533BJRhISxclsIyH8T2Y5R8XmZEnEZI6Pbv4q9orpbhjjU/KuBV5
        qvsAE7eQNVB4GjcJsnF/mYDYLQ==
X-Google-Smtp-Source: ABdhPJzdkC+jsZ70UpYPYA7LIpEA5AYpkuoU3Y/7RHpSB5FsjgMt+4M03fg4o3GDqg4zjl8DI+/e8w==
X-Received: by 2002:a63:1401:: with SMTP id u1mr7879221pgl.229.1611126462652;
        Tue, 19 Jan 2021 23:07:42 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id 17sm1146822pgy.53.2021.01.19.23.07.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 23:07:42 -0800 (PST)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        David Gibson <david@gibson.dropbear.id.au>,
        Bill Mills <bill.mills@linaro.org>, anmar.oueja@linaro.org
Subject: [PATCH V5 1/5] scripts: dtc: Fetch fdtoverlay.c from external DTC project
Date:   Wed, 20 Jan 2021 12:36:43 +0530
Message-Id: <41f7158a707f20980e71a8d254c1d7aed84ad371.1611124778.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.25.0.rc1.19.g042ed3e048af
In-Reply-To: <cover.1611124778.git.viresh.kumar@linaro.org>
References: <cover.1611124778.git.viresh.kumar@linaro.org>
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

