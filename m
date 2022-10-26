Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40A4160DF1D
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 13:02:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233376AbiJZLC0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 07:02:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232931AbiJZLC0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 07:02:26 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95EA3B56D5
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 04:02:24 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id l16-20020a05600c4f1000b003c6c0d2a445so1255063wmq.4
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 04:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iq+UTjOWMyquGHaqNGU9bVUM+RbHUdDoO13dPtnzSfU=;
        b=kkr8je1+7h37yq2UCQzx7bziwp9BgRGHNSqBb7MHWFDsWbjGPduEr3Jl4E1yYfBt0Q
         2rH15nIYWCvOOnIr8WyHRKxRHoqQFq1ctID5UQJJ27i0gf4/9mbP647SAxtQEEd70ciO
         xE+gccJPfzpgshvNKQIhRcfy0mF3ECaew3cgZz7OeL8zh2jlodY2AeFhDGYLNK4BCj7i
         LfgT8ODc6dk9tcQcKjJzUIq2h3A515ZhcAmRFDopXRHNoNPCnbKneJOUv34RYE1KLypw
         r3Ro1TF5ufrWemVsjdkN3Q9NoZsxph7y2TBCpZvSpDmSaREstiDlBhBjg5zlNyYtWRTZ
         zlkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iq+UTjOWMyquGHaqNGU9bVUM+RbHUdDoO13dPtnzSfU=;
        b=bFk6RSecm9YByrilOS/ei8VVTTrS/rW9l3n6V6YyKPI8nrNUtEUGDFE5vttTPhz8jm
         fi4nHqWCWDtgsNfISMtVg/vuHSL5+9z9RFT4c16KJBOqYnfbCnAz8JqadzpGyO44oD1Z
         YGbiDRNr7DiH4s874/swmQBtuV0IRLvqdkiBH0mP15ZQLrvOUesdV1U6pbl47rlm59QC
         tEmHQ0PCaHFpnZea/DCIe6Eatbd24GSwxfVkcQUffU8rkg5hdKe9s6ZZNznzYG43WKtX
         7CrswJf0i/8Ww4392s/XDmy/24BcDdplXZtpkhEFAvExUcINtLR9oC3N1LL0m+RB7njr
         oV/Q==
X-Gm-Message-State: ACrzQf2G3Kpq9Fck9gWiYH/XrSNItL9GOmRHuwYeap8G64yFiNB8Z6ok
        +9aY/MdC9ajHON7x8BQyx6+PVg==
X-Google-Smtp-Source: AMsMyM5ZSYi57o1Z5QN7tWgoVXorQQMv/TaZXk+ZadlHoHTu14idvd4TR9hgJSmpkJHVthLxM8k9cg==
X-Received: by 2002:a05:600c:3585:b0:3c7:9f:5f87 with SMTP id p5-20020a05600c358500b003c7009f5f87mr2101249wmq.76.1666782143122;
        Wed, 26 Oct 2022 04:02:23 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id z7-20020a5d44c7000000b0023672104c24sm5237415wrr.74.2022.10.26.04.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 04:02:22 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, yung-chuan.liao@linux.intel.com
Cc:     andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        srinivas.kandagatla@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: [PATCH 1/6] soundwire: qcom: reinit broadcast completion
Date:   Wed, 26 Oct 2022 12:02:05 +0100
Message-Id: <20221026110210.6575-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20221026110210.6575-1-srinivas.kandagatla@linaro.org>
References: <20221026110210.6575-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For some reason we never reinit the broadcast completion, there is a
danger that broadcast commands could be treated as completed by driver
from previous complete status.
Fix this by reinitializing the completion before sending a broadcast command.

Fixes: ddea6cf7b619 ("soundwire: qcom: update register read/write routine")
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/qcom.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index b33d5db494a5..8f1a1eb017a2 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -344,6 +344,9 @@ static int qcom_swrm_cmd_fifo_wr_cmd(struct qcom_swrm_ctrl *swrm, u8 cmd_data,
 	if (swrm_wait_for_wr_fifo_avail(swrm))
 		return SDW_CMD_FAIL_OTHER;
 
+	if (cmd_id == SWR_BROADCAST_CMD_ID)
+		reinit_completion(&swrm->broadcast);
+
 	/* Its assumed that write is okay as we do not get any status back */
 	swrm->reg_write(swrm, SWRM_CMD_FIFO_WR_CMD, val);
 
-- 
2.21.0

