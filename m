Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4E913196FE
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 00:50:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbhBKXsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 18:48:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230264AbhBKXr3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 18:47:29 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D65E9C061225
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:34 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id nm1so4367996pjb.3
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yDRxGrQMToW3Vor3njhDmnUs8pFP7mgJszB9Khz+OuE=;
        b=pZyDs0BtrY8aWl00bxfY7/rUW4h0wlDAGZF0GeV3Qjiz2SqmaEQrAI4QSlfRj8N+9t
         PoVI/WLAZ3NDxNM5hkalhv6HF2k3fvD7jDtXfybSOhTpY4bDRLir4Cf1R2adpqvrhGQy
         5khsgwhoFSfmPZcXdo7/JDewtBmkZAk1IYQdDFq2cTDIxiiUEkd9nye2qvckKooNB/X2
         QJ+5nOWUGzNlS5whigrKloP656FOAc5MvLSt0LX1/X4B2rtoZN04Ktd/b0f5gVc669ws
         TQHICqjLS0U3PlKZMtwHKwDQIusCVq0qcEa4zKMWQwM1hLfrNnCcIOmKkw+mH/c/EZev
         jddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yDRxGrQMToW3Vor3njhDmnUs8pFP7mgJszB9Khz+OuE=;
        b=YsfMpE2IBLdBQgYaSN//x1F5XVLdT2GSdRdY2GBJs3ISN9yefF2vKzReJMFTfq0bW9
         PHV6OqnFzrpKl5dcvzfr8hKY87QnT21AXl+Onv8nvZEtSCEhmqLlTUg8Zmbt2Fi6cJ4U
         TeQQ3nkQ6/e00yThmI02NBhAP2fanCnIRlkHsHpexgS/dF06ojjQ3i55CTwK4xvwaMnl
         WcQzd2z1TjK9VaSMjN+H0c2beYcQUS5x1grdrsxXP47g+T57Jmmm3JELpTmQD1ZReo+b
         +N5eUBpdGbPUctVabQWjwuj9JaoLCUC9HrQ3hHSSJwOv3+6cwzidKPkb8NY0K5BiJd4v
         dVvw==
X-Gm-Message-State: AOAM532D8sptj6UQ5hD/38kl9uXfw8RQ0YwK8QLFI/2FdMfKLBS0lDAF
        XL3e3UEJCZWKxtXXkLmHNXG7KA==
X-Google-Smtp-Source: ABdhPJxLsHBBc4Hj7/zp8fSObveC7Gc5G+rloz07Pb/qyttL9SyyFfR9mw9l7nxeJl8Dn3HHTIye3A==
X-Received: by 2002:a17:90b:945:: with SMTP id dw5mr186517pjb.34.1613087191843;
        Thu, 11 Feb 2021 15:46:31 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id iq6sm5932740pjb.6.2021.02.11.15.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 15:46:31 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org,
        arnaud.pouliquen@st.com
Cc:     robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
        alexandre.torgue@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 03/19] remoteproc: Remove useless check in rproc_del()
Date:   Thu, 11 Feb 2021 16:46:11 -0700
Message-Id: <20210211234627.2669674-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
References: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Whether started at probe() time or thereafter from the command
line, a remote processor needs to be shutdown before the final
cleanup phases can happen.  Otherwise the system may be left in
an unpredictable state where the remote processor is expecting
the remoteproc core to be providing services when in fact it
no longer exist.

Invariably calling rproc_shutdown() is fine since it will return
immediately if the remote processor has already been switched
off.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/remoteproc_core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index f1c097572e01..86bd66955060 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -2350,10 +2350,8 @@ int rproc_del(struct rproc *rproc)
 	if (!rproc)
 		return -EINVAL;
 
-	/* if rproc is marked always-on, rproc_add() booted it */
 	/* TODO: make sure this works with rproc->power > 1 */
-	if (rproc->auto_boot)
-		rproc_shutdown(rproc);
+	rproc_shutdown(rproc);
 
 	mutex_lock(&rproc->lock);
 	rproc->state = RPROC_DELETED;
-- 
2.25.1

