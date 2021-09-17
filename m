Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19E8840F584
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 12:03:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343509AbhIQKE0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Sep 2021 06:04:26 -0400
Received: from m43-7.mailgun.net ([69.72.43.7]:22877 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1343798AbhIQKET (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 17 Sep 2021 06:04:19 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1631872975; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=CJwnHo3pz2UgQS456Svxjjq3G02d9aZ5x8cN2u1/b0s=; b=l9Dw2QaimlIfSk3H/KMTtz7cld8ZjKSettCHlAgfHUkYCzCwBcO70h0Uul3Hxd9zYL31C96w
 WbBpRQh503I9lgSqRzxDx/VKisVo0FaViP4Bt6mPxVbXMqw/WD+2lIRQCDBiuvJfTPT/SI+U
 pPhxH4UeU0tkwX1IzSo6lp6Wusc=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 6144678f507800c880fa7836 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 17 Sep 2021 10:01:51
 GMT
Sender: srivasam=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id E86C5C43635; Fri, 17 Sep 2021 10:01:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from hu-srivasam-hyd.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: srivasam)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 3386DC4338F;
        Fri, 17 Sep 2021 10:01:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 3386DC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=codeaurora.org
From:   Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        srinivas.kandagatla@linaro.org, rohitkr@codeaurora.org,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        swboyd@chromium.org, judyhsiao@chromium.org
Cc:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Subject: [PATCH v3 0/2] Machine driver to support LPASS SC7280 sound card registration
Date:   Fri, 17 Sep 2021 15:31:30 +0530
Message-Id: <1631872892-1821-1-git-send-email-srivasam@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set is to add support for SC7280 sound card registration and
to add dt-bindings documentation file.

This patch set depends on the dt-bindings header patch
  -- https://patchwork.kernel.org/project/alsa-devel/list/?series=543829

Srinivasa Rao Mandadapu (2):
  ASoC: google: dt-bindings: Add sc7280-herobrine machine bindings
  ASoC: qcom: SC7280: Add machine driver
Chnages Since V2:
    -- updated required field in bindings
    -- updated Return type check with proper enum in sc7280.c
    -- Updated Header name and Typos in sc7280.c
Chnages Since V1:
    -- Indentation changes and typo.

 .../bindings/sound/google,sc7280-herobrine.yaml    | 170 ++++++++++
 sound/soc/qcom/Kconfig                             |  12 +
 sound/soc/qcom/Makefile                            |   2 +
 sound/soc/qcom/sc7280.c                            | 343 +++++++++++++++++++++
 4 files changed, 527 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/google,sc7280-herobrine.yaml
 create mode 100644 sound/soc/qcom/sc7280.c

-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.,
is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

