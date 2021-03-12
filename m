Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84AEC338C32
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 13:01:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231317AbhCLMAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 07:00:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231444AbhCLMAe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 07:00:34 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BB20C061574
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:00:34 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id t9so1626586wrn.11
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yEstJ8fSJSpfc6e8Q0vMn1tWonCjZtnzF+5445SF5Qs=;
        b=yXkq2KLAbC7KzixcJj2Z96/TbUF5rxrVRAuXgmyNmPkUsbt00yQDUAtePfvJpDGkBq
         Q9AdySyXNnOdzKSxPbO/ssZolk7JeniO5InutNFtUM0ERNxCG3ID43kJuDgkbMgNovEY
         mZGbxSn+fGUz3jnIQC08dXvh3eoNP8Z6850z4rizDVZe6I1LBkISACd5EbB0ag9zxyhN
         dWGf8DDFmDsEr94j30r1q5+PwHX7k1qnCnWBDhSMQV/EK7Tl8wcw1lvW/KarPTytmy1e
         kfZUWS9r00Ewl1SYyRqwDW+oxCD3VvLvvKc+eeezMk0NxU2zuKNEVYgeCcowcJVFaCzK
         LEGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yEstJ8fSJSpfc6e8Q0vMn1tWonCjZtnzF+5445SF5Qs=;
        b=I3vGVkl7VoOB0kmSpEwnWUnYe5SgX3Kf8gF5QpDuOXxPftNP+VQhHctE34vFCgmUIM
         YL7ccDeJUaHjZ9JlEHsKf/dqaGGLMWwuIIDqY6jNuSVRvUX4xxx/qq3eu3pvboBANaE3
         dRZSSY5PKZH1F6ic8CGQPR+RsicxD+5atiE5DgJqJeJrOj5w1g3Dz1AmsDVhC4QsAIvr
         AqXpw8oqqm3tDaEDlEGfSgaBRSrZckjB/yLBdf251LVMEpWuDyJPkTC+frJlB7Moaiue
         fFzk/YHk0SH70CLAj/4usGJPcMzHxv3LwnIXkYp0AUS4w6iM0PtQqLF1ZEQq2qADIqwq
         r6Sw==
X-Gm-Message-State: AOAM532q0qFot72h+2AtLvQs794JXzp62EvoIolJ/eNsi7Yxzyy0A5YM
        cExlxMQQxJZ9U1LFHDZrca7JNQ==
X-Google-Smtp-Source: ABdhPJyEuMGLdAxtqH4eoe5V0wW+agxN2/wXtSMXWHisBysHzetmWiXSxFO1vt99WenOLTrCyQ4FaA==
X-Received: by 2002:a5d:4564:: with SMTP id a4mr13642592wrc.3.1615550432808;
        Fri, 12 Mar 2021 04:00:32 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h25sm2268315wml.32.2021.03.12.04.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 04:00:32 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 9/9] soundwire: qcom: wait for enumeration to be complete in probe
Date:   Fri, 12 Mar 2021 12:00:09 +0000
Message-Id: <20210312120009.22386-10-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210312120009.22386-1-srinivas.kandagatla@linaro.org>
References: <20210312120009.22386-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/qcom.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index c6c923329b15..706d44200a36 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -123,6 +123,7 @@ struct qcom_swrm_ctrl {
 	struct regmap *regmap;
 	void __iomem *mmio;
 	struct completion broadcast;
+	struct completion enumeration;
 	struct work_struct slave_work;
 	/* Port alloc/free lock */
 	struct mutex port_lock;
@@ -417,6 +418,7 @@ static int qcom_swrm_enumerate(struct sdw_bus *bus)
 		}
 	}
 
+	complete(&ctrl->enumeration);
 	return 0;
 }
 
@@ -1155,6 +1157,7 @@ static int qcom_swrm_probe(struct platform_device *pdev)
 	dev_set_drvdata(&pdev->dev, ctrl);
 	mutex_init(&ctrl->port_lock);
 	init_completion(&ctrl->broadcast);
+	init_completion(&ctrl->enumeration);
 
 	ctrl->bus.ops = &qcom_swrm_ops;
 	ctrl->bus.port_ops = &qcom_swrm_port_ops;
@@ -1201,6 +1204,8 @@ static int qcom_swrm_probe(struct platform_device *pdev)
 	}
 
 	qcom_swrm_init(ctrl);
+	wait_for_completion_timeout(&ctrl->enumeration,
+				    msecs_to_jiffies(TIMEOUT_MS));
 	ret = qcom_swrm_register_dais(ctrl);
 	if (ret)
 		goto err_master_add;
-- 
2.21.0

