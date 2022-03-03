Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A94184CBC10
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 12:03:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232583AbiCCLEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 06:04:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231381AbiCCLEO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 06:04:14 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80169145AC5
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 03:03:29 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id b5so7241326wrr.2
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 03:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8hDu3jQ0/KFwUauJ0s0iiJQ5+oez30L/TC9C+H82oIY=;
        b=XDYOccH9/feL6Ga45UDMA4UeGQ2IytWYoXsBswjEKD7uNTlpf0VtbxzB3avjKa0Xr2
         GyImAA3NbJi7tuwKzXOol2I72Z+rEZSPw+LyUw6NdzxexCd5VQ1K5h/R9Hub5aeFHcan
         ivv0S/qSgsVYRr1oyWRIpSau/cOF/2FqgjGotx/sLggikMWwsaH4JJ0RP+Yeusqm89H0
         XJN+C3MG05/iJxVFre2ytXzWNm9wNEfw7iaKgLY+o1QyPP6l+rI65MCP+EhVZuhzh6Rf
         H/CfoqcTUwHjZb2TxaQgltSIKz5RObYoNSsv3Y+zYHUKcmAO85IFb4Xj1cnBkzqYjvgQ
         zWvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8hDu3jQ0/KFwUauJ0s0iiJQ5+oez30L/TC9C+H82oIY=;
        b=3g2zd78AX1EwKXYN1JQ+WADdiyWhREub2N8vKmyPRACZiUHEzH5zrb+UAa6iyQgcC4
         uJP5WDpqcx43Pb473VKTuEW5JMWVJE7ikmi6silYiKhIMTaiNbqzso7w7zNliadRHI2P
         me6ylhc7tCVMG89RelJcmno1ZLG7dRwcYQg6yiNWje+NnESSjHl4pAQ3tBjIZoo31sTE
         Rr3j9uQA06bmKyW+ZocOfVTEz7uH7Fdj1I87SujhDFL3BXOgs+LQ3Etc+QAkrbLvqGvG
         +5SNrAlT5fN0bfFPkR1tVcD5VNK82cv42WOPH9Q/y2LClatOhqEltkHfiT426OHPJX4a
         yVMQ==
X-Gm-Message-State: AOAM531hF8OGISetEXeNqu1hge0ij7BR9ccDAdQ0HBMbtQdECMqtapBS
        1Jwwy5Aj/8atHnp5QUpmix+ZSg==
X-Google-Smtp-Source: ABdhPJxmv07Y0UCCmrx9Mk4RldZATonv6UYABP7hLa0VMXaYKQQfPtPdCbK4cU+CsbZNk76xvOwhQg==
X-Received: by 2002:adf:a199:0:b0:1f0:20f5:8f79 with SMTP id u25-20020adfa199000000b001f020f58f79mr7842466wru.296.1646305408054;
        Thu, 03 Mar 2022 03:03:28 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id p16-20020adff210000000b001f062b80091sm638187wro.34.2022.03.03.03.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 03:03:27 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, yung-chuan.liao@linux.intel.com
Cc:     pierre-louis.bossart@linux.intel.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        quic_srivasam@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] soundwire: qcom: fix build failures if CONFIG_PM=n
Date:   Thu,  3 Mar 2022 11:03:21 +0000
Message-Id: <20220303110321.23666-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix below build failure
drivers/soundwire/qcom.c:1460:12: error: 'swrm_runtime_resume' defined
but not used [-Werror=unused-function]
by marking the resume swrm_runtime_resume() with  __maybe_unused attribute.

Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/qcom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index e893aee1b057..6575695cd400 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -1459,7 +1459,7 @@ static bool swrm_wait_for_frame_gen_enabled(struct qcom_swrm_ctrl *swrm)
 	return false;
 }
 
-static int swrm_runtime_resume(struct device *dev)
+static int __maybe_unused swrm_runtime_resume(struct device *dev)
 {
 	struct qcom_swrm_ctrl *ctrl = dev_get_drvdata(dev);
 	int ret;
-- 
2.21.0

