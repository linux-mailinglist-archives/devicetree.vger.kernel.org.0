Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFA015FA95E
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 02:35:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbiJKAfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 20:35:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbiJKAfA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 20:35:00 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F60EDEE8
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 17:34:44 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-1322d768ba7so14221528fac.5
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 17:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LJjVqbboWYdeCKeMQuLkodmDdzu0yyCSYEqTlbzbVRI=;
        b=Xvz3j6i5fTE8KTxzjkABxFeQkpDHWB0uAWYo+d1+DMfAh2qCQzlpkjonfBABFG0E17
         JTbhogzKdy/6S6qAgJ025swkKkD7eCHWmGafRFiOi6BipouGFWe6YhgDA5XquYUAlhRT
         y90odiClFYwAW58gwQmA0sGPTWNtEzNQxPp4c/OE6k55852P/c1gimRu/2I7t95T6nkB
         A1YNJk5vKMX6FKUerh83PLsvEFjL1Ha2bZMmxl1J2GqhSLBg0hF5UTQFCe3Z/rGFBPJQ
         d3WUsfvSDDmUhlH3xP8At4I71ux39iZhR2zbhYSkp+AiayQXIff8KS0TqRIPZc9++VS8
         UZwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LJjVqbboWYdeCKeMQuLkodmDdzu0yyCSYEqTlbzbVRI=;
        b=WVtKQdthuhJWmBaFD0QU0LESEm70Wgksi6jTWZ18nbHgcBSY8+W1tMBY3NYGDTkqEC
         RG+2qUFJhQXkVVY486wM8X1BY01EithsNb2nrP1YFBQkqvmlOR+mn5KJe0IuazB3mTcp
         HLchjoZfelxVaxt6yxwoXqAnrzaNMNN8wrHEuH7BwmIi56/dElQMEya8nlwoF9P8ETs1
         +uZMWNn5/EsEKLbtUyEG5RBlwufn2sdv8YmhR/ByZzZmMQE/5P1tvQmJegGmCnM4Tgwp
         I6BlV+6WeJv8ayZB8UgLehIcRQCpDXOiVkSPaE0ABpplxkHZjUyAi0DdxM/dM+I4U+Td
         09Og==
X-Gm-Message-State: ACrzQf3RWjYJHGh9ZpD+I8U8a1V+gdTBINV0sOLUfQde6t56CTF4GdCs
        OdJxjUbw1ayN0ug16KBg2zD64X0IDfW0hL44DpuF2Q==
X-Google-Smtp-Source: AMsMyM4KQWi8vwJl1/pT84jSMXjp+XVOypl2e/yHBtUEa5A9PcX7sItxxEhQkcsuFK1jfekt3F1MGHFNm+khnoq5FZw=
X-Received: by 2002:a05:6870:c082:b0:12b:542c:71cf with SMTP id
 c2-20020a056870c08200b0012b542c71cfmr16344065oad.45.1665448473214; Mon, 10
 Oct 2022 17:34:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAPv3WKcW+O_CYd2vY2xhTKojVobo=Bm5tdFdJ8w33FHximPTcA@mail.gmail.com>
 <20221003170613.132548-1-mig@semihalf.com> <5ea6145b-ed59-8deb-df7c-57e26e4ecb20@linaro.org>
In-Reply-To: <5ea6145b-ed59-8deb-df7c-57e26e4ecb20@linaro.org>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Tue, 11 Oct 2022 02:34:24 +0200
Message-ID: <CAPv3WKcSmDcHx-VGwiSgrXSGVOHMkpH2sjuG0NfsUL-AhmbpZA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: net: marvell,pp2: convert to json-schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     =?UTF-8?Q?Micha=C5=82_Grzelak?= <mig@semihalf.com>,
        davem@davemloft.net, devicetree@vger.kernel.org,
        edumazet@google.com, krzysztof.kozlowski+dt@linaro.org,
        kuba@kernel.org, linux-kernel@vger.kernel.org,
        linux@armlinux.org.uk, netdev@vger.kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, upstream@semihalf.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pon., 3 pa=C5=BA 2022 o 19:29 Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> napisa=C5=82(a):
>
> On 03/10/2022 19:06, Micha=C5=82 Grzelak wrote:
> > On 02/10/2022 10:23, Marcin Wojtas wrote:
> >> niedz., 2 pa=C5=BA 2022 o 10:00 Krzysztof Kozlowski
> >> <krzysztof.kozlowski@linaro.org> napisa=C5=82(a):
> >>>
> >>> On 01/10/2022 17:53, Micha=C5=82 Grzelak wrote:
> >>>> Hi Krzysztof,
> >>>>
> >>>> Thanks for your comments and time spent on reviewing my patch.
> >>>> All of those improvements will be included in next version.
> >>>> Also, I would like to know your opinion about one.
> >>>>
> >>>>>> +
> >>>>>> +  marvell,system-controller:
> >>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
> >>>>>> +    description: a phandle to the system controller.
> >>>>>> +
> >>>>>> +patternProperties:
> >>>>>> +  '^eth[0-9a-f]*(@.*)?$':
> >>>>>
> >>>>> The name should be "(ethernet-)?port", unless anything depends on
> >>>>> particular naming?
> >>>>
> >>>> What do you think about pattern "^(ethernet-)?eth[0-9a-f]+(@.*)?$"?
> >>>> It resembles pattern found in net/ethernet-phy.yaml like
> >>>> properties:$nodename:pattern:"^ethernet-phy(@[a-f0-9]+)?$", while
> >>>> still passing `dt_binding_check' and `dtbs_check'. It should also
> >>>> comply with your comment.
> >>>
> >>> Node names like ethernet-eth do not make much sense because they cont=
ain
> >>> redundant ethernet or eth. AFAIK, all other bindings like that call
> >>> these ethernet-ports (or sometimes shorter - ports). Unless this devi=
ce
> >>> is different than all others?
> >>>
> >>
> >> IMO "^(ethernet-)?port@[0-9]+$" for the subnodes' names could be fine
> >> (as long as we don't have to modify the existing .dtsi files) - there
> >> is no dependency in the driver code on that.
> >
> > Indeed, driver's code isn't dependent; however, there is a dependency
> > on 'eth[0-2]' name in all relevant .dts and .dtsi files, e.g.:
> >
> > https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/armada-=
375.dtsi#L190
> > https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/marve=
ll/armada-cp11x.dtsi#L72
> >
> > Ports under 'ethernet' node are named eth[0-2], thus those and all .dts=
 files
> > including the above would have to be modified to pass through `dtbs_che=
ck'.
>
> I didn't get it. What is the "dependency"? Usage of some names is not a
> dependency... Old bindings were not precising any specific name of
> subnodes, therefore I commented to change it. If the DTS already use
> some other name, you can change them if none of upstream implementations
> (BSD, bootloaders, firmware, Linux kernel) depend on it.
>

None of the PP2 drivers depends on nodes' names, so indeed we can
safely modify that and update the relevant .dtsi files. One comment
here, though - if we switch to e.g. ethernet-port@0 subnode, there is
a requirement of specifying a 'reg' property: See below warning:

Documentation/devicetree/bindings/net/marvell,pp2.example.dts:36.27-41.13:
Warning (unit_address_vs_reg):
/example-0/ethernet@f0000/ethernet-port@0: node has a unit name, but
no reg or ranges property

I think this convention is good and my idea is to use 'reg' property
as a port ID (like the DSA does) - it would become required. However,
we should retain 'port-id' to maintain backward compatibility. Once
this schema gets accepted, I'll prepare a driver update.

Best regards,
Marcin
