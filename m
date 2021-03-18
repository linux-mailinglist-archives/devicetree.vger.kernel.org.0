Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8329A340EC7
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 21:05:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232909AbhCRUEo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 16:04:44 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:49546 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232918AbhCRUEM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 16:04:12 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12IK3q5W060050;
        Thu, 18 Mar 2021 15:03:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616097832;
        bh=FDoJf6dxGhwkWJLgQMTGE60wc9T7jBVEIbdF8pJSX9Y=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=LdXRPCWACv+7TCOsW0BxeE9Dyf6P/TDzPN6NdlJuQhXRgo0uh8rJV3M64C6dHtUWh
         VdOiH+IcNFZuq03eLiJIhG1YzqpWpkGqkGaurmA+hjdaKpm+FNhiGkpfRIW/Tq8clz
         uNPp2gps6kdrE7gs4eY5z5w+TAylay87jbXLAQqo=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12IK3qIn046062
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 18 Mar 2021 15:03:52 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 18
 Mar 2021 15:03:52 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 18 Mar 2021 15:03:51 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com [10.247.120.73])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12IK3p6K108228;
        Thu, 18 Mar 2021 15:03:51 -0500
Received: from uda0271916b.dhcp.ti.com (uda0271916b.dhcp.ti.com [128.247.81.224] (may be forged))
        by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 12IK3ptQ037331;
        Thu, 18 Mar 2021 15:03:51 -0500
From:   Gowtham Tammana <g-tammana@ti.com>
To:     <s-anna@ti.com>
CC:     <devicetree@vger.kernel.org>, <kristo@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <nm@ti.com>,
        Gowtham Tammana <g-tammana@ti.com>
Subject: Re: [PATCH 0/4] AM64x HwSpinlock and Mailbox DT nodes
Date:   Thu, 18 Mar 2021 15:03:49 -0500
Message-ID: <20210318200349.16692-1-g-tammana@ti.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210317230946.23675-1-s-anna@ti.com>
References: <20210317230946.23675-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Hi Nishanth,
>
> The following series adds the HwSpinlock and Mailbox DT nodes for
> AM64x SoCs on AM64x-EVM and AM64x-SK boards. The bindings for both
> drivers were merged in 5.12-rc1.
>
> Patches are based on top of your latest ti-k3-dts-next branch,
> commit 04a80a75baa1 ("arm64: dts: ti: k3-am642-evm: Add USB support").
>
> Following is the patch summary:
>  - Patch 1 adds the HwSpinlock node
>  - Patch 2 adds all the relevant Mailbox clusters that generate
>    interrupts towards A53
>  - Patches 3 and 4 add the actual communication sub-mailbox devices
>    and disables unused clusters for AM64x EVM and AM64x SK boards
>    respectively.
>
> Boot Logs:
> 1. AM64x EVM: https://pastebin.ubuntu.com/p/JMxrqr2zQN/
> 2. AM64x SK: https://pastebin.ubuntu.com/p/rJcyXvD9hV/
>
> regards
> Suman
>
> Suman Anna (4):
>   arm64: dts: ti: k3-am64-main: Add hwspinlock node
>   arm64: dts: ti: k3-am64-main: Add mailbox cluster nodes
>   arm64: dts: ti: k3-am642-evm: Add IPC sub-mailbox nodes
>   arm64: dts: ti: k3-am642-sk: Add IPC sub-mailbox nodes
>
>  arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 64 ++++++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am642-evm.dts  | 43 ++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am642-sk.dts   | 43 ++++++++++++++++
>  3 files changed, 150 insertions(+)

I don't see any issues with this patchset, and dtbs_check reports no errors.

Reviewed-by: Gowtham Tammana <g-tammana@ti.com>
