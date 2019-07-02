Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 497D65D458
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 18:36:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726046AbfGBQgv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 12:36:51 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38995 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725996AbfGBQgv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 12:36:51 -0400
Received: by mail-wr1-f65.google.com with SMTP id x4so18594022wrt.6
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 09:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lF9soJyMkLeLjJhltqgLaauR5o64m7hdxOWdTW6RC9w=;
        b=OngUtG0dms5ero2nERh945lhF4ggvecPo0sVQdqHGK3zgIXPzu5be420mEmW0sIZMM
         Y+JP0FPRTRlO0TrobF+KJQtf9Vd95dspmwFAWX7o6Wv5mBrhr9CCk3u+fzFEvuRawuUj
         khNo0wSvhkv3gxx2VKECsgHFqEPy6lvo3+8I+MLzv1kYrYtlQHGs4oNJNiXpO7lMPalD
         VD6kCBIJ7qTO6jaBWGKmbOrnMLtClODZ9FZ9JLdhMV0U/k6cJJm/TTB0Aj22iO06jll+
         UtbS5TO7SFGHnIMJQBUwE6Zz9QMHBB9CLgqLV++uxCcUuaFzVXBL+iA7wM2I1IQi8cGB
         q7+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lF9soJyMkLeLjJhltqgLaauR5o64m7hdxOWdTW6RC9w=;
        b=Qbl/X3oKTx+kuoGeLx9FbYi/fX2wi6ue6VwVwmsGcdjP8crCmuEphBNPZpZqoIHazT
         Njgha4WPtHxUnpEUCpgoDTAM3Mmzp28zVpyMKPHtAsdBLxEvIPyOG5AwzXeLrlkjmSRD
         3p6uvkxEI48bbS+IfIqh7d1P9MIAMPBiu9DlILPTrsi2+nZdmqnW0xzSXKCrZOYLA324
         nCKIJCoqoLLZIRDmRsPjMzc8Ykyw/Du7yNrf1bS5p80O9iJXX1/5uzA7svMSXBfJCaFj
         sXvHuj5pt9UjTSFYoPN0wTaAXzMPfdCZrOkXAx50Cqk2oCTa0cEASdG9AL7+8Eo5S/B8
         lC2w==
X-Gm-Message-State: APjAAAV0vqWc0VBk5R3SslWR5m+/BNFQH7gzoD0pJE9Ml4FNqNOVLtZL
        Yuzb8CqtfVFL2GCF6SQQ4Eiilw==
X-Google-Smtp-Source: APXvYqzZoQoXmz5sJbp7Bi5qHFRSp7zCr3pYOlnxEzqrYBGohTyKncQ7NWjPSo8Wggto7O9ZsuvnGA==
X-Received: by 2002:adf:ab0f:: with SMTP id q15mr8488551wrc.325.1562085409297;
        Tue, 02 Jul 2019 09:36:49 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id v67sm4531145wme.24.2019.07.02.09.36.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 09:36:48 -0700 (PDT)
Subject: Re: [PATCH 1/6] ASoC: dt-bindings: add dt bindings for
 WCD9340/WCD9341 audio codec
To:     Mark Brown <broonie@kernel.org>
Cc:     robh+dt@kernel.org, bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org, srini@kernel.org
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
 <20190702080920.22623-2-srinivas.kandagatla@linaro.org>
 <20190702140252.GO2793@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <fa816433-71d1-e7ad-7fd9-fcc306c665ff@linaro.org>
Date:   Tue, 2 Jul 2019 17:36:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190702140252.GO2793@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for the review,

On 02/07/2019 15:02, Mark Brown wrote:
> On Tue, Jul 02, 2019 at 09:09:15AM +0100, Srinivas Kandagatla wrote:
> 
>> +- qcom,micbias1-lvl:
>> +	Usage: required
>> +	Value type: <u32>
>> +	Definition: Should be voltage in milli Volts for micbias1 output
> 
> milivolts
> 
>> +	Supported values are in inbetween 1800mV-2850mV
> 
> in between

yes, I agree and I will fix them in next version.

thanks,
srini
> 
