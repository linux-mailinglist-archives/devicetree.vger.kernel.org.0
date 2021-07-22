Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69B353D2165
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 11:57:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231390AbhGVJQv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 05:16:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231573AbhGVJQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 05:16:44 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B57EC06179C
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 02:57:01 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id y3so3862213plp.4
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 02:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qzi+EeI8lTYMlSgI+L2clJGnhnotLP3GHkH29dCH7eQ=;
        b=p4rRDOs8ho2CqOkofWcRmghRvglDnp91aNbNmx9Uj7IeW/DVWobtjO4WKqxClQqHxQ
         JQJT4ADBL4P29YktCauIbs38K/0B5SXDm//yUlLKqG1OYNCW5CZR3S8AILGfRgF5rLDd
         pTMifMy0dbuu/kKyOtP7q80empPjIThBZ5OkDLThI94mhE7ntSrP7tITpzefUvUlCZvq
         4ianLkjoEqOUuGWBGtzAWc4xNVJYNUF6J7nrL7pj2WE4RRgquIYL/jvNnxhTfGGju165
         /83/2kgiIOP/5ogPx0/jJXVebpaozFtq25fHKk7105u9Rz/tRA+NNth0JdWTurU4hnD3
         4csw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qzi+EeI8lTYMlSgI+L2clJGnhnotLP3GHkH29dCH7eQ=;
        b=Z+I9mVYK6TM0DJCKXSyvu+rSfGZRsNu6UasUvthVDJSx087qsmcYE9ajRP34wKVT0i
         voK7fJkAcOP4gQ3PB21md8AHFxc52bdgXtYM5cTDIDJjGCby0fQvrIxA/zCzdp9bbPzF
         cCDXuknvnkrqJYL5XX0qWy4vsLneZ0eiXidzlLSj1m5sD7yzOZcTdcc/P61zycDl8qCv
         /zwMf2jGNr7ZItpydyb+TbhNUT8hXfL95lXGi7B9XMD9jaNCj54ItfdaaS5PwWShjvZQ
         CbVsgfEbqdAGI7FdqnwvHKbaz9zPupRRNIf2hAkbktJFd4Azrm+uYc6NcQOAt1Lk9s5V
         sO0Q==
X-Gm-Message-State: AOAM531E6jrMnTzTtci4UhaC0UedBSsSfHxfzIXvA8p4/nRAumfSTwHf
        5NyTZ1XKzILkEbg3XEUDHgxYBA==
X-Google-Smtp-Source: ABdhPJxjG0az+oVxKn0beSJHf94AT80xHkVqdjL41LAjr7xvfVqqF6rg99xK2qo1iV7SJYXVUSScWQ==
X-Received: by 2002:a63:1e59:: with SMTP id p25mr39604052pgm.110.1626947820594;
        Thu, 22 Jul 2021 02:57:00 -0700 (PDT)
Received: from localhost ([106.201.108.2])
        by smtp.gmail.com with ESMTPSA id a24sm24045078pgj.12.2021.07.22.02.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 02:57:00 -0700 (PDT)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org
Subject: [PATCH V2 4/5] uapi: virtio_ids: Sync ids with specification
Date:   Thu, 22 Jul 2021 15:26:42 +0530
Message-Id: <82384d39df2463dfd9ae9833b9c3e8889da820ff.1626947324.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
In-Reply-To: <cover.1626947324.git.viresh.kumar@linaro.org>
References: <cover.1626947324.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This synchronizes the virtio ids with the latest list from virtio
specification.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
Replaces:

https://lore.kernel.org/lkml/7c716c2eb7ace5b5a560d8502af93101dbb53d24.1626170146.git.viresh.kumar@linaro.org/

 include/uapi/linux/virtio_ids.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/uapi/linux/virtio_ids.h b/include/uapi/linux/virtio_ids.h
index 70a8057ad4bb..3c8e11820fdb 100644
--- a/include/uapi/linux/virtio_ids.h
+++ b/include/uapi/linux/virtio_ids.h
@@ -54,8 +54,20 @@
 #define VIRTIO_ID_SOUND			25 /* virtio sound */
 #define VIRTIO_ID_FS			26 /* virtio filesystem */
 #define VIRTIO_ID_PMEM			27 /* virtio pmem */
+#define VIRTIO_ID_RPMB			28 /* virtio rpmb */
 #define VIRTIO_ID_MAC80211_HWSIM	29 /* virtio mac80211-hwsim */
+#define VIRTIO_ID_VIDEO_ENCODER		30 /* virtio video encoder */
+#define VIRTIO_ID_VIDEO_DECODER		31 /* virtio video decoder */
+#define VIRTIO_ID_SCMI			32 /* virtio scmi */
+#define VIRTIO_ID_NITRO_SEC_MOD		33 /* virtio nitro secure module*/
+#define VIRTIO_ID_I2C_ADAPTER		34 /* virtio i2c adapter */
+#define VIRTIO_ID_WATCHDOG		35 /* virtio watchdog */
+#define VIRTIO_ID_CAN			36 /* virtio can */
+#define VIRTIO_ID_DMABUF		37 /* virtio dmabuf */
+#define VIRTIO_ID_PARAM_SERV		38 /* virtio parameter server */
+#define VIRTIO_ID_AUDIO_POLICY		39 /* virtio audio policy */
 #define VIRTIO_ID_BT			40 /* virtio bluetooth */
+#define VIRTIO_ID_GPIO			41 /* virtio gpio */
 
 /*
  * Virtio Transitional IDs
-- 
2.31.1.272.g89b43f80a514

