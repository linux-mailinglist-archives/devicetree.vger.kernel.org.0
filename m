Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6ED0B481E23
	for <lists+devicetree@lfdr.de>; Thu, 30 Dec 2021 17:32:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241216AbhL3Qc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Dec 2021 11:32:56 -0500
Received: from guitar.tcltek.co.il ([84.110.109.230]:59583 "EHLO mx.tkos.co.il"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S240284AbhL3Qcz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Dec 2021 11:32:55 -0500
Received: from tarshish.tkos.co.il (unknown [10.0.8.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mx.tkos.co.il (Postfix) with ESMTPS id D30AF440A74;
        Thu, 30 Dec 2021 18:32:39 +0200 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
        s=default; t=1640881960;
        bh=zywokNN1UEwcjxXdg0IGIXWNGUhkAG1XofjdXiIOozU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=gxqiiu9nCpZpV5sSm404nzqh2icUtyPrYeaDBiVIY63htZsWovEGHRirf8yTuV13y
         pgHcLKvPuekY9PAfcqu8T5fDPI5hJUjwBDT2ymRjeKrbGHOZ7I5rPHwxRYXalyl/6v
         xYdyjLdqqE4Axf4zKH0nQzbanxntcnN5iuZHdZIswMkmcOcnqHzfV7zwmI37K3jAnA
         PhH+Bql/FNC48+XEdB/ljaEkm0obsgbrlXoP/kmkrrcgW8uwEeQINiIhuGUyaRgTXe
         kIMfd4bhMkzwKLs8NQ2OlB1CRCj0xL5glANIshjoCrdfyKwSD8Gw0IRuuVq6p7KDGB
         OVMVISu7Kyqdg==
From:   Baruch Siach <baruch@tkos.co.il>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>
Subject: [PATCH v2 2/2] of: base: Improve argument length mismatch error
Date:   Thu, 30 Dec 2021 18:31:53 +0200
Message-Id: <f6a68e0088a552ea9dfd4d8e3b5b586d92594738.1640881913.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <96519ac55be90a63fa44afe01480c30d08535465.1640881913.git.baruch@tkos.co.il>
References: <96519ac55be90a63fa44afe01480c30d08535465.1640881913.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The cells_name field of of_phandle_iterator might be NULL. Use the
phandle name instead. With this change instead of:

  OF: /soc/pinctrl@1000000: (null) = 3 found 2

We get:

  OF: /soc/pinctrl@1000000: phandle pinctrl@1000000 needs 3, found 2

Which is a more helpful messages making DT debugging easier.

In this particular example the phandle name looks like duplicate of the
same node name. But note that the first node is the parent node
(it->parent), while the second is the phandle target (it->node). They
happen to be the same in the case that triggered this improvement. See
commit 72cb4c48a46a ("arm64: dts: qcom: ipq6018: Fix gpio-ranges
property").

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
Note that commit 72cb4c48a46a mentioned above is currently in the
arm64-for-5.17 branch of the qcom git tree.

v2:

  Extend the commit log to explain the apparent node name duplication
---
 drivers/of/base.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 81b956ab2348..09905b5e7b43 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1349,9 +1349,14 @@ int of_phandle_iterator_next(struct of_phandle_iterator *it)
 		 * property data length
 		 */
 		if (it->cur + count > it->list_end) {
-			pr_err("%pOF: %s = %d found %td\n",
-			       it->parent, it->cells_name,
-			       count, it->list_end - it->cur);
+			if (it->cells_name)
+				pr_err("%pOF: %s = %d found %td\n",
+					it->parent, it->cells_name,
+					count, it->list_end - it->cur);
+			else
+				pr_err("%pOF: phandle %s needs %d, found %td\n",
+					it->parent, of_node_full_name(it->node),
+					count, it->list_end - it->cur);
 			goto err;
 		}
 	}
-- 
2.34.1

