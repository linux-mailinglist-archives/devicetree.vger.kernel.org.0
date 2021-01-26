Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C00CD3044BB
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 18:17:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390420AbhAZRIB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 12:08:01 -0500
Received: from szxga05-in.huawei.com ([45.249.212.191]:11501 "EHLO
        szxga05-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390413AbhAZI4t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 03:56:49 -0500
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
        by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4DQ0t821rZzjD1q;
        Tue, 26 Jan 2021 16:54:56 +0800 (CST)
Received: from [10.40.166.221] (10.40.166.221) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.498.0; Tue, 26 Jan 2021 16:56:01 +0800
Message-ID: <600FD921.2030108@hisilicon.com>
Date:   Tue, 26 Jan 2021 16:56:01 +0800
From:   Wei Xu <xuwei5@hisilicon.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To:     Zhen Lei <thunder.leizhen@huawei.com>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/6] further clean up Hisilicon-related errors detected
 by DT schema on arm64
References: <20210118031634.934-1-thunder.leizhen@huawei.com>
In-Reply-To: <20210118031634.934-1-thunder.leizhen@huawei.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.166.221]
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Zhen Lei,

On 2021/1/18 11:16, Zhen Lei wrote:
> I've solved all the errors that can be fixed this time. The rest will require
> more time and energy to analyze in depth.
> 
> Zhen Lei (6):
>   arm64: dts: hisilicon: separate each group of data in the property
>     "ranges"
>   arm64: dts: hisilicon: place clock-names "bus" before "core"
>   arm64: dts: hisilicon: normalize the node name of the module thermal
>   arm64: dts: hisilicon: normalize the node name of the localbus
>   arm64: dts: hisilicon: avoid irrelevant nodes being mistakenly
>     identified as PHY nodes
>   arm64: dts: hisilicon: delete unused property smmu-cb-memtype
> 
>  arch/arm64/boot/dts/hisilicon/hi3660.dtsi      | 6 +++---
>  arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi | 8 ++++----
>  arch/arm64/boot/dts/hisilicon/hi6220.dtsi      | 8 ++++----
>  arch/arm64/boot/dts/hisilicon/hip05.dtsi       | 2 +-
>  arch/arm64/boot/dts/hisilicon/hip06.dtsi       | 6 ++----
>  arch/arm64/boot/dts/hisilicon/hip07.dtsi       | 9 ++-------
>  6 files changed, 16 insertions(+), 23 deletions(-)
> 

Thanks!
Series applied to the hisilicon arm64 dt tree.

Best Regards,
Wei
