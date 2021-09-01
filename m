Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D76F3FDD11
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 15:20:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243162AbhIANM1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 09:12:27 -0400
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]:22740 "EHLO
        mx0b-0016f401.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S229767AbhIANMZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 09:12:25 -0400
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
        by mx0a-0016f401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1815AZOu027890;
        Wed, 1 Sep 2021 06:11:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=pfpt0220; bh=1Z4fnNm6UVNrefYMrPQDBakLgWFfcc3UfdDlxy4rcxc=;
 b=YNH0r+6rm8O9GLecBSRU7Q8RUz8HM6JYq9xC1Yk3XiR8bqJ0Hm8XY97uLYDwTNri6tfL
 2zMpJ45qZii1gicnEea818iUNpyUs4Gxl3db/pouwFjiLQ6pb3S4MOsxxbYhuU9NNlp+
 4UX5WWPkSV0ZzeslXWt3m6f/8JC2tf2rzUU+Qfq6qKrzAwB1BvDqaBhLFje4TyHi8dVf
 EbwyDpaPB9+OqBdNodoDzdpA5KkT9ykqS8Z/wqQYs/YMH4lWBA5qP8R2iuZvecVafAzX
 O7lfAPTnKTGVdMHJ9edBwv3IC1HVPDjw4vuRoLM1ub/rl191TpqcXMYw1hvckzZfuA6u HQ== 
Received: from dc5-exch01.marvell.com ([199.233.59.181])
        by mx0a-0016f401.pphosted.com with ESMTP id 3at34psu4d-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
        Wed, 01 Sep 2021 06:11:14 -0700
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 1 Sep
 2021 06:11:13 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server id 15.0.1497.18 via Frontend
 Transport; Wed, 1 Sep 2021 06:11:13 -0700
Received: from BG-SER530.marvell.com (BG-SER530.marvell.com [10.28.10.218])
        by maili.marvell.com (Postfix) with ESMTP id D46C23F708A;
        Wed,  1 Sep 2021 06:11:08 -0700 (PDT)
From:   Tanmay Jagdale <tanmay@marvell.com>
To:     <mathieu.poirier@linaro.org>, <suzuki.poulose@arm.com>,
        <mike.leach@linaro.org>, <leo.yan@linaro.org>, <robh+dt@kernel.org>
CC:     <coresight@lists.linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <al.grant@arm.com>,
        <sgoutham@marvell.com>, <lcherian@marvell.com>,
        <bbhushan2@marvell.com>, Tanmay Jagdale <tanmay@marvell.com>
Subject: [PATCH 0/2] coresight: tmc: Add support to configure AXI burst size
Date:   Wed, 1 Sep 2021 18:40:47 +0530
Message-ID: <20210901131049.1365367-1-tanmay@marvell.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: TouT-110FcleF7Tq7DzA9HT1yBpudY8c
X-Proofpoint-GUID: TouT-110FcleF7Tq7DzA9HT1yBpudY8c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-01_04,2021-09-01_01,2020-04-07_01
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new device tree parameter, "arm,max-burst-size" to configure
the max burst size that can be initiated by TMC-ETR on the AXI bus.

Also add description of this property in coresight documentation.

This patch series applies on top of the coresight next branch [1].
https://git.kernel.org/pub/scm/linux/kernel/git/coresight/linux.git/log/?h=next

Tanmay Jagdale (2):
  dt-bindings: coresight: Add burst size for TMC
  coresight: tmc: Configure AXI write burst size

 .../devicetree/bindings/arm/coresight.txt     |  5 +++++
 .../hwtracing/coresight/coresight-tmc-core.c  | 21 +++++++++++++++++--
 .../hwtracing/coresight/coresight-tmc-etr.c   |  3 ++-
 drivers/hwtracing/coresight/coresight-tmc.h   |  6 +++++-
 4 files changed, 31 insertions(+), 4 deletions(-)

-- 
2.25.1

