Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25CC838C317
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 11:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236493AbhEUJ3p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 05:29:45 -0400
Received: from szxga04-in.huawei.com ([45.249.212.190]:5715 "EHLO
        szxga04-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236485AbhEUJ3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 05:29:41 -0400
Received: from dggems702-chm.china.huawei.com (unknown [172.30.72.58])
        by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Fmh5S6LBGzqVcT;
        Fri, 21 May 2021 17:24:44 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems702-chm.china.huawei.com (10.3.19.179) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 21 May 2021 17:28:04 +0800
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 dggpemm500006.china.huawei.com (7.185.36.236) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 21 May 2021 17:28:03 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 1/1] ARM64: dts: vexpress: Separate each group of data in the property 'reg'
Date:   Fri, 21 May 2021 17:27:58 +0800
Message-ID: <20210521092758.8474-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Do not write the 'reg' of multiple groups of data into a uint32 array,
use <> to separate them. Otherwise, the errors similar to the following
will be reported by reg.yaml.

arch/arm64/boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dt.yaml:
 iofpga-bus@300000000: compact-flash@1a0000:reg:0: \
 [1703936, 256, 1704192, 3840] is too long

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index 4f7220b11f2d7a9..4587cbda85e2055 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -339,8 +339,8 @@ rtc@170000 {
 
 				compact-flash@1a0000 {
 					compatible = "arm,vexpress-cf", "ata-generic";
-					reg = <0x1a0000 0x100
-					       0x1a0100 0xf00>;
+					reg = <0x1a0000 0x100>,
+					      <0x1a0100 0xf00>;
 					reg-shift = <2>;
 				};
 
-- 
2.26.0.106.g9fadedd


