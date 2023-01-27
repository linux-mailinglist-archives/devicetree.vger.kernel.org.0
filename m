Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA96F67F147
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 23:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231825AbjA0WlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 17:41:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229776AbjA0WlI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 17:41:08 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8325017CDC
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 14:41:04 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id k18so6411379pll.5
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 14:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nvd78EFCFTA+IoyvpWFZxccqfwJZh9nFVURaFlJtDBc=;
        b=agfLhx7DROvc8eWXeDdQfa3G6CG/v8RglC5alUEQUNaIExF6TM/WGU71dVdM4IJEd0
         Few5Ci5zn060UYf3CqDGyt5neRCLPmSFx/yk9kLuvpiQazI+aLwOWog3sSwha/TB3Fi1
         GjM7wcwP5RmjFOCgZZWJUTxvsDHcU8OL6BCPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nvd78EFCFTA+IoyvpWFZxccqfwJZh9nFVURaFlJtDBc=;
        b=OO2wriiZABQRGh71iyPSlbcYe82TSVjrKYgiLAAhK/0lyhq8Cy+8ClvPbjvezKpS5f
         Nx35mLw9jk5AyTn2tH4Pp3zXDsZcdaIAL6p5Jl7Ays9DnuhCHg1ehBzDzSys6O6r7Osc
         gR+1zAmV1vy6eBOJpKH7BJghEJskuykV5bEtcX/eR35K9suF4BuCLJ8+d8jyqiFJqcta
         3Gy9j+aNLM2c6/FwrfvcSymb1ybfcA9xjEAEa7NC/pO5YDuTA4jLOVliVsPaYHFUcAmn
         rE1juy3rA0lM1j1hxwfMsDLlN8JMybBI+d8IDNjvaRhhT43tX0+FWrPo9O+wUf7fX91y
         vLDg==
X-Gm-Message-State: AO0yUKWLrxJzyXoK5j3V+haw+6mf4UDiKUrWOr6x0hhkH+/k01Hw4ELH
        0xwG+XXbNK5yED16vXXkleb2zg==
X-Google-Smtp-Source: AK7set8qDbmK4nDzk0SW/XB6mH16v7+RfkQCuJeeUj7Hw8x0zdqfRqdvi6T5cra68wljX+fkSZvWjQ==
X-Received: by 2002:a17:903:1c3:b0:192:5282:6833 with SMTP id e3-20020a17090301c300b0019252826833mr9440962plh.29.1674859264117;
        Fri, 27 Jan 2023 14:41:04 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b13-20020a170902b60d00b001947982eb8fsm1649328pls.60.2023.01.27.14.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 14:41:03 -0800 (PST)
From:   Kees Cook <keescook@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Kees Cook <keescook@chromium.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: [PATCH] scripts/dtc: Replace 0-length arrays with flexible arrays
Date:   Fri, 27 Jan 2023 14:41:02 -0800
Message-Id: <20230127224101.never.746-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1179; h=from:subject:message-id; bh=2yOxUbXEDDQUNUvJ0m5VJd/xFwDVrvCBvEeaOiE+M+o=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBj1FL+eQ1tNuRIgnbxa4cY7FJESYrqQEKN0w4GSlkQ 1l7LUBOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCY9RS/gAKCRCJcvTf3G3AJjV2D/ 9DowDxOddhlmPIxQSTCyZoBx7SByob+UC5oA3LWWD9zPj3UGbAOnydxkhjhWNY+Zgu235VKCC7dh4h Zp7i1uMZ3S9akJi3eYmMRhwdG3PDGMAeu3i9gK1uVXfMrHhi05bCY0faVgtYdkxFsQjrbralsrL9Ez WAd7jYgl0lNGIxQpXHaN8Nkag/tW58f0ZmukVqQuC1syhMKB/n23vP0ojH4k8KJpYpaP42clbjURpr RY95xqO4cu2PwfbDnUgn5Rm0Bf88ZPu3FMabRHKMp/BmkN7BX/LDmHCXrgCFR/Tw8NUHemKfEVs8Eq K3+Sbkp7jYvobL9kw0GDOpfBQ/HvYJgdp2gBk6Akrj8EkzE3uFa6WSQw9vCms+uv3uZAbuJOXgYY7b h9UJjENffEDX8Eeay/xjtDnV1nIzL60RALSCmH0/NNc3ZQWLmYW8FBpBVlSZ08WaiV0KiMcFlxwARq imQGXxEwiSCGIyDvxm5a5fGfuzfve+YcGJx6lxiaXbo3n4XpQm689V2mBrgtUm+LZ5ywwyls05v+6q YBot27KlNHBjXCOEFMiVfCmxk6Y68MZF+iIr92iFuag7fCmcxIvBKZBFN1jI3s5Q1VSsHFf+JfssLt LcOEpCvG7UQwv8A49+STJenDtm6RaoCrE6CrabO0XQ2BSGtrWSRn3BVYwQiw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace the 0-length array with a C99 flexible array. Seen with GCC 13
under -fstrict-flex-arrays:

In file included from ../lib/fdt_ro.c:2:
../lib/../scripts/dtc/libfdt/fdt_ro.c: In function 'fdt_get_name':
../lib/../scripts/dtc/libfdt/fdt_ro.c:319:24: warning: 'strrchr' reading 1 or more bytes from a region of size 0 [-Wstringop-overread]
  319 |                 leaf = strrchr(nameptr, '/');
      |                        ^~~~~~~~~~~~~~~~~~~~~

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 scripts/dtc/libfdt/fdt.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/dtc/libfdt/fdt.h b/scripts/dtc/libfdt/fdt.h
index f2e68807f277..0c91aa7f67b5 100644
--- a/scripts/dtc/libfdt/fdt.h
+++ b/scripts/dtc/libfdt/fdt.h
@@ -35,14 +35,14 @@ struct fdt_reserve_entry {
 
 struct fdt_node_header {
 	fdt32_t tag;
-	char name[0];
+	char name[];
 };
 
 struct fdt_property {
 	fdt32_t tag;
 	fdt32_t len;
 	fdt32_t nameoff;
-	char data[0];
+	char data[];
 };
 
 #endif /* !__ASSEMBLY */
-- 
2.34.1

