Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB11C7510EA
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 21:04:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230207AbjGLTER (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 15:04:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbjGLTEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 15:04:16 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 032DC1BF8
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:04:15 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9939fbb7191so248461466b.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689188653; x=1691780653;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FauWl7DRmaS4EWqEqay7OHBkZJyoOucL4P2xHDWxbM8=;
        b=ezwTngG7VxeHvvCX++13XqINlY0NqFhR+moIfGhzy1JTYqrO8AE+EImDZ5AMw2Bhu0
         +FkqXW1XOsBM1Pjf/BlwICLue/dyvxIv0odz6wf4p051rK/0v/v386TBNkZJVmTSLwKP
         CxGRPi18NgWS165zaaFpvjK9I9gyt6s5gt3lOPE61mE/igeGk6wgaA8RbSXC1K7EwMf8
         wXE9X9f6VHPp2pJhC3hMVAcur4cJdU80ygWJK/sTIvhG61XFy2/60QdPPTWqk+EReLD+
         2RHP7tQWSrjveQsZACwSe6g+xetSYaTpVc6WYW8TY05mSsh5TbohtVrqXd0yRCMMCPh2
         51CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689188653; x=1691780653;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FauWl7DRmaS4EWqEqay7OHBkZJyoOucL4P2xHDWxbM8=;
        b=Xx7pIqzLPyjG2nWkv2AmnOx/Bej1e5P0FqAC/aHJbLLLfPd23KG0RzaBUp47Q+0ugG
         jYt6NQkDF71Kp02qHFiP9AUxCYdSwuGQ1SNYQQtiu9/obipYspCKerBbpe+nh5OvGGVw
         o64Xd/v0clUEReh9ZTeiCMxcD/gGYMK5heDWyO6OX//5jwYDmSTrMq1Lk4zqXk02efnc
         A4Y9NUWyzOyOPOYTyERnHn4SH9mvNBq/hmY8Opi+TRL90spRwgDdK1h2ncF1eedPAoie
         uWUf4mWO0dnbr55ZrWFEBSFRRJq5VX7OHR88Hg48z0O2XL8F0VxRumwX0xgiRl+IHZbx
         htug==
X-Gm-Message-State: ABy/qLYiBjYm+od6CWVpyBMdEMRbpWsZxY8on5K9U3g4CyUiCaKHK56Y
        eh7lWKwG5c6iv21iSepv+JyzgA==
X-Google-Smtp-Source: APBJJlGtJVTaQVjyZ6U4JtNmHH6WKvZLMQlVVdZiniKMe4dI+94+ohEbe3ADkaiXupckQHO3EB2eEA==
X-Received: by 2002:a17:906:5d12:b0:98e:3dac:6260 with SMTP id g18-20020a1709065d1200b0098e3dac6260mr4154949ejt.13.1689188653508;
        Wed, 12 Jul 2023 12:04:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id cx18-20020a170906c81200b00992e14af9c3sm2929794ejb.143.2023.07.12.12.04.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 12:04:13 -0700 (PDT)
Message-ID: <7cde682e-0c0e-95c1-a37d-64eef9bc3792@linaro.org>
Date:   Wed, 12 Jul 2023 21:04:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 7/7] MAINTAINERS: Added maintainer details
Content-Language: en-US
To:     Randy Dunlap <rdunlap@infradead.org>,
        Pankaj Gupta <pankaj.gupta@nxp.com>, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, clin@suse.com,
        conor+dt@kernel.org, pierre.gondois@arm.com, ping.bai@nxp.com,
        xiaoning.wang@nxp.com, wei.fang@nxp.com, peng.fan@nxp.com,
        haibo.chen@nxp.com, festevam@gmail.com, linux-imx@nxp.com,
        davem@davemloft.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, gaurav.jain@nxp.com,
        alexander.stein@ew.tq-group.com, sahil.malhotra@nxp.com,
        aisheng.dong@nxp.com, V.Sethi@nxp.com
References: <20230712121219.2654234-1-pankaj.gupta@nxp.com>
 <20230712121219.2654234-8-pankaj.gupta@nxp.com>
 <6d712362-a0f9-7395-fbc0-e6a51eee9bcb@infradead.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6d712362-a0f9-7395-fbc0-e6a51eee9bcb@infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2023 16:57, Randy Dunlap wrote:
> Hi--
> 
> On 7/12/23 05:12, Pankaj Gupta wrote:
>> MAINTAINERS: Added maintainer details for se-fw driver.
>>
>> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
>> ---
>>  MAINTAINERS | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 3be1bdfe8ecc..654c1628417d 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -13620,6 +13620,16 @@ F:	mm/
>>  F:	tools/mm/
>>  F:	tools/testing/selftests/mm/
>>  
> 
> Nope, this is not in alphabetical order. The MAINTAINERS file
> is to be kept in alphabetical order.

Still close choice. At least it was not added to the end of the file. :)

Best regards,
Krzysztof

