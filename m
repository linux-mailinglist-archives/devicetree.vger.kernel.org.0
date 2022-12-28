Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88272657687
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 13:38:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbiL1Mho (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 07:37:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232935AbiL1MhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 07:37:18 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66C8910FF4
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 04:37:16 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id b3so23468628lfv.2
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 04:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=szUYv0uneyN7YHYxEv+1bpNF1FTM8iygqyO0FKMlC7o=;
        b=WOVDjahbgzvlWA+I1nfhLWRgkZ9OLauPupQIX9iHFBEbdG8UN1RK9cBk1C1lyT3fTt
         M8sP2kN+ZfEc0G/6RdgTqJ8VY/1ISqEaKr6aGlvBLyAp1z+6nm656TsD+NlwlHqAqUup
         6K1j9LRupJG4y9A3X8omkxFf7AoNQ2HTj5Jq/V8I9J0C+nIOWRdneTA+I4UZ/UiAHjAi
         ahjoVbi51mljf696KPwr8etfQCOeRJYRFbfXjkDtECh+NQiS182weSxvczkUsV01bKTf
         9FbvEHLrlGbTsDPaiqZBZsi68TiUfCAbJejheVLEvaTvdgfLnLO/DxzpGHofAqiqCkej
         I4og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=szUYv0uneyN7YHYxEv+1bpNF1FTM8iygqyO0FKMlC7o=;
        b=19QM6iHn/FGndqxOg6+T6b6vl5Ob4sALpc993lmvyhP6F7hzkmlRjUsZY1T2qgZ5mG
         AuqjdkuUpy3m96516C5ijNJ4ck/1qc8AeOH+Yb3/u67x8woSwueGbIkUN53M4qLe/JrU
         BLnxT8JJuqz952w7tmkIq3W/lRlmytu3bAL4Rm1DIojLKe79nNHrYfJnxdPrvheGP1H/
         ohjaklhlNITgE/Z2B5X4GVVSkiDyzTGu+FmLrRXW9Y5wEqRS6EAITVfnI8Aj2jB4E4zt
         yypzImvRRQe1kXZeOU1kw2NyUZX81sn7B7aINs0sbL8kEpjZvqfYt/HKbNCx0Fc6VQuS
         71gw==
X-Gm-Message-State: AFqh2kqgINic8ebuCSH67VK/ZqTUfXAtsJRVtIsHKI8bXTtbQlCliNJg
        MndMbqH8J/aMpo6NTYWINeZWHw==
X-Google-Smtp-Source: AMrXdXvZp7CP84l0lYhtw+B8zuMLZIv9fPypPu/nFTNLtiVo6H2Eh797Bsi99jc32fqou298yyIzXg==
X-Received: by 2002:a05:6512:228a:b0:4b5:7f79:f8bd with SMTP id f10-20020a056512228a00b004b57f79f8bdmr9812553lfu.22.1672231034559;
        Wed, 28 Dec 2022 04:37:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q21-20020a19a415000000b004a46f92a15bsm2661813lfc.41.2022.12.28.04.37.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 04:37:13 -0800 (PST)
Message-ID: <cae5273e-aac5-0c4c-6686-fb2cbc5379e3@linaro.org>
Date:   Wed, 28 Dec 2022 13:37:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/2] ASoC: mediatek: mt8186: support rt5682s_max98360
Content-Language: en-US
To:     tongjian <tongjian@huaqin.corp-partner.google.com>,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        perex@perex.cz, tiwai@suse.com,
        angelogioacchino.delregno@collabora.com, nfraprado@collabora.com,
        jiaxin.yu@mediatek.com, chunxu.li@mediatek.com,
        ajye_huang@compal.corp-partner.google.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221228122230.3818533-1-tongjian@huaqin.corp-partner.google.com>
 <20221228122230.3818533-2-tongjian@huaqin.corp-partner.google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221228122230.3818533-2-tongjian@huaqin.corp-partner.google.com>
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

On 28/12/2022 13:22, tongjian wrote:
> Add support for using the rt5682s codec together with max98360a on
> MT8186-MT6366-RT1019-RT5682S machines.
> 
> Signed-off-by: tongjian <tongjian@huaqin.corp-partner.google.com>

The author and SoB should be full name. Is this correct (full)
transliteration of your name?


Best regards,
Krzysztof

