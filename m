Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D14884254A2
	for <lists+devicetree@lfdr.de>; Thu,  7 Oct 2021 15:49:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241772AbhJGNvM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 09:51:12 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:14512 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241714AbhJGNvK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 09:51:10 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1633614556; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=LJlIsAmhsWWtNJvtDA2z8gf+SVO6RTgCLs6jKSGxJaU=; b=j2WyNHWL80XeRNZ+6y3Yqa9lCU5dAtXjN+KrYjBOa2ifZ/cO5d//gx7APu2NrAVyqTK8APgL
 M6n9d1VCbREHo9ToEItew1j/qLahpgZH8BdrJ4VNy5kZHBqKN5vLiNYBntI39ecneMVHOlxP
 z7PRci1P/KNj5t8uzLljNvTJWE4=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 615efacbff0285fb0ab7bf5c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 07 Oct 2021 13:48:59
 GMT
Sender: srivasam=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id D52C2C4361C; Thu,  7 Oct 2021 13:48:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from hu-srivasam-hyd.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: srivasam)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id C796FC4338F;
        Thu,  7 Oct 2021 13:48:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org C796FC4338F
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
Subject: [PATCH 0/3] Add pin control support for lpass sc7280
Date:   Thu,  7 Oct 2021 19:18:36 +0530
Message-Id: <1633614519-26680-1-git-send-email-srivasam@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series is to make lpass variant independent pin control
functions common and to add lpass sc7280 pincontrol support.
It also includes dt-bindings for lpass sc7280 lpi compatible. 

Srinivasa Rao Mandadapu (3):
  pinctrl: qcom: Update lpass variant independent functions as generic
  dt-bindings: pinctrl: qcom: Add sc7280 lpass lpi pinctrl compatible
  pinctrl: qcom: Add SC7280 lpass pin configuration

 .../bindings/pinctrl/qcom,lpass-lpi-pinctrl.yaml   |  4 +-
 drivers/pinctrl/qcom/pinctrl-lpass-lpi.c           | 57 +++++++++++++++++++---
 2 files changed, 52 insertions(+), 9 deletions(-)

-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.,
is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

