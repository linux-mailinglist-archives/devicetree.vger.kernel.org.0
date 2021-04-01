Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36C6A3511B3
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 11:16:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233842AbhDAJP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 05:15:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233921AbhDAJPH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 05:15:07 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1712C0613E6
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 02:15:06 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id h10so1106134edt.13
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 02:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pFG46RZYS5/Er5IhYN0FXoPQG4BJ55RdCsAsKwMxydU=;
        b=WlIUaIocYVvnh0DL8RSf6KBIjvTv7HVcs95o9YIu6r52SNIk/q5QYyzo6GDWE7LpHl
         lR+440cF3MLZmzmFSaH3P9x4WQwFDS6ENhwfuXULlj5hybDGIP+dlB7jQei4ezvaeyd3
         yDhoytWciC4lLk0eIVlHubjybZDxMHTt8JZ2yEM/vp1kfdLTC8yXJ+Oc2m9MYkTXuKTP
         iCMKopCKSg472suxVqhLV27KQrJwZO70iCfBNK0w6fivTHp4O7/7EFKJory3jbuTdADf
         MuETethhOuwgJ/Ks0xr03ATL+oTF3xU+mzUimorr0vLA+vke1rCsqUHZAhKHoySgwSQz
         iKAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pFG46RZYS5/Er5IhYN0FXoPQG4BJ55RdCsAsKwMxydU=;
        b=UtO9VvphKND3AVcknrCrvRvCpqVTsCPQAKThXyTcy9XCG9NX/oSXYdmkoumZbV0K7r
         v1IQHMhvRsasUEFl93FZxDJBgBDvbZ2uiMbj3UXBMrtIt/Gz83Fn3kZmL/DqbWHzHh0u
         hD7HqD9UZfhiYXqVKrUdzT43RN6NNXR0tA9h3/d/qcm3xNaXGrELf1e2u2T5Gi9gOYGN
         0MV8VU8w23/KBG9hXQc28+IJ/eLvWlM7JGg62nDGSCRQjgJJDqidZ+5bImTvHv4fZ5mJ
         PadXQ5zcw00ZXRUqMrPAzzVz4kA3rubCeVxYdu79bbM/lEBxEipRE4TVBYDVtWTyWwZx
         p/8g==
X-Gm-Message-State: AOAM531pUUyC0+xSd4yjap2cIvvffJ21tJYbQk0qU+Ww0ZvBBwnnzgTi
        8ZkmFf/UoHZJhjgbWNNBSu40vA==
X-Google-Smtp-Source: ABdhPJxq9SvkUxPvdCl1mrkfMUE3n7OpohFqbLJ25k6jtzcdjAn8gW60BZeAuXxTc2WbWKY0s+B/4w==
X-Received: by 2002:aa7:da14:: with SMTP id r20mr8590863eds.181.1617268505387;
        Thu, 01 Apr 2021 02:15:05 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id gb4sm2426802ejc.122.2021.04.01.02.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 02:15:04 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        coverity-bot <keescook+coverity-bot@chromium.org>
Subject: [PATCH] soundwire: qcom: handle return correctly in qcom_swrm_transport_params
Date:   Thu,  1 Apr 2021 10:15:02 +0100
Message-Id: <20210401091502.15825-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Looks like return from reg_write is set but not checked.
Fix this by adding error return path.

Reported-by: coverity-bot <keescook+coverity-bot@chromium.org>
Addresses-Coverity-ID: 1503591 ("UNUSED_VALUE")
Fixes: 128eaf937adb ("soundwire: qcom: add support to missing transport params")
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/qcom.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index 5fd4a99cc8ac..348d9a46f850 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -731,17 +731,23 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
 	value |= pcfg->si;
 
 	ret = ctrl->reg_write(ctrl, reg, value);
+	if (ret)
+		goto err;
 
 	if (pcfg->lane_control != SWR_INVALID_PARAM) {
 		reg = SWRM_DP_PORT_CTRL_2_BANK(params->port_num, bank);
 		value = pcfg->lane_control;
 		ret = ctrl->reg_write(ctrl, reg, value);
+		if (ret)
+			goto err;
 	}
 
 	if (pcfg->blk_group_count != SWR_INVALID_PARAM) {
 		reg = SWRM_DP_BLOCK_CTRL2_BANK(params->port_num, bank);
 		value = pcfg->blk_group_count;
 		ret = ctrl->reg_write(ctrl, reg, value);
+		if (ret)
+			goto err;
 	}
 
 	if (pcfg->hstart != SWR_INVALID_PARAM
@@ -755,11 +761,15 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
 		ret = ctrl->reg_write(ctrl, reg, value);
 	}
 
+	if (ret)
+		goto err;
+
 	if (pcfg->bp_mode != SWR_INVALID_PARAM) {
 		reg = SWRM_DP_BLOCK_CTRL3_BANK(params->port_num, bank);
 		ret = ctrl->reg_write(ctrl, reg, pcfg->bp_mode);
 	}
 
+err:
 	return ret;
 }
 
-- 
2.21.0

