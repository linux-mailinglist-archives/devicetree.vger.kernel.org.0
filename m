Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CC776FDD7C
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 14:10:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236410AbjEJMKl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 08:10:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236366AbjEJMKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 08:10:37 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A98D07D90
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 05:10:35 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-966287b0f72so847946366b.0
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 05:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683720634; x=1686312634;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eTjLLy4ojtzjD5uoABEgz8MwXSvkyXM/t1G6Br/kPBQ=;
        b=fvMiona17RaPFm65x1Y4XV0Q71eNEsrlYjjZTjHb/EBU171Rct5Ez6CWV2xmaoQ0HG
         JMUFAz86R/PYlzei7lCMICYlra6rlflpzIi7qGmYbSfst9jQbecllRMl2qX3S9SrJfMy
         nveQ7BY1MECDk8cU/Zj58YO2sLs3sCbJYey4f738cCzSj4xsZ7pbjAK/x/Mbne9TPc1E
         OCWylnqvIQFyyNX27EldrsZQrs/1kUEoMLmULEEpsMLX8OBto3Uy25zD3YUW7ElitRFI
         U0lLuDliPG6VKzPcq/yuALf+1sHIKdtmWA9BC6ag1kXJgvZfdWaPlsS417o28v2/ahDP
         GbmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683720634; x=1686312634;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eTjLLy4ojtzjD5uoABEgz8MwXSvkyXM/t1G6Br/kPBQ=;
        b=eXwPykUo69DRsyICOtwBITP1yJsKieiYWf6HArBWTFtJJV/kCffBT6WurgPdFpFago
         CMmHpu8cwyI+WGegrJuYRcac+G/5Svx9hGPgsl55S9+CjTj0Tq0nKesNZPqaWNBnpC+b
         KbibegyGczo2H1pArnbkhZuJR9HSsdssHmwuSTNR8es2trnUuVqs9/gSHiAR5dgvDCo3
         h95mdZ0eKzOil01o5fA4FyvsrZm4J5MTDrSKVKiT00s4gk8NLjQO3qBgYEsZ3CiXfbmk
         71zfN2icp1yJw8lD8vwEIdRA4Lp0SzQg4zXc157G2/Po7m33xBl7eYS2FVrziLTxiUTd
         mlTg==
X-Gm-Message-State: AC+VfDwuY5nkrmYimMWBkNETIeP5ToXS75gMAJ6k6Os08pf0FWHdIkPc
        pBG0uV57MPpZrNCjDXsiCCL6MQ==
X-Google-Smtp-Source: ACHHUZ4lUmz9+D167iuOmdYChHikFKIrcJaHyfymVAgJA5eZnK/wUn9uUVdABEp2+16xYklcoFCgow==
X-Received: by 2002:a17:907:3f83:b0:94e:8d26:f610 with SMTP id hr3-20020a1709073f8300b0094e8d26f610mr15245600ejc.28.1683720634138;
        Wed, 10 May 2023 05:10:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id mm18-20020a170906cc5200b008cecb8f374asm2594270ejb.0.2023.05.10.05.10.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 05:10:33 -0700 (PDT)
Message-ID: <d56d0441-2e0f-6280-7a2e-2a426690fb01@linaro.org>
Date:   Wed, 10 May 2023 14:10:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: Change pinconf controller node name to
 pinctrl
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Wei Xu <xuwei5@hisilicon.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Niravkumar L Rabara <niravkumar.l.rabara@intel.com>,
        devicetree@vger.kernel.org
References: <20230510103816.39015-1-tony@atomide.com>
 <d2e65698-8dcc-7d90-9239-cee38f496771@linaro.org>
 <20230510105350.GC14287@atomide.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510105350.GC14287@atomide.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 12:53, Tony Lindgren wrote:
> * Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [230510 10:51]:
>> On 10/05/2023 12:38, Tony Lindgren wrote:
>>> According to the pinctrl binding pinmux and pinctrl are valid controller
>>> names. Let's replace pinconf with pinctrl so we don't get new warnings
>>> when pinctrl-singl yaml binding gets merged.
>>>
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Dinh Nguyen <dinguyen@kernel.org>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>> Cc: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
>>> Cc: Ray Jui <rjui@broadcom.com>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Scott Branden <sbranden@broadcom.com>
>>> Cc: Wei Xu <xuwei5@hisilicon.com>
>>> Signed-off-by: Tony Lindgren <tony@atomide.com>
>>> ---
>>>  arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 2 +-
>>>  arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi              | 2 +-
>>>  arch/arm64/boot/dts/intel/socfpga_agilex.dtsi               | 2 +-
>>>  3 files changed, 3 insertions(+), 3 deletions(-)
>>
>> These should be either split by subsystem or you will have to push it
>> through soc.
> 

FWIW:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

