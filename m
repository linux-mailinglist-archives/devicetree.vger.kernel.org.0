Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA232F1E38
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 19:47:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389746AbhAKSrP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jan 2021 13:47:15 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:46304 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389492AbhAKSrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jan 2021 13:47:15 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10BIkLUA000815;
        Mon, 11 Jan 2021 12:46:21 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610390781;
        bh=4099dAK98IF3h4AU7/WfejIaW+zDEZHZXESwwYl22Ik=;
        h=From:To:CC:Subject:Date;
        b=CgYyxhd4+U2p1i0VRmeyLFRv7aihxpMIheI9JJ7k2kD5d4dGpc1SDGSOi8TwstJvF
         kVJz9WXfNkMIpc5O1G5h3FS8j1GoFYk1gS5JoGCehYj+osQI4CTLTPL0r8mmOu6dgW
         QXZkOk15ekjjBK3g+BB77qv3Uz3IMTDi88Bo9VVA=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10BIkL28040524
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 11 Jan 2021 12:46:21 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 11
 Jan 2021 12:46:21 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 11 Jan 2021 12:46:21 -0600
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10BIkLRn059612;
        Mon, 11 Jan 2021 12:46:21 -0600
Received: from localhost ([10.250.67.236])
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 10BIkL5O004116;
        Mon, 11 Jan 2021 12:46:21 -0600
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH v2 0/3] Add R5F nodes on TI K3 J7200 SoCs
Date:   Mon, 11 Jan 2021 12:45:51 -0600
Message-ID: <20210111184554.6748-1-s-anna@ti.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

This is v2 of the R5F DT node patches, and is a minor revision of the 
previous series [1] with couple of patches squashed in. There is no
change in overall delta. Please see the v1 cover-letter for details
and the individual patches for exact delta.

regards
Suman

[1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210107183907.6545-1-s-anna@ti.com/

Suman Anna (3):
  arm64: dts: ti: k3-j7200: Add R5F cluster nodes
  arm64: dts: ti: k3-j7200-som-p0: Add mailboxes to R5Fs
  arm64: dts: ti: k3-j7200-som-p0: Add DDR carveout memory nodes for
    R5Fs

 arch/arm64/boot/dts/ti/k3-j7200-main.dtsi     | 42 +++++++++-
 .../boot/dts/ti/k3-j7200-mcu-wakeup.dtsi      | 42 +++++++++-
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 80 ++++++++++++++++++-
 3 files changed, 161 insertions(+), 3 deletions(-)

-- 
2.29.2

