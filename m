Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0C1B2B6C3E
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 18:49:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730282AbgKQRtM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 12:49:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730257AbgKQRtL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 12:49:11 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80E71C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:49:11 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id t8so1464092pfg.8
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 09:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EAf9d4gGWEUWE1b+AMgq6WQ0FcZNv1uCLoEh96U6HDQ=;
        b=GrQmJSaliPTve3DL04A9GAepxzDBPQmaJDXflI0uIc24Ceqru5Te8SBteMXYibBiWV
         YXtyBkZcp4alV78euGq8ZrdXrY/s1xTOqwOzjdB/goMB33KUlG5kJWFx/V0Hqrk3JZEp
         zw7ndp6YX9rmihiKPQuebdAS2Wg2Jl1+n+zNJJHekxbJkjfpKusp/zA2T2t21GcxUBBV
         sZr+xgHWq6+/6X33ZHMmafEYZVgWboH6fcuIKZcdfC7uKZ/Gc2XP02Uwep7dMXIQHRUe
         AZFf9CI2yybVt/jWzI+IT2jw9m6POx/FLGVpicrbqCfBClD5HoQVjXuKaz0ESjdzURvc
         ZuuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EAf9d4gGWEUWE1b+AMgq6WQ0FcZNv1uCLoEh96U6HDQ=;
        b=qugzQ59PIA8uAibrg2CLHELdtPq7PTVpM4wTv+wSS4KeUNhEoU5tfsYURidxbeQpLF
         7t1Df/NZ7OzDsknV/guoTlN70VLiqb8w9kQFcncXudMvWS91L7L1lIKT4OiF9DKZejZv
         ErwUQmESNO9LQn6oSNa+aj/yKBXf87y3mc8mK8oRHfb3tziGtMwrm+t8vdFViGCz1WpY
         pHEzcpScfolBEvbnNfkLJ4/1GDWUB16kYqs8UUP2knz5mZQOsCzDA2uWw80rjJ3QsaBF
         O9j96Ze2XBz9eDenSd/lO/6DxpxZ9Rtvbnacw97esZzuVSeAid+dZhP5Br93FR4RdJej
         DjtA==
X-Gm-Message-State: AOAM530wtEY7OaHot11OQF3TwoEpg63/uGwrna6v/cTuY+w+i96RgN25
        5W9h/Yl+IBmzDck8dcFyV0gG
X-Google-Smtp-Source: ABdhPJwxqq2K6RhfPEieDLWKql41cofe+24CsQYp9jpMXliRovzgKa7QgkEGeFPlq1NqV99mGfsR1w==
X-Received: by 2002:a65:55ce:: with SMTP id k14mr4432790pgs.65.1605635350991;
        Tue, 17 Nov 2020 09:49:10 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id 192sm22222810pfz.200.2020.11.17.09.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 09:49:10 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 4/4] mtd: parsers: afs: Fix freeing the part name memory in failure
Date:   Tue, 17 Nov 2020 23:18:45 +0530
Message-Id: <20201117174845.28684-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201117174845.28684-1-manivannan.sadhasivam@linaro.org>
References: <20201117174845.28684-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In the case of failure while parsing the partitions, the iterator should
be pre decremented by one before starting to free the memory allocated
by kstrdup(). Because in the failure case, kstrdup() will not succeed
and thus no memory will be allocated for the current iteration.

Cc: Linus Walleij <linus.walleij@linaro.org>
Fixes: 1fca1f6abb38 ("mtd: afs: simplify partition parsing")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/mtd/parsers/afs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/parsers/afs.c b/drivers/mtd/parsers/afs.c
index 980e332bdac4..26116694c821 100644
--- a/drivers/mtd/parsers/afs.c
+++ b/drivers/mtd/parsers/afs.c
@@ -370,10 +370,8 @@ static int parse_afs_partitions(struct mtd_info *mtd,
 	return i;
 
 out_free_parts:
-	while (i >= 0) {
+	while (--i >= 0)
 		kfree(parts[i].name);
-		i--;
-	}
 	kfree(parts);
 	*pparts = NULL;
 	return ret;
-- 
2.17.1

