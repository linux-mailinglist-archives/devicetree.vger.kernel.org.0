Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ABB043AE0D
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 10:31:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234164AbhJZIeO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 04:34:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234379AbhJZIeL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 04:34:11 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B436C061243
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 01:31:48 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id r6so14233166ljg.6
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 01:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wDFhL54jBz3G05V/OraPaakr11gEhiPI9haVEV4Ys5E=;
        b=ZHi/y1ckyJDjwvb69REwPJQs4kGYBOXGfL3+pN25jVWAnTb2vKBp6jHF3eT3WtRHBM
         AUKxjjI9Y1MAMOa2cMBBmpQq1yWCcw5kPu6bxnNkHnVTvm6Od5nnp/Qz2Lw1il+AtgOJ
         UO2WlWEILwrTrxFEUQPtKcp2R3ZyKvGAktqwiJMEx+mlnbeavtRyiq4kUSBBiuVDRg5/
         jtoV5pnrzqYaHP/2Ex/cQB9QnIeN3zq2KOpSX4MR80M4kdxOVAWd4Tt5u4jtFajw5QWd
         v6MCweJFr7CAwUr2g1r4qe/og5hMaHzWypDTsintIjJTYWttSWDIHgqYrSKG841m/fnG
         zYMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wDFhL54jBz3G05V/OraPaakr11gEhiPI9haVEV4Ys5E=;
        b=7bNH666oikalHX5v4z5nrzL4d/mlAhYfMfZnTgoutNhADeyQvHQoVcBrZf8WmM884G
         DIVQPjdMwXi4g0SFi0K6lNpDl7PWcYFOG2x3Qz2A98p8CZliBaqpop9L1Gklsu6ArhD+
         m5owYlmqf+T6N7W5JvEBJrhXexldHBvLbrqkaaSrCIN4pO0arkI+Js2lXg1CnoveAAcj
         tjyGSnnx1b5+c/SVWQW0wIcdybxkdeNr4mhR7P+1hQRv2SDpOzGxsF4mJjXTSQg0iY44
         vM3pAgIBujK85dIccak1TukDZmEofMx2DZ+j0YpRGJCsgpOVHW7pvHDn8jhv/szVu22L
         Gj4Q==
X-Gm-Message-State: AOAM53039UrLEYRzESR/Xz6tO0uQmA6489h6FOxbwT2IubhPXwXwzwt9
        KvHcgoXDNbJX0X2Ow6iQiC0weg==
X-Google-Smtp-Source: ABdhPJzBJhd2BrrH13cjClJSpD9eKt3Bq+FtJpQvAGc+zfqBSWAgY3ScNVoHesZAWSmLf0vhy2Fmnw==
X-Received: by 2002:a05:651c:327:: with SMTP id b7mr4963654ljp.85.1635237106519;
        Tue, 26 Oct 2021 01:31:46 -0700 (PDT)
Received: from jade.urgonet (h-94-254-48-165.A175.priv.bahnhof.se. [94.254.48.165])
        by smtp.gmail.com with ESMTPSA id e4sm1944598ljn.131.2021.10.26.01.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 01:31:46 -0700 (PDT)
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
        Marc Zyngier <maz@kernel.org>, jens.vankeirsbilck@kuleuven.be,
        Jens Wiklander <jens.wiklander@linaro.org>
Subject: [PATCH v7 3/6] tee: fix put order in teedev_close_context()
Date:   Tue, 26 Oct 2021 10:31:35 +0200
Message-Id: <20211026083138.1818705-4-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026083138.1818705-1-jens.wiklander@linaro.org>
References: <20211026083138.1818705-1-jens.wiklander@linaro.org>
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
Reviewed-by: Sumit Garg <sumit.garg@linaro.org>
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

