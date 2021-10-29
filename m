Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E7D343F882
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 10:04:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232304AbhJ2IHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 04:07:18 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:52470
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232351AbhJ2IHR (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 29 Oct 2021 04:07:17 -0400
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EF9083F19B
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 08:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1635494688;
        bh=gORZX0yVzoq2Pz3qmNV7v4k3dxqbLEeJY96EVFHtvGw=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=ERtWDP61cuauom36zc0DovRS+G/4rmwPGjl3ZtjUm3vvSsuy41csvlnY+67FEfX9w
         oRtfc1jCNjjpH2uV8RI5sNSj9kgmakjHc+6h+cAww08n89Izz4F4xrvAVbhiN3u3ED
         JInrHFqpqOwzTXO2pHtPLW6c1tfynoy1UGnDL+VETHGxFtUmjbDJMSmNZR8KkN4AGd
         m5xFN3locVXivfC+ONQRtXmeAKfxrTRmnjyu/Xqrp3kKPqqlfAVjwW7dB9nsWzJgy6
         eRg+qho6RoDXqjFcn+LD4I0Z5jf3bINBuWObSY4dB0nBk6RYKn6ziGFU7hzSXwZq+Z
         dsPorw2JibR3g==
Received: by mail-lj1-f200.google.com with SMTP id v17-20020a2e7a11000000b002118bb7d585so2793470ljc.4
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 01:04:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gORZX0yVzoq2Pz3qmNV7v4k3dxqbLEeJY96EVFHtvGw=;
        b=BsXB8l5OdB09vUCKuXxeBKgjYh+SCIpN0Ad13SXcGxspwnp1E1S7Dz4TL4fB9hj4pP
         2I/C94ERNaeZg34M7cRmS0JXdSatoBZ2a4Shz/kRy5wFqWSd9LFmoQRgCw+Uc/aYZHNR
         IIUSYLA7VvU9BiG5RD5gBf/JLRaaw/ku2u+1LT8xv3x5JG7EqAs4awssXs/A+25rfh5u
         5P/CvO1dLTbAUDAlnx//k6GJu79pT0ubIkuAg9na0nkUIlKFgj4mh40TomQWibMU77a7
         ffieVv8WyqfBwJior6Hdq2uzB/FF5p4cVt7yCX2oqPgfyUXzJk+QHbgzv/UlwsH8/HFH
         CUug==
X-Gm-Message-State: AOAM5325ljHeBTTMYOWBrtpk3qp/IfVPOSso1B31qX0F7Ye12HBkdUX7
        7xSgly/RXKiXk5ojXMw3+Xk0cZJFReojBaJ51lUmE3KK0L2pLPFKaFWXa8NsKAWodf/DSlQpF0Y
        vHTldu1Iu0lctgEA4Uw2BH3iyQ7LZ92+gXAnEeoo=
X-Received: by 2002:a05:6512:114f:: with SMTP id m15mr9740357lfg.140.1635494688391;
        Fri, 29 Oct 2021 01:04:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwbyLMzs+ms2kQOLdOYd2/yiv+HtnDZo2M293OptXi22K4l4nItsFMCPCA4hNH+rhY4cNTzlw==
X-Received: by 2002:a05:6512:114f:: with SMTP id m15mr9740342lfg.140.1635494688236;
        Fri, 29 Oct 2021 01:04:48 -0700 (PDT)
Received: from [192.168.3.161] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id c24sm537891lfc.155.2021.10.29.01.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Oct 2021 01:04:47 -0700 (PDT)
Subject: Re: [PATCH 3/7] watchdog: s3c2410: Make reset disable optional
To:     Guenter Roeck <linux@roeck-us.net>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20211028183527.3050-1-semen.protsenko@linaro.org>
 <20211028183527.3050-4-semen.protsenko@linaro.org>
 <b9c33def-6b12-1e5a-4449-b1e0869a0e3a@roeck-us.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <2a5ff8d0-c665-e25e-cb40-51326db2e26a@canonical.com>
Date:   Fri, 29 Oct 2021 10:04:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <b9c33def-6b12-1e5a-4449-b1e0869a0e3a@roeck-us.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/10/2021 02:16, Guenter Roeck wrote:
> On 10/28/21 11:35 AM, Sam Protsenko wrote:
>> Not all SoCs have AUTOMATIC_WDT_RESET_DISABLE register, examples are
>> Exynos850 and Exynos9. On such chips reset disable register shouldn't be
>> accessed. Provide a way to avoid handling that register. This is done by
>> introducing separate callbacks to driver data structure: one for reset
>> disable register, and one for mask reset register. Now those callbacks
>> can be checked and called only when those were set in driver data.
>>
>> This commit doesn't bring any functional change to existing devices, but
>> merely provides an infrastructure for upcoming chips support.
>>
> 
> That doesn't explain why the callbacks are needed instead of additional
> feature flags.
> 

Or why not skipping the disable operations if disable_reg is not provided?


Best regards,
Krzysztof
