Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 038DA41102C
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 09:36:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235011AbhITHhn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 03:37:43 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:57654 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231573AbhITHhm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 03:37:42 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1632123376; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=Ms+B2ZCcZVF2KlK5ntts5I/nDBBo3mTVg8pdBQFTWhE=; b=h0xYIEJ/vnEoziAVQLK6hH7bcxaylILYf4g8HVW/c9XT7nT9CBO5SDWyIRLTvLllFFpaYojO
 PC+l/K9MFpLPdkxQdGeoPtpbjeDiiqJCAPq7G8e5WAYwJ5jmEnOvdswQUq/vJXWRBlKIje3A
 RWihYtEhN+d9YjoMCk5YAZdNhy8=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 614839d5ec62f57c9a9e5d6a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 20 Sep 2021 07:35:49
 GMT
Sender: srivasam=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 8443CC43619; Mon, 20 Sep 2021 07:35:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from hu-srivasam-hyd.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: srivasam)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 78424C4338F;
        Mon, 20 Sep 2021 07:35:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 78424C4338F
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
Subject: [PATCH 0/7] Update Lpass digital codec macro drivers
Date:   Mon, 20 Sep 2021 13:05:24 +0530
Message-Id: <1632123331-2425-1-git-send-email-srivasam@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set is to add support for lpass sc7280 based targets.
Upadate compatible name and change of bulk clock voting to individual
clock voting in digital codec va, rx, tx macro drivers.

Srinivasa Rao Mandadapu (7):
  ASoC: qcom: Add compatible names in va,wsa,rx,tx codec drivers for
    sc7280
  ASoC: qcom: dt-bindings: Add compatible names for lpass sc7280 digital
    codecs
  ASoC: codecs: tx-macro: Change mic control registers to volatile
  ASoC: codecs: lpass-va-macro: Change bulk voting to individual clock
    voting
  ASoC: codecs: lpass-rx-macro: Change bulk voting to individual clock
    voting
  ASoC: codecs: lpass-tx-macro: Change bulk voting to individual clock
    voting
  ASoC: codecs: lpass-va-macro: set mclk clock rate correctly

 .../bindings/sound/qcom,lpass-rx-macro.yaml        |  4 +-
 .../bindings/sound/qcom,lpass-tx-macro.yaml        |  4 +-
 .../bindings/sound/qcom,lpass-va-macro.yaml        |  4 +-
 .../bindings/sound/qcom,lpass-wsa-macro.yaml       |  4 +-
 sound/soc/codecs/lpass-rx-macro.c                  | 69 ++++++++++++------
 sound/soc/codecs/lpass-tx-macro.c                  | 81 ++++++++++++++++------
 sound/soc/codecs/lpass-va-macro.c                  | 49 ++++++++-----
 sound/soc/codecs/lpass-wsa-macro.c                 |  1 +
 8 files changed, 153 insertions(+), 63 deletions(-)

-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.,
is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

