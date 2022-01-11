Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2108548AD90
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 13:25:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239875AbiAKMZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 07:25:16 -0500
Received: from smtp1.axis.com ([195.60.68.17]:16524 "EHLO smtp1.axis.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239870AbiAKMZQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 07:25:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1641903916;
  x=1673439916;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fCaZwj+KskGotd5hwL8N2swD6whxDHX1fP/vETec0rA=;
  b=Xn1J4L8xzh/5hpdSW6sQW7ey9AjYPRHqRMnRlgNewTBMvVdKVsVEErRd
   DnWD2krDFkP1ks37vFSQXlHyVATR+FkQPy6DBYQB6l8gxhPt905P8m3qR
   FW3cB/htuxZlUPK7jzsy25FPxXSMrroTT+AKDrstDFmUeCePd+SEYeIr3
   tizHX3KdCuNsEEoocOm16lK7oa+PPxYyF6OX+A/vMAO6sp9So3QIulU8l
   TzdklDnAr/pGz09RfI0L1gWgJC9D02tUXQh7uDX0UZDrFxtvIA7ecHF72
   VIbSC1xU27wOGk5kgka6vhEVr2Pge/Dp3Ieo/4LYCW6+QwU3FQ1kSlLHc
   A==;
From:   =?UTF-8?q?M=C3=A5rten=20Lindahl?= <marten.lindahl@axis.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>
CC:     <kernel@axis.com>, <devicetree@vger.kernel.org>,
        =?UTF-8?q?M=C3=A5rten=20Lindahl?= <marten.lindahl@axis.com>
Subject: [PATCH] of: fdt: Check overlap of reserved memory regions
Date:   Tue, 11 Jan 2022 13:21:11 +0100
Message-ID: <20220111122111.3869046-1-marten.lindahl@axis.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If a DT specified reserved memory region overlaps an already registered
reserved region no notification is made. Starting the system with
overlapped memory regions can make it very hard to debug what is going
wrong. This is specifically true in case the ramoops console intersects
with initrd since the console overwrites memory that is used for initrd,
which leads to memory corruption.

Highlight this by printing a message about overlapping memory regions.

Signed-off-by: Mårten Lindahl <marten.lindahl@axis.com>
---
 drivers/of/fdt.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index bdca35284ceb..c6b88a089b35 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -521,6 +521,11 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
 		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
 		size = dt_mem_next_cell(dt_root_size_cells, &prop);
 
+		if (size && memblock_is_reserved(base)) {
+			pr_warn("WARNING: 0x%08llx+0x%08llx overlaps reserved memory region\n",
+				(u64)base, (u64)size);
+		}
+
 		if (size &&
 		    early_init_dt_reserve_memory_arch(base, size, nomap) == 0)
 			pr_debug("Reserved memory: reserved region for node '%s': base %pa, size %lu MiB\n",
-- 
2.30.2

