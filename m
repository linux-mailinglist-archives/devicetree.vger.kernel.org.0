Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44A39332848
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 15:16:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230320AbhCIOQA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 09:16:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230462AbhCIOPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 09:15:36 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2518C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 06:15:35 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id 7so15930240wrz.0
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 06:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wgYYRBqu2Co/W7gReOySnEqRtjbIxnEiAoNrpCeyOWk=;
        b=a0wPe4uBWNYiKbyGGwI6t+Hkruw1OOcXeqba3zAZBCB60ZCLwoQVYScCa8hzieutsh
         SGoyNyzWoaoR2ms5OzwPFK30f5bn+eZ6nzcSFY6ooQqqXgLOYieELbjHJd4fJqpHZ1zf
         MqMZdPNHQ/1kyYAcbRZKr6mjotlwtICa5A+jl2zKTjF829xKvsI4Om2j6fNLqe8ZptL9
         bK2v9xGsqGCCBzA/eGip5CbVucsRc8W8oD1UvjL7Cf3FW/OKgbGuIi3tAdMpc2v7/lfB
         w1VR4MmEPI3kNqlWuC/T+agMZigWjqZNHid4XGC39rkWjTCam3kLtn67ZnhDLJeXoDQZ
         UIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wgYYRBqu2Co/W7gReOySnEqRtjbIxnEiAoNrpCeyOWk=;
        b=VdzQ3GE+KtbWDRfut5YVj0D87py+m6TIi0CrjDkcs+4NdOGfoQIcl/iE4rYgUyRXhJ
         v+z+fOu8QbafCo+dyVJTf7lPCnlMfB5wkCGBqqiNSOAvjPTL1FfRduQBwkuwJ9SY8L9l
         2obqto7Pk9T16C9AUZqSZoImGO0KHNxPN0Qi96y+OJ9NTYzg5H0XEIUszYzd6Unwo6uD
         ghcl6VQjOQKkgL/ElTcIgQ/IkZj9f1bVmmvZVHUmdHQa3yAsfVbqQojiwqBTmInvxvOo
         CIE/3QgIN4N5t+iV0jVqRC2LK6ryMc6MnhVy2Y/3GUoLHpA3SMQk+m6Tz2Xto860DUyk
         y7ew==
X-Gm-Message-State: AOAM532XNB/euP0HBcwXtiv60MXb8qncgKIBG1Y0cjHr3YgKtVW/4AEh
        GOf1uyjfvuwEEBf562cpryXHMw==
X-Google-Smtp-Source: ABdhPJzjx+A4weJ+YoAO37xTieQKrFjnYgWo5WE0uu2XX5PvGFn3BCfRxZNQHen1u/9up4DZtcduhw==
X-Received: by 2002:a05:6000:147:: with SMTP id r7mr29046369wrx.25.1615299334635;
        Tue, 09 Mar 2021 06:15:34 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id u20sm28007579wru.6.2021.03.09.06.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 06:15:34 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org,
        yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 2/5] soundwire: qcom: update port map allocation bit mask
Date:   Tue,  9 Mar 2021 14:15:11 +0000
Message-Id: <20210309141514.24744-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210309141514.24744-1-srinivas.kandagatla@linaro.org>
References: <20210309141514.24744-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

currently the internal bitmask used for allocating ports starts with offset 0.
This is bit confusing as data port numbers on Qualcomm controller are valid
from 1 to 14. So adjust this bit mask accordingly, this will also help while
adding static port map support.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/qcom.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index 6d22df01f354..f4f1c5f2af0b 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -519,7 +519,7 @@ static void qcom_swrm_stream_free_ports(struct qcom_swrm_ctrl *ctrl,
 			port_mask = &ctrl->din_port_mask;
 
 		list_for_each_entry(p_rt, &m_rt->port_list, port_node)
-			clear_bit(p_rt->num - 1, port_mask);
+			clear_bit(p_rt->num, port_mask);
 	}
 
 	mutex_unlock(&ctrl->port_lock);
@@ -552,13 +552,13 @@ static int qcom_swrm_stream_alloc_ports(struct qcom_swrm_ctrl *ctrl,
 			list_for_each_entry(p_rt, &s_rt->port_list, port_node) {
 				/* Port numbers start from 1 - 14*/
 				pn = find_first_zero_bit(port_mask, maxport);
-				if (pn > (maxport - 1)) {
+				if (pn > (maxport)) {
 					dev_err(ctrl->dev, "All ports busy\n");
 					ret = -EBUSY;
 					goto err;
 				}
 				set_bit(pn, port_mask);
-				pconfig[nports].num = pn + 1;
+				pconfig[nports].num = pn;
 				pconfig[nports].ch_mask = p_rt->ch_mask;
 				nports++;
 			}
@@ -580,7 +580,7 @@ static int qcom_swrm_stream_alloc_ports(struct qcom_swrm_ctrl *ctrl,
 err:
 	if (ret) {
 		for (i = 0; i < nports; i++)
-			clear_bit(pconfig[i].num - 1, port_mask);
+			clear_bit(pconfig[i].num, port_mask);
 	}
 
 	mutex_unlock(&ctrl->port_lock);
@@ -754,6 +754,9 @@ static int qcom_swrm_get_port_config(struct qcom_swrm_ctrl *ctrl)
 	ctrl->num_dout_ports = val;
 
 	nports = ctrl->num_dout_ports + ctrl->num_din_ports;
+	/* port numbers are non zero, so mark port 0 */
+	set_bit(0, &ctrl->dout_port_mask);
+	set_bit(0, &ctrl->din_port_mask);
 
 	ret = of_property_read_u8_array(np, "qcom,ports-offset1",
 					off1, nports);
-- 
2.21.0

