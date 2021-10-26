Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1F2A43B0BB
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 13:04:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232329AbhJZLHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 07:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230077AbhJZLHF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 07:07:05 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48844C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:04:41 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id s19so18382125wra.2
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jfvQnuhKbXt7YtX8eoaStZrN5VerRP6PTu1u4SMxs0c=;
        b=cPl3XSlgRASgTDx9IBjLB3YvfcWSFRU92mFLVHJushj/lqCZnAb0Dnc8Trv5qZ8JbA
         UsGbdNuqx88LlCzvEPsDhPR5pp2FuE7TGuVZsuVZJFw9pEuYAkF+vemupM7MG+BPhBMq
         trCu9e5+E3LJNNC5ktaofwPJqR31UcQXdPREfxCILIXbCEdyOJakOVukaijqKlvrqHEj
         G5qCvfmskbgtSmIE9l40sNlSfEMizL+92DTS4UHy6AOYRWkaGPfWkSSWSWqqJaxIyu/l
         hk6nw5NG1Y9xABgzIAEovuez8PK951IEX8IKdlxOqn3SwZrPtQX4wQYnlIM1FyLffrux
         jDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jfvQnuhKbXt7YtX8eoaStZrN5VerRP6PTu1u4SMxs0c=;
        b=WuF7iA5gGkAAqfz8r/aagsD7OS1vKdLLWDSgZE2xLJ0szfgBJMs6OclF+SaT7L1vD0
         9e9N2riwwe+PdHpXqny5pgGtA7OUe0xoC/xyeAm+O3llBMxhk0EenTEX1CO2AAPuo3vk
         +u9F4/qQnX7RNkuj8eiI7V+PDv6sNe1jE3iOLUoIJDVOVq6+JEb4JnX7RfvJBmMzb9Cl
         mVYOi2rD1j+b7a5Q1say7h/UNBniBl7fOnEWeDCUrGjHB1Icqk48l8Zw9cdYR1xzzSJZ
         LCyEay+3kx/KKQ41GRYsObiPmc/08dH9xPDFlITaOVIK3iQ2GemmanGO2uS+I0jsyIsC
         gg5Q==
X-Gm-Message-State: AOAM533NvztAMY3mmvU0DtdGH481BVQyT/QhUSyEHYQ5G0kUwF+J6mTn
        daXp0eOrP9gz9/Ht6KHj10e4eQ==
X-Google-Smtp-Source: ABdhPJwD4M3FdtlhxEFtuF6FwSBzrYztx6STdz/MWgViKrE7sBQsinPn11B4TmvA67KfdD/S4Tn5eg==
X-Received: by 2002:a05:6000:1866:: with SMTP id d6mr10110852wri.226.1635246279902;
        Tue, 26 Oct 2021 04:04:39 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id s11sm10717663wrt.60.2021.10.26.04.04.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 04:04:39 -0700 (PDT)
Subject: Re: [RESEND PATCH v10 00/17] ASoC: qcom: Add AudioReach support
To:     Mark Brown <broonie@kernel.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.de,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
 <YXfc18+fqBNajHX8@sirena.org.uk>
 <ef6377b1-5cd4-dde2-b2ec-a7c0ccc17dd0@linaro.org>
 <YXffedeNCJCDiI88@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <56855ce6-4c5b-7093-0d75-11472f0b792f@linaro.org>
Date:   Tue, 26 Oct 2021 12:04:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YXffedeNCJCDiI88@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 26/10/2021 11:59, Mark Brown wrote:
> On Tue, Oct 26, 2021 at 11:55:37AM +0100, Srinivas Kandagatla wrote:
> 
>> No, this is not different to v10 which I send out Yesterday, v10 is meant to
>> address the arm64 build error that you reported.
> 
>> For some reasons yesterday's patches did not reflect the changes that I
>> wanted, so I RESEND v10 again.
> 
> OK, but that means that this v10 is different to the v10 that went out
> yesterday, right/

Yes it is. I see your point.

I will send out this as V11.

--srini


> 
