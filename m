Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CF962825C8
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 20:08:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725809AbgJCSIO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 14:08:14 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:37891 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725804AbgJCSIO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 14:08:14 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C3Zbb2kHkz1qrLx;
        Sat,  3 Oct 2020 20:08:11 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C3Zbb1lJhz1qvJq;
        Sat,  3 Oct 2020 20:08:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id khybPwJbnTLZ; Sat,  3 Oct 2020 20:08:08 +0200 (CEST)
X-Auth-Info: azbZnp4Yfo5DMQiIT5q/2CY+PYXRoKAB1cqy/MWwT78=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sat,  3 Oct 2020 20:08:08 +0200 (CEST)
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
To:     Adam Ford <aford173@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <CAHCN7xKjWEwQr9y0QLrR6KVT=ut=v=coqt4beAvrz1kQSGbX1g@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <ae0fcb5f-3df3-aebd-c239-6683438ce374@denx.de>
Date:   Sat, 3 Oct 2020 20:08:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAHCN7xKjWEwQr9y0QLrR6KVT=ut=v=coqt4beAvrz1kQSGbX1g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/3/20 8:01 PM, Adam Ford wrote:
> On Wed, Sep 30, 2020 at 10:50 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> 
>> Hi all,
>>
>> this adds power domain support for the i.MX8MM to the existing GPCv2
>> driver. It is not complete yet, as it is still missing the VPU and
>> display power domains, as those require support for the BLK_CTL
>> regions of the VPUMIX and DISPLAYMIX domains. A Linux driver for
>> those regions on the i.MX8MP is currently under development and we
>> plan to use this as a template for the i.MX8MM when the dust has
>> settled. The changes in this series have been made with this in
>> mind, so once the BLK_CTL driver exists it should be a matter of
>> hooking things together via DT, with no further changes required on
>> the GPCv2 driver side (famous last words).
>>
>> Special thanks to Marek Vasut who helped with testing and debugging
>> of early versions of this code.
>>
>>
> I fully support trying to get this done.  I tried to push something this
> before, but I was turned down by someone at NXP [1].  I have both a Mini
> and Nano board at my disposal, so if Nano support isn't there yet, and this
> driver patch gets accepted, I'll gladly work to help and/or test
> functionality.
> 
> [1] - https://lkml.org/lkml/2020/4/30/540

Note that the [1] is using poorly defined and buggy SMC interface to
TFA, I agree with Lucas that is not the way to go for MX8M. This
patchset is not using that SMC interface at all, but rather lets Linux
do the power domain handling, which I think is much better.
