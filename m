Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 857F12C8373
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 12:48:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727718AbgK3LrI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 06:47:08 -0500
Received: from frasgout.his.huawei.com ([185.176.79.56]:2175 "EHLO
        frasgout.his.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725902AbgK3LrI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 06:47:08 -0500
Received: from fraeml744-chm.china.huawei.com (unknown [172.18.147.207])
        by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Cl3K24RMyz67KYt;
        Mon, 30 Nov 2020 19:43:34 +0800 (CST)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 fraeml744-chm.china.huawei.com (10.206.15.225) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 30 Nov 2020 12:46:26 +0100
Received: from [10.47.3.199] (10.47.3.199) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Mon, 30 Nov
 2020 11:46:25 +0000
Subject: Re: [PATCH V2 2/2] perf/imx_ddr: Add system PMU identifier for
 userspace
To:     Joakim Zhang <qiangqing.zhang@nxp.com>, <will@kernel.org>,
        <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>, <linux-imx@nxp.com>,
        <frank.li@nxp.com>
References: <20201130114202.26057-1-qiangqing.zhang@nxp.com>
 <20201130114202.26057-3-qiangqing.zhang@nxp.com>
From:   John Garry <john.garry@huawei.com>
Message-ID: <9468d155-f285-0d03-181b-fe378042f858@huawei.com>
Date:   Mon, 30 Nov 2020 11:46:00 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20201130114202.26057-3-qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.47.3.199]
X-ClientProxiedBy: lhreml704-chm.china.huawei.com (10.201.108.53) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/11/2020 11:42, Joakim Zhang wrote:
> The DDR Perf for i.MX8 is a system PMU whose AXI ID would different from
> SoC to SoC. Need expose system PMU identifier for userspace which refer
> to/sys/bus/event_source/devices/<PMU DEVICE>/identifier.
> 
> Signed-off-by: Joakim Zhang<qiangqing.zhang@nxp.com>

Reviewed-by: John Garry <john.garry@huawei.com>
