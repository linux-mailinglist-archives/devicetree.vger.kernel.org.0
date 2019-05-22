Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D85A25DAA
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 07:35:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725801AbfEVFfq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 01:35:46 -0400
Received: from hqemgate16.nvidia.com ([216.228.121.65]:4453 "EHLO
        hqemgate16.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725796AbfEVFfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 01:35:46 -0400
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
        id <B5ce4dfb10000>; Tue, 21 May 2019 22:35:45 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
  by hqpgpgate102.nvidia.com (PGP Universal service);
  Tue, 21 May 2019 22:35:45 -0700
X-PGP-Universal: processed;
        by hqpgpgate102.nvidia.com on Tue, 21 May 2019 22:35:45 -0700
Received: from HQMAIL103.nvidia.com (172.20.187.11) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 22 May
 2019 05:35:45 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL103.nvidia.com
 (172.20.187.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Wed, 22 May 2019 05:35:44 +0000
Received: from puneets-dt1.nvidia.com (Not Verified[10.24.229.31]) by hqnvemgw01.nvidia.com with Trustwave SEG (v7,5,8,10121)
        id <B5ce4dfaf0004>; Tue, 21 May 2019 22:35:44 -0700
From:   Puneet Saxena <puneets@nvidia.com>
To:     <pantelis.antoniou@konsulko.com>, <frowand.list@gmail.com>,
        <devicetree@vger.kernel.org>
CC:     <treding@nvidia.com>, <vdumpa@nvidia.com>, <snikam@nvidia.com>,
        Puneet Saxena <puneets@nvidia.com>
Subject: [PATCH] ignore disabled memory-region nodes
Date:   Wed, 22 May 2019 11:05:52 +0530
Message-ID: <1558503353-13179-1-git-send-email-puneets@nvidia.com>
X-Mailer: git-send-email 2.7.4
X-NVConfidentiality: public
MIME-Version: 1.0
Content-Type: text/plain
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1558503345; bh=u/UYCWLymTSqcBo9T5CcJEmk9hwekwvVRSlqE7i6gDs=;
        h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
         X-NVConfidentiality:MIME-Version:Content-Type;
        b=gkr2JeW+vJOjH0+UPVuUs4Eq0F3pWBvyEzKijftpxoOAUtH2RlDWdA26cSmCFwO+a
         aVp1AYNZC0fB2PJOZAtcdapsrPMqtszAie0aiE2fRo3h4ZT6Q44Ewi/WxVA4ijyX+z
         Wf1MODJXjkMTAPGgyAQl0oqM4zIkvFxof/WcqRv0HV/KI5io++YLldV50/4SjLt7jE
         hpKaZbJZLnRB+/AretbVy58Ex+sSB4PG1eRd/scPbmNhSX1LfTw6sEqcdglDpAe3Bf
         kHXOvoF6IuMYj5wqTv462SuRLeqO+5mQDktl4MWXHT8LgoG0Tr5h3lbr6/SZPfSKE4
         wVVLorestlLWQ==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While parsing "memory-region" node lists if a node
is "disabled", parsing halts. Therefore the nodes whoes
"status" is "okay" or "ok" are not parsed.

The change ignore disabled nodes in the memory-region
nodes list and continues to initialize the rest of
enabled nodes.

Krishna Reddy (1):
  of: resered-memory: ignore disabled memory-region nodes

 drivers/of/of_reserved_mem.c | 5 +++++
 1 file changed, 5 insertions(+)

-- 
2.7.4

