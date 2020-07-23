Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE2DE22AEB7
	for <lists+devicetree@lfdr.de>; Thu, 23 Jul 2020 14:11:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728436AbgGWMLY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jul 2020 08:11:24 -0400
Received: from mail29.static.mailgun.info ([104.130.122.29]:53432 "EHLO
        mail29.static.mailgun.info" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728396AbgGWMLY (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 Jul 2020 08:11:24 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1595506284; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=WvXLJMSd5moKGBo4HGcbWn9Mn8ofEkg1LsUDy5piKlI=; b=RLr/JR1QuUX4s2FbkJYYZel0y3yCwuaiE2rIVXAcQYyR9rNATWmvTqqcPOopwdVHsHaoWnoF
 x0rqLxoqxTkyeb1l6sng5cG8DJgITd7DSUlqpD0+BvNkpOIPQRqmIVrbZkFEu9vEuMnHouTl
 XyMlgiVFZQzl+42iqUqlmjjeQDE=
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n14.prod.us-west-2.postgun.com with SMTP id
 5f197e638e9b2c49c6f31de2 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 23 Jul 2020 12:11:15
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 495D0C433C6; Thu, 23 Jul 2020 12:11:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from vnaralas-linux.qualcomm.com (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: akolli)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 7FD4AC433C9;
        Thu, 23 Jul 2020 12:11:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7FD4AC433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=akolli@codeaurora.org
From:   Anilkumar Kolli <akolli@codeaurora.org>
To:     ath11k@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
        akolli@codeaurora.org
Subject: [PATCH v4 0/3] ath11k: Add IPQ6018 support
Date:   Thu, 23 Jul 2020 17:41:01 +0530
Message-Id: <1595506264-6393-1-git-send-email-akolli@codeaurora.org>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

IPQ6018 has a 5G radio and 2G radio with 2x2
and shares IPQ8074 configuration.

Tested on: IPQ6018 WLAN.HK.2.2-02134-QCAHKSWPL_SILICONZ-1
Tested on: IPQ8074 WLAN.HK.2.4.0.1-00009-QCAHKSWPL_SILICONZ-1 

Anilkumar Kolli (3):
  dt: bindings: net: update compatible for ath11k
  ath11k: copy ce service configs to hw_params
  ath11k: add IPQ6018 support

V2:
 - Added devicetree reviewers 
V3:
 - addressed dt bindinds comments
 - Reworked on Kalles patches
 - copied ce svc configs to hw_params
V4:
 - updated dt patch (Rob)

 .../bindings/net/wireless/qcom,ath11k.yaml         |   4 +-
 drivers/net/wireless/ath/ath11k/ahb.c              | 131 ++++++++++++++++++++-
 drivers/net/wireless/ath/ath11k/core.c             |  20 ++--
 drivers/net/wireless/ath/ath11k/core.h             |   2 +
 drivers/net/wireless/ath/ath11k/hw.h               |   2 +
 5 files changed, 146 insertions(+), 13 deletions(-)

-- 
2.7.4

