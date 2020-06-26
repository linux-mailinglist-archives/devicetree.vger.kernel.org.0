Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5006920B7C8
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2020 20:02:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725866AbgFZSCM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jun 2020 14:02:12 -0400
Received: from m43-7.mailgun.net ([69.72.43.7]:47520 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726509AbgFZSCC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Jun 2020 14:02:02 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1593194521; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=3V6V+HkJ2nno4gRDGUehKUmSrGtSiALI3MCiAJYXmzs=; b=Nc6ddEgJtgAUMWcf9lRuV/ZwPmGgqiB1X+8P0OMFJX2aoenuI+QGkQ+kmnTVzziEU1yCP1ax
 DoA5363jtmflqLVxMZP5GRVnZLNvlBbPlya57pdn65q1Lc1E9auOe58H4gXH4h2MM7GO8+ff
 2sHgZjx/m0fs8ZoZSja32TSfwfI=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 5ef63812f3deea03f3b37f60 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 26 Jun 2020 18:01:54
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 922A5C433CA; Fri, 26 Jun 2020 18:01:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from pillair-linux.qualcomm.com (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: pillair)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 9C634C433C8;
        Fri, 26 Jun 2020 18:01:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9C634C433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=pillair@codeaurora.org
From:   Rakesh Pillai <pillair@codeaurora.org>
To:     ath10k@lists.infradead.org, devicetree@vger.kernel.org
Cc:     linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rakesh Pillai <pillair@codeaurora.org>
Subject: [PATCH 2/2] ath10k: Add support for chain1 regulator supply voting
Date:   Fri, 26 Jun 2020 23:31:42 +0530
Message-Id: <1593194502-13164-3-git-send-email-pillair@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593194502-13164-1-git-send-email-pillair@codeaurora.org>
References: <1593194502-13164-1-git-send-email-pillair@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support to vote for chain-1 voltage regulator
in WCN3990.

Tested-on: WCN3990 hw1.0 SNOC WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1

Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index 645ed5f..407a074 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -45,6 +45,7 @@ static const char * const ath10k_regulators[] = {
 	"vdd-1.8-xo",
 	"vdd-1.3-rfa",
 	"vdd-3.3-ch0",
+	"vdd-3.3-ch1",
 };
 
 static const char * const ath10k_clocks[] = {
-- 
2.7.4

