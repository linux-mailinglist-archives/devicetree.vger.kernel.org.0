Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2EFD71F0FC
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 19:41:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233022AbjFARkl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 13:40:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232984AbjFARkb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 13:40:31 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7B79E40
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 10:40:23 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-3f80e055549so8470121cf.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 10:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685641223; x=1688233223;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=13OtiVNDk7Qnhrn0b5bUKmlN5jJ6hIbpEhAOIHlDDmE=;
        b=HEdo07YPpe45yznR/Peu97wwu9mt06mz7RY7ywsbD3e6FPcnkvFnLJVhVVTMaZ2O/U
         9D26+YOj8dcBWdGNKy1+Vf+maLnQNK+p2l1m2y8QjDDcERPrqZSFv8N35AfnMZHFzhEG
         om0v8ecAwsEwNFsUmnw50nVcIW/qmsm3cav4LPgKfwxZXuG/zfK2lXiNTrgx/YXRTgLS
         2ZgE4G/Xk+O1r+2euIEbp2An6KsgFeBrCp9ihYanVrowKPpjsaEhKM3Kwcftvnbk9GmJ
         TBGEynm6vfEX/K6KWOi7LBmpY3onaPGEw0HMR4shDe3smz2+mWBnZG7T0npAn6y8I1v0
         Epgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685641223; x=1688233223;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=13OtiVNDk7Qnhrn0b5bUKmlN5jJ6hIbpEhAOIHlDDmE=;
        b=ZaUm0N+BKlpY6bq0BX01en3V85Ftgwvbb75LNOVaDOsAkvAuNwutHvz2Fk1IeyOHA5
         0padKVnnyz/9qzWnZ99di+qJ2II5kvNnDcm+rVJUFw6PwQ5Ds2viy7SY4dHeoYdG5nPP
         1b8k6y9y/0WKq9jz9PRSBf639iv6NR8sE96cX1lU/+fbyYPYS0ERnE5EgPM5AN3ygHTt
         GpXYdakOwXnnO7GKvfpVIzmtkwMB9G1iDoTCe7Ac/OcBfSiJX+WAhiI5GitXRHL3B6M0
         aTT8N/byNJZBJ4+Bz1Ip4QEjJVRGdN8RiyTGtLLtZylcQtZzqHJq5Sj/iwuRSrzgNjC2
         SUDA==
X-Gm-Message-State: AC+VfDwm5fnth/NRVymTO9GYAIhOFDkT9wkFhyyCR9oJHUHumqVhXhWD
        IymOoJ76Rchai7tkts+xVbY=
X-Google-Smtp-Source: ACHHUZ40EkCbcoq3YvjbjiQWgnYXEIvqE8x4wuUqAgp8yqiBLmpyEGCyTBaO8dexhya9WlWfemqUdQ==
X-Received: by 2002:ac8:5e4d:0:b0:3f6:ac1b:47a3 with SMTP id i13-20020ac85e4d000000b003f6ac1b47a3mr9675721qtx.26.1685641222840;
        Thu, 01 Jun 2023 10:40:22 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id e13-20020ac8490d000000b003f7369c7302sm7957235qtq.89.2023.06.01.10.40.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 10:40:21 -0700 (PDT)
Message-ID: <ee304442-b8bf-ef9e-e10e-64ec4daf8ba1@gmail.com>
Date:   Thu, 1 Jun 2023 10:40:07 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 0/2] arm*/dts: Enable symbols for rpi device trees
Content-Language: en-US
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     Conor Dooley <conor.dooley@microchip.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Aurelien Jarno <aurelien@aurel32.net>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20230530175624.2360218-1-u.kleine-koenig@pengutronix.de>
 <20230601140214.i4yvya763sotyjz7@pengutronix.de>
 <20230601-rake-calamari-eda0c88bd9bf@wendy>
 <d47958c6-eec6-badd-8924-62807461546f@gmail.com>
In-Reply-To: <d47958c6-eec6-badd-8924-62807461546f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/1/23 08:37, Florian Fainelli wrote:
> 
> 
> On 6/1/2023 7:13 AM, Conor Dooley wrote:
>> On Thu, Jun 01, 2023 at 04:02:14PM +0200, Uwe Kleine-König wrote:
>>> Hello,
>>>
>>> On Tue, May 30, 2023 at 07:56:22PM +0200, Uwe Kleine-König wrote:
>>>> based on an earlier submission by Aurelien Jarno, I rebased and 
>>>> slightly
>>>> simplified the patches.
>>>>
>>>> There was some related irc conversion in #armlinux. Quoting the 
>>>> relevant
>>>> parts:
>>>>
>>>> 1685078851< ukleinek> arnd, [florian]: Who would pick up 
>>>> https://lore.kernel.org/linux-arm-kernel/20220410225940.135744-1-aurelien@aurel32.net ?
>>>> 1685078920< ukleinek> arnd, [florian]: If there is an agreement in 
>>>> general that this is a good idea, I can coordinate with Aurelien 
>>>> that for arm64 there is a v2 with the simpler approach I pointed out.
>>>> 1685083481< arnd> ukleinek: I have no objections to this, if 
>>>> [florian] wants to pick it up and send me for 6.5.
>>>> 1685083809< arnd> robher: any comments on this one?
>>>> 1685466520 < [florian]> ukleinek: I was hoping we would get an Ack 
>>>> for robher before picking it up in the brcm soc tree, don't want to 
>>>> ruffle any feathers unnecessarily
>>>>
>>>> So it seems to start a beneficial chain reaction, only Rob's Ack is
>>>> needed.
>>>
>>> Not sure this might help, but as Rob seems to be away for mail, I'll
>>> try: arch/arm64/boot/dts/nvidia/Makefile and
>>> arch/arm64/boot/dts/ti/Makefile also make use of -@. So this patch at
>>> least isn't a completely new thing and maybe Florian might dare to take
>>> this patch even without Rob's explicit consent?!
>>
>> FWIW you can have mine, unless it is explicitly Rob's you want Florian.
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> OK, I will take yours and queue those up!

Applied both with Conor's ack. Uwe, please copy 
bcm-kernel-feedback-list@broadcom.com next time, so the patches show up 
in our patchwork and make my life a tad easier ;)

Thanks everyone.
-- 
Florian

