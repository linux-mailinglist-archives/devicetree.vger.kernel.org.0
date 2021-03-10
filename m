Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33E80333658
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 08:29:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231539AbhCJH2r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 02:28:47 -0500
Received: from z11.mailgun.us ([104.130.96.11]:64237 "EHLO z11.mailgun.us"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229544AbhCJH20 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 10 Mar 2021 02:28:26 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1615361306; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=Ao0oDH0UF7kgRfD8K+46xArCDKrtVd8DavJmhEC5QMo=; b=V5Gph2oHvaLCUGKQp5D11I8oqXc1GzQWODuSNBTxBkrCZuf7Iamq17tWqtJLAQrJ4YdAyIFf
 4PasfowGdeTczYXXJ+HYXDgg+Utg+4la+NZ0EdDWDz9ZdhRg6N8VPbQUPhPGcHyHeTcrO3hj
 GA7He8RODsoLrKwR/38tkSB60/8=
X-Mailgun-Sending-Ip: 104.130.96.11
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-west-2.postgun.com with SMTP id
 6048751abb6300df758f55f6 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 10 Mar 2021 07:28:26
 GMT
Sender: pillair=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 3346FC43464; Wed, 10 Mar 2021 07:28:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
        autolearn=no autolearn_force=no version=3.4.0
Received: from pillair-linux.qualcomm.com (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: pillair)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 28AB9C433CA;
        Wed, 10 Mar 2021 07:28:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 28AB9C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=pillair@codeaurora.org
From:   Rakesh Pillai <pillair@codeaurora.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, ohad@wizery.com,
        mathieu.poirier@linaro.org, robh+dt@kernel.org,
        p.zabel@pengutronix.de
Cc:     sibis@codeaurora.org, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rakesh Pillai <pillair@codeaurora.org>
Subject: [PATCH 0/2] Add support for sc7280 WPSS PIL loading
Date:   Wed, 10 Mar 2021 12:58:08 +0530
Message-Id: <1615361290-19238-1-git-send-email-pillair@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for PIL loading of WPSS co-processor for SC7280 SOCs.

Rakesh Pillai (2):
  dt-bindings: remoteproc: qcom: Add SC7280 WPSS support
  remoteproc: qcom: q6v5_wpss: Add support for sc7280 WPSS

 .../bindings/remoteproc/qcom,hexagon-v56.txt       | 35 +++++-----
 drivers/remoteproc/qcom_q6v5_adsp.c                | 77 +++++++++++++++++++++-
 2 files changed, 96 insertions(+), 16 deletions(-)

-- 
2.7.4

