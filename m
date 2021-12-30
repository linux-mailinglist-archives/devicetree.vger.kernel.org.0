Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A440481E22
	for <lists+devicetree@lfdr.de>; Thu, 30 Dec 2021 17:32:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240284AbhL3Qc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Dec 2021 11:32:56 -0500
Received: from guitar.tcltek.co.il ([84.110.109.230]:59582 "EHLO mx.tkos.co.il"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S241210AbhL3Qcz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Dec 2021 11:32:55 -0500
Received: from tarshish.tkos.co.il (unknown [10.0.8.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mx.tkos.co.il (Postfix) with ESMTPS id 968A944066E;
        Thu, 30 Dec 2021 18:32:39 +0200 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
        s=default; t=1640881959;
        bh=6qFmNs+cXJBH4B82lkkaVUCvmgNQXGaOr7lviQAYqMM=;
        h=From:To:Cc:Subject:Date:From;
        b=K+PYZrzrxMkGwe7X0sfV1xVPWlzlAx6HxPvoKyAz/cW0Srwt1kwulbsWm7K32uReS
         v97Hnypu/9F6/j8xWgoBnDY58Cf5crbHjk/WJCKOqDUVfXi0JOyTEmniVXYI+qWxX5
         fAndKXX+9+aSxqg3qkS97awS38Lv/DiGmM+PS0eToIULMZhNbHr25K/dRIH3yO7doL
         Eau7PlD23Gxje+EEUT71zOg1tMHXAXJ5Zz+Lcuqji916Q46Y/fwG6/A/k/B+Pcd7XQ
         /v5QTnGEbmDlFDagjq65JOJcJCOU8E7NHyWy+HH7EP+c06OqleGsFcKNNtIe5dhKJr
         0Cikk+YCCouyg==
From:   Baruch Siach <baruch@tkos.co.il>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH v2 1/2] of: base: Fix phandle argument length mismatch error message
Date:   Thu, 30 Dec 2021 18:31:52 +0200
Message-Id: <96519ac55be90a63fa44afe01480c30d08535465.1640881913.git.baruch@tkos.co.il>
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
v2:

  Use correct length modifier for ptrdiff_t
---
 drivers/of/base.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 61de453b885c..81b956ab2348 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1349,9 +1349,9 @@ int of_phandle_iterator_next(struct of_phandle_iterator *it)
 		 * property data length
 		 */
 		if (it->cur + count > it->list_end) {
-			pr_err("%pOF: %s = %d found %d\n",
+			pr_err("%pOF: %s = %d found %td\n",
 			       it->parent, it->cells_name,
-			       count, it->cell_count);
+			       count, it->list_end - it->cur);
 			goto err;
 		}
 	}
-- 
2.34.1

