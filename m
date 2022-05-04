Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE704519CCC
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 12:19:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344735AbiEDKWr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 06:22:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245685AbiEDKWq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 06:22:46 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D888D26AFD
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 03:19:10 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E72C083EA4;
        Wed,  4 May 2022 12:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1651659548;
        bh=tkwBRcc829SiIxhHXV7+PD1r6cFxpBYbdG/+9N9RliY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=YHVCVaERR0MIRlKHAfIRVktCkS2feNRE1Qju87CcEbQap7xsKH7Tg9o1tHHb5ob/Z
         6GrXqLm/XRM8KvPWdMEi7gRKNLs7mENfkqY/deZTf9goXKgIUlE77h0rcZI5pg9aqk
         suJeYQOa62DgO3lPFV6h6Tp++GDUjE+7/csYwa5KCtJILGZTdDD6LVvz2apo8lV6Oc
         IyiW73L70vOfMEy2WdR0f20se2bqBxsnH/1g8DetPODk53ok29kB6R0o59QPya9hO/
         hImfsFnp7/8naSQ/+PVf1TL6rKmh5L8x17hBsIT+tpmjXhNXq/KH4vUpK5J6zInX/H
         /g18BNJBGr+6A==
Message-ID: <7ec29583-ba0f-a5df-1563-6ee7c9a00849@denx.de>
Date:   Wed, 4 May 2022 12:19:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 00/11] consolidated i.MX8MP HSIO/MEDIA/HDMI blk-ctrl
 series
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Paul Elder <paul.elder@ideasonboard.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
 <8c29464ef118aae8a1ac2af28d4906a346b6028a.camel@pengutronix.de>
 <YnI9yqgYnCBN+2Qp@pendragon.ideasonboard.com>
 <a9d995b623fa893e8a21fd04c8c1b3e97c0c6bd2.camel@pengutronix.de>
 <YnJQsU7AwxftGyUh@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <YnJQsU7AwxftGyUh@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/4/22 12:08, Laurent Pinchart wrote:
> Hi Lucas,

Hello all,

> On Wed, May 04, 2022 at 10:56:05AM +0200, Lucas Stach wrote:
>> Am Mittwoch, dem 04.05.2022 um 11:48 +0300 schrieb Laurent Pinchart:
>>> On Wed, May 04, 2022 at 10:27:01AM +0200, Lucas Stach wrote:
>>>> Hi Shawn,
>>>>
>>>> there were some comments about the implementation of the HDMI blk-ctrl,
>>>> which I don't know in which way to resolve, yet. In the meantime it
>>>> would be very helpful if you could take all but the last patch of this
>>>> series into your tree. They are all reviewed and tested and starting to
>>>> block further work on some parts of the i.MX8MP bringup.
>>>
>>> Can we decouple the HDMI blk-ctrl from the rest, to at least upstream
>>> the MEDIA blk-ctrl ? That part is ready.
>>
>> I've structured the series in such a way that the HDMI part is
>> decoupled already. All that needs to be done is dropping the last
>> patch.
> 
> I had misread you and thought you asked Shawn to only apply the last
> patch. Indeed, I second the request to get the series applied without
> the last patch.

I agree with Lucas and you too, getting the first 10 patches in would be 
most helpful.
