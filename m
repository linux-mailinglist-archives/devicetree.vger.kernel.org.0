Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE7962868CB
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 22:03:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727760AbgJGUDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 16:03:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726138AbgJGUDf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 16:03:35 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 748D1C061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 13:03:35 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C64yr28C2z1sNdM;
        Wed,  7 Oct 2020 22:03:32 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C64yr12Yxz1qsnk;
        Wed,  7 Oct 2020 22:03:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id r939VdvBvc8X; Wed,  7 Oct 2020 22:03:30 +0200 (CEST)
X-Auth-Info: lWUAK/oFWBuiTf3NAPIXpWBNx0gHn95iJ83HuQZDYjY=
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed,  7 Oct 2020 22:03:30 +0200 (CEST)
From:   Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
To:     Adam Ford <aford173@gmail.com>
Cc:     arm-soc <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Abel Vesa <abel.vesa@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>
References: <20201003224555.163780-1-marex@denx.de>
 <CAHCN7xKyRcZQcZunw6nLpWKWNXWJs4V_fPoQbijVrv6LbuFdYQ@mail.gmail.com>
Message-ID: <bb982b4f-3510-6663-0e4c-66a7c34b8d62@denx.de>
Date:   Wed, 7 Oct 2020 22:01:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAHCN7xKyRcZQcZunw6nLpWKWNXWJs4V_fPoQbijVrv6LbuFdYQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/7/20 9:52 PM, Adam Ford wrote:
> On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
>>
>> Add the i.MX8MM BLK_CTL compatible string to the list.
[...]
>> ---
>>  Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
> 
> Is there a DTSI change part of this patch?  I was going to try to test
> it, but  I am not seeing a change to the imx8mm.dtsi, and I am not
> sure where to put the node.

There are in fact quite a few other pieces you need to have in place,
this patchset in itself is not particularly useful, it is just infra for
the LCDIF and MIPI DSIM block control. You might want to wait until they
all land in next and test that result.
