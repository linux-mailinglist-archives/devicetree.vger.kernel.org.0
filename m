Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27CD727EF39
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:30:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727438AbgI3QaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:30:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725355AbgI3QaW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:30:22 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF3BFC061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 09:30:21 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C1hZ444p9z1rwDm;
        Wed, 30 Sep 2020 18:30:20 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C1hZ43935z1sM9S;
        Wed, 30 Sep 2020 18:30:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id jmDGo7aLQh1y; Wed, 30 Sep 2020 18:30:19 +0200 (CEST)
X-Auth-Info: BVpmid7x3L/ixvnYC/cineOdvfLyZq+sEA3G3bDQP9o=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 30 Sep 2020 18:30:18 +0200 (CEST)
Subject: Re: [PATCH 07/11] soc: imx: gpcv2: add support for optional resets
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-8-l.stach@pengutronix.de>
 <eecb12db-cf2f-c7bb-1da7-803f77e05e64@denx.de>
 <f86ecad9d46fa5ca2d92e314a9e3981ae4384da1.camel@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <da60080c-8a2f-87f7-90cf-31bdfa338ef8@denx.de>
Date:   Wed, 30 Sep 2020 18:30:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f86ecad9d46fa5ca2d92e314a9e3981ae4384da1.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/30/20 6:23 PM, Lucas Stach wrote:
> On Mi, 2020-09-30 at 18:15 +0200, Marek Vasut wrote:
>> On 9/30/20 5:50 PM, Lucas Stach wrote:
>>> Normally the reset for the devices inside the power domain is
>>> triggered automatically from the PGC in the power-up sequencing,
>>> however on i.MX8MM this doesn't work for the GPU power domains.
>>
>> One has to wonder whether the VPU power domain has similar hardware bug
>> on the MX8MM ?
> 
> Nope the VPUs have separate reset bits in the BLK_CTL. So after
> powering up the VPUMIX domain one can assert/deassert reset to the
> individual VPU cores.

Is there any documentation for the BLK_CTL on MX8MM ? I can't find any
in the official RM.

And also, the GPUs need to use SRC reset, does the BLK_CTL reset do the
same "degree" of reset to the VPU as the SRC reset does to the GPUs ?
