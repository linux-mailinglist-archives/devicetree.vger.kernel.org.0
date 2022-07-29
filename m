Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3A55584D82
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 10:40:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235658AbiG2IkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jul 2022 04:40:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232975AbiG2IkI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jul 2022 04:40:08 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44B2F8323D
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 01:39:56 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id h205-20020a1c21d6000000b003a34ac64bdfso663425wmh.1
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 01:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yXWIEmrCvPhMUD5deMCakmb6B16F9IWiC7sXOX1uSM8=;
        b=sGbkLN5+s6l3Qj93D53goWriKE+GOP/8Mh1PBv+98Sjbugr4jUOrSJvm/o7RPKnYC1
         DNJZ8/QaNC3Jl1Fq+R++CjrTLA4J9mb9KRMMbnlVYue+CEkxIHVvvOeJeXdyY9kKGZoa
         7SnhpN3XW+wqZHS1cIij4veMYgj0fePhXbN1Ba0t8mLgkHHTp2nK122u291EwxZ2uf/e
         xAcufWhebU0rGplUh3YoLCjxHCKY/CM5p3AS845x6x6xx6VUDKxiS3Kby+JQ/o22VP2Q
         tfysop5bbymKo7+BoHyTkcvNUZHWivdSgNgy4U7YBDSfMiHWcKvl6lkjB53dbJ822oSV
         N4Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yXWIEmrCvPhMUD5deMCakmb6B16F9IWiC7sXOX1uSM8=;
        b=JTetL5s+6T8ui3ofrwzJfv/quAcBDnZ3Iyqo6haPG5Bb9bXII5gQpFMojdDsNKGe/M
         qjAhBBx1cs17uUCLlf33A8Q0GCihVpwmx9sNOaYABj2b+ugtycCOr8jJ4oVRj6ZUpb3E
         x4BWPHnb9VNFae1DVlqZAQ3TxGTOCLpD0dTmVOpz78748YvHvbkzlRxWTJY5RS1hqjnQ
         nowndusjQp9Ia/Q7RBPZNhc24csJcHK9uXt4plf1ucjJF1eVwOrF57k/Yab1mnIML3UJ
         zxgDVZyJU8u2AbWWmU4Ew8sRh/Ui5fyfxdcZ1ecs3TGyddWA+s5MEsI/5m3Ci0QYe9vH
         1wdg==
X-Gm-Message-State: AJIora/2RrscW1iWnyonHIlULM0+LtfFoZFtwPvNy1vgNwEmBjXgwhOa
        x2XVFDdZ5XmaJSoGPrxFKQYgoQ==
X-Google-Smtp-Source: AGRyM1sWhvkqR1vqTMAwyf4DEQkAyj+iXMIL4uNEYHGCSVKh5Qka07s8vTELMcAQhcmjrecOGJGj/A==
X-Received: by 2002:a05:600c:19c9:b0:3a3:469f:c1e7 with SMTP id u9-20020a05600c19c900b003a3469fc1e7mr1956536wmq.141.1659083994542;
        Fri, 29 Jul 2022 01:39:54 -0700 (PDT)
Received: from [192.168.86.238] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id i3-20020a1c5403000000b003a02f957245sm7820574wmb.26.2022.07.29.01.39.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 01:39:53 -0700 (PDT)
Message-ID: <278edf67-834b-b673-8d71-88213130d4c8@linaro.org>
Date:   Fri, 29 Jul 2022 09:39:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2] ASoC: qcom: SC7280: Add support for external DMIC bias
 supply
Content-Language: en-US
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        Mark Brown <broonie@kernel.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        robh+dt@kernel.org, quic_plai@quicinc.com, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, quic_rohkumar@quicinc.com,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, swboyd@chromium.org,
        judyhsiao@chromium.org, devicetree@vger.kernel.org
References: <1659016789-9933-1-git-send-email-quic_srivasam@quicinc.com>
 <YuKbpXVOeGn2l2gd@sirena.org.uk>
 <a92891b1-1fd0-82fa-3dc4-34282e6c2ef3@quicinc.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <a92891b1-1fd0-82fa-3dc4-34282e6c2ef3@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 28/07/2022 17:09, Srinivasa Rao Mandadapu wrote:
> 
> On 7/28/2022 7:52 PM, Mark Brown wrote:
> Thanks for your time Mark!!!
>> On Thu, Jul 28, 2022 at 07:29:49PM +0530, Srinivasa Rao Mandadapu wrote:
>>> Update SC7280 machine driver for enabling external dmic bias supply,
>>> which is required for villager evt boards.
>>> +++ b/sound/soc/qcom/sc7280.c
>>> @@ -356,6 +356,7 @@ static const struct snd_soc_ops sc7280_ops = {
>>>   static const struct snd_soc_dapm_widget sc7280_snd_widgets[] = {
>>>       SND_SOC_DAPM_HP("Headphone Jack", NULL),
>>>       SND_SOC_DAPM_MIC("Headset Mic", NULL),
>>> +    SND_SOC_DAPM_REGULATOR_SUPPLY("DMICVDD", 0, 0),
>>>   };
>>>   static int sc7280_snd_platform_probe(struct platform_device *pdev)
>> Don't you want to connect this to something?  This won't do anything
>> as-is.  I can't see any references to DMICVDD which might be failing to
>> resolve in the current sound/soc/qcom.
> 
> The connection is being done to "VA DMIC"through audio routing in board 
> specific dts file.
> 
> Will post the changes once the main dts patches are landed.
> 
> Ex:-
> 
> &sound {
>      DMICVDD-supply = <&pp1800_l2c>;
> 
>      audio-routing =
>              "IN1_HPHL", "HPHL_OUT",
>              "IN2_HPHR", "HPHR_OUT",
>              "AMIC1", "MIC BIAS1",
>              "AMIC2", "MIC BIAS2",
>              "VA DMIC0", "DMICVDD",
>              "VA DMIC1", "DMICVDD",
>              "VA DMIC2", "DMICVDD",
>              "VA DMIC3", "DMICVDD",

You should just use "vdd-micb" instead of DMICVDD.
There is already a SUPPLY DAPM in lpass-va-macro codec.

--srini
>              .....
> 
>              .....
> 
> };
> 
> 
