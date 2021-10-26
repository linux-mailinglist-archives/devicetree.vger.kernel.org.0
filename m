Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6557F43AE0F
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 10:31:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234441AbhJZIeP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 04:34:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234405AbhJZIeM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 04:34:12 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9F3FC061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 01:31:48 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id bi35so10931224lfb.9
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 01:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VnwvHhRVfMlj7AENVrBuyzJTfXlbVoFinbin3zZfQAE=;
        b=HlhCbBvgrIkGCg1djRpWDkXzsRLtTYNU0f29cYtlhAZb//MvqQVuYdBTUlIX4qW0Bc
         66vr73S8VKb4cRoAEdpQuTNyW1ARg7FO+tlqInkKrm0iCz/MZPDX3XE6MI6b+asXza0k
         kqjHyq4Wm2Sg/APuw6+N2zLxHTsfx4d+5Pv2A03T0A1ZDX1ZVa3nYvyXErVJVPdhf0PB
         Lr7bkjH8/Uxq9z2fzD/M76vPip9eAd+j7wTxJk5tBUqOR+DZsX/n92NZrafGWLOg6VTp
         lV21c0GG2IJXIlecWUpIJftdPUSgjNSIU/6dPuGKFHVGSVaK/cxVoL1LTUddogbspZmD
         u7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VnwvHhRVfMlj7AENVrBuyzJTfXlbVoFinbin3zZfQAE=;
        b=0/jzduY7B2b6RyIL6+5etsQmDiZmpmz76eAQm3ueZIgmZqHSfqf9YVv7sWi1+JpgM5
         YRdSjwU/ySOaxicA8fJ9agLIsYzwr5VFfwVpIBa6gyPRz49i1/aoA8ikh4suzGlNiPZr
         wOz+VnzWjh098NF6bO/fd+CfALSDiJ3lz5BaYx7a0GGEmS3PBHcntQ8dGisFwwslZj8G
         AkH3XU+KwyIV/tm31ejlu882CfpqP/pwzh7yLRiuXJYIEB7/aUvCrAaqHqVOKmnYRkwS
         jcsH9Ks8Hinf/K0VT8VY1D8zGKO0wHiDLNAf+44GQvu5Xwf95jCKiMoAUjkIU92SMb/O
         xyog==
X-Gm-Message-State: AOAM533WttMShhSHgVn7rGJlLwhoES56ghgpNaFRmGgYl66QHq/Yj6e5
        iwY60wC92SIYprLegKM9tGSF8w==
X-Google-Smtp-Source: ABdhPJy1V5ePLyFsEykRiNDIva60ljVqUxt+Vxrkc1XfzFeV0fwu7COBhYLYbfWLdc5pxmhknEqrVw==
X-Received: by 2002:ac2:5f5b:: with SMTP id 27mr5771459lfz.533.1635237107300;
        Tue, 26 Oct 2021 01:31:47 -0700 (PDT)
Received: from jade.urgonet (h-94-254-48-165.A175.priv.bahnhof.se. [94.254.48.165])
        by smtp.gmail.com with ESMTPSA id e4sm1944598ljn.131.2021.10.26.01.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 01:31:47 -0700 (PDT)
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
Subject: [PATCH v7 4/6] tee: export teedev_open() and teedev_close_context()
Date:   Tue, 26 Oct 2021 10:31:36 +0200
Message-Id: <20211026083138.1818705-5-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026083138.1818705-1-jens.wiklander@linaro.org>
References: <20211026083138.1818705-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Exports the two functions teedev_open() and teedev_close_context() in
order to make it easier to create a driver internal struct tee_context.

Reviewed-by: Sumit Garg <sumit.garg@linaro.org>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 drivers/tee/tee_core.c  |  6 ++++--
 include/linux/tee_drv.h | 14 ++++++++++++++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 85102d12d716..3fc426dad2df 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -43,7 +43,7 @@ static DEFINE_SPINLOCK(driver_lock);
 static struct class *tee_class;
 static dev_t tee_devt;
 
-static struct tee_context *teedev_open(struct tee_device *teedev)
+struct tee_context *teedev_open(struct tee_device *teedev)
 {
 	int rc;
 	struct tee_context *ctx;
@@ -70,6 +70,7 @@ static struct tee_context *teedev_open(struct tee_device *teedev)
 	return ERR_PTR(rc);
 
 }
+EXPORT_SYMBOL_GPL(teedev_open);
 
 void teedev_ctx_get(struct tee_context *ctx)
 {
@@ -96,13 +97,14 @@ void teedev_ctx_put(struct tee_context *ctx)
 	kref_put(&ctx->refcount, teedev_ctx_release);
 }
 
-static void teedev_close_context(struct tee_context *ctx)
+void teedev_close_context(struct tee_context *ctx)
 {
 	struct tee_device *teedev = ctx->teedev;
 
 	teedev_ctx_put(ctx);
 	tee_device_put(teedev);
 }
+EXPORT_SYMBOL_GPL(teedev_close_context);
 
 static int tee_open(struct inode *inode, struct file *filp)
 {
diff --git a/include/linux/tee_drv.h b/include/linux/tee_drv.h
index a1f03461369b..468a7d83dc6c 100644
--- a/include/linux/tee_drv.h
+++ b/include/linux/tee_drv.h
@@ -587,4 +587,18 @@ struct tee_client_driver {
 #define to_tee_client_driver(d) \
 		container_of(d, struct tee_client_driver, driver)
 
+/**
+ * teedev_open() - Open a struct tee_device
+ * @teedev:	Device to open
+ *
+ * @return a pointer to struct tee_context on success or an ERR_PTR on failure.
+ */
+struct tee_context *teedev_open(struct tee_device *teedev);
+
+/**
+ * teedev_close_context() - closes a struct tee_context
+ * @ctx:	The struct tee_context to close
+ */
+void teedev_close_context(struct tee_context *ctx);
+
 #endif /*__TEE_DRV_H*/
-- 
2.31.1

