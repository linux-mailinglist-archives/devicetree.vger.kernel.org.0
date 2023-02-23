Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 620A16A0B29
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 14:49:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234376AbjBWNtV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 08:49:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234589AbjBWNtO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 08:49:14 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BFE64C6E2
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 05:49:05 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id j17so11043332ljq.11
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 05:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=frB7bLXBAzoLz+jz9s0Y5YZS3DoAI1c5p0MiOZAyg3g=;
        b=RA0VXA2x0u01eDdYnr9UigJZ2T1pl4zDq8NqGuMX5UnjXPlLjgeKxRXqQy3vLOU12v
         JOabwvQh9gnxhIhomkRifz1DnoOv8cMNPI5C3oGD3qTtgEDAJlv9pyLmdK1/0qjsHPfj
         U2Z1q4rG9HVbRdYmcIHenKEEwsYrYbK5Rp0UL378bayXIRu4HhAz8f2Zh/U1VoN0okaj
         JYMBS/y+fs2BCN2jjRr2X4uO7SqfsyTE8yYoMc6vhpr7G+nepm2paL4jH0Uo3u/KrpTz
         5z7zCPtZ0HtSWnEisORbCgNNTNWpeBL5SeW8HQrJZH9LlemOnWAbmLySna534kXjaGsw
         92Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=frB7bLXBAzoLz+jz9s0Y5YZS3DoAI1c5p0MiOZAyg3g=;
        b=7uyNdnfe78SWs8x7Lc7UHQTlzbCL2Lp7h89+1Swcm+HUBrHNf+OqZ+kVFAQrQ3EovS
         AGU6vNMdOduMQlo0c25AagESjnCs2JfcKDh2aBI9YwB/Qi5E3Xiz8B7Yv5iVOHw8NJgt
         9nycrbs5qfraUg/pdYmMl+OY0m8ALaD4ltLIldx9Rx0aEflRiwaxqOH3N1ictXIX8t1z
         uZrYFKMuw30vkHHxhtCH9T/8PFl6TGY4CDzJ+qmOUCd/LRfs6mM8ZdMczsnfrs4PYcZc
         XKCP9WQWZCSRrnZIg16w9afumLvYR7x27FkSoORkZAbJoAuJNGD8PNXc+H6UwemaxzOu
         WNwQ==
X-Gm-Message-State: AO0yUKXAEjXmmTewgvYPwQZHytA9wFnxPy35dEDxefSJyhso/mSqmqQR
        WhqNNYGrobuzihUTK2g3p2EA3g==
X-Google-Smtp-Source: AK7set/+fzhm8Q7+85CuVpa/CC2T12Ib2EKLG78RC9QKfOzgfhUM/TMMpg4QaxdhhCQesbzSHPM6AA==
X-Received: by 2002:a05:651c:1614:b0:293:45f1:c1a6 with SMTP id f20-20020a05651c161400b0029345f1c1a6mr3959697ljq.0.1677160143636;
        Thu, 23 Feb 2023 05:49:03 -0800 (PST)
Received: from [192.168.1.101] (abxi151.neoplus.adsl.tpnet.pl. [83.9.2.151])
        by smtp.gmail.com with ESMTPSA id n16-20020ac24910000000b004b7033da2d7sm799123lfi.128.2023.02.23.05.49.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 05:49:03 -0800 (PST)
Message-ID: <761e0aba-9364-557a-e6e5-e21494597dbc@linaro.org>
Date:   Thu, 23 Feb 2023 14:49:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 10/15] drm/msm/a6xx: Fix A680 highest bank bit value
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@chromium.org>
References: <20230223-topic-gmuwrapper-v3-0-5be55a336819@linaro.org>
 <20230223-topic-gmuwrapper-v3-10-5be55a336819@linaro.org>
 <CAA8EJppi45K0hQ=1fZvf+Mps+4uEkXmLFeqdmyk-yk31CNvUsw@mail.gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJppi45K0hQ=1fZvf+Mps+4uEkXmLFeqdmyk-yk31CNvUsw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23.02.2023 14:06, Dmitry Baryshkov wrote:
> On Thu, 23 Feb 2023 at 14:07, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> According to the vendor sources, it's equal to 16, which makes hbb_lo
>> equal to 3.
> 
> I think we might be stricken with the ddr kind difference here, but I
> would not bet on it.
It totally is, but it also seems to be SoC-dependent..
I think all 8180x devices shipped with LPDDR4X FWIW

Konrad
> 
>>
>> Fixes: 840d10b64dad ("drm: msm: Add 680 gpu to the adreno gpu list")
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
>> index b5017c56fa1b..2c4afecdd213 100644
>> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
>> @@ -885,12 +885,18 @@ static void a6xx_set_ubwc_config(struct msm_gpu *gpu)
>>                 hbb_lo = 2;
>>         }
>>
>> -       if (adreno_is_a640_family(adreno_gpu)) {
>> +       if (adreno_is_a640(adreno_gpu)) {
>>                 amsbc = 1;
>>                 /* HBB = 15 */
>>                 hbb_lo = 2;
>>         }
>>
>> +       if (adreno_is_a680(adreno_gpu)) {
>> +               amsbc = 1;
>> +               /* HBB = 16 */
>> +               hbb_lo = 3;
>> +       }
>> +
>>         if (adreno_is_a650(adreno_gpu) || adreno_is_a660(adreno_gpu)) {
>>                 amsbc = 1;
>>                 /* TODO: get ddr type from bootloader and use 2 for LPDDR4 */
>>
>> --
>> 2.39.2
>>
> 
> 
