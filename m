Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CCBA52D19F
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 13:39:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237478AbiESLjq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 07:39:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237432AbiESLjp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 07:39:45 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DBA25C34B
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 04:39:43 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id g16so5909729lja.3
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 04:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=iOfmLFZ3K+DihYZeaY4JaBQPQHlZbV1/LG6i7QgQfOU=;
        b=PKBDIZ6QbHzaRk3BaFBRdDjA6axhknkwwcIWBeJhyktDppSNJxsBdQUEB+CcC8LgFH
         CIFv7spoYr1ZU/JODgf7yjgAeF2jUWQXrxGyxn5XePY/pDi7I5KzXXE8RCjI18nQBrl8
         tTQlR5HdQIhiSV1AudRzsxqdiifZdMKOX+MhgfVei18oe706YGERb28lMMDR51YDJ6zS
         bfoz/PkfMhe0rfN+Q5c02b0ZBHZG7BzRKsGiO+bT4ObN10ZBYYfAmItTIe1Wzr/ojU/O
         qRWqboob40+n4s/o6urst4Cwt/JaiHFvkkQVprjSBQvwJjxvBd4/HXicffvmK+0QpqeV
         vOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iOfmLFZ3K+DihYZeaY4JaBQPQHlZbV1/LG6i7QgQfOU=;
        b=DPKFm5hvs95MpflWUbk9bqDgkPTBuNSi/96lK2/zwF9uUFE0IuePhZ4EfAjrEclFA9
         jhjN2naHULG2y62xowqH7bOilBLNSNjYTQlIw73MJBvCvgUe3F/qoh+etnzUgiOG18Om
         UfbVOO65NBvJFOsd1mO8ImDpcbFkCi+2NUUwff7Fxrn9qbL16awcm8zsKqU1SICwO3mv
         /PHbjDyD2BdbnCL+DmugEuqJ6QW4gnPTsLoQgz1qpqSWtH6xOi7c0Ir9cEc+iMQFovXF
         6yL8Y7XwEYIxpnVdPn7Z4WsgbjF2/YPmtoAPLuxIM/qAFbFssdRwDn0R4Cel4O02BlHv
         xSeA==
X-Gm-Message-State: AOAM530q7lURlNJZ7coSel+/IMSCrDnLHiIWWJe3kfXp8wJdw6ii+rEy
        hPBClNptR/Aw0K4OwJB0ueUlhQ==
X-Google-Smtp-Source: ABdhPJyO5AYfHDB9TdggZJ+oTJ607zWhFM3uSaSuligGKEo3FzhyX7xcW8ZFQJB3mhx3CLGcrWpQSQ==
X-Received: by 2002:a2e:bd8b:0:b0:253:c964:5c4 with SMTP id o11-20020a2ebd8b000000b00253c96405c4mr2406375ljq.371.1652960381311;
        Thu, 19 May 2022 04:39:41 -0700 (PDT)
Received: from ?IPV6:2001:470:dd84:abc0::8a5? ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id m10-20020a056512358a00b0047255d21152sm262293lfr.129.2022.05.19.04.39.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 May 2022 04:39:40 -0700 (PDT)
Message-ID: <35051bec-98ea-b4c5-f734-06b3f22f3562@linaro.org>
Date:   Thu, 19 May 2022 14:39:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: Removal of qcom,board-id and qcom,msm-id
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Andy Gross <agross@kernel.org>,
        Olof Johansson <olof@lixom.net>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <a3c932d1-a102-ce18-deea-18cbbd05ecab@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <a3c932d1-a102-ce18-deea-18cbbd05ecab@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/05/2022 13:44, Krzysztof Kozlowski wrote:
> Hi,
> 
> There was an old effort of removal of qcom,board-id and qcom,msm-id
> properties from Qualcomm SoC-based boards like [1].
> 
> First approach was to document them, which (obviously) was not well
> received [2] [3] [4].
> 
> The solution from Stephen was to encode these in the board compatible,
> so bootloader can extract that information. That seemed to receive
> positive comments, at least from Rob. [5]
> 
> It was 2015... ~7 years later we are still things doing the same way,
> still with undocumented properties: qcom,board-id and qcom,msm-id.
> 
> 
> I would like to revive that topic, but before I start doing something
> pointless - any guidance on last patch from Stephen [5]? Was it ok? Some
> early NAKs?

I do not quite fancy the idea of using extra tools to process dtb files. 
At this moment it is possible to concatenate several kernel-generated 
dtb files together. AOSP developers use this to have an image that boots 
on both RB3 and RB5 boards.

I think that changing compat strings only makes sense if Qualcomm would 
use such compat strings in future. Otherwise we end up in a position 
where we have custom bootloaders for the RB3/RB5/etc, but the majority 
of the board requires extra processing steps.

So, I think, we should drop the unspecified usid aliases, document the 
board-id/msm-id/pmic-id properties and stick with them. They might be 
ugly, but they are expected/processed by the majority of devices present 
in the wild.

> [1]
> https://elixir.bootlin.com/linux/v5.18-rc7/source/arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts#L14
> 
> [2] https://lore.kernel.org/all/7229476.C4So9noUlf@wuerfel/
> [3]
> https://lore.kernel.org/all/1450371534-10923-20-git-send-email-mtitinger+renesas@baylibre.com/
> [4] https://lore.kernel.org/all/20151119153640.GC893@linaro.org/
> [5]
> https://lore.kernel.org/all/1448062280-15406-1-git-send-email-sboyd@codeaurora.org/
> 
> Best regards,
> Krzysztof


-- 
With best wishes
Dmitry
