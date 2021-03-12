Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4A5F338C2A
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 13:01:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231294AbhCLMAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 07:00:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229900AbhCLMA2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 07:00:28 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA5E2C061574
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:00:27 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id b9so1632997wrt.8
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=89jJJI1ffi4hnNcNYiPeSLf8W7Z3c/bGcDU6aGLT2Ls=;
        b=VPcCNNRMNGUANJrpDhkonXZbUKAPee9KliJEUDnszC8VzRBxCddmKbpb8Bz/nUivaL
         Jq2WWzxFvckdpdX9YAo265si9aLz+xeUeawU2QRX7zIUfg9Gl5CVu4/pH5V4NChoTmgk
         /5EvxAsWGGFjC0BdoItn+GTQQ93krkt+mhi3j5llmUaCZmf0fJjOOWp6HZEgR0M42PzU
         hyH5IZi4vtwhrwuY4DNgKq8o/jC2NDYcee9pN3vU7qb09eX0ezhO9t/jWukXnve85Dcl
         VI/5UTQgK43IGKXwycgkjxnaIzAGpPFE/4Itx6QfSUh8lEZlg1aWv3dlqVSo/KL8DnTb
         1vnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=89jJJI1ffi4hnNcNYiPeSLf8W7Z3c/bGcDU6aGLT2Ls=;
        b=blftbgoDyJMCEi94sn0SlX5Vk+27FxDzzWT5NwTsiNSV0Ypf4hq16Hol4waf9hayj6
         no20nzlB4czdHoEwI5ORsNNv3Pv71RPn/bU+5XXEqKtKq9JBlUWUYfAwW9OXdIQ/du3o
         s5jpWjgx5/i0vbAdKp2rOT1fuhE07KqdNfTwdutYAbbApGvAwpp1Cc+MPpmeyV/h3VkI
         PhtcsYVXvujGOrmGq9tS9BzKBTQUaZNDIe0J4t4L1WPEBLi8xohT33Z29Hn6gMKxyymU
         S6/FcZenIZ1fi8EA3VNmHyYcKFBTrXjNlehhNuENJNBxbh5DQBYBeatMgOeARigrWgle
         FSCg==
X-Gm-Message-State: AOAM530VCUnWiybxF8zLuNzeJaVFxWYKsxiXQjsAR5qM2GUjSL3Fv5aR
        Qg2FBo05zevx2LeLRCtBuJmDkw==
X-Google-Smtp-Source: ABdhPJyy1DPIAzPOnCw23PeFUJnz7S0usQRvvQEg9YuafrYokKj/IgMyjiPMWnhUBOtWtr/56mjg9w==
X-Received: by 2002:a5d:4e52:: with SMTP id r18mr14297099wrt.28.1615550426535;
        Fri, 12 Mar 2021 04:00:26 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h25sm2268315wml.32.2021.03.12.04.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 04:00:26 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 3/9] soundwire: qcom: set continue execution flag for ignored commands
Date:   Fri, 12 Mar 2021 12:00:03 +0000
Message-Id: <20210312120009.22386-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210312120009.22386-1-srinivas.kandagatla@linaro.org>
References: <20210312120009.22386-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

version 1.5.1 and higher IPs of this controller required to set
continue execution on ignored command flag. This patch sets this flag.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/qcom.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index d05e41f68658..43ec22a5e332 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -40,6 +40,7 @@
 #define SWRM_CMD_FIFO_CMD					0x308
 #define SWRM_CMD_FIFO_STATUS					0x30C
 #define SWRM_CMD_FIFO_CFG_ADDR					0x314
+#define SWRM_CONTINUE_EXEC_ON_CMD_IGNORE			BIT(31)
 #define SWRM_RD_WR_CMD_RETRIES					0x7
 #define SWRM_CMD_FIFO_RD_FIFO_ADDR				0x318
 #define SWRM_ENUMERATOR_CFG_ADDR				0x500
@@ -343,7 +344,15 @@ static int qcom_swrm_init(struct qcom_swrm_ctrl *ctrl)
 	ctrl->reg_write(ctrl, SWRM_MCP_CFG_ADDR, val);
 
 	/* Configure number of retries of a read/write cmd */
-	ctrl->reg_write(ctrl, SWRM_CMD_FIFO_CFG_ADDR, SWRM_RD_WR_CMD_RETRIES);
+	if (ctrl->version > 0x01050001) {
+		/* Only for versions >= 1.5.1 */
+		ctrl->reg_write(ctrl, SWRM_CMD_FIFO_CFG_ADDR,
+				SWRM_RD_WR_CMD_RETRIES |
+				SWRM_CONTINUE_EXEC_ON_CMD_IGNORE);
+	} else {
+		ctrl->reg_write(ctrl, SWRM_CMD_FIFO_CFG_ADDR,
+				SWRM_RD_WR_CMD_RETRIES);
+	}
 
 	/* Set IRQ to PULSE */
 	ctrl->reg_write(ctrl, SWRM_COMP_CFG_ADDR,
-- 
2.21.0

