Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B7C24ECA35
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 18:59:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349147AbiC3RBA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 13:01:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349135AbiC3RA7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 13:00:59 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4052C1C105
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 09:59:06 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id bh17so3294475ejb.8
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 09:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=5UUDdyk9SDnaGYbeBT64IjOg2Ww9NGOC3cXdAlooUxU=;
        b=rSyqBqT5+fEKgy/ia4SY9vrK5/m2gyjhZEUHjDN2GkD6Ofr07QQKAaHuhYsg1xPXY6
         xt/5Y2iq0h7M8cyWmq7gDeo+8kqcLSm1lotN7KZWScVRvodmkNVjVxfznezouh4yzY4o
         bB97/1EwyDAjHTHoyKZWGDl8pnoyC9Zu/z7/5RFxQUO/rVSfbBxG2hTbm1uNIf6O1C+6
         u17DoDP51ZMJAI1jJjqvaH4WvNYgxfP10CSC5Gfw7eoE9jZxqRMxEdP1nswQ5J0WpqYC
         nOyhlNB0QYkLxuKGCnMWwoBsGPGR4IzKMbWoC+6EfvWLC6pqfZiCeLAvaqELnR9gqTs5
         1Nzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=5UUDdyk9SDnaGYbeBT64IjOg2Ww9NGOC3cXdAlooUxU=;
        b=SB+LrysRHDzCipduhpiMOovc47zW/JtBMgELrVgoxq0cdk43CIHSWeSkJmtwj4tR37
         Ytot/zKnt9KcNfiA2u80wsvPdIUzFaLZBAtssfzkReLZ7ZNyxCoyt3ozXmgv3gCh2jtn
         cHeh+rSpSHVK+kZiJYhpaUyBqLzUMCXC70TsqjuNctTgdHQ3DCnP+NTZD9XpPWtB+xxi
         LGC9H0rK/zB5BYknLMmgdO+kpJZCEKqnCnqHojtjM+qlrMYxOzbYA6W4AMvs+tLb//g+
         7Gxk4I0++npOAxmFk/d3poJOk4Huo4yVoLdwKl/Ln4GIjc31fEJWXgnSE8fgSlc4BvFt
         uAsQ==
X-Gm-Message-State: AOAM531gpaHY2w5Ugwq9HBQ+5VVa7V1wZBqJxCF/L2UO95u+pOA2LA38
        JnBhOdUt7DYTEPbD4kN9Ez9YEg==
X-Google-Smtp-Source: ABdhPJzY0e2EODpHuTzZusO4GWG/s65+l9xnzPNadiFVobnLwteCbVoE7kNArSQFDfEGLDFxXtCjaA==
X-Received: by 2002:a17:907:2cc6:b0:6e0:3113:6e9a with SMTP id hg6-20020a1709072cc600b006e031136e9amr488046ejc.519.1648659544808;
        Wed, 30 Mar 2022 09:59:04 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id d23-20020aa7d5d7000000b00418f7b2f1dbsm10073476eds.71.2022.03.30.09.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 09:59:04 -0700 (PDT)
Message-ID: <adeaa39d-2b93-d7bb-98fc-93eb040cec01@linaro.org>
Date:   Wed, 30 Mar 2022 18:59:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH net-next] dt-bindings: net: convert sff,sfp to dtschema
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc:     Ioana Ciornei <ioana.ciornei@nxp.com>, davem@davemloft.net,
        kuba@kernel.org, netdev@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
References: <20220315123315.233963-1-ioana.ciornei@nxp.com>
 <6f4f2e6f-3aee-3424-43bc-c60ef7c0218c@canonical.com>
 <YkR57poibmnvmkjk@shell.armlinux.org.uk>
 <259ac0f4-50e9-291b-9ed3-91b52840fb9e@linaro.org>
In-Reply-To: <259ac0f4-50e9-291b-9ed3-91b52840fb9e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 18:51, Krzysztof Kozlowski wrote:

(...)

>>
>> These examples are showing how the SFP gets hooked up directly to a MAC
>> or directly to a PHY. Would you prefer them to be in the ethernet-mac
>> and ethernet-phy yaml files instead? It seems utterly perverse to split
>> an example across several different yaml files.
> 
> Probably PHY or MAC is better place, because it defines the "sfp" property.
> 
> How is it different from other cases like this in bindings (clocks,
> power domains, GPIOs)? IOW, why SFP is special? If it is, sure, let's
> keep it here...

BTW, Rob actually pointed out the difference here - it's only one such
provider binding (unlike clock controllers) - and said it's fine, so
good for me.

Best regards,
Krzysztof
