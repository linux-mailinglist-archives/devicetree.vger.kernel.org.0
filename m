Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 889B84CD3E5
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 13:00:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239281AbiCDMBb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 07:01:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239247AbiCDMBb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 07:01:31 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4A891AAA6C
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 04:00:42 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0D8963F5F7
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 12:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646395240;
        bh=UrJN5AN1a+sk4or2TpxPGO7Gz6uzi1pVJsgwdCKsk30=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=B+HkfIktue0TLAQy9ImDrBkY+EaElbAdJ7WsatdhbypOzfOVdje6Kz5BgX1trxBo8
         B5M3ucJsFiUo6nPgQeNU869+OQcrlypbMotfCBtJAPOs3VbTkFPHSEjDWL9aBo55Ue
         B/jR5VU1ShbnAK9D2nOqlOWep4AF1kzrNpu5hDkGYjJxneStXtKTbliXGtpc3QTAJq
         JpJpivnld5hatSIIZ0oo1a4CQNI3yuWjBGkIiTnEoQL7jDlV6su5JnWm4X2prTltaM
         4lappWHOBP57yxVCVOI3n36GZF4Fepr/Vr8hxZHddQF5/sngx/MgowoZ58JOe3DFLu
         fTGoVNsEDJPdQ==
Received: by mail-ed1-f69.google.com with SMTP id cm27-20020a0564020c9b00b004137effc24bso4484330edb.10
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 04:00:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UrJN5AN1a+sk4or2TpxPGO7Gz6uzi1pVJsgwdCKsk30=;
        b=rshNeuLAoAZk6MdH4YZcBzKffETt4idvFMyKA2F87Wuw3Mcl4s4tvoeShEAXyddC+v
         Diazcee/UoyavE2W76PrkcprtWeIFglIeZQqNurJK172it3L9/F2r8hiH0V9yy+RFPNW
         VFiNI2rCARQ+DMVRiPAexa1a9I8eUG4M0rgxoi1kVQD9Em51AFDdc3ioxVHEIqGwt3eN
         0J+h+dJGl5CojgIxde86OTiGOgoDI4xmkUAhvxEinVcz5C8s3CMe9w6EwHVu26XyYLCj
         CjUJ2sj4W28Po04J3dHAoXR11tAPilO+tpErZnmRI0DDMKVziatNjyqDMNcVx0c/9C6g
         +EzA==
X-Gm-Message-State: AOAM532YJFaCYz8MycZpxr77+1sBrawHvfsPyH3SmTe14CZ1QYIZZAut
        RCenyGX0Q3Ur/oa2NLHDYPG8EoGBVsswdq75jDraonf/8X8+wKuC47JIw2l35i596RfX5mlfa/W
        eDW+PX/DCJgA9jM+t2xSg0FVmkIj08TDiLSUyA8w=
X-Received: by 2002:a05:6402:5107:b0:412:8530:3ba9 with SMTP id m7-20020a056402510700b0041285303ba9mr38867812edd.264.1646395238743;
        Fri, 04 Mar 2022 04:00:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwI7OQeP0JPom8EPn2tKAhFBCBK+BonDWpzzmv+CL9Xbt+L/Z8IeRUd83dFajGjOSo8dY104Q==
X-Received: by 2002:a05:6402:5107:b0:412:8530:3ba9 with SMTP id m7-20020a056402510700b0041285303ba9mr38867791edd.264.1646395238510;
        Fri, 04 Mar 2022 04:00:38 -0800 (PST)
Received: from [192.168.0.138] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id bt10-20020a170906b14a00b006d89fc82497sm1682564ejb.126.2022.03.04.04.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Mar 2022 04:00:37 -0800 (PST)
Message-ID: <747fc6f2-0d9e-d0d4-877a-cb3d4bfda6bd@canonical.com>
Date:   Fri, 4 Mar 2022 13:00:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/3] arm64: dts: exynos: add a specific compatible to MCT
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        'Daniel Lezcano' <daniel.lezcano@linaro.org>,
        'Thomas Gleixner' <tglx@linutronix.de>,
        'Rob Herring' <robh+dt@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20220225153650.289923-1-krzysztof.kozlowski@canonical.com>
 <CGME20220225180502epcas5p4a8126555d09513b92fb1947669529176@epcas5p4.samsung.com>
 <20220225153650.289923-3-krzysztof.kozlowski@canonical.com>
 <000201d82fb6$9b672090$d23561b0$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <000201d82fb6$9b672090$d23561b0$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/03/2022 11:57, Alim Akhtar wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@canonical.com]
>> Sent: Friday, February 25, 2022 9:07 PM
>> To: Daniel Lezcano <daniel.lezcano@linaro.org>; Thomas Gleixner
>> <tglx@linutronix.de>; Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski@canonical.com>; Alim Akhtar
>> <alim.akhtar@samsung.com>; linux-kernel@vger.kernel.org;
>> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
>> samsung-soc@vger.kernel.org
>> Subject: [PATCH 3/3] arm64: dts: exynos: add a specific compatible to MCT
>>
>> One compatible is used for the Multi-Core Timer on most of the Samsung
> Exynos
>> SoCs, which is correct but not specific enough.  These MCT blocks have
> different
>> number of interrupts, so add a second specific compatible to Exynos5433 and
>> Exynos850.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>> arch/arm64/boot/dts/exynos/exynos5433.dtsi | 3 ++-
>> arch/arm64/boot/dts/exynos/exynos850.dtsi  | 3 ++-
>> 2 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/exynos/exynos5433.dtsi
>> b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
>> index 661567d2dd7a..017ccc2f4650 100644
>> --- a/arch/arm64/boot/dts/exynos/exynos5433.dtsi
>> +++ b/arch/arm64/boot/dts/exynos/exynos5433.dtsi
>> @@ -806,7 +806,8 @@ tmu_isp: tmu@1007c000 {
>> 		};
>>
>> 		timer@101c0000 {
>> -			compatible = "samsung,exynos4210-mct";
>> +			compatible = "samsung,exynos5433-mct",
>> +				     "samsung,exynos4210-mct";
> 
> Just a though, do we still need to keep Samsung,exyno4210-mct compatible?
> In anyway:
> 
> Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>

Yes, otherwise we break all other projects using DTS from Linux kernel.
Also keeping it allows to apply DTS patches independently without
breaking bisectability.


Best regards,
Krzysztof
