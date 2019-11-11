Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 419BAF6D8A
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2019 05:25:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726764AbfKKEZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Nov 2019 23:25:15 -0500
Received: from smtp.codeaurora.org ([198.145.29.96]:36118 "EHLO
        smtp.codeaurora.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726754AbfKKEZP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Nov 2019 23:25:15 -0500
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
        id 9FD6460AD9; Mon, 11 Nov 2019 04:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
        s=default; t=1573446314;
        bh=MYBm030xYLHdaohaJ+WmfgpEIwca6uZOPoCaZqvBAHk=;
        h=From:To:Cc:Subject:Date:From;
        b=dtJf4f1wmTWIOYiN/Vk52fGByFwFA8VBCikk0bjejGM/p3kHGgyFE9v8N95TeRs+J
         kjLTV80N+h1OsFbc3Atv4LnUw+PR8gve6PhPYL2xlkyECzUbImO4ibRRVNJWscpsVw
         i4Wh/QaTn+hHbvBfdHZg7NCKV+d6MBcR7ZDVc9FI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
        DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
        version=3.4.0
Received: from govinds-linux.qualcomm.com (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: govinds@smtp.codeaurora.org)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id AC1A66083E;
        Mon, 11 Nov 2019 04:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
        s=default; t=1573446314;
        bh=MYBm030xYLHdaohaJ+WmfgpEIwca6uZOPoCaZqvBAHk=;
        h=From:To:Cc:Subject:Date:From;
        b=dtJf4f1wmTWIOYiN/Vk52fGByFwFA8VBCikk0bjejGM/p3kHGgyFE9v8N95TeRs+J
         kjLTV80N+h1OsFbc3Atv4LnUw+PR8gve6PhPYL2xlkyECzUbImO4ibRRVNJWscpsVw
         i4Wh/QaTn+hHbvBfdHZg7NCKV+d6MBcR7ZDVc9FI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org AC1A66083E
Authentication-Results: pdx-caf-mail.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none smtp.mailfrom=govinds@codeaurora.org
From:   Govind Singh <govinds@codeaurora.org>
To:     ath10k@lists.infradead.org
Cc:     linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
        Govind Singh <govinds@codeaurora.org>
Subject: [PATCH v2 0/2] Don't call SCM interface for statically mapped msa region
Date:   Mon, 11 Nov 2019 09:55:06 +0530
Message-Id: <20191111042508.12628-1-govinds@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For some targets ex: SC7180/QCS404, SCM permissions for MSA region is
statically configured in TrustZone fw. Add SCM call disable option
for such targets to avoid duplicate permissions.

Change since v1:
    Added devicetree list for review.

Govind Singh (2):
  dt: bindings: add dt entry flag to skip SCM call for msa region
  ath10k: Don't call SCM interface for statically mapped msa region

 .../devicetree/bindings/net/wireless/qcom,ath10k.txt     | 4 ++++
 drivers/net/wireless/ath/ath10k/qmi.c                    | 9 +++++++++
 drivers/net/wireless/ath/ath10k/qmi.h                    | 1 +
 3 files changed, 14 insertions(+)

-- 
2.22.0

