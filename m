Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8131279B4B
	for <lists+devicetree@lfdr.de>; Sat, 26 Sep 2020 19:19:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729685AbgIZRTK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Sep 2020 13:19:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726309AbgIZRTK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Sep 2020 13:19:10 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3393AC0613CE
        for <devicetree@vger.kernel.org>; Sat, 26 Sep 2020 10:19:10 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id a9so2516728wmm.2
        for <devicetree@vger.kernel.org>; Sat, 26 Sep 2020 10:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Lkvu6Do6zi8mY6e4YbMjyVYGYPqXE9nNWYgmKxJTz5Y=;
        b=gMWbjhinVtmFxKlT6A60gjXT9XbVk4Hu5WEqGrnA+SpGJgNw5NfIjmoIYXpNlw7D9b
         UWtugf4K6WrVMGDY/BkC85+7HKzZP09rQodoKB+o2qxQNQp61yvF11WYTXj8ii60ayia
         AxEPZGJLz6d1Mb2xcl7FxkTw0zPSmZWJesmPhq73e2IUz6vprRd8u54439u/O/Iu8B9C
         VjPNWfnpqpCE3GNI2fMdTFJI4UjcfYrwqjSMUMRuGLOeksias9GIFzjjJweMh5mFh5em
         h7yFF1E6dUndkLq3k3yFX1f9OLUh127FtVzlD0vLE3VJnI8huZUwCu4iNtMatQu9kIQ8
         WL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Lkvu6Do6zi8mY6e4YbMjyVYGYPqXE9nNWYgmKxJTz5Y=;
        b=dovnrDDdJlq7k6hdg31qxvIsuRzQM8zXRHKBzFfacCj2FmdZGKgHIpCU8wUKu3bwma
         2ARg2VeyiswkACPaOBpmcPNygLFbLdqlEL8kkPzJ6pS+XIvUJvLcaM9aPwMxuD+oE5E6
         /+ZEuPZIRDRObJchJJ5znavFF1ggZKK72A5EBleh0dIlMbWpiN5Zm0aYsjL6M+fQPMIa
         fKCfZAl8ozNRDRsLuBoQVhSU8yaTwArY/G1P+5bwt10cWJegy8v6XUUG23CrAdeIN7jC
         vOgDG/JUKeBp8zf2JpKQ+AjvmAAldDCev4zpTbkY9LW9o87IiODK3ifHCyRapam1G8EF
         wkyA==
X-Gm-Message-State: AOAM5319Tut4Xe3tS819b+pvOTdYEOsJF3VD3gdiAUfDoVQEV5pxF/dR
        CXG03de6Twh1FO73/UNVGnmp2g==
X-Google-Smtp-Source: ABdhPJxEOGhVqSdsVDi20EGXCiOZDwnuLJWllECZphdU5gP9knDCQbeADdpGF+mxv29Cz+FkSu63Rw==
X-Received: by 2002:a7b:c4d1:: with SMTP id g17mr3298799wmk.167.1601140748905;
        Sat, 26 Sep 2020 10:19:08 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id o16sm7080304wrp.52.2020.09.26.10.19.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Sep 2020 10:19:08 -0700 (PDT)
Subject: Re: License clarification of sound/soc/qcom/qdsp6/q6afe-clocks.c
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        linux-spdx@vger.kernel.org
References: <alpine.DEB.2.21.2009261855280.31589@felia>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <dab67d9c-8ef6-bf41-dd9a-fbd6e29d6818@linaro.org>
Date:   Sat, 26 Sep 2020 18:19:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2009261855280.31589@felia>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Thanks Lukas for spotting this,


On 26/09/2020 18:01, Lukas Bulwahn wrote:
> At the end of the file, you further state it licensed with GPL-2.0 with
> the following line:
> 
> MODULE_LICENSE("GPL v2");
> 
> So, is this just a typo in the SPDX-License-Identifier or do you really
> intend to license this file under GPL-1.0 only?

yes, this was totally unintended typo from my side, Just sent a patch to 
fix this!

thanks,
srini
