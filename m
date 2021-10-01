Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED0BA41EB9D
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 13:21:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353428AbhJALXj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 07:23:39 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:32626 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230257AbhJALXj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 07:23:39 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1633087315; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=DzBh2hJ0M5AMbOUMKQznzdQSW6wxpS0FzHXDuo4qPaM=; b=Rb41TzS0nL5Pb5heUaSPAUaeV5XWQAxPTgaI18ktUSd4zHDnsVjxjfCWFq9PK9tHfhq6uEkd
 JcZhEetK/b3XIbu8AV0DN7QtXvVM1gvBpRc406oFVAtGeYRpIX0TBDt8UHZk5JuRWBTjWipm
 qvHurQknHg5ug4WJ8W0F9ZfFgrE=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 6156ef4efc6e34f8cda43e5b (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 11:21:50
 GMT
Sender: srivasam=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 6112EC4361B; Fri,  1 Oct 2021 11:21:50 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from hu-srivasam-hyd.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: srivasam)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id BCF81C4338F;
        Fri,  1 Oct 2021 11:21:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org BCF81C4338F
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
Subject: [PATCH 0/8] Add support for audio on SC7280 based targets 
Date:   Fri,  1 Oct 2021 16:51:24 +0530
Message-Id: <1633087292-1378-1-git-send-email-srivasam@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set is to add support for Audio over wcd codec,
digital mics, through digital codecs and without ADSP.
This patch set depends on:
	-- https://patchwork.kernel.org/project/alsa-devel/list/?series=549577
	-- https://patchwork.kernel.org/project/alsa-devel/list/?series=548765
	-- https://patchwork.kernel.org/project/alsa-devel/list/?series=543829

Srinivasa Rao Mandadapu (8):
  ASoC: qcom: Move lpass_pcm_data structure to lpass header
  ASoC: qcom: lpass: Add dma fields for codec dma lpass interface
  ASoC: qcom: Add register definition for codec rddma and wrdma
  ASoC: qcom: Add lapss CPU driver for codec dma control
  ASoC: qcom: Add support for codec dma driver
  ASoC: dt-bindings: Add SC7280 sound card bindings
  ASoC: qcom: lpass-sc7280: Add platform driver for lpass audio
  ASoc: qcom: lpass: Add suspend and resume for sc7280 platform

 .../devicetree/bindings/sound/qcom,lpass-cpu.yaml  |  69 ++-
 sound/soc/qcom/lpass-cdc-dma.c                     | 263 +++++++++
 sound/soc/qcom/lpass-cpu.c                         | 334 +++++++++++-
 sound/soc/qcom/lpass-lpaif-reg.h                   | 103 +++-
 sound/soc/qcom/lpass-platform.c                    | 504 +++++++++++++++--
 sound/soc/qcom/lpass-sc7280.c                      | 602 +++++++++++++++++++++
 sound/soc/qcom/lpass.h                             | 156 ++++++
 7 files changed, 1974 insertions(+), 57 deletions(-)
 create mode 100644 sound/soc/qcom/lpass-cdc-dma.c
 create mode 100644 sound/soc/qcom/lpass-sc7280.c

-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.,
is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

