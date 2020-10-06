Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0E7A2854AD
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 00:38:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726645AbgJFWi4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 18:38:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726137AbgJFWiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 18:38:55 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D351C061755
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 15:38:55 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C5XSX1sClz1rv9g;
        Wed,  7 Oct 2020 00:38:52 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C5XSW6YxPz1qql9;
        Wed,  7 Oct 2020 00:38:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id ABVKqHAZamke; Wed,  7 Oct 2020 00:38:50 +0200 (CEST)
X-Auth-Info: CsLfSM+tnMCckdGepalMEaPqQlKK9EF+AaeL4ZPldz0=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed,  7 Oct 2020 00:38:50 +0200 (CEST)
Subject: Re: [PATCH] dt-bindings: mxsfb: Add compatible for i.MX8MM
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20201003224801.164112-1-marex@denx.de>
 <20201006211508.GA2853753@bogus>
From:   Marek Vasut <marex@denx.de>
Message-ID: <16d91fb6-608f-a199-e3bf-99c5d7b85497@denx.de>
Date:   Wed, 7 Oct 2020 00:38:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201006211508.GA2853753@bogus>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/6/20 11:15 PM, Rob Herring wrote:
> On Sun, 04 Oct 2020 00:48:01 +0200, Marek Vasut wrote:
>> NXP's i.MX8MM has an LCDIF as well.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Guido Günther <agx@sigxcpu.org>
>> Cc: Lucas Stach <l.stach@pengutronix.de>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> ---
>>  Documentation/devicetree/bindings/display/mxsfb.txt | 1 +
>>  1 file changed, 1 insertion(+)
>>
> 
> Acked-by: Rob Herring <robh@kernel.org>
> 
> Though Laurent posted converting this to schema...

Do you want me to rebase this on top of it or the other way around ?
