Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2A07338C97
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 13:24:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbhCLMX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 07:23:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbhCLMXB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 07:23:01 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60587C061761
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:23:01 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id 7so4709474wrz.0
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZdZJGNP62lIlEnEmG/cCC95BLhByXorN62IvToLdpl4=;
        b=ylWoX9xUNZ8xM+1HGI2ImLh8mOmk1MiOPYZg1P7v+ETDVLVHX9F80XJcdSoCzTBImJ
         tCl38ELjaOK5iwx6nSQQPT7VslSzPgOOrQFPioqLi3t0PxDz7up1bLTv8Q7cVjv8rx+d
         JQ9DXuka8FoHix/r977MhlIq90uFd70y1D5s3DPL2mw3VpHaN5NuI62SauLnwGXb9u8h
         h/JyFg6TGGNyNLMXhkBHKISbJ2s6Hgy9YXEpeqXjFqZep2C8mb4H+IiC+GjWptsjhf0i
         qEHU6URAL24+N9BqJbAOt+9m7QBP7hgOZUvQKGJ1+cTHPsYZkT2Wo+nLouh0OufzcAKw
         CvEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZdZJGNP62lIlEnEmG/cCC95BLhByXorN62IvToLdpl4=;
        b=AzM7rJRoW+G2xuMW/HJeaXhk3UgpVcyKQDW2Fd6kD99LORf4V//usclevhhgXQp84d
         ZPtq/ZO0nEzPAxrcNbaK+mWuOprxilvnb/3TN6oEXv3ogim7HFWe3QWaoonRP6sdiJzE
         4FQopG6GpNh1R82rxD5Se2NO8+fkTA8FH/2dCeeTbDjQsxMU2ic14+/gr6j95LGga2vp
         SQoVIgVvTWffiElzPT6UmOxpue6OX9e6Y2XFUuQtNNdNZRHReRDGrZxlrYauWzU7QhLT
         5qdLw9TI6li+U79rd5c4nXI6iRPsLXelzjgTWGUZT2qVyQuXOAFCVkB/x4H81gRBIdsH
         rELA==
X-Gm-Message-State: AOAM530cvEiGq3Dcl6Q6oGC9WbpjNw1PvJXVpm5q9Fz/TarTdsF1NL0M
        xOVqVBXMeEnjs1E1nhBG/lYbAw==
X-Google-Smtp-Source: ABdhPJzq5ypNFpODDNGdzsu4umFpPzVXaC7hruw4FFz9uUJRLwBTkvMcogwpaVsOC6QKmGEhCz87Jg==
X-Received: by 2002:adf:e603:: with SMTP id p3mr13900719wrm.360.1615551780146;
        Fri, 12 Mar 2021 04:23:00 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id 3sm8804329wry.72.2021.03.12.04.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 04:22:59 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org,
        yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RESEND PATCH v3 2/5] soundwire: qcom: update port map allocation bit mask
Date:   Fri, 12 Mar 2021 12:22:52 +0000
Message-Id: <20210312122255.3143-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210312122255.3143-1-srinivas.kandagatla@linaro.org>
References: <20210312122255.3143-1-srinivas.kandagatla@linaro.org>
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
index 6d22df01f354..9e70c53e2c7b 100644
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
+				if (pn > maxport) {
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
+	/* Valid port numbers are from 1-14, so mask out port 0 explicitly */
+	set_bit(0, &ctrl->dout_port_mask);
+	set_bit(0, &ctrl->din_port_mask);
 
 	ret = of_property_read_u8_array(np, "qcom,ports-offset1",
 					off1, nports);
-- 
2.21.0

