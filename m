Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16FFD41BEB0
	for <lists+devicetree@lfdr.de>; Wed, 29 Sep 2021 07:26:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244137AbhI2F2b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 01:28:31 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:42134 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244110AbhI2F21 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Sep 2021 01:28:27 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1632893207; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=XJku7DsamK/yH+GUuMagqg2jHBKxw+t3hZfxo2lrDos=; b=sJi9BECKhv7HGmZxskbP0HVaPkhXhlKwxYxSKQIz9WItw+lLXyyW6evSFOr8Ql2+CmMna/ZX
 RgBjNk4quQ+zYhb+Cae1uirV84kpOjbkuzqy9Zy0fYhcBPfpj65eRKEvuiVeWZwZ4D5FhD2C
 lUGW9ZESaDuhOib2y3BYe0r2+vE=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 6153f90e8578ef11eda57dcc (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 29 Sep 2021 05:26:38
 GMT
Sender: saiprakash.ranjan=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id EA40DC43618; Wed, 29 Sep 2021 05:26:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: saiprakash.ranjan)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 195DFC4338F;
        Wed, 29 Sep 2021 05:26:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 195DFC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=codeaurora.org
From:   Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Rob Herring <robh+dt@kernel.org>, devicetree-spec@vger.kernel.org
Cc:     devicetree@vger.kernel.org,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
Subject: [PATCH] Add system-cache-controller to the list of generic node names
Date:   Wed, 29 Sep 2021 10:56:13 +0530
Message-Id: <20210929052613.8589-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

System Cache Controller (Last Level Cache Controller/LLCC) does not
have a cache-level associated with it as enforced by the already
existing 'cache-controller' node name, so add system-cache-controller
to the list of generic node names as decided on the lkml in [1][2]
and already being used in the dts for sometime now.

[1] https://lore.kernel.org/lkml/5dcd8588.1c69fb81.2528a.3460@mx.google.com/
[2] https://lore.kernel.org/lkml/cover.1573814758.git.saiprakash.ranjan@codeaurora.org/

Cc: Stephen Boyd <swboyd@chromium.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rajendra Nayak <rnayak@codeaurora.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 source/chapter2-devicetree-basics.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/source/chapter2-devicetree-basics.rst b/source/chapter2-devicetree-basics.rst
index 40be22192b2f..c06c5063c68b 100644
--- a/source/chapter2-devicetree-basics.rst
+++ b/source/chapter2-devicetree-basics.rst
@@ -276,6 +276,7 @@ name should be one of the following choices:
    * sram-controller
    * ssi-controller
    * syscon
+   * system-cache-controller
    * temperature-sensor
    * timer
    * touchscreen
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

