Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 515F5658A23
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 09:04:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233095AbiL2IEZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 03:04:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbiL2IEY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 03:04:24 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62F80FADB
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 00:04:23 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id 1so26556631lfz.4
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 00:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0DYLiElYQgv4EGpAL4uv9JD+TX+jA5euJMoTh7FRrC8=;
        b=PBZ+vnE4/SqRWBbQf/R6Bu3YpqzM3EBlm1qj8DgHKEx1Zpc1IzWcqcLMmR1jU22Ypa
         BXfRxNdWJHUeUN3+wQ3XMj1iP0VK6uNXCWlNAxoN2PnXUH2jMd0PmarK2gDF09rgRDOd
         bBwVCQ2XKkRawy+coeJb6rZdiXeEqtgwAAo4wygIeo+RzO6z+hW5HTlr/APoWtyQDNJi
         fCvuIXATG5i+PBDDsL5juXSe2L9OR1qvVWimKMo7IgFhjj3Ay6Sloos9fC8D6F8kG15n
         Jk8Iy/daslBdQ2/xDhqFeLW6JMINvvZKBl4EFmCU/K6vy/N0Xge6+gUmridkWSHgCi/e
         f01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0DYLiElYQgv4EGpAL4uv9JD+TX+jA5euJMoTh7FRrC8=;
        b=sWug7aeuhqt4AVW22veZ+cFYmz76lhn1Z2nZOkyV9W4yey4mrAkRAWhb3zDPmolRJ+
         4fEQndzMc7gYBNDeTCHZkjqMjn3T75KrlE5mTbyxsBztwSptrkKCcKrR7Bar0psg6YKr
         vwbyfUZ3umuE0FpbctBsjJPj9E6n+Wiaf2khXBhWTMBYFRAq2AX7yqEyXhSKjNwCHA23
         dwMS0JkfXcsaNKXS+a+tMDnMLVj2Hq3Ggx2bJitovy8u0/1a+61Hx7HYQd5lbJVd8q1P
         Gj7LPXo2VLV1yKptzm9vtaUKpDyFm4A5fk0ukAcH5qNBmJlTlVi7rJHNomgD0eSGXBba
         3V0A==
X-Gm-Message-State: AFqh2kovFoESSxh6gKk+imS+kYOVtRmDSLYFtmz6Hj20GcEKDDa2Nomk
        9N0A8G1KGUmZYvbUz60OiR+wHg==
X-Google-Smtp-Source: AMrXdXsBM/+5SkTv2g2UOivb3O+hOArlgmPvXOxeIWL0XdAQwTEvZjoR3USSVK3GX7IJ5Jgc1VuWqA==
X-Received: by 2002:a05:6512:31c5:b0:4a4:68b9:66f1 with SMTP id j5-20020a05651231c500b004a468b966f1mr8800288lfe.60.1672301061752;
        Thu, 29 Dec 2022 00:04:21 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t12-20020a056512208c00b004b551505c29sm2980736lfr.218.2022.12.29.00.04.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 00:04:21 -0800 (PST)
Message-ID: <ba935a94-ccd6-e062-a9f4-2431cc69f097@linaro.org>
Date:   Thu, 29 Dec 2022 09:04:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/2] ASoC: mediatek: mt8186: support rt5682s_max98360
To:     Jian Tong <tongjian@huaqin.corp-partner.google.com>
Cc:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        perex@perex.cz, tiwai@suse.com,
        angelogioacchino.delregno@collabora.com, nfraprado@collabora.com,
        jiaxin.yu@mediatek.com, chunxu.li@mediatek.com,
        ajye_huang@compal.corp-partner.google.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221228122230.3818533-1-tongjian@huaqin.corp-partner.google.com>
 <20221228122230.3818533-2-tongjian@huaqin.corp-partner.google.com>
 <cae5273e-aac5-0c4c-6686-fb2cbc5379e3@linaro.org>
 <CAKKM_AVxcSW+ZaTbMuR-+=Fbkr64Arm2-3-MPWmoYV9Dpxkqdw@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAKKM_AVxcSW+ZaTbMuR-+=Fbkr64Arm2-3-MPWmoYV9Dpxkqdw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/12/2022 02:57, Jian Tong wrote:
> Hi,
> Yes, this is my full name.

Here you use different, so that's confusing...

> 
> Best regards,
> tongjian
> 
> 
> On Wed, Dec 28, 2022 at 8:37 PM Krzysztof Kozlowski <
> krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 28/12/2022 13:22, tongjian wrote:
>>> Add support for using the rt5682s codec together with max98360a on
>>> MT8186-MT6366-RT1019-RT5682S machines.
>>>
>>> Signed-off-by: tongjian <tongjian@huaqin.corp-partner.google.com>
>>
>> The author and SoB should be full name. Is this correct (full)
>> transliteration of your name?
>>
>>
>> Best regards,
>> Krzysztof
>>
>>
> 

Best regards,
Krzysztof

