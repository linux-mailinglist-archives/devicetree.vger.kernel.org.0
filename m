Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0265E34EAE8
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 16:48:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232048AbhC3Or6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 10:47:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232249AbhC3Orf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 10:47:35 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79F1C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:34 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id l18so18537463edc.9
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4+hsU/8RBl6lSSICk7jMUthsu/0q86iC66VLDGyTgJc=;
        b=mH8sSvUfDbRY2Ewaz01LJDF0WZ94V4hv2vB5u1PRwCMZi/Qi4FQOm6yXvQBoKfYBny
         i/w2jpGrJLqgFcKE0xqHPRDA1fZXPvwJAGiTzi+M5jil4xxxJDYfSp6OhQl+bZ0igZmP
         Tc6aYUaCdje9jiRHOH4gslmlnUEoAYkcl1VvNtEu8f09wkXZJM+rHjBvIbrg+Jthtf1y
         DO1zcxRnE5RJPNF6eRDDGgUu9+ykJloerxZuAjoGtoXhCuHZ1mu45E1LGobWOeI5qeTZ
         HHiUZbp1gnS3sFTlo/14WbAdeLxDlz3FNmCBNnb6dti2QGr/yohV13wCFK8FkLM6NQpM
         AKjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4+hsU/8RBl6lSSICk7jMUthsu/0q86iC66VLDGyTgJc=;
        b=W2RnIVvA1tWy4n1MBeVZX8VOLhU+PcPtPJL5kMPgj2qoSj1tZQ248+0aJimZgtyhFk
         Rqy3zVgHgi7qQ+Ah/gDZKt/pYIW4kmckCurea/vAr8Ur5lforXhGw6Xym4CXQcJIZ54G
         yruwUtM/OrmkP9JNq4LNlziIlKPbQR4eUzOiBcL5BMD8c72DR6Eu95PkxAAMa4onQn/g
         /2/HTIJD84v61KkCye70rMOC7Oq2iOg7HOd87bGKNwQME35M1yxUI47C4fgOWcgFmu6X
         pC5wKr7f+itY5Mp0Bi2SN9/l7t+fQAcXy/vDtpPMXF5tVFaFF5nBqltzYqqPtNCDdtDM
         0n8A==
X-Gm-Message-State: AOAM533CT1+cpQUf82pFSYZcytsCtOaF3nP1FcCu/qJzFSEW/LddTf3/
        wiEU9eUBXqkgUO8ToFEcUF7hEw==
X-Google-Smtp-Source: ABdhPJzZtrp0nXWtzFD7izW2b00Mdx3rC1VWphOPFbdHQLuZm9EWmnGSeJoLAonV70iSjo+tBKLhgw==
X-Received: by 2002:a05:6402:35cd:: with SMTP id z13mr34346153edc.21.1617115653480;
        Tue, 30 Mar 2021 07:47:33 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n16sm11520383edr.42.2021.03.30.07.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 07:47:33 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 4/9] soundwire: qcom: start the clock during initialization
Date:   Tue, 30 Mar 2021 15:47:14 +0100
Message-Id: <20210330144719.13284-5-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210330144719.13284-1-srinivas.kandagatla@linaro.org>
References: <20210330144719.13284-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Start the clock during initialization, doing this explicitly
will add more clarity when we are adding clock stop feature.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 drivers/soundwire/qcom.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index edc77d18c245..0f2167433d2f 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -47,6 +47,8 @@
 #define SWRM_MCP_FRAME_CTRL_BANK_ADDR(m)		(0x101C + 0x40 * (m))
 #define SWRM_MCP_FRAME_CTRL_BANK_COL_CTRL_BMSK			GENMASK(2, 0)
 #define SWRM_MCP_FRAME_CTRL_BANK_ROW_CTRL_BMSK			GENMASK(7, 3)
+#define SWRM_MCP_BUS_CTRL					0x1044
+#define SWRM_MCP_BUS_CLK_START					BIT(1)
 #define SWRM_MCP_CFG_ADDR					0x1048
 #define SWRM_MCP_CFG_MAX_NUM_OF_CMD_NO_PINGS_BMSK		GENMASK(21, 17)
 #define SWRM_DEF_CMD_NO_PINGS					0x1f
@@ -343,6 +345,7 @@ static int qcom_swrm_init(struct qcom_swrm_ctrl *ctrl)
 	u32p_replace_bits(&val, SWRM_DEF_CMD_NO_PINGS, SWRM_MCP_CFG_MAX_NUM_OF_CMD_NO_PINGS_BMSK);
 	ctrl->reg_write(ctrl, SWRM_MCP_CFG_ADDR, val);
 
+	ctrl->reg_write(ctrl, SWRM_MCP_BUS_CTRL, SWRM_MCP_BUS_CLK_START);
 	/* Configure number of retries of a read/write cmd */
 	if (ctrl->version > 0x01050001) {
 		/* Only for versions >= 1.5.1 */
-- 
2.21.0

