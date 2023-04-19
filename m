Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07F1F6E7F8B
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 18:25:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233434AbjDSQZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 12:25:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231652AbjDSQZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 12:25:11 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47C7B2718
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 09:25:10 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f1728c2a57so29177145e9.0
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 09:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681921509; x=1684513509;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KDLywrz5b75EyvwZQRzMU6ycEyStfUxaWPFipQ5tg48=;
        b=hT1rN1a1+DEvbJ7pV9UBV5Q091PwLaK/e33DPwFbSxXKP4blf4l2fjuds2md+XP++5
         84C+pxozpUTh5V6lAJ2nlNJXnRrLqTalFNU/dBYQvQyvlbDtKl9qSaHyMPS25OdAES2l
         sgC/bybInm1EKd0pT7fEzBybpTZ7Pr2obzhLRpSr4bNP4tJNzY3x+kHP1/CQlFp1agLu
         jKYnlVVVqlPE5h3jMb69FZd93PSsJ05fozvgfDlUHALQDqHaeDgNe1c9vCLTR5wJtpbi
         TNBEF6gG7k2Q1PlCNUVKpqR4fIM7Bh+Z//Eil1lH2H8Qzds04Bk+xkDAI5EeutudJwf2
         +xiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681921509; x=1684513509;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KDLywrz5b75EyvwZQRzMU6ycEyStfUxaWPFipQ5tg48=;
        b=PFSmed0tY4hFO3PuOlat0IMl/kJX+w6yikJKreozrUGUmBJVE2FzA1/TB0RwKjY4q6
         vJpVtTfc60friYUx01P9fHDGG+CxKaL1WotD1XvSCsT3zvQRS1Sgfw8GXj9CrMFAO9gE
         nLYRsvn5XKM65HH8tKZFDuQiBfhWDYcvV40hMdV6Iw+CRqoU2nbyV+HsKA6gfInVqe0d
         3m3xDz/pRNUWzQu6zKCqpTFsYTZkZ3JwjeJuyi8PUfvOWB2LKXo0g26pFhmG5NEiVFbj
         y4zyfu3/zuD+RfqEPTWw84a59xq2/sYyHRJqkr14xr0qD7FAWHCbhZOMoEAT/KJE0Wz0
         Bl9g==
X-Gm-Message-State: AAQBX9f+WbOcgXheJnKTQkm3HWuxBTN57+kNbK0Fc0Vb6g9Rk8fUqWyh
        4o23cXTjGZqq4I4hnXJqpPlFkp+JlGDULttd9MLZbA==
X-Google-Smtp-Source: AKy350Z1xrx0ylaGtxFse5ngydIJsR5DorpLbBAJ3nrjbAGOpY37kZDJKfqK/DCa8EU0mCUZEsJ+2w==
X-Received: by 2002:adf:e6c3:0:b0:2ef:bb9f:e9e1 with SMTP id y3-20020adfe6c3000000b002efbb9fe9e1mr5243251wrm.56.1681921508739;
        Wed, 19 Apr 2023 09:25:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:1360:9fbb:dfd6:2db4? ([2a01:e0a:982:cbb0:1360:9fbb:dfd6:2db4])
        by smtp.gmail.com with ESMTPSA id g17-20020adff3d1000000b002f777345d21sm13432098wrp.95.2023.04.19.09.25.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 09:25:08 -0700 (PDT)
Message-ID: <427e79ef-156d-027e-9296-6f4e6513a04d@linaro.org>
Date:   Wed, 19 Apr 2023 18:25:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [RFC PATCH 1/2] arm64: amlogic: add new ARCH_AMLIPC for IPC SoC
Content-Language: en-US
To:     Dmitry Rokosov <ddrokosov@sberdevices.ru>
Cc:     =Xianwei Zhao <xianwei.zhao@amlogic.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230419073834.972273-1-xianwei.zhao@amlogic.com>
 <20230419073834.972273-2-xianwei.zhao@amlogic.com>
 <20230419131416.cns3xvkbzjeyrnux@CAB-WSD-L081021>
 <661cea17-a4dd-75d1-6a7e-16efa5aea52b@linaro.org>
 <20230419160405.d7qfir3nv6tlxx2a@CAB-WSD-L081021>
Organization: Linaro Developer Services
In-Reply-To: <20230419160405.d7qfir3nv6tlxx2a@CAB-WSD-L081021>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2023 18:04, Dmitry Rokosov wrote:
> On Wed, Apr 19, 2023 at 03:43:12PM +0200, Neil Armstrong wrote:
>> On 19/04/2023 15:14, Dmitry Rokosov wrote:
>>> On Wed, Apr 19, 2023 at 03:38:33PM +0800, =Xianwei Zhao wrote:
>>>> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>>>>
>>>> The C series SoCs are designed for smart IP camera
>>>> applications, which does not belong to Meson series.
>>>> So, Add ARCH_AMLIPC for the new series.
>>>>
>>>> There are now multiple amlogic SoC seies supported, so group them under
>>>> their own menu. we can easily add new platforms there in the future.
>>>> Introduce ARCH_AMLOGIC to cover all Amlogic SoC series.
>>>>
>>>> No functional changes introduced.
>>>>
>>>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>>>> ---
>>>>    arch/arm64/Kconfig.platforms | 12 ++++++++++++
>>>>    arch/arm64/configs/defconfig |  2 ++
>>>>    2 files changed, 14 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>>>> index 89a0b13b058d..bfbc817eef8f 100644
>>>> --- a/arch/arm64/Kconfig.platforms
>>>> +++ b/arch/arm64/Kconfig.platforms
>>>> @@ -162,12 +162,24 @@ config ARCH_MEDIATEK
>>>>    	  This enables support for MediaTek MT27xx, MT65xx, MT76xx
>>>>    	  & MT81xx ARMv8 SoCs
>>>> +menuconfig ARCH_AMLOGIC
>>>> +	bool "NXP SoC support"
>>>
>>> NXP? Did you mean "Amlogic"?
>>>
>>>> +
>>>> +if ARCH_AMLOGIC
>>>> +
>>>>    config ARCH_MESON
>>>>    	bool "Amlogic Platforms"
>>>>    	help
>>>>    	  This enables support for the arm64 based Amlogic SoCs
>>>>    	  such as the s905, S905X/D, S912, A113X/D or S905X/D2
>>>> +config ARCH_AMLIPC
>>>
>>> Do we really need a different ARCH for Amlogic IPC?
>>> I can imagine that it's not the Meson architecture at all.
>>> But maybe a better solution is just to rename ARCH_MESON to ARCH_AMLOGIC?
>>
>> It should be changed treewide, and is it worth it ?
> 
> As far as I understand, the A1 and S4 families are not fully compatible
> with the Meson architecture, and we haven't provided additional ARCH_*
> for them.

The GXBB, GXL/GXM, G12A, G12B & SM1 are also not fully compatible,
but they lie under the "MESON" umbrella which covers SoC since the
Meson6 architecture. It's a facility to include/exclude Amlogic
drivers/DT, nothing else.

If you compare it to BCM or NXP, it's different situation, the
different ARCH_* actually targets totally different SoCs from
completely different Business Units or from companies acquisitions.

We should have named it ARCH_AMLOGIC since the beginning, but we
can't change history.

> In my opinion, it's a good time to split the Meson architecture into
> proper subsets, or rename it treewide (maybe only config option
> ARCH_MESON => ARCH_AMLOGIC).

MESON is only a codename to differentiate from other SoC vendors
because Amlogic used it as a codename for a long time.
Compare this to Allwinner's "sunxi" or Qualcomm's "msm".

This config has no functional mean, it's only a config namespace.

Renaming it would need renaming it in all subsystems Kconfig/Makefiles
and will certainly break builds with custom kernel configs
in various publicly used builds like Armbian, meta-meson, LibreELEC,
Debian, Suse, ...

So it's pointless to change, and even add a different one since
it's not a family differentiator since the Kernel is modular
and works around DT to determine which drivers to probe.

Neil

> 
>>>
>>>> +	bool "Amlogic IPC Platforms"
>>>> +	help
>>>> +	  This enables support for the arm64 based Amlogic IPC SoCs
>>>> +	  such as the C302X, C308L
>>>> +endif
>>>> +
>>>>    config ARCH_MVEBU
>>>>    	bool "Marvell EBU SoC Family"
>>>>    	select ARMADA_AP806_SYSCON
>>>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
>>>> index 7790ee42c68a..f231bd1723fd 100644
>>>> --- a/arch/arm64/configs/defconfig
>>>> +++ b/arch/arm64/configs/defconfig
>>>> @@ -46,7 +46,9 @@ CONFIG_ARCH_LG1K=y
>>>>    CONFIG_ARCH_HISI=y
>>>>    CONFIG_ARCH_KEEMBAY=y
>>>>    CONFIG_ARCH_MEDIATEK=y
>>>> +CONFIG_ARCH_AMLOGIC=y
>>>>    CONFIG_ARCH_MESON=y
>>>> +CONFIG_ARCH_AMLIPC=y
>>>>    CONFIG_ARCH_MVEBU=y
>>>>    CONFIG_ARCH_NXP=y
>>>>    CONFIG_ARCH_LAYERSCAPE=y
>>>> -- 
>>>> 2.37.1
>>>>
>>>>
>>>> _______________________________________________
>>>> linux-amlogic mailing list
>>>> linux-amlogic@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
>>>
>>
> 

