Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDF862EEE72
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 09:18:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727146AbhAHISi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 03:18:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726784AbhAHISh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 03:18:37 -0500
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com [IPv6:2607:f8b0:4864:20::549])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB1C9C0612F8
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 00:17:57 -0800 (PST)
Received: by mail-pg1-x549.google.com with SMTP id 18so6976067pgf.19
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 00:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=MTRtl2UAGlXiRiGOyc8AHNRImXjzXH68pAaaOwyulHE=;
        b=V6EL31lTkHVGs10R8sodrz5276YWozWSBOItTi9gN8gncQV8Tjwe6RSj+PgZcVAoGV
         2U4TObb11sP/ILFF6IJYsHlKQHVF9DLwTvs992qHpCfPSMJlEOK0IFYVcCzdtidpHgtB
         pdC8DD4JR8/zqKrxfbQzsQS7svGn58Q41yz+4uJvKy00+iZmxFqtTm91OjE5PnYNC1ww
         +5fy/LHvystcDU6LK+0YhIXnj+p/aViMZY+LnxkjoZ9Je32qgLDuEUmsdtX9e6BT6IyO
         VGTl2hv/ITPcj+ME8pOhoY4kLJQIDiDqzzrjFOYxAjHfvcvpq1YRRIBRJWlZOlBOEw66
         jIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=MTRtl2UAGlXiRiGOyc8AHNRImXjzXH68pAaaOwyulHE=;
        b=t1tbBbjXg1sUGcVRQOyS6vTooGJRAsUPHLzjjvqGv4yWVDipFBuhEPAvjgHTBn8v/q
         Tx/tCH+ZzCTxqPTYhXqtXCPmFPgMvbW0NKLmAa43aVham8HNBVF4oFCsQyrYZpG1V0wf
         p3WJxcj7HiKmEK3vrZoTH0GAU9K5lW0LsHlA57WFChfFFcmq/DaZwUKDUyB41g43MP3H
         fFPdzKXBjzpO8j1KZdBKJw13Opa+9trqkrl6sdk+ZGkz7dHmz4Kj01whq67bkjVDaqLO
         gJR7U2U4Feildy/lmdBXxiQfid8tbZyJjOZwsqaSIf2XixBfJGBBmy2Q2EqmfVimGVUw
         TMRg==
X-Gm-Message-State: AOAM530UrCkpA1ZZXnij3i5w9HPFJ9Kv88WASrQvO38lLHX07joh+78L
        YsO6C2dcJLdW6s5q5nyeUCIrER4nKhQY
X-Google-Smtp-Source: ABdhPJxmyHvyUBXGANKNPo0GB8zfz2o/IJkoe30Xr6ThffKBgLQZuYb5UHeFQfE76Cz/didQG1YaHoJjCMFy
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a17:90a:1706:: with SMTP id
 z6mr1765727pjd.0.1610093876865; Fri, 08 Jan 2021 00:17:56 -0800 (PST)
Date:   Fri,  8 Jan 2021 16:17:35 +0800
In-Reply-To: <20210108081738.2175224-1-tzungbi@google.com>
Message-Id: <20210108081738.2175224-2-tzungbi@google.com>
Mime-Version: 1.0
References: <20210108081738.2175224-1-tzungbi@google.com>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
Subject: [PATCH v2 1/4] remoteproc/mediatek: use devm_platform_ioremap_resource_byname
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, matthias.bgg@gmail.com,
        linux-mediatek@lists.infradead.org, mathieu.poirier@linaro.org,
        devicetree@vger.kernel.org, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replaces platform_get_resource_byname() and devm_ioremap_resource()
pairs to devm_platform_ioremap_resource_byname().

Note that, not every pairs are applicable to replace.  Especially when
it needs to access the resource struct from
platform_get_resource_byname().
For example:
scp->sram_size = resource_size(res);

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 drivers/remoteproc/mtk_scp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
index e0c235690361..1f0ed2974d5c 100644
--- a/drivers/remoteproc/mtk_scp.c
+++ b/drivers/remoteproc/mtk_scp.c
@@ -719,8 +719,7 @@ static int scp_probe(struct platform_device *pdev)
 	for (i = 0; i < SCP_IPI_MAX; i++)
 		mutex_init(&scp->ipi_desc[i].lock);
 
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "cfg");
-	scp->reg_base = devm_ioremap_resource(dev, res);
+	scp->reg_base = devm_platform_ioremap_resource_byname(pdev, "cfg");
 	if (IS_ERR((__force void *)scp->reg_base)) {
 		dev_err(dev, "Failed to parse and map cfg memory\n");
 		ret = PTR_ERR((__force void *)scp->reg_base);
-- 
2.29.2.729.g45daf8777d-goog

