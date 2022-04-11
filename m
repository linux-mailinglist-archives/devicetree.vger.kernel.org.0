Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7ADCD4FC7A8
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 00:25:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234159AbiDKW10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 18:27:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbiDKW1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 18:27:25 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 340E2140F1
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 15:25:09 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id EEACF83ABE;
        Tue, 12 Apr 2022 00:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649715905;
        bh=yW5zcwopKy57mZCpilVjn7JXDbDMso804yPPSKcRi0U=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=0XMoCsUKhjFfDcCBDB2MMWWDrwIvVUh8SpnDtteGE2cs02qVxZP0M1A8AFU44PANl
         HAOqlmaVeKbTPnJhkvSR8QsoHpYuBljX4n3sQ6ykImfWdFGakZyMQIZ8AkqGp0XEey
         PeMa86Kr1AhvxK6YU8QQ07Q9f4E4UDONTkVrKd0e5H8J8QhedF2OjmNRROn1DqK7wW
         oNeoOSb0mO8IajWMf1hL5BXAtJ1jzuyN5D78agC6j2p1Dhuaq1qP3xItywhPZ2wxBe
         rgCH67PFWXS96EG1BXRBKj80BG9ApmpGjrcLrrBHn38KmK0NnJHbRi+/ubmVEeVoBb
         ARgvTzLQspKaA==
Message-ID: <87480099-7962-42a2-5e3b-0ac8f06a9aca@denx.de>
Date:   Tue, 12 Apr 2022 00:25:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 02/11] soc: imx: add i.MX8MP HSIO blk-ctrl
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
 <20220406153402.1265474-3-l.stach@pengutronix.de>
 <e99520af-7b32-f1a4-7ebc-eb66611b850f@denx.de>
 <e60a4bcad472411a8f82546b57d8d375ed8cbda8.camel@pengutronix.de>
 <25744e36-63ee-7669-067a-a671a5f461d6@denx.de>
 <e60c0914467a16b01100db0af99aae47674b4fdc.camel@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <e60c0914467a16b01100db0af99aae47674b4fdc.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/11/22 18:46, Lucas Stach wrote:
> Am Montag, dem 11.04.2022 um 00:11 +0200 schrieb Marek Vasut:
>> On 4/7/22 11:12, Lucas Stach wrote:
>>> Am Donnerstag, dem 07.04.2022 um 01:43 +0200 schrieb Marek Vasut:
>>>> On 4/6/22 17:33, Lucas Stach wrote:
>>>>
>>>> [...]
>>>>
>>>>> +static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
>>>>> +	.max_reg = 0x24,
>>>>
>>>> Doesn't the HSIO_BLK_CTL go up to 0x10c ?
>>>
>>> Technically yes, but there is already a driver for the USB glue
>>> (fsl,imx8mp-dwc3) that occupies the USB registers at and above 0x100.
>>
>> Shouldn't that imx8mp-dwc3 glue code be switched to syscon and access
>> the registers through this driver then ?
> 
> I don't see why this would be needed. Registers up to 0x24 are a mixed
> bag of blk-ctrls, but the registers above 0x100 are only USB wakeup
> related, I don't see the blk-ctrl ever wanting to touch them.
> 
> I think the current split is fine. Just because the RM lumps those
> register regions together into the HSIO blk-ctrl description doesn't
> mean we need to cover them all in a single syscon.

I guess we can also always fix this up later, OK.
