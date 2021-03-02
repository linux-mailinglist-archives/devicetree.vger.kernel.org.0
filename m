Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 363B732AB27
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:13:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1836468AbhCBUIj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:08:39 -0500
Received: from szxga06-in.huawei.com ([45.249.212.32]:13414 "EHLO
        szxga06-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383424AbhCBLfN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 06:35:13 -0500
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
        by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4DqZkH5VjhzjTKw;
        Tue,  2 Mar 2021 19:32:55 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.179.202) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.498.0; Tue, 2 Mar 2021 19:34:07 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Wei Xu <xuwei5@hisilicon.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@kernel.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>,
        Zhangfei Gao <zhangfei.gao@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v4 0/1] arm64: dts: correct vendor prefix hisi to hisilicon
Date:   Tue, 2 Mar 2021 19:33:50 +0800
Message-ID: <20210302113351.1204-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.179.202]
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v3 --> v4:
This patch series has four patches at the beginning. This patch needs to be
applied after the other three patches. However, the maintenance is performed by
two maintainers.  The sequence of final merge cannot be ensured. For more
discussion, please refer https://lkml.org/lkml/2021/1/28/579. Now, the other
three patches are merged into v5.12-rc1, so resend this one again.

By the way, there is a new "hisi, rst-syscon" added, so add:
Fixes: 305656e0989d ("arm64: dts: hisilicon: hi3670.dtsi: add iomcu_rst")


v2 --> v3:
1. Keep device tree patches and reset driver patch separate, as they were in v1.
   That is, revert v2.
2. When the new compatible match failed, fall back to the deprecated compatible.
3. Fix a typo, correct "hi3660,rst-syscon" to "hisilicon,rst-syscon".

v1 --> v2:
Merge the driver and DT modification(correct vendor prefix hisi to hisilicon) into one patch.

v1:
Patch 1-3 change the vendor prefix from "hisi" to "hisilicon", to eliminate below warnings:
  crg_rst_controller: 'hisi,rst-syscon' does not match any of the regexes: '^#.*', ... , '^hisilicon,.*', ...
  From schema: /root/leizhen/linux-next/Documentation/devicetree/bindings/vendor-prefixes.yaml

Patch 4 does the json-schema conversion.

Zhen Lei (1):
  arm64: dts: correct vendor prefix hisi to hisilicon

 arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 4 ++--
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3


