Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B45E3DF0A5
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 16:48:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236022AbhHCOsi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 10:48:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235860AbhHCOsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 10:48:35 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B303BC06175F
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 07:48:22 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id n28-20020a05600c3b9cb02902552e60df56so2330993wms.0
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 07:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VzEPllnJibLq3zcdzHAkqTLkXaVEqNj1xd8dTfaBHUw=;
        b=dahT4bqfaFsRU6p8agqQoaLw5OhT+j8m0V/FuMDWSny/S1HS5LUVFYF+QAv1NHoTQY
         idWyjLIdv+K2T6jUlpI6MBIlqvLQzoEG3pXk77gmlfb42MqPa8Kj21pVHt5CQLM8ppwp
         beBZ1f9L7z8CXZ9AWFDOf7B9dgJsnYgDJsji40GDvwLLSguPqXkI58EHIltrVMUpOwHq
         j1y+dLCrsliHPyAUfS/moEF5ULRk+ck6EfTszolG2tNDB3v/rlx+0+LifkcrbkX6nMSv
         8t7H/Uccvwu0ZXvcQFKRtpXrlBBtdDrhnufBH6LH1owJylgtFgcaM0D57Tsm0p0+OuAi
         4y6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VzEPllnJibLq3zcdzHAkqTLkXaVEqNj1xd8dTfaBHUw=;
        b=DIWJFsLeem/coeiGxnWtqjR2RdpgGqDcAOBoIHvz+zeNDvXzQhjmRXBt5mzxhI3WmK
         WKkjz17x3OgoNrXbYWMyTAnAXnQ7NUp7TNeia1tAvgO7hvBlzuKa70PqXhWP9PiMX1MB
         XA1JI+Tqt3U2BFW7b6lFrcqBAKUAzZBY+bYRyuJyK7gsRPYE9UhLprUakuaxI08rYmPB
         ibeduoIWZgcUg/7ZIFlICksPiy7uJOjncMYRhTt1C53E0WA0eIfOjIK46BOXCqbr7wRx
         H3CXnEbBkOJSUZaTQ8iURiL28vtqGnXW6b+ELMGspeloVGi8jLr+ZiUQ1cOC3Y/Go7Up
         62UA==
X-Gm-Message-State: AOAM530mUkodBvPc5vKnoO0OZa4nz9I/E6izjudKnTodrVAuhISQJtG/
        Jh/4R9UxjjYxwz9W6Cwf3GRY8Q==
X-Google-Smtp-Source: ABdhPJy1AUqHvbe8ohorldpBn23AvFXXQiXP9EbNZTiN40o0TOJssr+qXeXmC7vukYki0/V3rxUvjw==
X-Received: by 2002:a05:600c:ad6:: with SMTP id c22mr22852904wmr.114.1628002101389;
        Tue, 03 Aug 2021 07:48:21 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id g12sm7866397wri.49.2021.08.03.07.48.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 07:48:20 -0700 (PDT)
Subject: Re: [PATCH v3 14/20] ASoC: qdsp6: audioreach: add q6apm support
To:     =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?= 
        <amadeuszx.slawinski@linux.intel.com>, bjorn.andersson@linaro.org,
        broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-15-srinivas.kandagatla@linaro.org>
 <111d4d4f-06f0-b7ca-579a-316e87f24f86@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <85611b3d-1a6d-4fb8-0ac0-6035049884e2@linaro.org>
Date:   Tue, 3 Aug 2021 15:48:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <111d4d4f-06f0-b7ca-579a-316e87f24f86@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 03/08/2021 15:20, Amadeusz Sławiński wrote:
>> +    /* Assuming Linear Graphs only for now! */
>> +    graph->graph = audioreach_alloc_graph_pkt(apm, &info->sg_list, 
>> graph_id);
>> +    if (IS_ERR(graph->graph))
>> +        return ERR_PTR(-ENOMEM);
> Shouldn't graph be freed before returning here?
yes, it should be Its now fixed.

--srini
