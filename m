Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7906759810D
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 11:47:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243513AbiHRJo3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 05:44:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242603AbiHRJo2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 05:44:28 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BC1180B58
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 02:44:26 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id q18so187738ljg.12
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 02:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=OK7eGNGvTiBFOz+xHoFXCFC0VXptGR5MkXefT6i3kvk=;
        b=p9vVvGtnvUhf9WaIcA7rZjvLy3nfpPrZhRU0Fg+jKf4HXP4J02BcElAwttKpoa+/HO
         aor5cJCLqyt3Jo/G4Zf+LnREiKhS7VyIai4ILAIpJ9OmpKrx49pbgU7KPRpvhpBGUhiF
         r62TKv/ps5tEvKy7+3j3wvBuKKuxVVbpRCDcP4ERkowmuW0hGkMvyg30TlDMgdW+usKs
         Dnz3wtWhWM2Ja9/OCg00vdS9jZtx1Y+nxhP0lwP9hVE2EctkPMQkYociMe7NbdZ1GTNH
         9bLBcOqHMGPoF6WCFU0Zr6FamwunsXCh1bq9AYn7DgR5bc7fvlI9au26w3l6TDWVLSlP
         sLqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=OK7eGNGvTiBFOz+xHoFXCFC0VXptGR5MkXefT6i3kvk=;
        b=oY4h+w72QmFDm6atomhnIpWpdFcaZh3vNlGAA/siC2Pmt5tZYPgF9uRaK25D/fs9eX
         JkpgaNx1+vbpka3SyAkGHEgQMUU9Kwm1VezyGL8gb74DyMDj+2smDpHdMRavOyY+bWah
         LYohZmqFtwXUz0uj+VycwmfomhTaQ7nISGnygZV5zo6bfg753k6SXB8KLFFcX+AZDTkn
         h28GftzVb7QRKenmqHqzkZXDVUroOupSFkdBQj09P/7CDZZ0haPyx6elUBFmMBslqvEr
         X7C0fwZvA3zjLOhZs2iEaivEdQlBM5x3vUTh8Jpncm0WkhAy54uimnxfbgOdhc5gVqEu
         VhQQ==
X-Gm-Message-State: ACgBeo2rHU8RcAyzjNUCNAqGJfr03/YbjkMmiQ15rJUk0SU4jCts7xNi
        Fs07gfs3SSMwYTjxs3DLDOS8YQ==
X-Google-Smtp-Source: AA6agR474A8Rw48pmpjFkycbz4XeLad3Ix5GfZQZFbjPKa8Ar2ar+vFiP1dDNWRiriekSNCoDPc1Kw==
X-Received: by 2002:a2e:a411:0:b0:25e:5ff0:469 with SMTP id p17-20020a2ea411000000b0025e5ff00469mr602703ljn.149.1660815864550;
        Thu, 18 Aug 2022 02:44:24 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id n18-20020a19d612000000b00492c2394ea5sm22413lfg.165.2022.08.18.02.44.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 02:44:24 -0700 (PDT)
Message-ID: <5890df47-0740-7033-7b21-5b96bee01625@linaro.org>
Date:   Thu, 18 Aug 2022 12:44:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: gpio: pca9570: Add compatible for
 slg7xl45106
Content-Language: en-US
To:     "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Cc:     "mans0n@gorani.run" <mans0n@gorani.run>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
        "brgl@bgdev.pl" <brgl@bgdev.pl>,
        "shubhrajyoti.datta@gmail.com" <shubhrajyoti.datta@gmail.com>
References: <20220817085550.18887-1-shubhrajyoti.datta@amd.com>
 <20220817085550.18887-2-shubhrajyoti.datta@amd.com>
 <107c5c93-ee6b-e464-1b74-55877068e788@linaro.org>
 <BY5PR12MB4902F07B4A12C51094786C5C816D9@BY5PR12MB4902.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <BY5PR12MB4902F07B4A12C51094786C5C816D9@BY5PR12MB4902.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2022 12:30, Datta, Shubhrajyoti wrote:
> [AMD Official Use Only - General]
> 
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Thursday, August 18, 2022 2:14 PM
>> To: Datta, Shubhrajyoti <shubhrajyoti.datta@amd.com>; linux-
>> gpio@vger.kernel.org
>> Cc: git-dev (AMD-Xilinx) <git-dev@amd.com>; mans0n@gorani.run;
>> devicetree@vger.kernel.org; krzysztof.kozlowski+dt@linaro.org;
>> robh+dt@kernel.org; linus.walleij@linaro.org; brgl@bgdev.pl;
>> shubhrajyoti.datta@gmail.com
>> Subject: Re: [PATCH 1/2] dt-bindings: gpio: pca9570: Add compatible for
>> slg7xl45106
>>
>> [CAUTION: External Email]
>>
>> On 17/08/2022 11:55, Shubhrajyoti Datta wrote:
>>> This patch adds compatible string for the SLG7XL45106, I2C GPO
>>> expander.
>>>
>>> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
>>> ---
>>>  Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
>>> b/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
>>> index 338c5312a106..503cfcb7f7c9 100644
>>> --- a/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
>>> +++ b/Documentation/devicetree/bindings/gpio/gpio-pca9570.yaml
>>> @@ -13,6 +13,7 @@ properties:
>>>    compatible:
>>>      enum:
>>>        - nxp,pca9570
>>> +      - dlg,slg7xl45106
>>
>> First, this does not match tree, please rebase on some new Linux kernel.
>> Second, put them in alphabetical order.
>> Third, these are different manufacturers. Why do you think devices are
>> compatible?
> 
> Will rebase and resend.
> There was a earlier discussion
> https://lore.kernel.org/all/CAHp75Ve_mgam2jcyFG-NggziUScK3JBZ4fmtN+rjd+Vra=ixuw@mail.gmail.com/T/#me3fb70c782159b1c2aed9cc33d6eb4d31193e56e
> 
> Based on which I considered the pca.

But none of these are explained here in commit msg...

BTW, your previous binding was not even sent to DT mailing list and DT
maintainers. Always use scripts/get_maintainers.pl.

Best regards,
Krzysztof
