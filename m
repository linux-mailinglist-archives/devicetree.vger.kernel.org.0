Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEDDC633801
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 10:10:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233186AbiKVJKM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 04:10:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233212AbiKVJKC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 04:10:02 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3699D45EC4
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 01:09:56 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id s5so6486137wru.1
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 01:09:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qAEf/N2Kcc6QiozdeJRmjduJZZwfTly5ktRq7kriq+k=;
        b=G9jd4DKcrO/BCVJQHENt/pXmQaZoQECvuwDwpRj9+/3AW2g1GrafS6R+0+5Gt+CExY
         tLwrALHr73bzxxlLUcaKt4qbxzGrYMvZt73tDnWF/B0EzANYSV9xgfg48xJWoap8S/Ah
         BbCuqqy8T9LSfpKytFWleLBmsT6VhwwHCCXEZSevVNWoKBTgoXKqWrYd1SeMJR0D/7Zp
         4CIyMl0UOhIJHAvZeCb6MZPMX0bF95TuwJk892T4sM4MC7anWrJwaeV0j7nJ96MFEpOC
         gUnImyLOJg9ThNdvmlh/yMkga+zt2BxGJD64Wb/LTQafOT/nfspIMQj+YDfJUYdUdz8B
         BM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qAEf/N2Kcc6QiozdeJRmjduJZZwfTly5ktRq7kriq+k=;
        b=MKLi0CII3PeKP6MFirgR3YuHHGTMw/oJrrzzU7yLdI1JslypgKeyu6c5CYgPt/do5c
         RkMqFGqC564MZxOU0OtCpNOzeZJWrYXR53kvhV2VM9dXILyzYBJ/zGoP3Jj9+FX7e21q
         mpb2hfoQny6T7eol/MAqXelquUB5bhh8tYrdaX8LKKFfbPKCroLDF8jLXuGqaE1qUKkt
         2I5hT9g5Nn1AOjQiWIWVpeuqzaxbFJxunM4E17f52MBsqNiM5+VFs0ctA2tRptLUkQEm
         YOyEii586UkORsvmyua4KMLP1AbPp3Ryzc+sPbvCtskMd3TadFbds9bcet/Eytxbs8Wv
         4pzg==
X-Gm-Message-State: ANoB5pnIpWOuqxBdqYKcyFmBkZfxW6UPMIsOveW4vXXJ/FHDTdgOj694
        E0yU66nl6+ZwLFjge3sONMgzcg==
X-Google-Smtp-Source: AA0mqf6PQYw2G8uhrT/UhhlijiC7GTWn3uWCN/t+08mg9FWAJlCVfhDRQjbjNh9Z8AzQiXksdA6REw==
X-Received: by 2002:a5d:460e:0:b0:22e:391c:6192 with SMTP id t14-20020a5d460e000000b0022e391c6192mr2341341wrq.104.1669108195077;
        Tue, 22 Nov 2022 01:09:55 -0800 (PST)
Received: from [192.168.0.17] (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id y8-20020adfee08000000b0024194bba380sm13323599wrn.22.2022.11.22.01.09.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 01:09:54 -0800 (PST)
Message-ID: <f22b8ede-6796-08a3-4c12-f507f5b8dc85@sifive.com>
Date:   Tue, 22 Nov 2022 09:09:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 4/8] dt-bindings: sifive,ccache0: Support StarFive
 JH7110 SoC
Content-Language: en-GB
To:     Conor Dooley <conor.dooley@microchip.com>,
        Hal Feng <hal.feng@starfivetech.com>
Cc:     Conor Dooley <conor@kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20221118011714.70877-1-hal.feng@starfivetech.com>
 <20221118011714.70877-5-hal.feng@starfivetech.com> <Y3duiJguYE6VrVLP@spud>
 <Y3dvCPP1g0LzzHFO@spud>
 <a5193e23-efe1-fa65-15de-d53b80b87d63@starfivetech.com>
 <Y3yRTuo69JUsfLqk@wendy>
From:   Ben Dooks <ben.dooks@sifive.com>
In-Reply-To: <Y3yRTuo69JUsfLqk@wendy>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/11/2022 09:07, Conor Dooley wrote:
> On Tue, Nov 22, 2022 at 04:40:23PM +0800, Hal Feng wrote:
>> On Fri, 18 Nov 2022 19:39:52 +0800, Conor Dooley wrote:
>>> On Fri, Nov 18, 2022 at 11:37:50AM +0000, Conor Dooley wrote:
>>>> On Fri, Nov 18, 2022 at 09:17:10AM +0800, Hal Feng wrote:
>>>>> From: Emil Renner Berthing <kernel@esmil.dk>
>>>>>
>>>>> This cache controller is also used on the StarFive JH7110 SoC.
>>>>
>>>> "... and configured identically to that of the FU740"?
>>>> Anyways,
>>>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>>>
>>> Actually, after looking at the next patch - why can you not fall back to
>>> the fu740 one since you appear to have the same configuration as it?
>>
>> Right, I will drop this patch and use "sifive,fu740-c000-ccache" as
>> compatible in dts.
> 
> Uh, that's not quite what I was suggesting. Rather than using that one
> in isolation, you can do the following in your dt:
> "starfive,jh7110-ccache", "sifive,fu740-c000-ccache"
> 
> And then in the driver we need to make no changes - unless down the line
> we find some sort of issue that requires special handling etc. There's
> no harm in having a "starfive,jh7110-ccache" IMO.

Yeah, sifive,ccache0 is probably the generic one which would get
this working.

-- 
Ben




