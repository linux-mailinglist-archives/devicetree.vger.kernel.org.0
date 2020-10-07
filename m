Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D270285AAE
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 10:42:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726598AbgJGImu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 04:42:50 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:48492 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726323AbgJGImu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 04:42:50 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C5nsN1Fc6z1r7lG;
        Wed,  7 Oct 2020 10:42:48 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C5nsN0Nggz1qrgR;
        Wed,  7 Oct 2020 10:42:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id T83v4yqXBIXr; Wed,  7 Oct 2020 10:42:46 +0200 (CEST)
X-Auth-Info: LUl0AwYZLW2wjfAFYJkd/Ml8BfRXgrUQNmRPgN2WS0U=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed,  7 Oct 2020 10:42:46 +0200 (CEST)
Subject: Re: [PATCH] dt-bindings: mxsfb: Add compatible for i.MX8MM
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>
References: <20201003224801.164112-1-marex@denx.de>
 <20201006211508.GA2853753@bogus>
 <16d91fb6-608f-a199-e3bf-99c5d7b85497@denx.de>
 <20201007004233.GA30598@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <cf3b64dc-9bc0-79cc-d850-b714bb1fba12@denx.de>
Date:   Wed, 7 Oct 2020 10:42:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201007004233.GA30598@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/7/20 2:42 AM, Laurent Pinchart wrote:
> Hi Marek,
> 
> On Wed, Oct 07, 2020 at 12:38:50AM +0200, Marek Vasut wrote:
>> On 10/6/20 11:15 PM, Rob Herring wrote:
>>> On Sun, 04 Oct 2020 00:48:01 +0200, Marek Vasut wrote:
>>>> NXP's i.MX8MM has an LCDIF as well.
>>>>
>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>> Cc: Fabio Estevam <festevam@gmail.com>
>>>> Cc: Guido Günther <agx@sigxcpu.org>
>>>> Cc: Lucas Stach <l.stach@pengutronix.de>
>>>> Cc: NXP Linux Team <linux-imx@nxp.com>
>>>> Cc: Rob Herring <robh+dt@kernel.org>
>>>> Cc: Shawn Guo <shawnguo@kernel.org>
>>>> ---
>>>>  Documentation/devicetree/bindings/display/mxsfb.txt | 1 +
>>>>  1 file changed, 1 insertion(+)
>>>>
>>>
>>> Acked-by: Rob Herring <robh@kernel.org>
>>>
>>> Though Laurent posted converting this to schema...
>>
>> Do you want me to rebase this on top of it or the other way around ?
> 
> Would it be OK if I rebased this on top of the conversion, and included
> it in the v2 of the mxsfb series ?

Yes, or just squash it into 2/7
