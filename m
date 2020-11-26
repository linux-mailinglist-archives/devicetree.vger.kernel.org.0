Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 199182C5D6A
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 22:08:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391385AbgKZVHX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 16:07:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390233AbgKZVGs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 16:06:48 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34515C061A04
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 13:06:48 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id b63so2591623pfg.12
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 13:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0+MlVHgmuEHbWu07QK81WMbFykiKW5F7ZX5m3RIClPg=;
        b=DloWhdhcF0VY/YJfNe8pyQgAA5g3RvjuT+ZivsFLlFJmc1DSt12brBDYYF6K2S9vRs
         bIG3P7cpKQxO95k+uLifbKHxhmdb0bIfmKZcvGM7/JATGLZp7ZROtLA6pBKb0IlKjcF5
         odJYvK/aOenHncUuNuMMAfaNV2SnFWTj7Kl0Q17u//Fa9nLgP4wQ9+nlCS4Y3ImdCr+E
         n0W8QMbll7ZgoZHTFnqjyN+B/KkkPpcU8iBOG0ohtbov03/RPor0xmkKEW6QscjMs2FL
         pkbXBUdL/yHdH4HMo8Mwq1ghyQYshLkyrwWIg5MVTd/47eixwMWfjPjegoRwLKoL3Mdm
         IucQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0+MlVHgmuEHbWu07QK81WMbFykiKW5F7ZX5m3RIClPg=;
        b=K4XHsGUly0NHuLb1j+l7xy8278WUjWiejnLPiOtCUZ6Gkzvy6Jz27sdEOLNRHzBDS+
         QIj0HwYbETqu9ECm7LO9Ti8Ec7KO/1Tq/LjU5Lul5XDVwQs6cp1yfZ0BtpETWfw1IFB0
         J6g8d0X45p04Ofop9bvsqh1x9DnNZ9ylMmZ0bT8ktvFGYxaSdMjWsUCnp9CfD/HuX0st
         e0jzSG5kAB+yUrtg6C5vLLc13F1gmkSh14gOYb14P/AW6KV2Ss7aV6Qjn3iwbmGCvRz8
         R89Q+JWu/a5xsfY2/z2kRmPHEpNqmNmh8BiHmRKDxt8nwocxadcdshnaTuclizD8O7M4
         1syw==
X-Gm-Message-State: AOAM530BWOh9RmiXi+8VwnZYT67069rvSJr8Vrq0hzsDudzLScM2FyF+
        dBL4PiJJzgzTICQNLIY/Yv/d0A==
X-Google-Smtp-Source: ABdhPJyWc2vH0J0kxI/PS5ohEzjOtAqAqTB+pwudnVkaIBTw5ila8JTaF/nhtFVMlQY6WuulXbfdUA==
X-Received: by 2002:a63:5322:: with SMTP id h34mr3777724pgb.95.1606424807829;
        Thu, 26 Nov 2020 13:06:47 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id c203sm5612676pfc.10.2020.11.26.13.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2020 13:06:47 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arnaud.pouliquen@st.com
Subject: [PATCH v3 04/15] remoteproc: Add new RPROC_ATTACHED state
Date:   Thu, 26 Nov 2020 14:06:31 -0700
Message-Id: <20201126210642.897302-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201126210642.897302-1-mathieu.poirier@linaro.org>
References: <20201126210642.897302-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new RPROC_ATTACHED state to take into account scenarios
where the remoteproc core needs to attach to a remote processor
that is booted by another entity.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/remoteproc_sysfs.c | 1 +
 include/linux/remoteproc.h            | 7 +++++--
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_sysfs.c b/drivers/remoteproc/remoteproc_sysfs.c
index 1dbef895e65e..4b4aab0d4c4b 100644
--- a/drivers/remoteproc/remoteproc_sysfs.c
+++ b/drivers/remoteproc/remoteproc_sysfs.c
@@ -172,6 +172,7 @@ static const char * const rproc_state_string[] = {
 	[RPROC_RUNNING]		= "running",
 	[RPROC_CRASHED]		= "crashed",
 	[RPROC_DELETED]		= "deleted",
+	[RPROC_ATTACHED]	= "attached",
 	[RPROC_DETACHED]	= "detached",
 	[RPROC_LAST]		= "invalid",
 };
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index e8ac041c64d9..71d531c64dfd 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -403,6 +403,8 @@ struct rproc_ops {
  * @RPROC_RUNNING:	device is up and running
  * @RPROC_CRASHED:	device has crashed; need to start recovery
  * @RPROC_DELETED:	device is deleted
+ * @RPROC_ATTACHED:	device has been booted by another entity and the core
+ *			has attached to it
  * @RPROC_DETACHED:	device has been booted by another entity and waiting
  *			for the core to attach to it
  * @RPROC_LAST:		just keep this one at the end
@@ -419,8 +421,9 @@ enum rproc_state {
 	RPROC_RUNNING	= 2,
 	RPROC_CRASHED	= 3,
 	RPROC_DELETED	= 4,
-	RPROC_DETACHED	= 5,
-	RPROC_LAST	= 6,
+	RPROC_ATTACHED	= 5,
+	RPROC_DETACHED	= 6,
+	RPROC_LAST	= 7,
 };
 
 /**
-- 
2.25.1

