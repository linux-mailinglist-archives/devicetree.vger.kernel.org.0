Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C54D4F0610
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 22:09:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233606AbiDBUJ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 16:09:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229776AbiDBUJ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 16:09:59 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE21E1017D2
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 13:08:06 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id q20so3627436wmq.1
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 13:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EMQqdSoa40fVCj26FqTvVX5CrHbphOJVetZErL+JYsg=;
        b=k+C0vwqQ2WkpQk4r/wrfRONko+IrtaeBEVs7kfbzEy20BsY2OmrGhhe4ouJN/5Tz8Y
         BDVpbxz/PoM7KZ57bN/daozl6GJLXieOQmJneeTkJAgmxHKO1fdykDPdD8NYuRynuvXQ
         bkYy7gGkjh61GDv8+1LokfAry+ZrMjU6mgY4KZ2ulZ7Lc+yhB6NpukwfFMgXCBtoQimT
         eK2jlLkB1giItBIQNAgeAgT+58zoR8pfVqdLAjOzf5qupcbNoWGa1wZQj0PV3ZrkHXo9
         X7E+DGYXq1aZDFsMFRicmZnTgGZT9oCN+6QKe92suohb71YIlFWPqlf/T0EGmlQuKM97
         pjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EMQqdSoa40fVCj26FqTvVX5CrHbphOJVetZErL+JYsg=;
        b=yYYCBum/IuhitsuEEoca8bQpaTzXkY37jV0Yg/6wsRN1nnTkqA5ZL01XnYZ+sagp4b
         g0zG9g3Urpq5lOJ37k0XmC1JslYw5G9b61QevCADCJrAUhOmRPxCd5WqwlFYlwwDwdLo
         VAUZD5I9Ep6EbVvOVI1BKubMjJIbuOu1JPqx+2u/hLvfcD8ajACdM7bLrFxkvxVJT5P0
         8GDqYIulN8NZ64wVd0NY64uKDJAKcNqX9NWsAE/xydXUGTov+rKA9C/DEa1Zrf9CtLf2
         Rc2bryKolV9OwflSOCuCxDkU6r4iVZL3I82ZZsMxPiWH1BjCFNBziHo5TU6oYlMjDSzJ
         SVXw==
X-Gm-Message-State: AOAM531vd/X/7Idt1/supkCIqavFT4PPMe4ymctI/OTiyw7sgACEDtV0
        P8AiDuK8FJCT/xQAmjYrCpuFUQ==
X-Google-Smtp-Source: ABdhPJz4NfRr+xsKojlBGB11wNSWga6mv8nLYJJ2WJ5oDpLOFryIXyLKjFGJKH0XiPqNiEf21JjlpA==
X-Received: by 2002:a1c:cc01:0:b0:37b:dcc8:7dfd with SMTP id h1-20020a1ccc01000000b0037bdcc87dfdmr13408290wmb.134.1648930085483;
        Sat, 02 Apr 2022 13:08:05 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id v13-20020adfe28d000000b0020375f27a5asm5535428wri.4.2022.04.02.13.08.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 13:08:05 -0700 (PDT)
Message-ID: <6cb05255-2cfd-e941-5a7a-e15d7a00edbe@linaro.org>
Date:   Sat, 2 Apr 2022 22:08:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 4/5] arm64: dts: renesas: Add initial DTSI for RZ/G2UL
 SoC
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        "linux-renesas-soc@vger.kernel.org" 
        <linux-renesas-soc@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20220402073037.23947-1-biju.das.jz@bp.renesas.com>
 <20220402073037.23947-5-biju.das.jz@bp.renesas.com>
 <dba54e8f-b575-1835-fd30-44d9dcb09635@linaro.org>
 <OS0PR01MB5922A0675D7928834AD33BFD86E39@OS0PR01MB5922.jpnprd01.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <OS0PR01MB5922A0675D7928834AD33BFD86E39@OS0PR01MB5922.jpnprd01.prod.outlook.com>
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

On 02/04/2022 21:37, Biju Das wrote:
> Hi Krzysztof Kozlowski,
> 
> Thanks for the feedback.
> 
>> Subject: Re: [PATCH v4 4/5] arm64: dts: renesas: Add initial DTSI for
>> RZ/G2UL SoC
>>
>> On 02/04/2022 09:30, Biju Das wrote:
>>> Add initial DTSI for RZ/G2UL SoC.
>>>

(...)

>>> +	soc: soc {
>>> +		compatible = "simple-bus";
>>> +		interrupt-parent = <&gic>;
>>> +		#address-cells = <2>;
>>> +		#size-cells = <2>;
>>> +		ranges;
>>> +
>>> +		ssi0: ssi@10049c00 {
>>> +			reg = <0 0x10049c00 0 0x400>;
>>> +			#sound-dai-cells = <0>;
>>> +			/* place holder */
>>
>> Here and in other place holders - why there are no compatibles here?
> 
> These interface are not tested with mainline kernel and will be added later after testing.
> 
>> What do you hold place for
> 
> As mentioned in commit description, I will get compilation error as the carrier board shared 
> with other SoC's For eg:- RZ/G2L,RZ/G2LC and RZ/V2L.
> 

OK, thanks for explanation. It looks a bit fragile, because it means
that your rz-smarc-common.dtsi enables nodes which are not described.
Although I see the point why it's done like this, so it's fine for me.

Best regards,
Krzysztof
