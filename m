Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 638676C58D0
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 22:32:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229766AbjCVVcM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 17:32:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjCVVcL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 17:32:11 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B68FD12F06
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 14:32:09 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id x3so78557760edb.10
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 14:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679520728;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qen8xenv6ibJ1yxc7O8FeAPEdE/IGhe2CAZbDoaA2Yw=;
        b=pJWBm365G0ucmCXDtomGbsOzkhD6dfIOt8XNOXsVEOdz6Y4VWo8u3NawA5Ah0fdyeF
         uRSpcpgnKyCLYIqOFebVa33d9Z724INYAjCtzmi8yqxAz7OSoA8cOiMq4KiUfbqexCKh
         ABYnl38ogwmYHj51zXqjZJ7g6vD2zSb6qvWlc561k4J7rL7GZL5I4BfggBUfdCe2wDOu
         shFaAgKrRrS6JYWa8FX808m4HbU2XnqXFfR8gxzQFtlQcx8sUocybMvbGy34iaLBKLnr
         ULHXD1WXnEXjArdF1JRP3d3yauWupC/LBzr6ySskDfIMguEsAk3IN+dEW/CrejyZBeU4
         5Llw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679520728;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qen8xenv6ibJ1yxc7O8FeAPEdE/IGhe2CAZbDoaA2Yw=;
        b=SKHQFPhXpgZ+C7cJAS0WtoY9LtQ6snZ9kMyTkqn3+G/Dm6VVuEW9ZvuLISMNUxHUv7
         eHrj7dvJ5RXixtY52dbFf+0S8bAmPFRcvf8ISrQnCcvMMn7jf36pUR0jyBfFqBmQK0lW
         Bl8Bcl0mT+/+ACs3RrtVp3P7qkG0Q9bD+GsmjDK7greFXASMLpSnfBvm0Wps9zQo1zEH
         YKBHHWUIUAPHCY9mYNb461uiiqMf3QRPH6u+T4Vzoe2QxSfKLd43uNcnXQhV//95kf39
         XvjHxdsTFZ1CY0qkwshu7IINznI3kvmS+7dee+qCmvUZ4UcsFOBxK6CupIH+BmZ2AkdA
         D1bg==
X-Gm-Message-State: AO0yUKW32fJUsINskoilmAW4HDMwUuyPfLGme5j5HlfgFDe5WpipXqnv
        q6QZCBql6GuF/1vHnYvvQqxiSg==
X-Google-Smtp-Source: AK7set9EsUaVSM/lV0gHtIylqldE7j/M2EfDBQIekAYutAtxNexPVmBPKPopYckUm1FAXEtVd9mcmQ==
X-Received: by 2002:a17:907:a042:b0:92f:2c64:9d43 with SMTP id gz2-20020a170907a04200b0092f2c649d43mr8641755ejc.68.1679520728264;
        Wed, 22 Mar 2023 14:32:08 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:626d:5729:6e71:4c22? ([2a02:810d:15c0:828:626d:5729:6e71:4c22])
        by smtp.gmail.com with ESMTPSA id a20-20020a17090680d400b008def483cf79sm7640395ejx.168.2023.03.22.14.32.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 14:32:07 -0700 (PDT)
Message-ID: <b5d67af0-ed08-e243-2c0c-92f1f002e552@linaro.org>
Date:   Wed, 22 Mar 2023 22:32:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [EXT] Re: [PATCH v3 1/3] dt-bindings: usb: cdns-imx8qm: add
 imx8qm cdns3 glue bindings
To:     Frank Li <frank.li@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
References: <20230321151951.2784286-1-Frank.Li@nxp.com>
 <20230321151951.2784286-2-Frank.Li@nxp.com>
 <1ce3bf91-6bef-b4c1-1ec9-3a345518efeb@linaro.org>
 <AM6PR04MB483828FC1083E3C98930DF6488869@AM6PR04MB4838.eurprd04.prod.outlook.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM6PR04MB483828FC1083E3C98930DF6488869@AM6PR04MB4838.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 15:34, Frank Li wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Wednesday, March 22, 2023 2:32 AM
>> To: Frank Li <frank.li@nxp.
>>> +      - const: usb3_aclk
>>> +      - const: usb3_ipg_clk
>>> +      - const: usb3_core_pclk
>>> +
>>> +  assigned-clocks:
>>> +    items:
>>> +      - description: Phandle and clock specifoer of
>> IMX_SC_PM_CLK_MST_BUS.
>>
>> Drop useless pieces so "Phandle and clock specifoer of " and name the
>> hardware, not the syntax.
>>
>>> +
>>> +  assigned-clock-rates:
>>> +    items:
>>> +      - description: Should be in Range 100 - 600 Mhz.
>>
>> That's better but I still do not understand why do you need it in the
>> bindings. You never actually answered this question.
> 
> I am not sure 100% sure the reason. 
> I think difference system target's  axi bus frequency is difference,   
> And just one time work, needn't software to manage it.
> Following other driver's code style may be another reason. 

That's the reason of heaving it in DTS. But I am asking about bindings.
You do understand you define here interface?

Best regards,
Krzysztof

