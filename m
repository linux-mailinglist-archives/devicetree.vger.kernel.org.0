Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C56B95A79FA
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 11:20:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231923AbiHaJT6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 05:19:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231882AbiHaJTf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 05:19:35 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89A1FCD7B1
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 02:19:14 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id z6so19061350lfu.9
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 02:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=+pwFDg0e0j+yXSWZO1QdYOdmfRiXIedB2SifAAmn8XI=;
        b=l/XeKVh2yJtrLsYPx4G5AdOSXv4Uyh0J3MSLro6syYpwPvq4Bw46hy3wZ1Ilkv5dIF
         LSrnQ8tjtKNc3SxxPH9lKvuWdhPfJWFUJecLJDYORyahIXTErnRyW3KvzdLT6dWyTS22
         LfHjdoH9FWpyguDshL/AnL4NhAZInG/YKh7uk/OgCF2cFCbslvKn/CpTS4jApAS0SctR
         6yWLpZClaTeXOwjlUxJcMexUH/xsdqd5XvWOl54wSjlSJBxPYUlWq/5f0EEPMoZxQaht
         Pl9RzmQ4ZrU9r4j58FNmeP0pK1WLGmry0jC2QaO+4hG6HChazS+CDQ5ATVb4RSAJ4Mzc
         sw+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=+pwFDg0e0j+yXSWZO1QdYOdmfRiXIedB2SifAAmn8XI=;
        b=OU5jzKqE17M9zssAFnuBnc2N7MbBbOHpSJtHUZpkriuYWgGwPBk3r96TtAoxXBUZn6
         kxudOXxEbMdfS2wFczLXHYnzj5eSN3o8EUZDhNcOL8KeVLgkaVqozrXgD5E7DAFSGqsj
         BTO7y52GnrIfog86pblnwNTXIGawKMRjh2dws9Ye29QSm9n0gnGqVaW1+dGWcPxac2Z1
         6y2Glw6HtM4xSCcePh0K8qdT4tkFzCvC7V6Ir3HO6/rpvxonNU2ctcpLWNKOlbqofnwp
         YPZ+QCP3sBocOR1SJ8xAej25+/Rl4Eae3A8EAXiqMDrzZcIrhkOlUGDBMX59ulTjayAi
         QBnw==
X-Gm-Message-State: ACgBeo38CVeG4CqNm4RU6iYS0z8+a7lVrWWqAbe1sLFGViz0rFbmHWaK
        NNJGnIlDgukFGzXJYJ/nE+PTgg==
X-Google-Smtp-Source: AA6agR4uihFpaG8nK8poPhUm9j3r98rElE4l/J0Vn5UOIDcFiGql16aEPEIcKVvDvdd4p7q8DsLUng==
X-Received: by 2002:ac2:5b50:0:b0:494:5ec2:1ea5 with SMTP id i16-20020ac25b50000000b004945ec21ea5mr6367241lfp.276.1661937552410;
        Wed, 31 Aug 2022 02:19:12 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id r7-20020a2e8e27000000b0025dd8b42c64sm1108430ljk.79.2022.08.31.02.19.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 02:19:11 -0700 (PDT)
Message-ID: <5da6171a-4949-9cc7-2967-6cc39a7955c8@linaro.org>
Date:   Wed, 31 Aug 2022 12:19:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/6] ASoC: codecs: wsa-macro: add support for sm8450 and
 sc8280xp
Content-Language: en-US
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh@kernel.org>
Cc:     broonie@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        perex@perex.cz, tiwai@suse.com,
        pierre-louis.bossart@linux.intel.com,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220818134619.3432-1-srinivas.kandagatla@linaro.org>
 <20220818134619.3432-3-srinivas.kandagatla@linaro.org>
 <20220818171222.GG1978870-robh@kernel.org>
 <9c9226d9-8470-6672-d8ce-3fb1e4df3fda@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9c9226d9-8470-6672-d8ce-3fb1e4df3fda@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 12:17, Srinivas Kandagatla wrote:
> 
> 
> On 18/08/2022 18:12, Rob Herring wrote:
>> On Thu, Aug 18, 2022 at 02:46:15PM +0100, Srinivas Kandagatla wrote:
>>> Add compatible for sm8450 and sc8280xp.
>>>
>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> ---
>>>   sound/soc/codecs/lpass-wsa-macro.c | 2 ++
>>>   1 file changed, 2 insertions(+)
>>>
>>> diff --git a/sound/soc/codecs/lpass-wsa-macro.c b/sound/soc/codecs/lpass-wsa-macro.c
>>> index 27da6c6c3c5a..f82c297ea3ab 100644
>>> --- a/sound/soc/codecs/lpass-wsa-macro.c
>>> +++ b/sound/soc/codecs/lpass-wsa-macro.c
>>> @@ -2561,6 +2561,8 @@ static const struct dev_pm_ops wsa_macro_pm_ops = {
>>>   static const struct of_device_id wsa_macro_dt_match[] = {
>>>   	{.compatible = "qcom,sc7280-lpass-wsa-macro"},
>>>   	{.compatible = "qcom,sm8250-lpass-wsa-macro"},
>>> +	{.compatible = "qcom,sm8450-lpass-wsa-macro"},
>>> +	{.compatible = "qcom,sc8280xp-lpass-wsa-macro" },
>>
>> Looks like these are backwards compatible with the existing versions,
>> why not reflect that in the binding?
> Backward compatibility is not always true, some of the registers and 
> there defaults tend to change across SoCs. Having SoC specific 
> compatible could help us deal with this and also make code more inline 
> with other codec macros in LPASS IP.

I am not saying that there should be no SoC specific compatible. This
one is a must, but the question why duplicating the entries and not
using fallback?

Best regards,
Krzysztof
