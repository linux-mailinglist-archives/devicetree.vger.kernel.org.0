Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 028C53F8778
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 14:30:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241681AbhHZMbd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 08:31:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241188AbhHZMbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 08:31:32 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A92AC061757
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 05:30:44 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id x27so6505542lfu.5
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 05:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JoodeoEbWA8KFPSDaqBt6HBmf+JeOe0hbWt7ocF/yag=;
        b=gZMisyRDxgH5gaSMdaSrLWrVBgnJiieFFNBcmjDx33BBp2VM2mCTz9s8UTZi7/BJ54
         pZgn93V8Mcb9S2QKsXTdwwOL7O1KDzQUt56MI1ztVplj6OREFy7JveICkKz//LHg2619
         TqP9/aqM54aR3TctwTgrQdMcHL7XKWQ40vrUjM4eQthXogUG6POhttFg1AzilsGCE99i
         9NRja4Jhksy+I5wQyzEaxpej5QAm8Cmh03E9KSgFIEpKAkOXKTnytB9i1hD/DBRWcqN0
         eOpZbST42OrMEzQxDVHyfPLETKwSeUcLfBOzZe97pbX39jafv5Gh6/x7LdtRmWVmB37c
         pJag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JoodeoEbWA8KFPSDaqBt6HBmf+JeOe0hbWt7ocF/yag=;
        b=f48LN0gnQ+Lp5eEuUZoAgwMwG0wVmGW7YWcAot9W1amNqpmKSeLDUbelOcpRZuYP4/
         BPUwG9LswulEkyO7VZzaQEF4hhdsIQVOKSFqb4cxYevYpYDnrbIm/sTyNldhfRdQmlZq
         kVPwYPtUSTc6sb7kB+jH0GILdYMp2gDtclHMRPzZ3PyPXUj0Mi+Mlc+l13OajZbVfVb/
         w/5XI/iRC4BshhUhtd/siesL7WqaCaL4aHo2kGmVtCgEt60vozsqsMruzqFgSGvNaeQ7
         lbvgDV9xs5aIiA7m9enF9M1AMmz/AYFqa4VhrAItPg53YII0AK0xEttNxus8hYijc9io
         MNrg==
X-Gm-Message-State: AOAM5321a5IjxXEYNYjRKMrOkr4whFyCECWdGdhXdVmWo+KqGIQz6WQZ
        qoVyhYIKU9IO8SOprSKVx/wOrQ==
X-Google-Smtp-Source: ABdhPJzPoA85sfVjo4hiwKhrFd0MZiun3ogANCDG9hsxjklStOkxEllbiklrHLRGsCcjvj3zrjuTig==
X-Received: by 2002:a05:6512:ad6:: with SMTP id n22mr2695207lfu.532.1629981042914;
        Thu, 26 Aug 2021 05:30:42 -0700 (PDT)
Received: from jade.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id j21sm332283ljh.87.2021.08.26.05.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 05:30:42 -0700 (PDT)
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
Subject: [PATCH v5 3/6] tee: fix put order in teedev_close_context()
Date:   Thu, 26 Aug 2021 14:30:29 +0200
Message-Id: <20210826123032.1732926-4-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210826123032.1732926-1-jens.wiklander@linaro.org>
References: <20210826123032.1732926-1-jens.wiklander@linaro.org>
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
index 2b37bc408fc3..85102d12d716 100644
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

