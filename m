Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10EC44AB71B
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 10:08:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239701AbiBGJC4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 04:02:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242097AbiBGI4n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 03:56:43 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92D6C043185
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 00:56:42 -0800 (PST)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9074A3F324
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 08:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644224201;
        bh=btDpU5FmsTkCm5Mc+WyqRMkXXG3Fg8Z86T3tz0oN0CM=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=HepHLUJh7x3PakI0ZWJV0Iy7bSoGdHu68AE9wjL1bUgbOacsNEc5ZVSrOoXzIbjPP
         a2Qxm9VLBNzFNIkPVJkF+Lbckf7nhUN9rbwd0uBTKK7qu+bpmYt8QblGX9f8lvBLWw
         Py6vDiaJkyNirKJK72AyzQloEdSdt/7Wo4RlKQvIY8IGpuo+epS2wKfwtSKYPdNRM/
         cpNYofpHIkOAGiD+v80C3L6PYsT4zNcXtyY5X8yVklFD7WrzybSLq5flIp+60DfxD2
         qDrD18XitNL3p3LmdhA6LB2i/4ktTlRpe2OrY4zh7T2fj3owW7+e9MjQEzItDE+VMp
         R+vxYns3BDtYQ==
Received: by mail-wm1-f70.google.com with SMTP id c7-20020a1c3507000000b0034a0dfc86aaso11906600wma.6
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 00:56:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=btDpU5FmsTkCm5Mc+WyqRMkXXG3Fg8Z86T3tz0oN0CM=;
        b=11i2FSGcwttM20pNiPCVB5d/Z+ebvz2y/JixXRnXcHNbhkVWScQxRnUZbtc9o3ibkm
         a9v/xp8X0oxPCqYj4BuA3STUFIpHC7y4ch2on2ym5sIP8YcWAhzU/UP30Wa34j3TXXsT
         1/FPHdqSCmXfg2PxlySEzuiPmZn2tLPeMcBMI6IwkrgzYWZP++ni2/huB3IakEJudslJ
         x0Rbk1Cvzdx3qo1ikjebNyCwU1XJck2Gq1ydZpbnWH75W2m96w4q1k68b03FH6JJmu5P
         +mfOQjWzJ1s1sCLLyq7SqSpHnHyiS2WtYLAJE/lI+BHJtSGiuqQUC9ciRGJkg4M4sERm
         T2Dg==
X-Gm-Message-State: AOAM531uJzHjzpsmI0RvEO4Euzs0lXm9kIaV7+nuXYhDFPIF5hNTitBt
        EiXEGt/o56t51F0xPJYn/TWDJkDjvR6y3Q03EBgV1NlnWgptCZxiD6nGkuTNgSgXEMAQkR/cEWq
        9UwsKXKoxDWz3PvZW/M4dxmIbdpMadrM0NxLgTns=
X-Received: by 2002:a05:6000:16c5:: with SMTP id h5mr9011098wrf.364.1644224201260;
        Mon, 07 Feb 2022 00:56:41 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwUWIz/kuedsRBnrB7RSMh9Ojazqtas2KPEtQ5IG7MGExl8fZ8JQjN+4o3EFV9rqV86qk4Cxw==
X-Received: by 2002:a05:6000:16c5:: with SMTP id h5mr9011087wrf.364.1644224201104;
        Mon, 07 Feb 2022 00:56:41 -0800 (PST)
Received: from [192.168.0.86] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t14sm17259601wmq.43.2022.02.07.00.56.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Feb 2022 00:56:40 -0800 (PST)
Message-ID: <4b18991e-1c93-077d-368f-a861e8c2b845@canonical.com>
Date:   Mon, 7 Feb 2022 09:56:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 5/8] dt-bindings: memory: lpddr3: deprecate
 manufacturer ID
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        'Rob Herring' <robh+dt@kernel.org>,
        'Lukasz Luba' <lukasz.luba@arm.com>,
        'Dmitry Osipenko' <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220206135807.211767-1-krzysztof.kozlowski@canonical.com>
 <CGME20220206135825epcas5p4c07136cf0a54eb4d6c8441cd6dbf14bc@epcas5p4.samsung.com>
 <20220206135807.211767-6-krzysztof.kozlowski@canonical.com>
 <0a7101d81bd9$33088840$991998c0$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <0a7101d81bd9$33088840$991998c0$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2022 05:14, Alim Akhtar wrote:
> Hi Krzysztof
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@canonical.com]
>> Sent: Sunday, February 6, 2022 7:28 PM
>> To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>; Rob Herring
>> <robh+dt@kernel.org>; Lukasz Luba <lukasz.luba@arm.com>; Alim Akhtar
>> <alim.akhtar@samsung.com>; Dmitry Osipenko <digetx@gmail.com>; linux-
>> kernel@vger.kernel.org; devicetree@vger.kernel.org; linux-
>> pm@vger.kernel.org; linux-samsung-soc@vger.kernel.org; linux-arm-
>> kernel@lists.infradead.org
>> Subject: [PATCH v3 5/8] dt-bindings: memory: lpddr3: deprecate
>> manufacturer ID
>>
>> The memory manufacturer should be described in vendor part of compatible,
>> so there is no need to duplicate it in a separate property.
>> Similarly is done in LPDDR2 bindings.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>> .../bindings/memory-controllers/ddr/jedec,lpddr3.yaml         | 4 +++-
>> 1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/memory-
>> controllers/ddr/jedec,lpddr3.yaml
>> b/Documentation/devicetree/bindings/memory-
>> controllers/ddr/jedec,lpddr3.yaml
>> index d6787b5190ee..3bcba15098ea 100644
>> --- a/Documentation/devicetree/bindings/memory-
>> controllers/ddr/jedec,lpddr3.yaml
>> +++ b/Documentation/devicetree/bindings/memory-
>> controllers/ddr/jedec,lpd
>> +++ dr3.yaml
>> @@ -40,7 +40,9 @@ properties:
>>   manufacturer-id:
>>     $ref: /schemas/types.yaml#/definitions/uint32
>>     description: |
>> -      Manufacturer ID value read from Mode Register 5.
>> +      Manufacturer ID value read from Mode Register 5.  The property is
>> +      deprecated, manufacturer should be derived from the compatible.
>> +    deprecated: true
>>
> 
> Shouldn't it be the other way? As DT describes hardware and MR5 does contain
> the Manufacturer ID, 
> so getting Manufacturer ID from MR5 makes aligned to hardware description.

The code/driver can read MR5 and report it to user-space in case for
example we have a device compatible with different vendor and same
compatible is used. So compatible is re-used but we want real
manufacturer ID from the hardware.

But storing a fixed MR5 value in DT does not fit here. If someone takes
effort to encode manufacturer ID in the DTS, then he/she should take
effort to actually document the compatible.

Basically having MR5 in DT is equal to having a compatible in DTS. I
prefer the latter - simpler, less properties, using existing property
from DT spec instead of custom one.

Best regards,
Krzysztof
