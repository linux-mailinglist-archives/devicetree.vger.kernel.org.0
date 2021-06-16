Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CAB913A97AD
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 12:37:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231922AbhFPKja (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 06:39:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232418AbhFPKjY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 06:39:24 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBADAC06175F
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 03:37:14 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id j2so3508897lfg.9
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 03:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/f1rY0k6EQWoltoVI239rx9YFVi0YDoyX+ARCpEzBL8=;
        b=llG26ISbSHMQx9SAWWK0Ew5GahaWNLFUKYF3eJzC4p33bRd9Be60A93cKFvJyK4UOz
         zPO06ptAc1p3sQr86nkEQV8CU+83twF95m4ySOp2qgCoovEzCa6CV7PO8ZkWDLhgPps1
         A+GHdG9jn2/J9PtUYjwcKSxCrFrp6ThpBnl0N9E2qlo00n53XZvUbugI9hIpCRlDBDg7
         12rNUWk/l1v9+geVlXECny1yce1nLA1zjK/tyvFZ/dspVr+VBcfQmO7KIxe/fc/iVTeq
         672zro9XoKRvv8/Q6nwkbWoNctEryLJwZW+t5S1qaS/IzciywYhp/zMpyQ4aduoFdfbc
         VQJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/f1rY0k6EQWoltoVI239rx9YFVi0YDoyX+ARCpEzBL8=;
        b=ZOJ0T3S6ZfwcdaPDmN0VOziydUhzliG6/i6iuWM+cwwkvqW1rZH/YAEOgorsxtvvTl
         D57ZsoZoV3V5+y1aeciaT7jMx2uPXYD/oOZLdzGK4wRVlZoEnbZT5fePL85ScsaOf7LX
         j1Sz4iRw3gnjDE17Jl5E7cSWdyR8Juk3UT+ayxN/9/1EYjRvID5CwaV7qtKemAGrnbF6
         jQSb0VKa8mQ37DWhnxptk+6qwTeSsqiSS7o0Us2CPnpHqBy1yGX+PGOTJCHTEmxQgjPl
         8zMO7HuMQX1johJGCOgOV8CwiqnROubpFZ5m0aMmAIAHNJbSMQkK0wpHaKqyEgNOMVvp
         DtaA==
X-Gm-Message-State: AOAM533PirVx6aNCAG+ZEJtzlT6iDxvVUrVOoFJ+7pjRA7INRNZpXW1i
        S7FCuqpicYShsMOyQbDfSGTDjg==
X-Google-Smtp-Source: ABdhPJysfxzlZ2ZCBCeU6Y2xQDldKhQEt20KJ5s961GMZJdmsWDBpqHYUiF3UpWheyplkOkqFfgg8Q==
X-Received: by 2002:a19:550f:: with SMTP id n15mr3209225lfe.660.1623839833192;
        Wed, 16 Jun 2021 03:37:13 -0700 (PDT)
Received: from jade.urgonet (h-79-136-85-3.A175.priv.bahnhof.se. [79.136.85.3])
        by smtp.gmail.com with ESMTPSA id m17sm205621lfh.288.2021.06.16.03.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 03:37:12 -0700 (PDT)
From:   Jens Wiklander <jens.wiklander@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org,
        linux-doc@vger.kernel.org
Cc:     Jerome Forissier <jerome@forissier.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Sumit Garg <sumit.garg@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Ard Biesheuvel <ardb@kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        Jens Wiklander <jens.wiklander@linaro.org>
Subject: [PATCH v2 4/7] tee: fix put order in teedev_close_context()
Date:   Wed, 16 Jun 2021 12:36:46 +0200
Message-Id: <20210616103649.2662395-5-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210616103649.2662395-1-jens.wiklander@linaro.org>
References: <20210616103649.2662395-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Prior to this patch was teedev_close_context() calling tee_device_put()
before teedev_ctx_put() leading to teedev_ctx_release() accessing
ctx->teedev just after the reference counter was decreased on the
teedev. Fix this by calling teedev_ctx_put() before tee_device_put().

Fixes: 217e0250cccb ("tee: use reference counting for tee_context")
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/tee_core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 480d294a23ab..f97d95b50773 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -98,8 +98,10 @@ void teedev_ctx_put(struct tee_context *ctx)
 
 static void teedev_close_context(struct tee_context *ctx)
 {
-	tee_device_put(ctx->teedev);
+	struct tee_device *teedev = ctx->teedev;
+
 	teedev_ctx_put(ctx);
+	tee_device_put(teedev);
 }
 
 static int tee_open(struct inode *inode, struct file *filp)
-- 
2.31.1

