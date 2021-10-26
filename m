Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D4FF43B09A
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 12:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235270AbhJZK6F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 06:58:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235268AbhJZK6E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 06:58:04 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A1FFC061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:55:40 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id z81-20020a1c7e54000000b0032cc97975e4so1329630wmc.4
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 03:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4zwayCeQaGY3/Vlu1KR78uxOxCGc7pFw6NOHmQrUIu8=;
        b=zmqlwtwULyD1Sq5+Rae7KSjxVnTtu+2ZGr4rAPBMFsokGGf05miWh+d1PJSbL8YNEb
         GmucNm7bEE1r2Q9Wg3Crmb2gO29FXBWcjwcP3vqQLcW0NPYQxaA5BmEHXfmaWnK7I61l
         daQlDkir9Ea8FP01IiklBa4E3AGZV9wVxj5qqw1aCfdWtk68HRy1BN3RBEXrNm+V+QYX
         BtQUuTV3+NofWfmWZF2t9tx1Yc64LPD7sTWx5PwRCcuxzk2/6fqw68opS9GrCoUksGLC
         nee21SDYfQTWOdyn5GBO8dQjnxZ87rsbq8TxeLDNJ7nwkpDzZGvY8Z4l74o5lXr1uEHe
         r1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4zwayCeQaGY3/Vlu1KR78uxOxCGc7pFw6NOHmQrUIu8=;
        b=I0duTRjm/pTFJnANs7ylF1TrGogTHGOpRH5Mk9Gq7j6JtWep4xLusxKadOPH4fMeFa
         qe3kxPnkl6NQEKqo5T4yPfnwZdjjuyxRZprt6et8tkk1CTXXcfHAIeRPKyradX9lePHv
         Z4C+l247k56NomBzeo4+piqatp8MV/ZbybN6Rg8fN08DkncygzWsntjiiGul31Ya4muk
         E1eNJYPwMLgClUD4eBXIZH6dBmpsUBLO1P3JOpM/SFBVWtFpjFBbiHXoACaiCCjpJsCA
         +GmXGZsnWLn7HlEK24knaQwMDlf2vaKhRmqo9RGlwdQOYWXsYZlyEJCBnYj8ePoodcSv
         GPGQ==
X-Gm-Message-State: AOAM532ne7kUWsA+3vV9ZLzqjJY004xiLo1xWyYbqgfqfFP8lqK4X23I
        I6F753ahwQlNod8B6Vz8bjOxqQ==
X-Google-Smtp-Source: ABdhPJzNt48HKI6CfdX8MGvKP8b4W29YNrqbAcvXYwT4FBR8/KQBvQhdf9eXRXpKAGl0XAMXVBiCsQ==
X-Received: by 2002:a7b:c010:: with SMTP id c16mr26998498wmb.141.1635245739291;
        Tue, 26 Oct 2021 03:55:39 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id y23sm251346wmi.43.2021.10.26.03.55.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 03:55:38 -0700 (PDT)
Subject: Re: [RESEND PATCH v10 00/17] ASoC: qcom: Add AudioReach support
To:     Mark Brown <broonie@kernel.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.de,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
 <YXfc18+fqBNajHX8@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <ef6377b1-5cd4-dde2-b2ec-a7c0ccc17dd0@linaro.org>
Date:   Tue, 26 Oct 2021 11:55:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YXfc18+fqBNajHX8@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 26/10/2021 11:47, Mark Brown wrote:
> On Tue, Oct 26, 2021 at 11:37:58AM +0100, Srinivas Kandagatla wrote:
> 
>> Am resending this series as I ended up sending incorrect patches for v10.
> 
> If you're sending something different it's not just a new version!
No, this is not different to v10 which I send out Yesterday, v10 is 
meant to address the arm64 build error that you reported.

For some reasons yesterday's patches did not reflect the changes that I 
wanted, so I RESEND v10 again.

--srini


> 
