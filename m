Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF0AC3ED053
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 10:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234456AbhHPIc5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 04:32:57 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:60232
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234728AbhHPIcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 16 Aug 2021 04:32:53 -0400
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id F019840CAC
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 08:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629102741;
        bh=UCYlNRmzeCEuDZZ2cqWcomGqHyEFVVrQDIMY2+9YLGA=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=MYrqrVmrHcoTPYEI2L6Xw/GkpSth+gyuWRaalz/jJNXNm3pFgstyw4o01/4reBUZh
         j9IdInuGMeGNyiM/SXdGji5+JcKBeInuICFlQwXI+BOdjoj3MUigDhwVugCv8tPVMl
         v9NNLo/g4vc5RmXH2rSbmB/D4nbuX8DKMNfLmyq8rsFSJcCs38kwV3+PShWRjGwYvk
         4ou4pvDwfXiOTUlhBJ/2KLjb/BddxB72kFl7Llf1Ujgp3VMT5Bc5kaZlaRQfy+KRDM
         Fb4ppBNwOtAdkqLiOkwUq7ZkuhQ9zO4llBPtwexlHJxxVLwrqCVZJkuBbBU8DtWbm6
         clmPHfbAs5vqg==
Received: by mail-ej1-f69.google.com with SMTP id e1-20020a170906c001b02905b53c2f6542so4433557ejz.7
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 01:32:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UCYlNRmzeCEuDZZ2cqWcomGqHyEFVVrQDIMY2+9YLGA=;
        b=NpEXaHBEnOcwgTbRlmut7OqZ0A4zGCcOF0x/q8vNMuRvjdDT4ruFA/2brpKM2m37Nc
         tpMMPMT02CBCvybiqRUCXY5FL7JKHATvIh+YQWuaNSSoI5IwpYyOMuwSewTmbh/edSS/
         6KRFJf6CocdKh6IaAo/LMBpfVOSfutCcZ3Drg+h5+Jrl4TfNGnVbI8zuE6PSan/hWM3O
         68fz6aOpbNt9B6C5nS0dhB1J6SdzXJh3O+WZuKqHRyJI3DCexusFtfNBl3qzJPT/WHdY
         pIXhYOqxft58cR7FFfCKJnB/ySK8ZKK2MUWZM2TJy3oL2ptnR/UGFS2ADdKxNCPj3nXm
         vvBw==
X-Gm-Message-State: AOAM533L6qht9/E+y2MgBJG//GTAZx0bz72Zhj7+1PT0FmWRhy7vTRhe
        RhM1KUnh/aaN/u2CX5AQbKzL3UC2XG3lAJAveSEt8Ijkzp7RsHCO88QwBwgPJ1a8MwcI3h1qDh5
        btSpktS3GIJwKwW2Qhy4ytfcE6Teg17IoKNhl1yM=
X-Received: by 2002:a50:eb95:: with SMTP id y21mr18627039edr.5.1629102741782;
        Mon, 16 Aug 2021 01:32:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzWp7YYIs1HvFB9r8ma/frRskh/jd0dudB3BzbInzpUKcEh8rihjaxeMk6VTvCkVyqBdNIC2w==
X-Received: by 2002:a50:eb95:: with SMTP id y21mr18627027edr.5.1629102741690;
        Mon, 16 Aug 2021 01:32:21 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id d16sm4505366edu.8.2021.08.16.01.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 01:32:21 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: memory: convert Samsung Exynos DMC to
 dtschema
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org
References: <20210813125414.104467-1-krzysztof.kozlowski@canonical.com>
 <73eebe7b-46da-137b-1938-09a5b453320a@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <0ec05a0b-9499-3bf4-a231-ea53b1cf99ed@canonical.com>
Date:   Mon, 16 Aug 2021 10:32:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <73eebe7b-46da-137b-1938-09a5b453320a@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/08/2021 09:53, Lukasz Luba wrote:
> Hi Krzysztof,
> 
> On 8/13/21 1:54 PM, Krzysztof Kozlowski wrote:
>> Convert Samsung Exynos5422 SoC frequency and voltage scaling for
>> Dynamic Memory Controller to DT schema format using json-schema.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>   .../memory-controllers/exynos5422-dmc.txt     |  84 -----------
>>   .../samsung,exynos5422-dmc.yaml               | 137 ++++++++++++++++++
>>   MAINTAINERS                                   |   2 +-
> 
> I'm not an expert in this DT scripts and why it complains. Maybe it
> complains because the "samsung,exynos-ppmu" is defined in the .txt
> file... (?)
> Although, in general looks OK.
> 
> Acked-by: Lukasz Luba <lukasz.luba@arm.com>

I think the warning (triggered by DT_CHECKER_FLAGS=-m) can be ignored
because it complains about compatible in example which is not present in
the bindings. Usually it means someone wrote example not matching the
bindings (e.g. a typo in compatible) but here it is on purpose.


Best regards,
Krzysztof
