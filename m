Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 812508E4E1
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 08:22:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730058AbfHOGWa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 02:22:30 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:41857 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729796AbfHOGWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 02:22:30 -0400
Received: by mail-pl1-f194.google.com with SMTP id m9so730721pls.8
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 23:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C35xwjcBp6ucpFMk0GlvDHgeoIUJgF4pbOGfC3HtEQ8=;
        b=nt6l09p6mjdSzgc9bh7qMa9HvYqWCDhM41zW5a2Lvzorg5PQh991hcYi/oSc/i//j/
         0i1S3xcuFhGBk5HWvieM6oj4bZdPDhiN7y7bwDSWsHHn2W3vHigQ5PRN65RS0ZqLDPQA
         vl64p/TTydKp/otNU1jMO4c2H7GApIcN47GP4Ug5jIKw68sk9VG+0sipyNzdLHWuvAPV
         zs4fZiEBkO4Qi5Z2mw2tzC+7PEXNZoZq2S47UKVPdwZB6vI55LW21vFiyC4Wbe1mOzPi
         +PTQJGKPvGsbWlKLJPWRksIYGq44ZY29brOG07/b3ca+i+xbtnD/qOT4TCvWjASOP6O2
         SgsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C35xwjcBp6ucpFMk0GlvDHgeoIUJgF4pbOGfC3HtEQ8=;
        b=NImS5wP+P2o21mIFGbGJgiJg2QRkkuVr5T7GcNB97AS3F4I/lsT2OIbKudsU4oq7CG
         rnUatzL3A+kTpLsnYEblVeJ8FJM/wn0zDJ+M4h1YaTOCouX21bNBWCcYnJAX649Zn/7g
         F4dar54nMn49zVAE5YkX50zB7xjvaJOqJA0ox0qc9fN640SKSlmTGGcmz0l3oJEQwJ06
         SyC6mVRxeVQhQzOzKYjUJv27ygPfZvk/ijdy1E8oPPV/BVJ0cb2u+vD2e5OGCHoULKbT
         b9xvhWQvXq5li0UmO+d4CAZuObMkZkKyjmVsv0boQDXL6vtuLbqxZjOv+ujpPxsUuEVH
         mLWA==
X-Gm-Message-State: APjAAAWKkXnr1Pmwwb7Vikn3YhGpxtzhPnr205ZE6YBbygST9P2AZs1K
        C5YzymC4T2H1Reqc4M6/reY=
X-Google-Smtp-Source: APXvYqxc1R7ad4AHxSSWUlJ4DGBWljiEgX4L5B9O2R5r9qybMSjWqducE1EL4oBZKJW1+DWB61eQQg==
X-Received: by 2002:a17:902:6a8c:: with SMTP id n12mr2888885plk.159.1565850149968;
        Wed, 14 Aug 2019 23:22:29 -0700 (PDT)
Received: from localhost.localdomain ([110.225.3.176])
        by smtp.gmail.com with ESMTPSA id w9sm1837610pfn.19.2019.08.14.23.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 23:22:29 -0700 (PDT)
From:   Nishka Dasgupta <nishkadg.linux@gmail.com>
To:     robh+dt@kernel.org, frowand.list@gmail.com,
        devicetree@vger.kernel.org
Cc:     Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: [PATCH] of: unittest: Add of_node_put() before return
Date:   Thu, 15 Aug 2019 11:52:18 +0530
Message-Id: <20190815062218.5428-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The local variable np in function of_unittest_platform_populate takes
the return value of of_find_node_by_path, which gets a node but does not
put it. If np is not put before return it may cause a memory leak. Hence
put np before a return statement.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/of/unittest.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index e6b175370f2e..480a21e2ed39 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -1044,8 +1044,10 @@ static void __init of_unittest_platform_populate(void)
 	test_bus = platform_device_register_full(&test_bus_info);
 	rc = PTR_ERR_OR_ZERO(test_bus);
 	unittest(!rc, "testbus registration failed; rc=%i\n", rc);
-	if (rc)
+	if (rc) {
+		of_node_put(np);
 		return;
+	}
 	test_bus->dev.of_node = np;
 
 	/*
-- 
2.19.1

