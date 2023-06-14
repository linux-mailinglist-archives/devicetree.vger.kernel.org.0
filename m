Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC4DC7106AD
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 09:48:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230381AbjEYHsL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 03:48:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239371AbjEYHry (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 03:47:54 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D5D7E47
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 00:47:52 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-30a8dc89c33so1150632f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 00:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685000871; x=1687592871;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fcLFKdljz2fiStodXESMDNQYgizAqnQkUT6+nLHI9TA=;
        b=rW+A5drPpxlDosR1QnN36uQbJ+vg4/JAcj3McscTxl4BrSuG230tTNQ6lGPLYSTBb2
         b1EI9uT365qlOx/3HOBMCcgcZLOHgVModK2CNJ2NNuUXBOA5OSbVyKhTuPc6gZc5m2R9
         KWyYUr2py60xp7DC0uph1JRNCBgIhmxiMor83jtTe1Zg8FqWxjWBsZGPP5rFcluJknm6
         yKR3iKy4oQVi99y5pmcciB7uPaHeSBsg1Ax8cS4vlZpg/6KWEFzAp6FGiFpC/K6wTUZr
         UVc2cwk0susO/KuGGOxmDrr9AdYNvbSk+NIojYjvRsQIlT9ZHoG+BsT/FVmV3leKs06R
         5j+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685000871; x=1687592871;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fcLFKdljz2fiStodXESMDNQYgizAqnQkUT6+nLHI9TA=;
        b=Y0qzZ1Ghl8g2XTfIRjstJjQnohI0hVJhwXeWM7b4bXqvVQSuE4jCfiF3W030VItFSj
         FUlPgr6noybjV4Vb2gySdL2JaCfjUjMQOujvmtAumDXRR7vU+cLIdnxOlMSX9Ts1vC24
         IkI3gBpKaz+Lk5vu4MpUbDlTIbUiiNnGR2UKhxMa5nudQ6qQQoOQLTI89QGt0HOXwjLv
         xVK4sy6lhbemd1D2MwU9PU6iUx83ltW2b7my4MCVRhgdW5FjKTsi+MIEcWFIHuD6ZdJP
         Sif542JHmpaGjPQyPR3KC+jOAQNYATsBjxI/ZxXUsah4G5nLVJH78DdagmF6dvzIZZBf
         m6+g==
X-Gm-Message-State: AC+VfDzfw8Rnw9OdkSfQF35ou4u59SwJPsqg38fXQXvyvrH9JiH8Zxa5
        FWGzdiWmqih36MG2BNR8M64x4g==
X-Google-Smtp-Source: ACHHUZ6SH1r1MOCn+3v3GA/f3B2MqPZXYArpnDjwNsMgFCF0uvGGxxkbTEsVmHOxpp+hbXqn3x6pBA==
X-Received: by 2002:a5d:4407:0:b0:309:41d8:eec4 with SMTP id z7-20020a5d4407000000b0030941d8eec4mr1531311wrq.39.1685000870784;
        Thu, 25 May 2023 00:47:50 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id y1-20020adffa41000000b003062d815fa6sm814858wrr.85.2023.05.25.00.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 May 2023 00:47:49 -0700 (PDT)
Message-ID: <774022a4-8cc8-9fe8-145d-a51be5abf951@baylibre.com>
Date:   Thu, 25 May 2023 09:47:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 6/7] ASoC: mediatek: mt8188-mt6359: support new board
 with nau88255
Content-Language: en-US
To:     =?UTF-8?B?VHJldm9yIFd1ICjlkLPmlofoia8p?= <Trevor.Wu@mediatek.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "tiwai@suse.com" <tiwai@suse.com>,
        "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
        "perex@perex.cz" <perex@perex.cz>,
        "angelogioacchino.delregno@collabora.com" 
        <angelogioacchino.delregno@collabora.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230523021933.3422-1-trevor.wu@mediatek.com>
 <20230523021933.3422-7-trevor.wu@mediatek.com>
 <dcd5050b-8459-e7cc-b5ad-eb435aba6e84@baylibre.com>
 <d7ecf746a3db31cad53d068acff6dd1746644a58.camel@mediatek.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <d7ecf746a3db31cad53d068acff6dd1746644a58.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/05/2023 05:44, Trevor Wu (吳文良) wrote:
> On Wed, 2023-05-24 at 17:51 +0200, Alexandre Mergnat wrote:
>> External email : Please do not click links or open attachments until
>> you have verified the sender or the content.
>>
>>
>> On 23/05/2023 04:19, Trevor Wu wrote:
>>>        card_data = (struct mt8188_card_data
>>> *)of_device_get_match_data(&pdev->dev);
>>> @@ -776,9 +1066,38 @@ static int mt8188_mt6359_dev_probe(struct
>>> platform_device *pdev)
>>>                                dai_link->init = mt8188_mt6359_init;
>>>                                init_mt6359 = true;
>>>                        }
>>> +             } else if (strcmp(dai_link->name, "ETDM1_OUT_BE") ==
>>> 0 ||
>>> +                        strcmp(dai_link->name, "ETDM2_OUT_BE") ==
>>> 0 ||
>>> +                        strcmp(dai_link->name, "ETDM1_IN_BE") == 0
>>> ||
>>> +                        strcmp(dai_link->name, "ETDM2_IN_BE") ==
>>> 0) {
>>> +                     if (!strcmp(dai_link->codecs->dai_name,
>>> MAX98390_CODEC_DAI)) {
>>> +                             dai_link->ops = &mt8188_max98390_ops;
>>> +                             if (init_max98390)
>>> +                                     continue;
>>
>> I prefer that you do like your patch [PATCH v2 1/7] to be consistent
>> and easy to read.
> 
> OK, I will unify the style in v3.
> 
>>
>> +                       if (!init_mt6359) {
>> +                               dai_link->init = mt8188_mt6359_init;
>> +                               init_mt6359 = true;
>> +                       }
>>
>>> +
>>> +                             dai_link->init =
>>> mt8188_max98390_codec_init;
>>> +                             init_max98390 = true;
>>> +                     } else if (!strcmp(dai_link->codecs-
>>>> dai_name, NAU8825_CODEC_DAI)) {
>>> +                             dai_link->ops = &mt8188_nau8825_ops;
>>> +                             if (init_nau8825)
>>> +                                     continue;
>>
>> ditto
>>
>>> +
>>> +                             dai_link->init =
>>> mt8188_nau8825_codec_init;
>>> +                             dai_link->exit =
>>> mt8188_nau8825_codec_exit;
>>> +                             init_nau8825 = true;
>>> +                     } else {
>>> +                             if (strcmp(dai_link->codecs-
>>>> dai_name, "snd-soc-dummy-dai")) {
>>
>> Shouldn't be with a NOT operator ("!") ?
>> + if (!strcmp(dai_link->codecs->dai_name, "snd-soc-dummy-dai")) {
>>
> 
> strcmp returns 0 when the contents of both strings are equal. The
> default codec name is "snd-soc-dummy-dai". When the codec is specified
> from dts, the return value of strcmp will be non-zero and this is the
> case I want to assign init function. Therefore, it doesn't require a
> NOT operator here.

Ok, I thought "mt8188_dumb_amp_init" was for "snd-soc-dummy-dai".
It's fine for me.

-- 
Regards,
Alexandre

