Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8FCE47BC32
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 09:51:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235853AbhLUIvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 03:51:17 -0500
Received: from guitar.tcltek.co.il ([84.110.109.230]:46911 "EHLO mx.tkos.co.il"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S235852AbhLUIvR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Dec 2021 03:51:17 -0500
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mx.tkos.co.il (Postfix) with ESMTPS id 19529440150;
        Tue, 21 Dec 2021 10:51:08 +0200 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
        s=default; t=1640076668;
        bh=hBB1x7zcDuZ/tExJhAZtJ5u1AU00woxqGMugSTjrSgQ=;
        h=From:To:Cc:Subject:Date:From;
        b=sjelSbuAhfpyUnjjXuT5Z6i7q495jlAXloXgOiPNuPv/1bSfNvUUB/DWNGtA+kljA
         x6kA+SQBbZUUssEcWhaSRQIJCsWtRyjUbMQMa6bFyYB+tareDLJNVHeBlTU5ZRW2Ht
         06DRbjFYDGNEXSPVmVdoJEBkAggyhDGaUH5ZKYR1E4XMUFv4TsJ2sdMIsNaH8e1Yt+
         4JY5ubOL8KdYrXfC+Yw0Vew6Y78qIXs4bs5DkM3iL1BfDzn8mfeDVHswYY9w3/vczI
         lomT5uqWWFoA/UoN4t7u1UoYNLmyF44JIfrgQl2qjNER5nCZU63NLFaTFikZs8cXC1
         ++MbIxuwNCahg==
From:   Baruch Siach <baruch@tkos.co.il>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH 1/2] of: base: Fix phandle argument length mismatch error message
Date:   Tue, 21 Dec 2021 10:50:01 +0200
Message-Id: <88f6428288756fb777d9fe6b910673c987757d10.1640076602.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The cell_count field of of_phandle_iterator is the number of cells we
expect in the phandle arguments list when cells_name is missing. The
error message should show the number of cells we actually see.

Fixes: af3be70a321 ("of: Improve of_phandle_iterator_next() error message")
Cc: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/of/base.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 61de453b885c..64218c614a85 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1349,9 +1349,9 @@ int of_phandle_iterator_next(struct of_phandle_iterator *it)
 		 * property data length
 		 */
 		if (it->cur + count > it->list_end) {
-			pr_err("%pOF: %s = %d found %d\n",
+			pr_err("%pOF: %s = %d found %ld\n",
 			       it->parent, it->cells_name,
-			       count, it->cell_count);
+			       count, it->list_end - it->cur);
 			goto err;
 		}
 	}
-- 
2.34.1

