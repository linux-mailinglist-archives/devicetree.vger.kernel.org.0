Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B52931971A
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 00:51:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230396AbhBKXvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 18:51:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230233AbhBKXuF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 18:50:05 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33FA7C0698C4
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:44 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id b21so5069348pgk.7
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Mp+mWSDpsQpj9MF3x3T5H2fS4e1Av4X97/izXSyp1vI=;
        b=IuMH+Xl3+C4gUMMxtAllS7ZPSyGIoYf2rMe0IufQxwt52j9zVpYi7Q3JUk8+OxWzM3
         PvpHM5+brzjn0zNVXbpwOTW6Fr/Sphi34Y+Rvf4XaNv4qvbVCuVST2bvyBMNbXSy8a2O
         cefrrkXqEPkTtXSPRfrSIYYPiFexWCuzTM7gVdqpFmeWvFgI7gDGsq2XFJ3t5jph5Pt9
         xjrSqVy1afVFI63asEptOugavONzuOBGj2UtNCaJqtu6Kjw4P04eiojQ+/1Txmthy8PW
         PLREL70UwzlmOeiYrHjsXjEoQKJQxrAe6rZoEkPScppHQGdzJu74eD8haECB6A9poH/Q
         N/pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mp+mWSDpsQpj9MF3x3T5H2fS4e1Av4X97/izXSyp1vI=;
        b=nAM3VIzM/fVeiv0KQzv2nIgH41hq5T2+Cz+LCVRCF2XQbcuutMa9dUJlckDnV56YT3
         DAJBb1nw3193ZlIhAKMIopjJTO4BUPIrADAuWoWRtlk8QoETytFkAWh9U/d9esObHPWK
         nAEj+3hoBBwZr4ku14e9NYq2Kw5uSukZoyJAIX4pgHkJ+nVMj67W8HXoUgzxX0bsRb5x
         m1Q0fvuVifxpu9q/BxAnEHn+M8R277UfVKBK/BlDYf17XKqAxqwJhdfDljxkkGHo4G+q
         beTaUtKnPX4Y3KPVOMb8Hyla2KRrD9oJ3rqhG+xkPwYlAUTyUeMW3mu0SPT9CEFu0Ydy
         CC5Q==
X-Gm-Message-State: AOAM533BiKETaW7CJqoW5i/gSxe3aIb5hpfpa5aTJg8xgHfWQrwGlCk4
        liTDy1UEOMyplTMKHddfaNKwng==
X-Google-Smtp-Source: ABdhPJy8Mb/RaDN4E9yiyhX9HRl5bhPkreXY/KdCrERlX6WBjqpAKbwRDF5yZPdwFRMoauRSVPM6Xg==
X-Received: by 2002:aa7:92d9:0:b029:1bb:b6de:c872 with SMTP id k25-20020aa792d90000b02901bbb6dec872mr427305pfa.68.1613087203698;
        Thu, 11 Feb 2021 15:46:43 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id iq6sm5932740pjb.6.2021.02.11.15.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 15:46:43 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org,
        arnaud.pouliquen@st.com
Cc:     robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
        alexandre.torgue@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 15/19] remoteproc: Properly deal with a kernel panic when attached
Date:   Thu, 11 Feb 2021 16:46:23 -0700
Message-Id: <20210211234627.2669674-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
References: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The panic handler operation of registered remote processors
should also be called when remote processors have been
attached to.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/remoteproc_core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 62f708662052..0dd9f02f52b6 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -2693,7 +2693,11 @@ static int rproc_panic_handler(struct notifier_block *nb, unsigned long event,
 
 	rcu_read_lock();
 	list_for_each_entry_rcu(rproc, &rproc_list, node) {
-		if (!rproc->ops->panic || rproc->state != RPROC_RUNNING)
+		if (!rproc->ops->panic)
+			continue;
+
+		if (rproc->state != RPROC_RUNNING &&
+		    rproc->state != RPROC_ATTACHED)
 			continue;
 
 		d = rproc->ops->panic(rproc);
-- 
2.25.1

