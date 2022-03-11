Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54BBD4D6232
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 14:15:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348815AbiCKNQ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 08:16:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235260AbiCKNQ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 08:16:27 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D752B1C2F6A
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 05:15:24 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B54AC3F5FC
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 13:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647004523;
        bh=TN0/6qCY/tJQXZh6cFY1jeGVIfLosWp/aDkoemInbFs=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=lavVCKjyr1uU5ETjMKKQVZpIMUbv7UtnT1MtQX21YPWVOLfV6KkmITYDZBIkvKLII
         nW64LWWQ+9I2zgp6mCntXTFKD3bnK0hFh8uQ4HHpWidthjplSNf/khbg5NagTF2Hpp
         41JhB5FKbXKbs0LSSYO7+gIYJWtOmPjwbSJ0D7mjWNbXhhV6tg0N+R0K/uXOMRk0e5
         8WS6P2dV+uWEe5RqN80Cme7oigDlYbPdAaz4HIapuqbt1MkM6PK9f6d3KJGopY/V/y
         H/c6Sq1oX1N5y6hecLxjt/JVpWvNAiHlrRt9K1EzAyad4Iy7Vo9hvTbXUapTlJ9Slx
         A4vi2/wK9y7ag==
Received: by mail-ed1-f72.google.com with SMTP id l14-20020a056402344e00b0041593c729adso4852979edc.18
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 05:15:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TN0/6qCY/tJQXZh6cFY1jeGVIfLosWp/aDkoemInbFs=;
        b=Vp4uzfVUtxvsFS3XFQjZt+x6jvELYPpwSQNmFtna6S88HYEo68T6Vx3Wr6kEP9DyPI
         STbkDBEUlKTFIg8GwnQWCgwpjrU4DRbDPE85p4k12a7RhXnT7IOH58ifmu6Ttxb3w7/i
         v4mhpZOK5fni9RXYz0cwAVyNhD+SD1KEN6HVpyOJmGva+GZdGQYrySRux0Kk5OLx2+R2
         LPoUP5YDTrwhRNLyRcpgjuJg3aF5xqDCXwPDJCt4YUHYedaHecp53s2UgXCebQh80Nmj
         o3LDujxIaRRzQ8+F02E3vqhcGZfW6QhDI7FFJOB90OaiUMSzY1CGSiMKuZy6qros7eB+
         TbtQ==
X-Gm-Message-State: AOAM5313poRkxDg9K/YrioCM3jAcQwV+dTbgcwqIgPD6IsM8yqKqN4X8
        PP2WDf6+PSeQS8eCP4VW9Aqrmvdcn38zGehGN2vbOh8l6kL5S5pM+vdYsNly4Mr8rqii03VxnGB
        PQi2MmW6CEeHF+vsOvoY2OnQv2M4SMt4ELydg8/8=
X-Received: by 2002:a17:906:3ec7:b0:6d6:e52b:b with SMTP id d7-20020a1709063ec700b006d6e52b000bmr8280064ejj.521.1647004523287;
        Fri, 11 Mar 2022 05:15:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxi3gklXV/fUKCMh5Si2xnpWTXW2rKNoLHSWBdSlOw8X+knNmCFTl0zQOg4mxoJY2xxUJgSfg==
X-Received: by 2002:a17:906:3ec7:b0:6d6:e52b:b with SMTP id d7-20020a1709063ec700b006d6e52b000bmr8280045ejj.521.1647004523117;
        Fri, 11 Mar 2022 05:15:23 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id w19-20020a05640234d300b00416baf4cdcasm1890685edc.48.2022.03.11.05.15.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 05:15:22 -0800 (PST)
Message-ID: <388e0ded-57ed-27bd-ae05-b18b943fbc32@canonical.com>
Date:   Fri, 11 Mar 2022 14:15:21 +0100
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
        autolearn=ham autolearn_force=no version=3.4.6
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

With the node name "phy":

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
