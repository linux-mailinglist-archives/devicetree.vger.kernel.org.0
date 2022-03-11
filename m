Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0E4D4D6230
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 14:15:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348833AbiCKNQK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 08:16:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348829AbiCKNQJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 08:16:09 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E152D1C2F5A
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 05:15:06 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 870103F1F6
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 13:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647004505;
        bh=xOL5KCXZ0SGH69gklhacxZ/8cP5ta3EREGmzsgqE7XU=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Oe4f95+eH4PrR5SMpUk5Ll+zqFjnhczEbW1h8AGZM6VDgJ2/J3QzFpqVkZTM7Wo3o
         JN4jy7IeG9J8xEp60vgkXYC8ECnRrMMsutPxPTf2BRj0KbxQqxqmEH+cAPzkuu1dmO
         /nQf5bkmv6D6mBkHRY8X8U03iJBaz4tpXgO2u6+3b5jl3+yyVTjsMo15TnSt+kY9ru
         0REY7UYsvubVWW0JyphgURKX1LGJOjfQzBGS5CpU/loHif+i0ebVzQq4HF8/WJrGmP
         DHEtiRUrSrOMCi31bxq14wQ3FKYcpGE1Y14FKWUsSnm2Ct9v8jmL7MoCTfIE9/bQfP
         iubJmQNtGfLEg==
Received: by mail-ej1-f71.google.com with SMTP id hr26-20020a1709073f9a00b006d6d1ee8cf8so4864517ejc.19
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 05:15:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xOL5KCXZ0SGH69gklhacxZ/8cP5ta3EREGmzsgqE7XU=;
        b=57ja0w2isuTN8Wjn1MWvcQ37W5yqYP7Q9cBczhif1DqSqyEbsj2F/RCn7ijg7hJJKF
         O8FBVsD06PoWOt9rLmGT5LmXWr9SmcnWXkK2/0ixCLnJnGC5P8gPRvEfg9QBpooiHTEI
         ttqYtxQXVv66NlaYJOn2RggqzfmJWR0iHproQzL8t/DoqtERxRPZuCQ9b1E6t091hmUP
         bNlTsoAitgZLKQZf6JWkd0UEk15MW9+J1WyYfWKa0FZ+hEqFpGgeKJqbfHfluuocol5X
         hh/FQmZk1QMNzQGOve7WHvHBImH+dU7JXairjHLPLmXRCZyqmValPbKwBcYGh++3KaM/
         +dkg==
X-Gm-Message-State: AOAM5317H0B7n/lujxtZFWPBXY480IhVzscWpDBVtky1ADk2hjNtvX+u
        8C7Uv+P4W35fNf5aWDvm6b0dpZKMYcJcH+qYW0UxnthoB4D7TP4ZzTiy6WiKNPn9Sasj1vXbXBP
        s1JX3b3Vlb5PWen8cvvbueIIsoSZmepqofTrG3wY=
X-Received: by 2002:a17:906:d29b:b0:6da:9e4d:bb7c with SMTP id ay27-20020a170906d29b00b006da9e4dbb7cmr8769375ejb.155.1647004504120;
        Fri, 11 Mar 2022 05:15:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz5gVuyZQARyT4Ih8qZYzFfz39imMgrNy/pXVuj7BFtK1eQuAfgpviPhn6BRSfABhPjTA82iw==
X-Received: by 2002:a17:906:d29b:b0:6da:9e4d:bb7c with SMTP id ay27-20020a170906d29b00b006da9e4dbb7cmr8769338ejb.155.1647004503614;
        Fri, 11 Mar 2022 05:15:03 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id m26-20020a1709060d9a00b006da81fb9d72sm2917192eji.100.2022.03.11.05.15.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 05:15:03 -0800 (PST)
Message-ID: <f0e07031-2f4d-0625-201b-f65fa69107a5@canonical.com>
Date:   Fri, 11 Mar 2022 14:15:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH net-next v4 2/8] dt-bindings: phy: add the "fsl,lynx-28g"
 compatible
Content-Language: en-US
To:     Ioana Ciornei <ioana.ciornei@nxp.com>
Cc:     "davem@davemloft.net" <davem@davemloft.net>,
        "kuba@kernel.org" <kuba@kernel.org>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "kishon@ti.com" <kishon@ti.com>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Leo Li <leoyang.li@nxp.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        Hongxing Zhu <hongxing.zhu@nxp.com>
References: <20220311125437.3854483-1-ioana.ciornei@nxp.com>
 <20220311125437.3854483-3-ioana.ciornei@nxp.com>
 <f782bf45-3a69-18b4-de0b-f53669aec546@canonical.com>
 <20220311131324.uzayrpnp2mifox23@skbuf>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220311131324.uzayrpnp2mifox23@skbuf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/03/2022 14:13, Ioana Ciornei wrote:
> On Fri, Mar 11, 2022 at 02:09:05PM +0100, Krzysztof Kozlowski wrote:
>> On 11/03/2022 13:54, Ioana Ciornei wrote:
>>> +examples:
>>> +  - |
>>> +    soc {
>>> +      #address-cells = <2>;
>>> +      #size-cells = <2>;
>>> +      serdes_1: serdes_phy@1ea0000 {
>>
>> Comment from v3 still unresolved. Rest looks good.
> 
> Uhhh, I forgot to change the name. Sorry.
> 
> Do you have in plan to look at any other patch? I am asking just so I
> know when to send a v4.
> 

No, I am just checking the bindings. Maybe wait a bit before sending v4
to give other people chance to review :)


Best regards,
Krzysztof
