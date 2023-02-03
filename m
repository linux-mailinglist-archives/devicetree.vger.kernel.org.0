Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9EE4689517
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 11:18:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231307AbjBCKQj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 05:16:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232782AbjBCKQg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 05:16:36 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0E4A9D075
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 02:16:16 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id bk16so4158767wrb.11
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 02:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0lYXkKMun7ikzhtCmkofU9uXnxgiZjQfh+KdvSToRsc=;
        b=CeYCoaTbQXWBQLgJJvclAmC7RsA19Ja9b5zjXN+eI7I6GCmxXtETA1mRROewoznmH3
         ARDfkjtf3tdwJGeEbTvXxWWUKPTkGrTqQgDABD4ZrwVdSyph+io7gt1FPWtL1ImQbuwP
         e8orsi/9iBK4tF/omaVLNRygWpX9FSK7DzWORdXp6H4GOiQYOS1H5+sbnlAjhmXslHwb
         Uc6YFdhRJadpklgzpbcHvM8Iau/M9DkUb7NoQ1z/0CBYWmmVVkP4tPJW/iYlMEG38Roj
         7U4hLDZb/qWB695IFlnjrXeaJEvE6xCvSQywKZ8DP7PMZafphAtQJ12q9Ifr+FlO/+uZ
         w01Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0lYXkKMun7ikzhtCmkofU9uXnxgiZjQfh+KdvSToRsc=;
        b=vLtoRxf8ELPiDkcQcyAU7BzspMuZ8KCueFLG6ziqWe49nuUWACrxtqOVCllG56lMkO
         Nz68egugnFUj721GAFChMIrznk2ZETs/aBU+LtDwtmmVD8vzRY94l4j2WF8jAOfDwzfs
         pjqb3TvKeQU9V6oKikgkrzX7FS9+0h4NSth76HWx90M5navS5BbJer9P+oZBcXxPcSZI
         wOGNzKelHKLQuFCDYsmKkaKCU8Y/hw3ukYrqcps3TdvXlUEAKLtIoaADE+9a6S6uEu98
         5RxpHu+/cjiAxfLyeJnrWNK0gFyGMUbWF+9Rcd9idjKKA9hRHdjgR/j11J9H7WRp/j+1
         riOg==
X-Gm-Message-State: AO0yUKU6z36blJ7jmTWDYBBm09V8Sn3ctjxjvj9RzS+z/V0+aUcXvw2M
        Ul0qdz3R+IBlbR7/eBKf75q/bqjat9TuRLjH
X-Google-Smtp-Source: AK7set/ouYSch2v89fWrI6uGNJi9X0/6c9Dgy1TVQ72YjQ3bBDJms4y6j5IqMEXHGgPVuLVOnV7Vhw==
X-Received: by 2002:a5d:420d:0:b0:2c3:ba99:44bc with SMTP id n13-20020a5d420d000000b002c3ba9944bcmr7062801wrq.68.1675419375085;
        Fri, 03 Feb 2023 02:16:15 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d3-20020adfef83000000b002c3daf229b1sm39633wro.55.2023.02.03.02.16.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 02:16:13 -0800 (PST)
Message-ID: <95e3286b-8018-5cb4-80c7-7b7d77a296d3@linaro.org>
Date:   Fri, 3 Feb 2023 11:16:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 0/9] ARM: dts: imx28: Clean up older DTS files
Content-Language: en-US
To:     =?UTF-8?Q?S=c3=a9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230201203338.9525-1-stefan.wahren@i2se.com>
 <46eb7d7e-4e44-e0d8-c591-30e06757900c@armadeus.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <46eb7d7e-4e44-e0d8-c591-30e06757900c@armadeus.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/02/2023 10:44, Sébastien Szymanski wrote:
> Hello,
> 
> On 2/1/23 21:33, Stefan Wahren wrote:
>> Since the imx28 belongs to the early ARM platforms which has been
>> adapted to DT, a lot of these DTS files are not in the best shape.
>> So this series tries to address this by using label references
>> and SPDX tags.
>>
>> Theses patches doesn't include functional changes. The resulting
>> DTB files has been verified with dtdiff.
>>
>> Stefan Wahren (9):
>>    ARM: dts: imx28-apf28: Convert to use label references
>>    ARM: dts: imx28-m28/sps1: Convert to use label references
>>    ARM: dts: imx28-apx4devkit: Convert to use label references
>>    ARM: dts: imx28-cfa10036: Convert to use label references
>>    ARM: dts: imx28-duckbill: Convert to use label references
>>    ARM: dts: imx28-duckbill-2: Include base board
>>    ARM: dts: imx28-evk: Convert to use label references
>>    ARM: dts: imx28-ts4600: Convert to use label references
>>    ARM: dts: imx28-tx28: add SPDX-License-Identifier
>>
>>   arch/arm/boot/dts/imx28-apf28.dts             |  96 ++--
>>   arch/arm/boot/dts/imx28-apf28dev.dts          | 312 ++++++------
>>   arch/arm/boot/dts/imx28-apx4devkit.dts        | 380 +++++++-------
>>   arch/arm/boot/dts/imx28-cfa10036.dts          | 193 ++++----
>>   arch/arm/boot/dts/imx28-cfa10049.dts          | 454 +++++++++--------
>>   arch/arm/boot/dts/imx28-cfa10055.dts          | 224 +++++----
>>   arch/arm/boot/dts/imx28-cfa10056.dts          | 146 +++---
>>   arch/arm/boot/dts/imx28-cfa10057.dts          | 252 +++++-----
>>   arch/arm/boot/dts/imx28-cfa10058.dts          | 186 ++++---
>>   arch/arm/boot/dts/imx28-duckbill-2-485.dts    | 174 +------
>>   .../arm/boot/dts/imx28-duckbill-2-enocean.dts | 198 +-------
>>   arch/arm/boot/dts/imx28-duckbill-2-spi.dts    | 211 ++------
>>   arch/arm/boot/dts/imx28-duckbill-2.dts        | 256 +++++-----
>>   arch/arm/boot/dts/imx28-duckbill.dts          | 196 ++++----
>>   arch/arm/boot/dts/imx28-evk.dts               | 462 +++++++++---------
>>   arch/arm/boot/dts/imx28-m28.dtsi              |  44 +-
>>   arch/arm/boot/dts/imx28-m28cu3.dts            | 354 +++++++-------
>>   arch/arm/boot/dts/imx28-m28evk.dts            | 420 ++++++++--------
>>   arch/arm/boot/dts/imx28-sps1.dts              | 201 ++++----
>>   arch/arm/boot/dts/imx28-ts4600.dts            |  80 ++-
>>   arch/arm/boot/dts/imx28-tx28.dts              |  38 +-
>>   21 files changed, 2142 insertions(+), 2735 deletions(-)
>>
> 
> FYI, such changes have been rejected years ago:
> 
> https://lore.kernel.org/linux-arm-kernel/20140512141814.GE8330@dragon/

That's a bit surprising. I did it for my Samsung platforms, doing it now
for Qualcomm.

If the platform is obsolete, indeed changes might not have sense. But
even if a very old platform is still used and maintained, then
refactoring and improving quality should be welcomed, even if it affects
out of tree users. Any out of tree users should anyway upstream
themselves or it is their problem.

Best regards,
Krzysztof

