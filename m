Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76BD9373E36
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 17:12:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233399AbhEEPNk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 11:13:40 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:57265 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233085AbhEEPNk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 11:13:40 -0400
Received: from mail-qt1-f198.google.com ([209.85.160.198])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1leJCc-0007WX-Ca
        for devicetree@vger.kernel.org; Wed, 05 May 2021 15:12:42 +0000
Received: by mail-qt1-f198.google.com with SMTP id s4-20020ac85cc40000b02901b59d9c0986so1246638qta.19
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 08:12:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X1HjWqOR+kfUR215smWPLY/7TlLhGL8ruSlCNeozRBc=;
        b=h1cs3V4hvx5iEQM6+XbQ07TmE2wC0TzBVhgqtsK0HXiGCLEnpl67ei4AhPLjdo18hP
         rR5BPyh3gu43ujSCPe7b/0HdUa2YA7sePeYVH72UCWjgiUFni39Z9AL20rugMmn61/GU
         w+JRMJXHfPUZMf1YPMWi85bE/f20DNt1IipNOILDTjjDR5H0S1C8lfw6jZ1lu74F89kU
         V127OWTzoEJkWkUrWhaOO51DCKr0c9tRxLAbN+eE9aWee0AIXv9iin4LZFZ6F6hKbKgq
         jWnw4Fuq8GMdo8J1jBnVrewgIv1Fa7Cqk+XFje/4wwmQqq0GZikPOPQpmh6SIeJHDrVp
         /sFg==
X-Gm-Message-State: AOAM531G6xHffcnmtTW2lwOaYfCMDh1gG8t24kl1y+gMkXg21BeJVm3l
        oFxtCSmO77+GlQTHSanYFPwopBvmP7Ow3K9W0IueCDXGo7/6Nz8zj7wnOciDpHZk8iiMb5oXhJp
        JVnCkRzh17wiz1Ip/9C54oyd76v2d30mw217M3E0=
X-Received: by 2002:a0c:9bda:: with SMTP id g26mr30907136qvf.44.1620227561611;
        Wed, 05 May 2021 08:12:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx888ZMZ2K4AqB7bcWuqoT4Huw9eBa+D13SKEI7rYs4cB9pvENk2aQl8ZFUbt8vW8QNRbmQnw==
X-Received: by 2002:a0c:9bda:: with SMTP id g26mr30907112qvf.44.1620227561401;
        Wed, 05 May 2021 08:12:41 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.49.1])
        by smtp.gmail.com with ESMTPSA id g25sm3061117qtu.93.2021.05.05.08.12.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 08:12:40 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: am5729-beagleboneai: drop unused Broadcom WiFi
 properties
To:     Robert Nelson <robertcnelson@gmail.com>
Cc:     alexey.roslyakov@gmail.com, Drew Fustini <drew@beagleboard.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-omap <linux-omap@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux kernel <linux-kernel@vger.kernel.org>,
        linux-wireless@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com
References: <20210505140015.60013-1-krzysztof.kozlowski@canonical.com>
 <CAOCHtYiicw5bqaZU5g2QGJHG3DZKRQUwAr08NZHw81S9=hmrgw@mail.gmail.com>
 <7ced6d2f-7107-e612-6787-63e38e5e3edd@canonical.com>
 <CAOCHtYhPGiEX1-iBDr2SzktBZ8a_8TqYQu0NLrsqjkz48rfSaw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <11b32033-0ba8-5cea-9552-60d83f1fe660@canonical.com>
Date:   Wed, 5 May 2021 11:12:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAOCHtYhPGiEX1-iBDr2SzktBZ8a_8TqYQu0NLrsqjkz48rfSaw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2021 11:10, Robert Nelson wrote:
>>> I don't see the brcmfmac developers actually fixing it, as "out of
>>> tree" work for brcmfmac is 100+ patches long:
>>
>>
>> Thanks for explanation. I understand these are actually used by
>> out-of-tree driver? That's a valid reason to add them to the binding then...
>>
>>>
>>> https://www.cypress.com/documentation/software-and-drivers-archive/wifi-bt-linux-archive?source=search&cat=other
>>
>> Requires login - I am not able to get the sources.
> 
> Sorry Krzysztof,
> 
> I forgot that a login is required, here is a quick mirror (with a
> screenshot of the page.)
> 
> https://rcn-ee.net/workshops/cypress-fmac/
> 
> Screenshot: https://rcn-ee.net/workshops/cypress-fmac/brcm.png
> 
> There patch with that binding:
> 
> https://rcn-ee.net/workshops/cypress-fmac/cypress-fmac-v5.4.18-2021_0114/cypress-patch-v5.4.18-2021_0114/cypress-patch/0002-non-upstream-add-sg-parameters-dts-parsing.patch

Thanks, I see it now!


Best regards,
Krzysztof
