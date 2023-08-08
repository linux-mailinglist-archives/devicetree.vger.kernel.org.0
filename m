Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB167735D5
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 03:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbjHHBaT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 21:30:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbjHHBaS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 21:30:18 -0400
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DA33DB
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 18:30:17 -0700 (PDT)
Received: from kwepemi500026.china.huawei.com (unknown [172.30.72.57])
        by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4RKbDQ2Jy0zVjnf;
        Tue,  8 Aug 2023 09:28:22 +0800 (CST)
Received: from huawei.com (10.67.175.33) by kwepemi500026.china.huawei.com
 (7.221.188.247) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 8 Aug
 2023 09:30:14 +0800
From:   Lin Yujun <linyujun809@huawei.com>
To:     <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <arnd@arndb.de>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: [PATCH -next] ARM: dts: integrator: fix PCI bus dtc warnings
Date:   Tue, 8 Aug 2023 09:28:11 +0800
Message-ID: <20230808012811.2309267-1-linyujun809@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.67.175.33]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemi500026.china.huawei.com (7.221.188.247)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

An warning is reported when allmodconfig is used to compile the kernel of the ARM architecture:

arch/arm/boot/dts/arm/integratorap-im-pd1.dts:252.3-14: Warning (dma_ranges_format): /bus@c0000000/bus@c0000000/display@1000000:dma-ranges: empty "dma-ranges" property but its #address-cells (2) differs from /bus@c0000000/bus@c0000000 (1)
arch/arm/boot/dts/arm/integratorap.dts:161.22-206.4: Warning (pci_bridge): /pciv3@62000000: node name is not "pci" or "pcie"
arch/arm/boot/dts/arm/integratorap-im-pd1.dtb: Warning (unit_address_format): Failed prerequisite 'pci_bridge'
arch/arm/boot/dts/arm/integratorap-im-pd1.dtb: Warning (pci_device_reg): Failed prerequisite 'pci_bridge'
arch/arm/boot/dts/arm/integratorap-im-pd1.dtb: Warning (pci_device_bus_num): Failed prerequisite 'pci_bridge'
arch/arm/boot/dts/arm/integratorap.dts:161.22-206.4: Warning (pci_bridge): /pciv3@62000000: node name is not "pci" or "pcie"
arch/arm/boot/dts/arm/integratorap.dtb: Warning (unit_address_format): Failed prerequisite 'pci_bridge'
arch/arm/boot/dts/arm/integratorap.dtb: Warning (pci_device_reg): Failed prerequisite 'pci_bridge'
arch/arm/boot/dts/arm/integratorap.dtb: Warning (pci_device_bus_num): Failed prerequisite 'pci_bridge'

Change the node name to pci to clear the build warning.

Fixes: 4952aa696a9f ("ARM: dts: integrator: Tag PCI host with device_type")

Signed-off-by: Lin Yujun <linyujun809@huawei.com>
---
 arch/arm/boot/dts/arm/integratorap.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/arm/integratorap.dts b/arch/arm/boot/dts/arm/integratorap.dts
index 5b52d75bc6be..d9927d3181dc 100644
--- a/arch/arm/boot/dts/arm/integratorap.dts
+++ b/arch/arm/boot/dts/arm/integratorap.dts
@@ -158,7 +158,7 @@ pic: pic@14000000 {
 		valid-mask = <0x003fffff>;
 	};
 
-	pci: pciv3@62000000 {
+	pci: pci@62000000 {
 		compatible = "arm,integrator-ap-pci", "v3,v360epc-pci";
 		device_type = "pci";
 		#interrupt-cells = <1>;
-- 
2.34.1

