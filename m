Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9BA4707B5C
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 09:50:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbjERHux (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 03:50:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230056AbjERHuw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 03:50:52 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6036326A1
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 00:50:43 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-510d8d7f8eeso2440539a12.0
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 00:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684396242; x=1686988242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4/o9witGFEqB6mrKPmPyN7LxJga6zPVGzIsG+4CQnq8=;
        b=w5bSqx5GpMEQCyeYAmlsIf6bauofXILA/X4zxIt4kAilYLBY+WaEsA0hieu2z8dfVj
         rWzeJUfyeQzpa0roxxRvoAaqJyMw5DaKWMHEUwtmzfYLZhy7BxP+xWEHb/F1Cd+RSPZi
         aQ6hIoOTdp+ZGUnMLfcrVLGlLpT6NC4k/UnD6j8I+G7jliWJRDRRdRQ/LI3BDLNV95NJ
         qNh2ZBg/Vxrw+DxDzBXJUr1Julg7NWZsN+m7YRp26fvNLF2mHdTTn6KAZcCdvB1uPviG
         ydUPWi0e/7n2419sZMRgWZ0Czr453YUGlSzJhcy9wpf7KWw/8mlzYBx+hMs6dRxwWrTx
         M89g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684396242; x=1686988242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4/o9witGFEqB6mrKPmPyN7LxJga6zPVGzIsG+4CQnq8=;
        b=BgjNJ/nDNQuNMty6Xn7jI7eOz5FMPsn6jfvdUnrheyNwfY4VH8/VQywzi64X0wpGH0
         NFSjyOFUtpC/qKxGD8LY4rQoAcnmCMvqAn8hoXaqUVBvQWwuX7ob69zNA8O7wyYweEuz
         84cm51Yb+pvMALnT6nQ0lOx9JKo8JCgcO17wANOrlwCLdWmJlN730oUE2Sht/Ok+7j2D
         EC2NGcmQZGqeBvWjFwxaFhDbIw4kAxTdgYOfj4hsTYgz5UWemysQa94Y+cKJUaF5soQm
         Qtv8w33tfsCPpFf9/MeWyJDuSbAeHBwa7QeQJbE4vyGL40CtQyzj4tm+0fQu5w/qHDdM
         3Eqg==
X-Gm-Message-State: AC+VfDyckX3UHllVRRz38pyPXrGg+NTVEpExcwU1NUHk5zEB/9J/ZR2Y
        KwTZN7GHP6UyIlNv2zRL1qq8PQ==
X-Google-Smtp-Source: ACHHUZ70S2nHNNnVtr6DSBNU6UZgaGprBFguEp6nw+dtOz9VHeWMa2SFrshKGj2gvhyoMBReXjNAgw==
X-Received: by 2002:a05:6402:544:b0:510:e790:48fe with SMTP id i4-20020a056402054400b00510e79048femr865646edx.6.1684396241721;
        Thu, 18 May 2023 00:50:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a2b:c408:5834:f48e? ([2a02:810d:15c0:828:a2b:c408:5834:f48e])
        by smtp.gmail.com with ESMTPSA id t20-20020aa7d4d4000000b00510d7152dc7sm262996edr.30.2023.05.18.00.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 00:50:41 -0700 (PDT)
Message-ID: <2048ed2a-ae6f-b425-38e4-4ba973e04398@linaro.org>
Date:   Thu, 18 May 2023 09:50:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH net-next v4 1/2] dt-bindings: arm: mediatek: add
 mediatek,boottrap binding
Content-Language: en-US
To:     Daniel Golle <daniel@makrotopia.org>
Cc:     Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org,
        netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Qingfang Deng <dqfext@gmail.com>,
        SkyLake Huang <SkyLake.Huang@mediatek.com>,
        Simon Horman <simon.horman@corigine.com>
References: <cover.1683813687.git.daniel@makrotopia.org>
 <f2d447d8b836cf9584762465a784185e8fcf651f.1683813687.git.daniel@makrotopia.org>
 <55f8ac31-d81d-43de-8877-6a7fac2d37b4@lunn.ch>
 <7e8d0945-dfa9-7f61-b075-679e8a89ded9@linaro.org>
 <ZGWRHeE3CXeAnQ-5@makrotopia.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZGWRHeE3CXeAnQ-5@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/05/2023 04:44, Daniel Golle wrote:
> On Fri, May 12, 2023 at 08:54:36AM +0200, Krzysztof Kozlowski wrote:
>> On 11/05/2023 17:53, Andrew Lunn wrote:
>>> On Thu, May 11, 2023 at 04:10:20PM +0200, Daniel Golle wrote:
>>>> The boottrap is used to read implementation details from the SoC, such
>>>> as the polarity of LED pins. Add bindings for it as we are going to use
>>>> it for the LEDs connected to MediaTek built-in 1GE PHYs.
>>>
>>> What exactly is it? Fuses? Is it memory mapped, or does it need a
>>> driver to access it? How is it shared between its different users?
>>
>> Yes, looks like some efuse/OTP/nvmem, so it should probably use nvmem
>> bindings and do not look different than other in such class.
> 
> I've asked MediaTek and they have replied with an elaborate definition.
> Summary:
> The boottrap is a single 32-bit wide register at 0x1001f6f0 which can
> be used to read back the bias of bootstrap pins from the SoC as follows:

Is it within some other address space? Register address suggests that.

In such case you should not create a device in the middle of other
device's address space. You punched a hole in uniform address space
which prevents creating that other device for entire space.

> 
> * bit[8]: Reference CLK source && gphy port0's LED
> If bit[8] == 0:
> - Reference clock source is XTRL && gphy port0's LED is pulled low on board side
> If bit[8] == 1:
> - Reference clock source is Oscillator && gphy port0's LED is pulled high on board side
> 
> * bit[9]: DDR type && gphy port1's LED
> If bit[9] == 0:
> - DDR type is DDRx16b x2 && gphy port1's LED is pulled low on board side
> If bit[9] == 1:
> - DDR type is DDRx16b x1 && gphy port1's LED is pulled high on board side
> 
> * bit[10]: gphy port2's LED
> If bit[10] == 0:
> - phy port2's LED is pulled low on board side
> If bit[10] == 1:
> - gphy port2's LED is pulled high on board side
> 
> * bit[11]: gphy port3's LED
> If bit[11] == 0:
> - phy port3's LED is pulled low on board side
> If bit[11] == 1:
> - gphy port3's LED is pulled high on board side
> 
> If bit[10] == 0 && bit[11] == 0:
> - BROM will boot from SPIM-NOR
> If bit[10] == 1 && bit[11] == 0:
> - BROM will boot from SPIM-NAND
> If bit[10] == 0 && bit[11] == 1:
> - BROM will boot from eMMC
> If bit[10] == 1 && bit[11] == 1:
> - BROM will boot from SNFI-NAND
> 
> The boottrap is present in many MediaTek SoCs, however, support for
> reading it is only really needed on MT7988 due to the dual-use of some
> bootstrap pins as PHY LEDs.
> 
> We could say this is some kind of read-only 'syscon' node (and hence
> use regmap driver to access it), that would make it easy but it's not
> very accurate. Also efuse/OTP/nvmem doesn't seem accurate, though in
> terms of software it could work just as well.
> 
> I will update DT bindings to contain the gained insights.

If this is separate address space with one register, then boottrap
sounds ok. If you have multiple read only registers with fused values,
then this is efuse region, so something like nvidia,tegra20-efuse.


Best regards,
Krzysztof

