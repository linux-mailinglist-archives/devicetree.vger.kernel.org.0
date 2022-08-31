Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AE995A79D7
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 11:13:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231848AbiHaJNd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 05:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231745AbiHaJNK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 05:13:10 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEDDEC2E85
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 02:13:06 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id k9so17421954wri.0
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 02:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=f2v5wnUzlFw+ZpCjocjtmhUbEHEChafEgOfgj/yM2oA=;
        b=ROtwCweIXDZJ3VmlCBhJ4Iq+wLvqrZhbK+rPGKnuip2Lq5URIot/G52HWlVEOKksaj
         fuA33npDQ1NYBIyWo3He+08zCl5ll3mDZJ77pFQwyPe1WEi4jNf0uBIUTCUpmKSbivvT
         kHHADPpVy+N2SjXWQDzFuCU4XKCam4rpYCdC5hslLvF75OkOfO6+n0TQBp2QOJFoCkkz
         z7J7QFA95J0rV1VxHsJe71UxWNMvSBjE6iF989kXMXrBQBcGaOFL0rz4eepf0y8hESdv
         EhNJB/+kf3qdwLQszZz4wMiAZKT8eTeajacUPVgT5+qpN18UPy8Rt9rzqF8YLl20JeI3
         xKQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=f2v5wnUzlFw+ZpCjocjtmhUbEHEChafEgOfgj/yM2oA=;
        b=o+a1+/VJrsmsyCOgBmNMHjpsge44T51wiZz/QzjSP/EeYOR/Mfnz/ANtSutFNuKwUT
         f0N6BitCDurFUPjF4cCdxXcWG8k+Uqp7l9y9qVZYkkamiDuZR8pf9LQ1CKWnJZ1Q8L+B
         FDth0SN7XEePv/8isLHrSvelRP73j8NXdZX79rgvOkE/2ZhD1l0DzTX+1oisY+VQa8kB
         Ji0XjvPU3mSnPblVjdi9aSvFC5mde6l65Ffwvzs+7WwoCN5aEuJXMwIsNoUh1Shr2CT/
         Lda0J7iPPbmi9162jHlOF5UKHLmPNA+QW3XvC47LjMwqGtEbn2OcTMmgR04BA8B8H5O1
         rcWw==
X-Gm-Message-State: ACgBeo2Pd9nTTislDziBXDFOMSFjXJ9Rl/tyJdUaXcvjkkJfQ8Ywt7l1
        23szfPN2DVNcSM5V5CeTB7aFHA==
X-Google-Smtp-Source: AA6agR4ZTrmaB0FuE/OJ12vVcZ843QapxOfCMEEVKeMwgs176P7BPzEF02U7iQFlRcedt0l23og91g==
X-Received: by 2002:a5d:6c6e:0:b0:225:5a20:1bd1 with SMTP id r14-20020a5d6c6e000000b002255a201bd1mr11217058wrz.717.1661937185312;
        Wed, 31 Aug 2022 02:13:05 -0700 (PDT)
Received: from [192.168.86.238] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id u14-20020adfdd4e000000b0021f131de6aesm11661830wrm.34.2022.08.31.02.13.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 02:13:04 -0700 (PDT)
Message-ID: <eeea8a27-eed9-6ebc-dfa5-73a10e711c04@linaro.org>
Date:   Wed, 31 Aug 2022 10:13:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 2/3] ASoC: qcom: sm8250: move some code to common
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        perex@perex.cz, tiwai@suse.com,
        pierre-louis.bossart@linux.intel.com,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220818135817.10142-1-srinivas.kandagatla@linaro.org>
 <20220818135817.10142-3-srinivas.kandagatla@linaro.org>
 <Yv9rIGE+GNEzzizz@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <Yv9rIGE+GNEzzizz@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 19/08/2022 11:51, Mark Brown wrote:
> On Thu, Aug 18, 2022 at 02:58:16PM +0100, Srinivas Kandagatla wrote:
> 
>> +	}
>> +	*stream_prepared  = true;
>> +
>> +	return ret;
>> +}
>> +EXPORT_SYMBOL(qcom_snd_sdw_prepare);
> 
> The ASoC framework is all EXPORT_SYMBOL_GPL(), things that depend
> directly on it should be too.
thanks, I agree, there are already 3 symbols that are exported without 
_GPL, I will fix them too  in next spin.

thanks,
srini


