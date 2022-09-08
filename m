Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C4065B2137
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:51:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232701AbiIHOvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232708AbiIHOvN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:51:13 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 683C0E580E
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:51:12 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id d2so9427719wrn.1
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ha0C+bSRVrCJnfze+oX7CrRnjc5k1OyYXKTo3Jn7s8c=;
        b=b6OSmTFRch9kSSTz+Ta0LqaQz5NZSX9z6NLPWHgft6m8cIo2tiqNk165erPHJGcDao
         lTMXKeGOJee77p4IwEQOLjWVzyAk/SVWvF0rBWvJNOEoYLh2KbANQhRVLrYnWMoP8OEs
         QKPnonzkpYwxCrDr8iyWIpnkYmm/s8MADVWQJ6GC1LP2JfArmkbWhMdYgPekAdSaThgn
         5KrElKBmhvACNt2aiv5VpDlmmtuiJZ3erkC7G/aG837/YMkpw61ghpvHLqZw8Sur0MrZ
         p7PsQzbW9hYOW8wwZ7/KQd4R9GeKHSUveJq/JISF6YgN3A/BWHkd7zQM14YJzTBdW854
         RykA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ha0C+bSRVrCJnfze+oX7CrRnjc5k1OyYXKTo3Jn7s8c=;
        b=BfaB8fdOKjoWsutfBCJl8yxtcR+t8l3nwvRUndbh/Sbrrmrl5bFGJ3mlEc0sAx502W
         Nw2ZTyIItPicYwUZuee1+CZWNnA1G70zmPWT5Y3fhzkY/NtXFcWz1h2K8vKGfbusr5Xc
         da33SDlPXgGu5GZ+TNQcdjuaG4EuaAhe4gMjGDT3il3iT1GSeK16pfWsakzEkcJrMsZF
         RZk4Qlw8oarz1dTOcGjNQlwulsF+Kg0Soc8XFZRi5GQaHCZWO4W9k9dld/uV5gIS2xXg
         s6HzLGu0NTtpH7906o0+upVWn430zZKDFy27J+Nl5Zt66ov1E5p8LDLC980whhBg9w1J
         KRYg==
X-Gm-Message-State: ACgBeo28pOIUhJ4eHNMdlQu2y2xkVKcbjLfIHWFxJ31eDrF2NKcuYMVS
        ZpTZN6OXE8WVOpECEDXt7/+a+g==
X-Google-Smtp-Source: AA6agR5Hlu9JtsEx8ytH4x1f+4vTBU61IDC9bWPKmQGyMYnAms22L0KdfVkzm0vQtOGJvd+kl9A6mg==
X-Received: by 2002:adf:db85:0:b0:225:2d24:9455 with SMTP id u5-20020adfdb85000000b002252d249455mr5579454wri.711.1662648670996;
        Thu, 08 Sep 2022 07:51:10 -0700 (PDT)
Received: from [10.35.4.106] ([167.98.27.226])
        by smtp.gmail.com with ESMTPSA id a10-20020a05600c348a00b003a31ca9dfb6sm3485742wmq.32.2022.09.08.07.51.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:51:10 -0700 (PDT)
Message-ID: <e56b67a3-4721-638b-a3d6-54e4d407598d@sifive.com>
Date:   Thu, 8 Sep 2022 15:51:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v3 0/6] Use composable cache instead of L2 cache
Content-Language: en-GB
To:     Zong Li <zong.li@sifive.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
        paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
        greentime.hu@sifive.com, conor.dooley@microchip.com, bp@alien8.de,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-edac@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220908144424.4232-1-zong.li@sifive.com>
From:   Ben Dooks <ben.dooks@sifive.com>
In-Reply-To: <20220908144424.4232-1-zong.li@sifive.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 15:44, Zong Li wrote:
> Since composable cache may be L3 cache if private L2 cache exists, we
> should use its original name "composable cache" to prevent confusion.
> 
> This patchset contains the modification which is related to ccache, such
> as DT binding and EDAC driver.
> 
> The DT binding is based on top of Conor's patch, it has got ready for
> merging, and it looks that it would be taken into the next few 6.0-rc
> version. If there is any change, the next version of this series will be
> posted as well.
> https://lore.kernel.org/linux-riscv/20220825180417.1259360-2-mail@conchuod.ie/

Is there a change log for the v2..v3 versions of this patch series?

> Ben Dooks (2):
>    soc: sifive: ccache: reduce printing on init
>    soc: sifive: ccache: use pr_fmt() to remove CCACHE: prefixes
> 
> Zong Li (4):
>    dt-bindings: sifive-ccache: change Sifive L2 cache to Composable cache
>    soc: sifive: ccache: rename SiFive L2 cache to Composable cache.
>    soc: sifive: ccache: determine the cache level from dts
>    soc: sifive: ccache: define the macro for the register shifts
> 
>   ...five-l2-cache.yaml => sifive,ccache0.yaml} |  28 ++-
>   drivers/edac/Kconfig                          |   2 +-
>   drivers/edac/sifive_edac.c                    |  12 +-
>   drivers/soc/sifive/Kconfig                    |   6 +-
>   drivers/soc/sifive/Makefile                   |   2 +-
>   .../{sifive_l2_cache.c => sifive_ccache.c}    | 200 ++++++++++--------
>   .../{sifive_l2_cache.h => sifive_ccache.h}    |  16 +-
>   7 files changed, 151 insertions(+), 115 deletions(-)
>   rename Documentation/devicetree/bindings/riscv/{sifive-l2-cache.yaml => sifive,ccache0.yaml} (83%)
>   rename drivers/soc/sifive/{sifive_l2_cache.c => sifive_ccache.c} (31%)
>   rename include/soc/sifive/{sifive_l2_cache.h => sifive_ccache.h} (12%)
> 

