Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B811319701
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 00:50:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230289AbhBKXtA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 18:49:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229978AbhBKXrw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 18:47:52 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5195EC0617A9
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:33 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id z68so371735pgz.0
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YVwpD5CH0CelKEAwKMStpJEFTfFplMOWTWmoESYAzz8=;
        b=DGff/4uueqBV64J8FXV9C0ktQMhytE8fE22awY+TatRLv7FtkrA9Kc4tsYtLKKxuGP
         o+R4IYpmLgqG8eKjOJNHvNKlvg+61tr7X7z8xJJm4J9NsxD4vK1cDtG/ZOQNnEUvUrea
         crEz+54bwN5hndjqALVOZNbtmdr8F3iltsshLoIn+XQoXgE6G7lQy54ZHGf8IdCfSurQ
         8tXivkh3iagEJK2EatWZb9OH197Z36fRCzCk1UhXswAPCteM+Nja+5jdSmHsly0y/coo
         loDLJUJicOHvHdV14lDI/MB7ot7io9PYT/gcK5V9HBvaFSQ/Zkd7K6EMJGJKohCLr6QQ
         P2IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YVwpD5CH0CelKEAwKMStpJEFTfFplMOWTWmoESYAzz8=;
        b=N2Mj7GY16ZnnzTXbrOXpXLMNUqXkxHUGxKO+CktC3d6JKzaqkcWBK9ZNKThK3z/EEU
         oDBy6X1esv29caJ/Z7FdiuxQ4C4l21HTAIw+dzYb0wHVTPbd+vxCN93n6NW22zSp5wef
         W/dweio5/HQ9OwqSnFFGfEnMarrZvv4mvEKeWtGrQix+jtR4xquPzRwjamRRKvkY8TSL
         6LNC7S+JBB9aKhlcUfvRAJhqvzaIs8qqIDLPQpwW4uSZM5b6u0okTvceF5hc3xMernh7
         7O7ZY/glwsPVCttp35CKmcJYY2nB46BZBC1VLKQag8L2MP5oeDa2gf70vdq5V3kXB0z+
         s9RQ==
X-Gm-Message-State: AOAM530Hd+ZIeltePzuGLjQoenDWgztCVv5NmnJK730pYi2erb3GpYa8
        MapYYfXIjOrA3Nx03/olOkJg6A==
X-Google-Smtp-Source: ABdhPJwi60+A3fUoQDUgAktLCOxQ9mmNkoZkTdXWSZQmYN6Jy/5S/oQxs8QJ5ba0vn1olIzxjKi6cw==
X-Received: by 2002:a65:4788:: with SMTP id e8mr542190pgs.72.1613087192761;
        Thu, 11 Feb 2021 15:46:32 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106889e681aac74.cg.shawcable.net. [68.147.0.187])
        by smtp.gmail.com with ESMTPSA id iq6sm5932740pjb.6.2021.02.11.15.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 15:46:32 -0800 (PST)
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     ohad@wizery.com, bjorn.andersson@linaro.org,
        arnaud.pouliquen@st.com
Cc:     robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
        alexandre.torgue@st.com, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 04/19] remoteproc: Rename function rproc_actuate()
Date:   Thu, 11 Feb 2021 16:46:12 -0700
Message-Id: <20210211234627.2669674-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
References: <20210211234627.2669674-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename function rproc_actuate() to rproc_attach().  That way it is
easy to understand that it does the opposite of rproc_detach().

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
Reviewed-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 drivers/remoteproc/remoteproc_core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 86bd66955060..8afc7e1bd28a 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -1416,7 +1416,7 @@ static int rproc_start(struct rproc *rproc, const struct firmware *fw)
 	return ret;
 }
 
-static int rproc_attach(struct rproc *rproc)
+static int __rproc_attach(struct rproc *rproc)
 {
 	struct device *dev = &rproc->dev;
 	int ret;
@@ -1541,7 +1541,7 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
  * Attach to remote processor - similar to rproc_fw_boot() but without
  * the steps that deal with the firmware image.
  */
-static int rproc_actuate(struct rproc *rproc)
+static int rproc_attach(struct rproc *rproc)
 {
 	struct device *dev = &rproc->dev;
 	int ret;
@@ -1581,7 +1581,7 @@ static int rproc_actuate(struct rproc *rproc)
 		goto clean_up_resources;
 	}
 
-	ret = rproc_attach(rproc);
+	ret = __rproc_attach(rproc);
 	if (ret)
 		goto clean_up_resources;
 
@@ -1802,7 +1802,7 @@ int rproc_boot(struct rproc *rproc)
 	if (rproc->state == RPROC_DETACHED) {
 		dev_info(dev, "attaching to %s\n", rproc->name);
 
-		ret = rproc_actuate(rproc);
+		ret = rproc_attach(rproc);
 	} else {
 		dev_info(dev, "powering up %s\n", rproc->name);
 
-- 
2.25.1

