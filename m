Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED2044F0607
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 22:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347717AbiDBUFm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 16:05:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243739AbiDBUFl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 16:05:41 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B8761C917
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 13:03:48 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id u3so8813872wrg.3
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 13:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZxBQNrUxZ2bYKpkYnxrQy2Q1Fb81oRgLKDLGAjU3iTc=;
        b=hNIMFtLXTUY/dXMeG7fhPGOpw1rPp7YEme4BfHP1T19MfZUBh576lZvcz5r/ejttf/
         pgZhZhw7s67b743b5LRlqjtKg8vFmkI2YKCyjVGnjltzZTNa9aOT/SIgKTV2skBltxdl
         bUbq+gZ5eemtUHovQL4CcU4Nk4S+/uUp0p5XW32E2KmD7TamtjMloMPasOR0x9SpRrCg
         Tu3doT1PLVFmDIpHHNB38tTLlDcw3TJwqBpDF+Gl0YTZqTlMwR8tayEqnYZr3uLkdt1X
         +9c+9Lf4lY86xxiC3rCZJBIM7K2z8yWVC12HaIW3g7JHMFyDT/8lBErdbBjxb3O5DtDF
         rBmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZxBQNrUxZ2bYKpkYnxrQy2Q1Fb81oRgLKDLGAjU3iTc=;
        b=lz7kNuTIMv3zS2gZsb2j7GnIiFwZukiZ12PKh4wdpUndw/FvgAsOlz+EZXnD22IigP
         B90jgoFV645Byq8sw2UD8cpC6U7WVRvREEL++XkSCn9HbtpujaMaOkE60fRHgwUgAVNz
         dUvOX0vF5GdLY0rcq4oSCMNXWXmZ+DigJGWq0cPekgZZ1ruQ1HLKitj1PlvyKTeSdjkw
         RFYzqF5vCyXusJMPF8Kr3DaJVCD7uojdxhSRt4gyw5A8AGcs+2tSrSfgsxr7T/IIQRYN
         tIVRB9ssyXFjTY2H74jVv5hyWn4mMrhUlyd9yfRbUixb/AIpob6Rrl6XSoiKfqGfq7V8
         PIsQ==
X-Gm-Message-State: AOAM533qcn9t5CjRAlYMtMrefaCZx0OellvVbZJwWCI8z6H0SzbB/ibK
        GZ7wzX0BNGyRmQt65YP6ogMhXQ==
X-Google-Smtp-Source: ABdhPJweT220kcjXjItzv0ff6OgWU6oTsUS4xbTWLhe8cl/alD5HirwTZUOA5n50kCPFby4vENrGww==
X-Received: by 2002:adf:e950:0:b0:205:e07e:f165 with SMTP id m16-20020adfe950000000b00205e07ef165mr11691618wrn.270.1648929827179;
        Sat, 02 Apr 2022 13:03:47 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id t15-20020adfeb8f000000b002060d26c211sm287158wrn.114.2022.04.02.13.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 13:03:46 -0700 (PDT)
Message-ID: <e3ebc5d0-d2bc-b5a8-1b19-5e0c2f3d7c41@linaro.org>
Date:   Sat, 2 Apr 2022 22:03:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: renesas: Document Renesas
 RZ/G2UL SMARC EVK
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
References: <20220402073234.24625-1-biju.das.jz@bp.renesas.com>
 <cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org>
 <OS0PR01MB5922B49ED5DADA5DD3DDA60786E39@OS0PR01MB5922.jpnprd01.prod.outlook.com>
 <d6989ea9-9e84-0022-aff0-c75b0e3203e2@linaro.org>
 <OS0PR01MB5922C1100BCF87341534FC6E86E39@OS0PR01MB5922.jpnprd01.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <OS0PR01MB5922C1100BCF87341534FC6E86E39@OS0PR01MB5922.jpnprd01.prod.outlook.com>
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

On 02/04/2022 21:54, Biju Das wrote:
>>
>> I understand that carrier board is the same, so the SoM differs.
> 
> For R9A07G043 case, even SoM is same, only SOC differs.

I assumed that you cannot have same SoMs with different SoCs...

> 
>> In your
>> model to figure out what type of hardware is it, your choice is to compare
>> two compatibles:
>> renesas,smarc-evk + renesas,r9a07g043u11
>>
>> If user-space compares only last compatible, it get's only SMARC, so it
>> does not know on what hardware it runs.
> 
> But Here user-space can easily identify the H/W with existing scheme. See the logs from user-space.
> 
> / # for i in machine family soc_id revision; do echo -n "$i: "; cat /sys/devices/soc0/$i;done
> machine: Renesas SMARC EVK based on r9a07g043u11
> family: RZ/G2UL
> soc_id: r9a07g043
> revision: 0

User-space is one example. We don't limit to this. Anyway, the
compatible is the main way to check it. Machine is just test, not
compatible, not part of ABI. soc_id and revision could help, but these
are separate ABIs. They can be not compiled-in and then you have only
compatible.

Regardless whether there is another way for user-space to figure out
hardware, it does not change the fact that such usage of compatibles
does not look correct with Devicetree spec.
"...They
 allow a device to express its compatibility with a family of similar
devices, potentially allowing a single
 device driver to match against several devices."

The "renesas,smarc-evk" compatible is not the most specific one, because
different configurations have it.

Again - you intend to use a pair or even a triple of compatibles to
uniquely identify type of hardware. I don't think it is correct - the
final, most specific compatible, uniquely identifies the hardware. All
other compatibles are just for fallback.

Best regards,
Krzysztof
