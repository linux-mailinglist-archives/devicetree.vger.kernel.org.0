Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 926E5316953
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 15:44:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbhBJOnw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 09:43:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230260AbhBJOns (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 09:43:48 -0500
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 907D4C061574
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 06:43:06 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DbMtt3bmBz1s15C;
        Wed, 10 Feb 2021 15:43:02 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DbMtt2V8Nz1t6pr;
        Wed, 10 Feb 2021 15:43:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id j2PLLnK46eqy; Wed, 10 Feb 2021 15:43:00 +0100 (CET)
X-Auth-Info: pV63lOyc1lp+cLad4dMWRdI3fWL+eSHH8SE9Gj+1Ld0=
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 10 Feb 2021 15:43:00 +0100 (CET)
Subject: Re: [PATCH v2 08/13] dt-bindings: imx: gpcv2: add support for
 optional resets
To:     Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
 <20201105174434.1817539-9-l.stach@pengutronix.de>
 <20201109201557.GA1690230@bogus>
 <5b6c97dc74ccb38107a50972427d091cdb114209.camel@pengutronix.de>
 <f652344c2c1664d541300dc71cc9ccd8aeaee292.camel@pengutronix.de>
 <928adc851c756f27562b0ae1847f08e2c857504d.camel@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
Message-ID: <52ab9a41-e89a-81d1-ff39-8d0b2c345459@denx.de>
Date:   Wed, 10 Feb 2021 15:42:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <928adc851c756f27562b0ae1847f08e2c857504d.camel@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/10/21 3:35 PM, Lucas Stach wrote:
> Am Montag, dem 30.11.2020 um 10:57 +0100 schrieb Lucas Stach:
>> Hi Rob,
>>
>> Am Dienstag, den 17.11.2020, 15:11 +0100 schrieb Lucas Stach:
>> Am Montag, den 09.11.2020, 14:15 -0600 schrieb Rob Herring:
>>> On Thu, Nov 05, 2020 at 06:44:29PM +0100, Lucas Stach wrote:
>>>> For some domains the resets of the devices in the domain are not
>>>> automatically triggered. Add an optional resets property to allow
>>>> the GPC driver to trigger those resets explicitly.
>>>>
>>>> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
>>>> ---
>>>>   Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml | 7
>>>> +++++++
>>>>   1 file changed, 7 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/power/fsl,imx-
>>>> gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-
>>>> gpcv2.yaml
>>>> index a96e6dbf1858..4330c73a2c30 100644
>>>> --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
>>>> +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
>>>> @@ -66,6 +66,13 @@ properties:
>>>>   
>>>>             power-supply: true
>>>>   
>>>> +          resets:
>>>> +            description: |
>>>> +              A number of phandles to resets that need to be
>>>> asserted during
>>>> +              power-up sequencing of the domain.
>>>> +            minItems: 1
>>>> +            maxItems: 4
>>>
>>> You need to define what each reset is.
>>
>> I can't. The resets belong to devices located inside the power domain,
>> which need to be held in reset across the power-up sequence. So I
>> have no means to specify what each reset is in a generic power-domain
>> binding. Same situation as with the clocks in this binding actually.
>>
>> Do you have any guidance on what do here? Is this binding okay with
>> this explanation, or do we need to do something different here?
> 
> Any pointers on how we can make some progress with this? It's blocking
> quite a bit of functionality of the i.MX8MM SoC being enabled upstream.

Not just MX8MM anymore, but also MX8MN and MX8MP , so it would be real 
helpful to unblock this.
