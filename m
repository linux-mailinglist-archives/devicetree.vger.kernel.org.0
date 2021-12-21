Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E1A147BC33
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 09:51:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235852AbhLUIvS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 03:51:18 -0500
Received: from guitar.tcltek.co.il ([84.110.109.230]:46913 "EHLO mx.tkos.co.il"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233569AbhLUIvS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Dec 2021 03:51:18 -0500
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mx.tkos.co.il (Postfix) with ESMTPS id A1F0F4409BF;
        Tue, 21 Dec 2021 10:51:10 +0200 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
        s=default; t=1640076670;
        bh=KmkazY+3KmFjF2gyaa0C1nCjKJAokRVOB304BgRCjWk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=TDKTbW+yHetc6m/a2h4N2pou+tts/Q+5swO3Q9J5eKrkm+CvwoxsAqyBHQrEaHYTS
         SUh7FH0fNKU/C3hrekCrOeDx8Su5SQ5+AgsZC3wdfn6PRKkEBYZ0grfipSmAqh+Ce5
         s+nOmE3YNUa5+Nc2LnREauCAT8mif6uMCnzVPKZIPhX7LkYy3AJ5Bps/BvIVbMiNVE
         n1TFjwf5wtxuTqSdHL98Iz1tU5Rkrsa9reVKw5ose62bAIGcFa6PB6O626k0g8PFbO
         oSTeCmc+BqYeuaC2vItnFgB/2kpFdpQhP2Gx164peAY4vd+Tn0k9aw2/1R7+w0loZF
         CHvQmwMaHnWhw==
From:   Baruch Siach <baruch@tkos.co.il>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>
Subject: [PATCH 2/2] of: base: Improve argument length mismatch error
Date:   Tue, 21 Dec 2021 10:50:02 +0200
Message-Id: <4cd1b24a2f4d185cf96799ab02ea4283437de67b.1640076602.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <88f6428288756fb777d9fe6b910673c987757d10.1640076602.git.baruch@tkos.co.il>
References: <88f6428288756fb777d9fe6b910673c987757d10.1640076602.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The cells_name field of of_phandle_iterator might be NULL. Use the
phandle name instead. With this change we get the more helpful messages:

  OF: /soc/pinctrl@1000000: phandle pinctrl@1000000 needs 3, found 2

instead of:

  OF: /soc/pinctrl@1000000: (null) = 3 found 2

That should make DT debugging easier.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/of/base.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 64218c614a85..7c03de370913 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1349,9 +1349,14 @@ int of_phandle_iterator_next(struct of_phandle_iterator *it)
 		 * property data length
 		 */
 		if (it->cur + count > it->list_end) {
-			pr_err("%pOF: %s = %d found %ld\n",
-			       it->parent, it->cells_name,
-			       count, it->list_end - it->cur);
+			if (it->cells_name)
+				pr_err("%pOF: %s = %d found %ld\n",
+					it->parent, it->cells_name,
+					count, it->list_end - it->cur);
+			else
+				pr_err("%pOF: phandle %s needs %d, found %ld\n",
+					it->parent, of_node_full_name(it->node),
+					count, it->list_end - it->cur);
 			goto err;
 		}
 	}
-- 
2.34.1

