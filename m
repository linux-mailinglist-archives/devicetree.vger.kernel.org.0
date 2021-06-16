Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D0D03AA6BD
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 00:43:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233469AbhFPWpW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 18:45:22 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:57850 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233244AbhFPWpW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 18:45:22 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15GMh9ia073389;
        Wed, 16 Jun 2021 17:43:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623883389;
        bh=74SiuWOHgQDM622NE/GWDi/jzCuwvTuqsemmKAxbTJ8=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=Jj51uiDxEilMzJ2cRN/ASR1vPHXUIzoVEZSNcHtpZBAzzADNYOm+vxvTuHsHtIZw0
         pOVImQUxIHDNx4OFkSTKxYW98Ws+bdZFbsO9RKpBKz3afRKYzqE/YEJjk2/BHe7QcK
         thIDj13qVnOiWhTjNY7Ez4ycPjvZyD9Icwn74Qnk=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15GMh9rH069612
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Jun 2021 17:43:09 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 16
 Jun 2021 17:43:05 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 16 Jun 2021 17:43:05 -0500
Received: from [10.247.25.23] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15GMh5Dg012663;
        Wed, 16 Jun 2021 17:43:05 -0500
Subject: Re: [PATCH v2 0/3] Add R5F nodes on TI K3 AM64x SoCs
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20210615195718.15898-1-s-anna@ti.com>
From:   "Bajjuri, Praneeth" <praneeth@ti.com>
Message-ID: <65488794-3b42-7bca-a309-3e75778657ac@ti.com>
Date:   Wed, 16 Jun 2021 17:43:05 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210615195718.15898-1-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/15/2021 2:57 PM, Suman Anna wrote:
> Hi Nishanth,
> 
> This is a rebased version of the K3 AM64x R5F node series posted previously.
> Please see the v1 cover-letter for all the functional details [1]. I have
> dropped Patch 4 [2] from the previous series as per the discussion and agreed
> upon in [2] until we align on the longer-term memory utilization of OCM RAM.
> 
> Patches are on top of your latest staged ti-k3-dts-next branch commit
> d65f069e50a3 (arm64: dts: ti: Drop reg-io-width/reg-shift from UART nodes")
> + Aswath's [PATCH v4 0/3] AM64: Update the locations of various elements in SRAM
> series (can't see the links on lakml patchworks).
> 
> Bjorn has staged a tag from remoteproc tree with just the bindings [3]
> that you can use for merging this series for v5.14. The driver support
> will come through remoteproc tree.
> 
> I have validated the IPC functionality using System Firmware v2021.01a
> with appropriate U-Boot that goes along with Aswath's series and corresponding
> legacy PDK IPC example firmwares.
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210528144718.25132-1-s-anna@ti.com/
> [2] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210528144718.25132-5-s-anna@ti.com/
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/andersson/remoteproc.git/log/?h=20210327143117.1840-2-s-anna@ti.com
> 
> Suman Anna (3):
>    arm64: dts: ti: k3-am64-main: Add MAIN domain R5F cluster nodes
>    arm64: dts: ti: k3-am642-evm/sk: Add mailboxes to R5Fs
>    arm64: dts: ti: k3-am642-evm/sk: Add DDR carveout memory nodes for
>      R5Fs

For the series.

Reviewed-by: Praneeth Bajjuri <praneeth@ti.com>

> 
>   arch/arm64/boot/dts/ti/k3-am64-main.dtsi | 84 ++++++++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am642-evm.dts  | 78 ++++++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am642-sk.dts   | 78 ++++++++++++++++++++++
>   3 files changed, 240 insertions(+)
> 
