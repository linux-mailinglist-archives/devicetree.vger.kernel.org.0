Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA9606B9995
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 16:36:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230164AbjCNPgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 11:36:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230289AbjCNPgA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 11:36:00 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08A59A0B07
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 08:35:05 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id cy23so63560040edb.12
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 08:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678808097;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FWvjTACZB7naGN3Yd+xoyyM0LDSOA0CiNkBK/BotokU=;
        b=iEDFHoYq58ptYSxpyflEg44b95YS/+HIXRjw1Mc7KRTsPnymRvz/YNF/coj5G9MCJ1
         wNHRBhxrTBqgEe52msyrGGGq+JR7QpzLQLqgM2lIeTz6EH25OiPKOjcktOi32ZDfCGr3
         xjpUe+E9zIaxri6OxDvNQEdH5Oswmegi9HUxQvZ4Zp6ryxAkWHMgK7uAKLCdmKfvvhTI
         ao6+vA1RLh2O6EYfS/20qG9kq50szfVNbrwxB/MMaIxKozCEjqlm+hAYm6jnMrN3Vm4H
         Mp0uRuchU4ELP7zoWz8bc61E33gs/QpY9hDfO12paR6GPdSo46LsDDXOePngWkCMlIo4
         rooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678808097;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FWvjTACZB7naGN3Yd+xoyyM0LDSOA0CiNkBK/BotokU=;
        b=FzAkoqvZCeUcVIPykew9cR6DzvI0ugG9CvDciyAQTU2CzKEFvQsSsyya+Gh2Vdidb6
         rb/qbj/sQiUtotjdebGCC8LkaWQCyWJoNal8lYgGUohqFiDzjrWIcaLyD8fyQjVCC94A
         82w4AtW+k+esTpJcXB2QHe9DAB719X0Sb+qm3j80ls8rRqg67f4HTowKZoWlR2cK7xcm
         dVqY23kXNbll7xLL9fR75eVzI7iohGbC0sezH6Ww3PFWylPeelu45C9Fbcd13uhwTu+S
         MVk7ZWLedsqDUnlK/UC9vravChYIQNOTFRF7AckMpOPk5u+EKXSPp1SEZdLfN5dJ6TNE
         yGAg==
X-Gm-Message-State: AO0yUKXTpIM7R6J3EIdd5VG15+1tC3Hz8lRlkuPsbCjEWrMdb9V00/x9
        VP575RYCEr2M+My0+oH6auKR+zhQut+7/5g4wWU=
X-Google-Smtp-Source: AK7set9WsIo/C/eDbPrezn1YzXrTdYGRlXUEk5VQV0anRfZLBeTf2u+icDOxjCFJNhRqVsAfIcu3Dw==
X-Received: by 2002:a17:906:6a09:b0:8f5:8da0:a482 with SMTP id qw9-20020a1709066a0900b008f58da0a482mr3171155ejc.25.1678808097505;
        Tue, 14 Mar 2023 08:34:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id f13-20020a170906138d00b008b1fc59a22esm1309460ejc.65.2023.03.14.08.34.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 08:34:57 -0700 (PDT)
Message-ID: <ba35d5fd-c361-368f-9efe-490d2669ea94@linaro.org>
Date:   Tue, 14 Mar 2023 16:34:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: marvell: armada-ap810: Fix GICv3 ITS node
 name
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230207234735.201812-1-robh@kernel.org>
 <CAL_JsqLitc8rX4aXomgXKSPcW8ejEYe1wB_ecyAg7pgJgR=zyA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAL_JsqLitc8rX4aXomgXKSPcW8ejEYe1wB_ecyAg7pgJgR=zyA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 16:22, Rob Herring wrote:
> On Tue, Feb 7, 2023 at 5:47 PM Rob Herring <robh@kernel.org> wrote:
>>
>> The GICv3 ITS is an MSI controller, therefore its node name should be
>> 'msi-controller'.
>>
>> Signed-off-by: Rob Herring <robh@kernel.org>
>> ---
>>  arch/arm64/boot/dts/marvell/armada-ap810-ap0.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Ping!
> 
> If not maintained, should I send a patch removing this platform instead?

I am not the maintainer but I produce (and take) such stuff, so I can
take this one.

Best regards,
Krzysztof

