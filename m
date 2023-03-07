Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1A856ADA16
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 10:19:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbjCGJTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 04:19:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbjCGJTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 04:19:03 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0016848D7
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:18:55 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id cw28so49569675edb.5
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 01:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678180734;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CuNf2NVvheJLNGxzqkvv/znv6+L+XM0ua/fxZ/zPfpQ=;
        b=oRrMDrqei7CGPwxbyw236kyApFkrPIdJ11fmQ8WkLo11P6Fq2x+JFZr9numC2lo9yU
         j82Fjb09cZBmpitQ8NvTbPAimsycx3FGogjvLXK2MOnkDvg7jQ2jd+w+9UXtrxLUJ5c8
         8L94s/lu+iFX6d5HpCbq9/LTo2dgnLKohZoLWBtKj3BqY9Qg5c+jrHdm8rmne1z907K+
         4QtkPjuy3QJJUb9OYXfcORixCqd/g/rlDdwihiB0edle2J3WvQ9muGppMgLoXz0iP37h
         eqPNlSAJlqIvMyCL+ZpwumKpy6tm79SeNAF5fYXqMnS0Uk2voVdxGMB+DUcrSphMUwY6
         9j0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678180734;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CuNf2NVvheJLNGxzqkvv/znv6+L+XM0ua/fxZ/zPfpQ=;
        b=an5y9dJwtWqRxfwzplEMV1Am/9hZocWiAChN9img/+5OX5tbPbp6bFAaqOFTMGtmH8
         gJn7yiNeoKaNwWNQdJEkGaMxitA/SVHAyMANb3lOcF14SGOm1UuPNCSd+j1wpscy7q7t
         Pmh0VLR+0mhuMr/QSgrtYzUgofkCXErUvWY2RpU115hfE4B2g0GwMpiB9WsYnsob9uKl
         O0I/pl8RCK3Y1MRXrMI1c2QFTEh7nsZcbmNFAKLRUDeKZyMbqTKzgBQ+bjp1uhYc+u0q
         v6tAUekhuP2Te/W7/Xp/LxXappUudu8VrGdZi6AuD4/wU+MxUfvSTd2lCPhIOYdCnzJQ
         wksw==
X-Gm-Message-State: AO0yUKWDZ+ItdNlh7yertaGLJNMeWFwB/SQw9mp4xBCGT4Q2UVOYpoBn
        wDsmY3h3EzG/fdgnIUL1afRx9Q==
X-Google-Smtp-Source: AK7set8ZqbdOkkb/xSNuHWppBANKiagMl18dobUwwKvuJMnuKz6DSJMz+wIB6MhHUIedrtqve3DC1Q==
X-Received: by 2002:a17:906:3087:b0:8b1:7eda:702e with SMTP id 7-20020a170906308700b008b17eda702emr13933690ejv.32.1678180734152;
        Tue, 07 Mar 2023 01:18:54 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:5310:35c7:6f9e:2cd3? ([2a02:810d:15c0:828:5310:35c7:6f9e:2cd3])
        by smtp.gmail.com with ESMTPSA id jy24-20020a170907763800b008d7a8083dffsm5777576ejc.222.2023.03.07.01.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 01:18:53 -0800 (PST)
Message-ID: <48905ae2-a18c-40f4-15af-86cda7c343e6@linaro.org>
Date:   Tue, 7 Mar 2023 10:18:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 0/9] ARM: dts: imx28: Clean up older DTS files
Content-Language: en-US
To:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     =?UTF-8?Q?S=c3=a9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
 <46eb7d7e-4e44-e0d8-c591-30e06757900c@armadeus.com>
 <20230203131303.GY13319@pengutronix.de> <20230306025826.GE143566@dragon>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230306025826.GE143566@dragon>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/03/2023 03:58, Shawn Guo wrote:
> On Fri, Feb 03, 2023 at 02:13:03PM +0100, Sascha Hauer wrote:
>> On Fri, Feb 03, 2023 at 10:44:49AM +0100, Sébastien Szymanski wrote:
>>> Hello,
>>>
>>> On 2/1/23 21:33, Stefan Wahren wrote:
>>>> Since the imx28 belongs to the early ARM platforms which has been
>>>> adapted to DT, a lot of these DTS files are not in the best shape.
>>>> So this series tries to address this by using label references
>>>> and SPDX tags.
>>>>
>>>> Theses patches doesn't include functional changes. The resulting
>>>> DTB files has been verified with dtdiff.
>>>>
>>>> Stefan Wahren (9):
>>>>    ARM: dts: imx28-apf28: Convert to use label references
>>>>    ARM: dts: imx28-m28/sps1: Convert to use label references
>>>>    ARM: dts: imx28-apx4devkit: Convert to use label references
>>>>    ARM: dts: imx28-cfa10036: Convert to use label references
>>>>    ARM: dts: imx28-duckbill: Convert to use label references
>>>>    ARM: dts: imx28-duckbill-2: Include base board
>>>>    ARM: dts: imx28-evk: Convert to use label references
>>>>    ARM: dts: imx28-ts4600: Convert to use label references
>>>>    ARM: dts: imx28-tx28: add SPDX-License-Identifier
>>>>
>>>>   arch/arm/boot/dts/imx28-apf28.dts             |  96 ++--
>>>>   arch/arm/boot/dts/imx28-apf28dev.dts          | 312 ++++++------
>>>>   arch/arm/boot/dts/imx28-apx4devkit.dts        | 380 +++++++-------
>>>>   arch/arm/boot/dts/imx28-cfa10036.dts          | 193 ++++----
>>>>   arch/arm/boot/dts/imx28-cfa10049.dts          | 454 +++++++++--------
>>>>   arch/arm/boot/dts/imx28-cfa10055.dts          | 224 +++++----
>>>>   arch/arm/boot/dts/imx28-cfa10056.dts          | 146 +++---
>>>>   arch/arm/boot/dts/imx28-cfa10057.dts          | 252 +++++-----
>>>>   arch/arm/boot/dts/imx28-cfa10058.dts          | 186 ++++---
>>>>   arch/arm/boot/dts/imx28-duckbill-2-485.dts    | 174 +------
>>>>   .../arm/boot/dts/imx28-duckbill-2-enocean.dts | 198 +-------
>>>>   arch/arm/boot/dts/imx28-duckbill-2-spi.dts    | 211 ++------
>>>>   arch/arm/boot/dts/imx28-duckbill-2.dts        | 256 +++++-----
>>>>   arch/arm/boot/dts/imx28-duckbill.dts          | 196 ++++----
>>>>   arch/arm/boot/dts/imx28-evk.dts               | 462 +++++++++---------
>>>>   arch/arm/boot/dts/imx28-m28.dtsi              |  44 +-
>>>>   arch/arm/boot/dts/imx28-m28cu3.dts            | 354 +++++++-------
>>>>   arch/arm/boot/dts/imx28-m28evk.dts            | 420 ++++++++--------
>>>>   arch/arm/boot/dts/imx28-sps1.dts              | 201 ++++----
>>>>   arch/arm/boot/dts/imx28-ts4600.dts            |  80 ++-
>>>>   arch/arm/boot/dts/imx28-tx28.dts              |  38 +-
>>>>   21 files changed, 2142 insertions(+), 2735 deletions(-)
>>>>
>>>
>>> FYI, such changes have been rejected years ago:
>>>
>>> https://lore.kernel.org/linux-arm-kernel/20140512141814.GE8330@dragon/
>>
>> I hope the attitude has changed here in the last years. Device trees
>> with label references are so much easier to read and to maintain.
> 
> Ok, I'm flexible on this.  Considering Krzysztof has been doing the same
> for other platforms, I guess arm-soc folks changed their thoughts.

I know only one platform - Tegra - as intentionally not using labels.
When I was converting old DTS to label-style, I found several issues -
both minor and more important - thus it's a clear win for me.

Best regards,
Krzysztof

