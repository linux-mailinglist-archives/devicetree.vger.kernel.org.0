Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A4512C5D66
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 22:08:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388521AbgKZVGr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 16:06:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388418AbgKZVGr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 16:06:47 -0500
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2765DC0613D4
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 13:06:46 -0800 (PST)
Received: by mail-pf1-x441.google.com with SMTP id b6so2607725pfp.7
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 13:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Tgn2hTBqiW955JL5NPKA45JX/FzuG4XGgD1c5/FNO0E=;
        b=EJgU0yrfDUi8K8TBrpgjT/nsXFo2NQQXZN2x+vJPCyzkDxYqwcmziQyyjhr9ttVojI
         AonHYDAz2+W26V4stIv19k1UcMmylcC4/I9CgGet6RwL6Kyy2UAtfKTl0qfAIytXLqhX
         I80mt//amPrYAPJ30mKrzEQPvBJ7rmm1yEpGk/nEnef0VfU7s/1Qc42Z/Kl40xpDoJSd
         dESiphWO7uhj9Tb281SsmB4OmaJfa/D19zZLoG7bYC+c7eHkgt3LYYrudLSvRQDvTFIg
         OIkAC1WD33FWh0WsP8pEYguuVyKOJASEoFcHEDb+d5Lgd0MUj99UTtwvtWAFsePNQ3Z7
         T1uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Tgn2hTBqiW955JL5NPKA45JX/FzuG4XGgD1c5/FNO0E=;
        b=qOj6bTQiVHR41RfICSv230InunT+DOfjA/kErBtdMyfCTJjKFQKpMaMNz9e8FnGF/E
         nybFRcw2GDO67+xYrcx+zriU2oftV0FJBlC+Lt4zlsPoeAS3x64rLtHEIipVOEw3cMRy
         483AaA+NQi2DNCureZVSDiDPl7oSeL7x0z+JygZwuySTB7i96a8pRxUk7UAqpolARIpd
         vHdPgh9+Ou/fSvCEbxkFOV3AY1QF1urjad827IDvEDj1WYlBTsOLBa83b5OKo9AuYoBC
         mZ/9bnTp4Wu8+b2pJU+4TRnwJsdIv+UNXniX7QFj8T7rt3Wa4bOkiORuSI0UxY2To0nS
         CUMw==
X-Gm-Message-State: AOAM533W5VjIoYiK/rLEoJmjRGgMaz2a/J9l14Ly1vDXKPGIP490dJZ7
        f5lrxyQjI6QeXspKzOxqDqG1Vw==
X-Google-Smtp-Source: ABdhPJxxRX5T2XVObUhBwNopitD5QOQ5LaEDrJ75ibgn4vFqyaiYk50I+mOWW6AvrfKpk1GEYX69Jg==
X-Received: by 2002:a63:3309:: with SMTP id z9mr3796396pgz.243.1606424805726;
        Thu, 26 Nov 2020 13:06:45 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id c203sm5612676pfc.10.2020.11.26.13.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2020 13:06:45 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arnaud.pouliquen@st.com
Subject: [PATCH v3 02/15] remoteproc: Re-check state in rproc_shutdown()
Date:   Thu, 26 Nov 2020 14:06:29 -0700
Message-Id: <20201126210642.897302-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201126210642.897302-1-mathieu.poirier@linaro.org>
References: <20201126210642.897302-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The state of the remote processor may have changed between the
time a call to rproc_shutdown() was made and the time it is
executed.  To avoid moving forward with an operation that may
have been cancelled, recheck while holding the mutex.

Cc: <stable@vger.kernel.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/remoteproc_core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 46c2937ebea9..e8b901f34c91 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1857,6 +1857,9 @@ void rproc_shutdown(struct rproc *rproc)
 		return;
 	}
 
+	if (rproc->state != RPROC_RUNNING)
+		goto out;
+
 	/* if the remote proc is still needed, bail out */
 	if (!atomic_dec_and_test(&rproc->power))
 		goto out;
-- 
2.25.1

