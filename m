Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E77A33F0178
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 12:19:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233919AbhHRKTq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 06:19:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230435AbhHRKTo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 06:19:44 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7439CC061764
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 03:19:09 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id w20so3530211lfu.7
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 03:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JoodeoEbWA8KFPSDaqBt6HBmf+JeOe0hbWt7ocF/yag=;
        b=TtafLSybt2hOUnJfexb4ztfgk7g3VjwpzDU4eOcl8Afp5OKTTZO3PWGu6sn1CxpprC
         DMVZUaWW9/IXhfcuDc/BG0fykkwmsGx3kE7oA9QpgQKtR29qp+MQuPF7Gq5mRAn8ficE
         w/O9f9+t7qYGuDNWW5imwZUKFxq4emdtEGhC7UFxRJ3j7S8dPk3/GRN7luxHHZCXmWIV
         9Eb+vwsmVcY29A2IJ1HJLC6aKQ/f/St1hdTr9jwOdHga4oiJzVUMjlg2Ue5aewCGzWLJ
         2zmOYTl/9LEjlL/ZaN9FOIefAcIhHnct69g9JidKviwfGnoRuledX8oUxCNSzZa9BBb2
         k0DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JoodeoEbWA8KFPSDaqBt6HBmf+JeOe0hbWt7ocF/yag=;
        b=LB23RUw2czsHaKAN31WlAHlptyVoMDZUvAS+oPXWDPxQSM61tKpeDdhmFxYWlkhs4V
         Wg5F9Rc8dybkeBNMBNLjV1TWwyWJnskOTOIAxs0EqkaaEg8veoeanzQQfXwRxQ12bTaS
         +anFMeVSHYCFXPSFBVo683eN2OVy5tGYb0yIkdxbsv8DM5LZA8btpg3XUsG371cneHyc
         tZ5I16Og8ZEakosU6lhTbTbJOhk4N/CKXEKbmAMzqfFLk41ioZDZ8KXTGd1IGPhJZAZF
         pXOWnPckWDa+K/mKner9fMT84QG8VOt0rAk69k8bHdphl3LZ2maFKoDFC3xxBMrzjJdx
         0G+w==
X-Gm-Message-State: AOAM530HUnv4yzyThOp1+1wCucq5fblzpFcYMx/QPP5gIC5uOp0LYCnt
        BBYcIZ1fnhn28A5/ln36uniL6g==
X-Google-Smtp-Source: ABdhPJxbzXfDmvRUIZrSntXWxK+DdVtbwWfdeHc8slzuivwfHGxevf3XX3s2rp5C7mCzXMGAOqBHkA==
X-Received: by 2002:a05:6512:c0b:: with SMTP id z11mr5841550lfu.193.1629281947855;
        Wed, 18 Aug 2021 03:19:07 -0700 (PDT)
Received: from jade.urgonet (h-94-254-48-165.A175.priv.bahnhof.se. [94.254.48.165])
        by smtp.gmail.com with ESMTPSA id l27sm451160lfp.245.2021.08.18.03.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 03:19:07 -0700 (PDT)
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
Subject: [PATCH v4 3/6] tee: fix put order in teedev_close_context()
Date:   Wed, 18 Aug 2021 12:18:46 +0200
Message-Id: <20210818101849.602257-4-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210818101849.602257-1-jens.wiklander@linaro.org>
References: <20210818101849.602257-1-jens.wiklander@linaro.org>
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

