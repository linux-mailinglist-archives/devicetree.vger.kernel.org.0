Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64CA1562378
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 21:51:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233279AbiF3Tug (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 15:50:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236405AbiF3Tug (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 15:50:36 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D232143EF7
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:50:34 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B921A843D1;
        Thu, 30 Jun 2022 21:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1656618632;
        bh=t3edvrBc5ncxUU2vc3gtlwOKIuTYYnqtG/mMyVUOLCA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=dIFFUBo6h6+5fAcP9Jcwz2fopbPGevtwsk8RQfrG7+uiNx7Ptl0aqehD2Y+GFwugd
         WKTrggrc//kP6khRjIb8qXWtrTRFW8eDwY6S9C0aJOdPnkCjaGbzobeIt0k0dIY4TN
         E5ysjC0Q2RzIrqr8Zw85XQcly2qSKv0kNUdvh6Tkk3WdqxOro9h6haQ6/LrgBJtZ04
         vX5mlrv6a9OolAE6QgyoChN1TOas6e1mg4koEAq/xdh2abVde/7dMEByZCPenMXrM5
         0KG48PXHWa9xgWoHXfB+FM3Q/5qENl7UZUuS2DSduDX6n1bkhM6O+Uqg/H7M9KBdmO
         YAB6Y1JRnum3Q==
Message-ID: <247d48ae-d22f-4adc-07c0-74dbccfc9390@denx.de>
Date:   Thu, 30 Jun 2022 21:50:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT
 example
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
References: <20220630173922.92296-1-marex@denx.de>
 <f0366170-c1b6-9573-3e9c-9b1ace2dfbad@linaro.org>
 <b6badccf-8910-da26-bbcc-1302d957a2bd@denx.de>
 <27495fa3-b4ae-7502-45f8-5eb4c5e36640@linaro.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <27495fa3-b4ae-7502-45f8-5eb4c5e36640@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/30/22 21:31, Krzysztof Kozlowski wrote:

Hi,

[...]

>>>> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>>>> index b246d8386ba4a..05a19d3229830 100644
>>>> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>>>> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>>>> @@ -18,11 +18,18 @@ properties:
>>>>      compatible:
>>>>        items:
>>>>          - const: fsl,imx8mp-media-blk-ctrl
>>>> +      - const: simple-mfd
>>>
>>> Not really... simple-mfd means devices is really simple and you just use
>>> it to instantiate children. However this is not simple - it's a power
>>> domain controller with several clocks and power domains as input.
>>>
>>> It's not a simple MFD, but a regular device.
>>
>> I don't understand this comment. The LDB bridge is literally two
>> registers with a few bits in this media block controller register area.
>> Can you expand on why the simple-mfd is unsuitable and what should it be
>> instead ?
> 
> Looking at the bindings you have there 10 power domains, 10 input clocks
> and a domain provider. The driver is also not that simple which is
> another argument that this is not simple-mfd. Simply, it is not simple.
> 
> What I meant, is that probably you should populate children from the
> driver instead of adding simple-mfd compatible. Once you add simple-mfd,
> you cannot remove it and children cannot use anything from the parent.

No, I don't think so.

The block controller provides those 10 power domains, those are separate 
things controlled by separate registers within the block control 
register space.

This LDB bridge are two more completely unrelated registers which have 
nothing to do with those power domains . They are just in the same 
register block because they had to put those registers somewhere. And 
they are mixed literally in the middle of the register block, because 
there was space it seems. Hence the simple-mfd is I think the right 
thing here.
