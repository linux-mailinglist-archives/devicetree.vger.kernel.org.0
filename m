Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0FB127004E
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 16:57:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726822AbgIRO5M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 10:57:12 -0400
Received: from so254-54.mailgun.net ([198.61.254.54]:15792 "EHLO
        so254-54.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726629AbgIRO5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 10:57:09 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1600441028; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=01wU2O8qOC0/MqwWxG1kPJ+Gu7KccKzuNA+6AbQH6xg=; b=TJGc8Fj1DKUIv9KvBht3IA4XCOjNOeYAKwJrmmk65+0utExTu4ahEng+zfSHL/KM7kpfWBpo
 UF2IQpbv60OmUMGkmJur4ABkXn/36IvZOwIe3gttVxvEu9tWHM6FU/WVcMRWXZRrm7bZ6lM7
 W+RXhrsKUvq12foCQ5Zx95ax4Zc=
X-Mailgun-Sending-Ip: 198.61.254.54
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 5f64cabe6ace44cacca3b19c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 18 Sep 2020 14:57:02
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 1DEC7C433FF; Fri, 18 Sep 2020 14:57:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from hyd-lnxbld210.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: srivasam)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id E38A6C433CA;
        Fri, 18 Sep 2020 14:56:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E38A6C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=srivasam@codeaurora.org
From:   Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, rohitkr@codeaurora.org,
        srinivas.kandagatla@linaro.org
Cc:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Subject: [PATCH 0/2] Qualcomm's lpass device tree changes
Date:   Fri, 18 Sep 2020 20:26:45 +0530
Message-Id: <1600441007-2427-1-git-send-email-srivasam@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These patches are device tree changes to support audio over DP.
It includes changes of HDMI reg, interrupt and iommu and 
hdmi dai link.
These patches depends on the lpass I2S patch series
  -- https://patchwork.kernel.org/patch/11785073/
  -- https://patchwork.kernel.org/patch/11785235/

V Sujith Kumar Reddy (2):
  arm64: dts: qcom: sc7180: Update lpass cpu node for audio over dp
  arm64: dts: qcom: sc7180-trogdor: Add lpass dai link for HDMI

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 12 ++++++++++++
 arch/arm64/boot/dts/qcom/sc7180.dtsi         | 17 ++++++++++-------
 2 files changed, 22 insertions(+), 7 deletions(-)

-- 
Qualcomm India Private Limited, on behalf of Qualcomm Innovation Center, Inc.,
is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.

