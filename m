Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EBB12F9827
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 04:21:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731522AbhARDVd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 22:21:33 -0500
Received: from szxga05-in.huawei.com ([45.249.212.191]:11550 "EHLO
        szxga05-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731526AbhARDVc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 22:21:32 -0500
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
        by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4DJxpk1XyQzMLZx;
        Mon, 18 Jan 2021 11:19:26 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.176.220) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.498.0; Mon, 18 Jan 2021 11:20:40 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 0/6] further clean up Hisilicon-related errors detected by DT schema on arm64
Date:   Mon, 18 Jan 2021 11:16:28 +0800
Message-ID: <20210118031634.934-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.176.220]
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I've solved all the errors that can be fixed this time. The rest will require
more time and energy to analyze in depth.

Zhen Lei (6):
  arm64: dts: hisilicon: separate each group of data in the property
    "ranges"
  arm64: dts: hisilicon: place clock-names "bus" before "core"
  arm64: dts: hisilicon: normalize the node name of the module thermal
  arm64: dts: hisilicon: normalize the node name of the localbus
  arm64: dts: hisilicon: avoid irrelevant nodes being mistakenly
    identified as PHY nodes
  arm64: dts: hisilicon: delete unused property smmu-cb-memtype

 arch/arm64/boot/dts/hisilicon/hi3660.dtsi      | 6 +++---
 arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi | 8 ++++----
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi      | 8 ++++----
 arch/arm64/boot/dts/hisilicon/hip05.dtsi       | 2 +-
 arch/arm64/boot/dts/hisilicon/hip06.dtsi       | 6 ++----
 arch/arm64/boot/dts/hisilicon/hip07.dtsi       | 9 ++-------
 6 files changed, 16 insertions(+), 23 deletions(-)

-- 
1.8.3


