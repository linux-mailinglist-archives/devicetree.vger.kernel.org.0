Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3280389098
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:19:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241234AbhESOUp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:20:45 -0400
Received: from szxga04-in.huawei.com ([45.249.212.190]:4683 "EHLO
        szxga04-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239148AbhESOUo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:20:44 -0400
Received: from dggems701-chm.china.huawei.com (unknown [172.30.72.58])
        by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FlZg90mYXz1BPK1;
        Wed, 19 May 2021 22:16:37 +0800 (CST)
Received: from dggpemm500006.china.huawei.com (7.185.36.236) by
 dggems701-chm.china.huawei.com (10.3.19.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 22:19:23 +0800
Received: from thunder-town.china.huawei.com (10.174.177.72) by
 dggpemm500006.china.huawei.com (7.185.36.236) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 19 May 2021 22:19:22 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-realtek-soc <linux-realtek-soc@lists.infradead.org>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 0/4] Clear some dtbs_check warnings detected by snps-dw-apb-uart.yaml
Date:   Wed, 19 May 2021 22:19:10 +0800
Message-ID: <20210519141914.8044-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.177.72]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm500006.china.huawei.com (7.185.36.236)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Synopsys DesignWare ABP UART is commonly used. Therefore, it is meaningful
to clear the warnings detected by snps-dw-apb-uart.yaml. I fixed everything I
could. The only problem left is that some serial port nodes do not have the
property 'interrupts'. I don't know their interrupt number, so there's no way
to fix it. By the way, is there a scenario where serial ports do not need to be
interrupted? If it exists, property 'interrupts' should not be defined as required.


Zhen Lei (4):
  arm64: dts: bitmain: normalize the node name of the UART devices
  arm64: dts: broadcom: normalize the node name of the UART devices
  arm64: dts: realtek: rtd16xx: normalize the node name of the UART
    devices
  arm64: dts: synaptics: normalize the node name of the UART devices

 arch/arm64/boot/dts/bitmain/bm1880.dtsi             | 6 +++---
 arch/arm64/boot/dts/broadcom/stingray/stingray.dtsi | 8 ++++----
 arch/arm64/boot/dts/realtek/rtd16xx.dtsi            | 6 +++---
 arch/arm64/boot/dts/synaptics/berlin4ct.dtsi        | 2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

-- 
2.21.1


