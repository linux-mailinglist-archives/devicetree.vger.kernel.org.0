Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77FBC768C53
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 08:52:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230319AbjGaGwD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 02:52:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbjGaGvw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 02:51:52 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1E0110E0
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 23:51:33 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fba8f2197bso6258868e87.3
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 23:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690786292; x=1691391092;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o8Rt9blDQLbjFIHhQ775musDPPuWgqdGNon+UjeozlQ=;
        b=fqhNILd+G7sGwNQlon4vl9xMCV6KAcUtPxN24oYplZasC7CtsAlFLVBv5++5X5dzFp
         IOC/b4f1zMXq/3oLeGbPyq890Xckf7fHOKPQQDZD1NL74HfWyBtbpj8hENbbjbRaL6KU
         8tuTCwgsPJ3tCoFe2sLbdywFgjb8F2/bJqCSsqmpXqOa6q5MTJPnF6VVxpoFm9SpeM4M
         eFXzddmikCTVURpjEZmStARjJjMJX3hzQ1/JT9AJhYlRhxHlx2tyuRcJ3noAnFpAUJYA
         xCmFBusTVRUQMXnCgxysie4DN38J0BoICESMKHHmhMMte3lFQRKqLfvdOkvSiqzfvNEs
         AsYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690786292; x=1691391092;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o8Rt9blDQLbjFIHhQ775musDPPuWgqdGNon+UjeozlQ=;
        b=kog/TA3QU5On3ly35EaagLs9584dW227P8NJkEKcdN8e3YSICqLbetyf/l2+tZwQb+
         /+hyp6sZwhCFbcSknt4IzgzmD6jRAyz32OFmfdfWQiysGayPoK1fXm3Mi/MRUBSmHmgy
         hjpmHnQ4WdN8UQ28T+0Mrqc5mC4MU3UfKrqKKPAFYtZLp2ssxYMJ34IV8ET46pfRpCVB
         nuNkE+rBfOpY5xGDT7oCOAmiht1l5wg5aV86QzlNf5M2JVksDCGGipY3VomIMrRbjeRJ
         kUV6Cv44q+Hm2b8+7WcpBhaETx9aK+96EJ/Mpvb3Q1YOU5Tu73d50QPe2iY0OCautsSM
         MZkQ==
X-Gm-Message-State: ABy/qLYY5ZWw14Ya7Gi5ogIqQPRXeWWY/V8zInjKVNK8qdN1o00GBCNb
        5DvFDHoABTWeTZHHEYrJds7IsQ==
X-Google-Smtp-Source: APBJJlElJZxCgxmaPXKU3Ke4gYodUSFZNQP8VMTA3nl9zumxbtQsFjGBQzPgy40Hem3vm5x84sulWQ==
X-Received: by 2002:a05:6512:3b0b:b0:4f8:4512:c846 with SMTP id f11-20020a0565123b0b00b004f84512c846mr6074831lfv.49.1690786291811;
        Sun, 30 Jul 2023 23:51:31 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id j25-20020a170906255900b0099b4d86fbccsm5803011ejb.141.2023.07.30.23.51.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jul 2023 23:51:31 -0700 (PDT)
Message-ID: <be25dead-89f0-8859-d182-84754ad8bfc0@linaro.org>
Date:   Mon, 31 Jul 2023 08:51:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH V3 4/5] ASoC: codecs: aw88261 device related operation
 functions
To:     wangweidong.a@awinic.com
Cc:     13916275206@139.com, alsa-devel@alsa-project.org,
        broonie@kernel.org, ckeepax@opensource.cirrus.com,
        colin.i.king@gmail.com, conor+dt@kernel.org,
        devicetree@vger.kernel.org, doug@schmorgal.com, fido_max@inbox.ru,
        herve.codina@bootlin.com, krzysztof.kozlowski+dt@linaro.org,
        lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
        liweilei@awinic.com, perex@perex.cz, povik+lin@cutebit.org,
        rf@opensource.cirrus.com, robh+dt@kernel.org, ryans.lee@analog.com,
        shumingf@realtek.com, tiwai@suse.com, trix@redhat.com,
        yijiangtao@awinic.com, zhangjianming@awinic.com
References: <7cdd4825-c0da-f60e-bbef-970bea48dc95@linaro.org>
 <20230731064154.4137-1-wangweidong.a@awinic.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230731064154.4137-1-wangweidong.a@awinic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 08:41, wangweidong.a@awinic.com wrote:
> 
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +int aw88261_dev_init(struct aw88261_device *aw_dev, struct aw_container *aw_cfg)
> 
>> You already used this function in patch #3, so your order of patches is
>> confusing.
> 
> Do I need to change the order of patch? 
> Do I neeed to put aw88261_device.c aw88261_device.h in patch #3 and 
> put aw88261.c aw88261.h in patch #4?
> Is that how you change the order?

Your patchset should be logically ordered, so first you add bindings
(because it must be before their users), then you one piece, then other
etc. I understand that only the last patch will make everything
buildable, but still code should be added before its user/caller.

...

> 
>>> +
>>> +	switch (chip_id) {
>>> +	case AW88261_CHIP_ID:
>>> +		ret = aw_dev_init((*aw_dev));
>>> +		break;
>>> +	default:
>>> +		ret = -EINVAL;
>>> +		dev_err((*aw_dev)->dev, "unsupported device");
>>> +		break;
>>> +	}
>>> +
>>> +	return ret;
>>> +}
>>> +
>>> +MODULE_DESCRIPTION("AW88261 device");
>>> +MODULE_LICENSE("GPL v2");
> 
>> Wait, is this a module? Does not look complete. I already saw one
>> module, so what is this for? For which module?
> 
> Can it be changed to MODULE_DESCRIPTION("AW88261 device lib")?

If this is a module, then it can. If this is not a module, then why
would you ever like to do it?

> The function in the aw88261_device.c file, which I used in the aw88261.c file.

Functions are not modules.


Best regards,
Krzysztof

