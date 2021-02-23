Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8347732323E
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 21:44:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233228AbhBWUmA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 15:42:00 -0500
Received: from mx2.suse.de ([195.135.220.15]:43808 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232525AbhBWUl6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Feb 2021 15:41:58 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 19A76AE7F;
        Tue, 23 Feb 2021 20:41:15 +0000 (UTC)
Received: by unicorn.suse.cz (Postfix, from userid 1000)
        id E7F55E0155; Tue, 23 Feb 2021 21:41:14 +0100 (CET)
From:   Michal Kubecek <mkubecek@suse.cz>
Subject: [PATCH] dts: drop dangling c6x symlink
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Message-Id: <20210223204114.E7F55E0155@unicorn.suse.cz>
Date:   Tue, 23 Feb 2021 21:41:14 +0100 (CET)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With c6x architecture removal, scripts/dtc/include-prefixes/c6x symlink
lost its target. Drop the dangling symlink which triggers some distribution
check scripts.

Fixes: a579fcfa8e49 ("c6x: remove architecture")
Signed-off-by: Michal Kubecek <mkubecek@suse.cz>
---
 scripts/dtc/include-prefixes/c6x | 1 -
 1 file changed, 1 deletion(-)
 delete mode 120000 scripts/dtc/include-prefixes/c6x

diff --git a/scripts/dtc/include-prefixes/c6x b/scripts/dtc/include-prefixes/c6x
deleted file mode 120000
index 49ded4cae2be..000000000000
--- a/scripts/dtc/include-prefixes/c6x
+++ /dev/null
@@ -1 +0,0 @@
-../../../arch/c6x/boot/dts
\ No newline at end of file
-- 
2.30.1

