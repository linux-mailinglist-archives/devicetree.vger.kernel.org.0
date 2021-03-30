Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E3A134EAE9
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 16:48:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231579AbhC3Or6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 10:47:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231985AbhC3Ore (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 10:47:34 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9827C061762
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:33 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id e14so25190154ejz.11
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iTtGVN1pUyN9IaMWG8AM0yqz3LAm7zkZxHqujW1MyRQ=;
        b=OPl/oeJNk1DkH3MimaRAzXR8S0CUMSUyo2Ud1RE6hDwPmdkI8wMy0A30fs+TS/lPTU
         0Kfu9ZygeGFVfOewRYqG3vD0BFuTRezb/jQpc1hrg3QMKV9PiO5bXp2K1AJVa8mywcwp
         A/aydET0pYuZ+rNkZ0xZGiVgz1H8PfklTGjcWlUXtOJ2Dh1thm4pgT/OHhBp/uUASTHg
         Ot17dpVDByMQJshKvoM/dbWZWbmWodQG7/W66rajHNY0QxL5L9jm3kfMcBfn2Joum+Br
         3N3+B+wUDUcP8N3aOniCFspsPbCSynweGhUTq3HUdNn7UP+wEcWFopF+HS7fZn8SUEuR
         dgnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iTtGVN1pUyN9IaMWG8AM0yqz3LAm7zkZxHqujW1MyRQ=;
        b=XhoOng8GHhoYGQlQYgsXPhYzUibnOxrSmWclApXmUXun5V8RS3UGHNGKE32VrN3hr7
         3njod/HZA0W+7dsblHBwuGzLLxWf+u9i2SwFpynVjui8Ngi6sUK3mZkWwCDT2xK1XRyr
         +BP+IqbMhNtYWwc+40U/IJ95aKqglkMw1TpmazjklQV99M1POkycfcXpx4d/aOUKeta5
         +Bz8iMUGiIbNUGpCbYhLCotDwSR4S2MoHRmeaZ6fMWsbmEziJ3zkgw5nF2EQvb4WPDy4
         THt5eJabaHp7dhktnZlYm0ZAHydE5rXnXSAsvlHlapn256kJIy28P+9+wm8bB0+YYEw4
         2DFA==
X-Gm-Message-State: AOAM530MX8lYKluJ63Utu1e+2nYrujgc1zYuv87b3yQC2cg3qlBtwUXY
        Xm3ffR0FOereQ5YL7PWg5uOKJA==
X-Google-Smtp-Source: ABdhPJxl8V38895yHeOUfSa3zNqLHJrdgpnkU1fUpZY8d5zhQSUcipXXMjCUuuUQPCyj+oAkM/h4qQ==
X-Received: by 2002:a17:906:495a:: with SMTP id f26mr32959469ejt.271.1617115652384;
        Tue, 30 Mar 2021 07:47:32 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n16sm11520383edr.42.2021.03.30.07.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 07:47:31 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 3/9] soundwire: qcom: set continue execution flag for ignored commands
Date:   Tue, 30 Mar 2021 15:47:13 +0100
Message-Id: <20210330144719.13284-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210330144719.13284-1-srinivas.kandagatla@linaro.org>
References: <20210330144719.13284-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

version 1.5.1 and higher IPs of this controller required to set
continue execution on ignored command flag. This patch sets this flag.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 drivers/soundwire/qcom.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index fdcb8ffb4284..edc77d18c245 100644
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

