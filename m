Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DC4D30335E
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:52:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728738AbhAZEvl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:51:41 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:37996 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732240AbhAZCjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 21:39:49 -0500
Received: by mail-ot1-f48.google.com with SMTP id s2so12712565otp.5
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 18:39:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LyjWMQi/Wg/LetZuSHt99dOJAsiyEjqk3II+kk6Ybdc=;
        b=drT0wEd++raUXuiR3DLOyn+5AbyZaFbn5H1CVs0AbFkzv1xpV2z/Z881PfXDSP31d6
         //CnBTDo9WwZCjnpjMiklDo354f/txCUaSc/biXMT3bofQHzM9KtxyuDXkFSUIK4emBx
         wJwwL1AgAb8ZMwUYq4yHbVOlBIWxUG2ykNuAAVUkTdnXXl/A4E+JuO/R0EUOvOiAlkSB
         rxoRUptIThCEVqhCGx1t0+bPDsWjCjTsg9pjvirAdu4GreovTomX6eVxahLy6eVVck6/
         IiusblyREmYDGlKZQA2dQJYfXLTvSb/XPXnTWu4rpphQa2WuVXB2PKoD09Q5xvsof4g7
         8zGA==
X-Gm-Message-State: AOAM530RfPury1SVnU0XdC/s/Ixf+6u/P1CEJ2HLrNzxx2r43q5wt+68
        YtOLEF6pGeidD8H14jaL1Q==
X-Google-Smtp-Source: ABdhPJzVz6r4O2ks+3G24uVhIq7vNxlpW/6RIVcGGmctLSSwXYn3iryXLjWs2HpIt6iQCJjA+fYVug==
X-Received: by 2002:a05:6830:1ac3:: with SMTP id r3mr2633669otc.363.1611628747483;
        Mon, 25 Jan 2021 18:39:07 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id k20sm78376otr.34.2021.01.25.18.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 18:39:06 -0800 (PST)
From:   Rob Herring <robh@kernel.org>
To:     Russell King <linux@armlinux.org.uk>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Qi Zheng <arch0.zheng@gmail.com>
Subject: [PATCH] ARM: zImage: atags_to_fdt: Fix node names on added root nodes
Date:   Mon, 25 Jan 2021 20:39:05 -0600
Message-Id: <20210126023905.1631161-1-robh@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 7536c7e03e74 ("of/fdt: Remove redundant kbasename function
call") exposed a bug creating DT nodes in the ATAGS to DT fixup code.
Non-existent nodes would mistaken get created with a leading '/'. The
problem was fdt_path_offset() takes a full path while creating a node
with fdt_add_subnode() takes just the basename.

Since this we only add root child nodes, we can just skip over the '/'.

Fixes: 7536c7e03e74 ("of/fdt: Remove redundant kbasename function call")
Reported-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Qi Zheng <arch0.zheng@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/compressed/atags_to_fdt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
index 8452753efebe..31927d2fe297 100644
--- a/arch/arm/boot/compressed/atags_to_fdt.c
+++ b/arch/arm/boot/compressed/atags_to_fdt.c
@@ -15,7 +15,8 @@ static int node_offset(void *fdt, const char *node_path)
 {
 	int offset = fdt_path_offset(fdt, node_path);
 	if (offset == -FDT_ERR_NOTFOUND)
-		offset = fdt_add_subnode(fdt, 0, node_path);
+		/* Add the node to root if not found, dropping the leading '/' */
+		offset = fdt_add_subnode(fdt, 0, node_path + 1);
 	return offset;
 }
 
-- 
2.27.0

