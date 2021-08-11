Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3ADC03E8D75
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 11:47:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236320AbhHKJrn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 05:47:43 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:50454
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231508AbhHKJrm (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 11 Aug 2021 05:47:42 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 634E43F045
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 09:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628675238;
        bh=PS8yHIKypIU7zjLPbMN2+vMgzErZMgMuY8iIETH4G0E=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=Q9xR+QkUrIo7CU1N8tqHSaysSSzlfIHPcDEuGPsB4Oy3AJNXQVTqTYH0KINBdSDZH
         k8Qhrotyq6S/NGxatX3xfaaUARwtcOFJGYuUWhF/F6DdKxMVhXtK8rn7bcuN+KMwjD
         dI6lX92u5uxtJYOeNYOo3PtLAqq3/UygZ5kyHA1NdZQ62vve8yKNUmhk6dEh3GY6XM
         O/OB6MZKFSTsxV0PrRt695MVki1mmb4Yxm1knQikaJDk+aiIVkyECdu+N82vCy2GSs
         7ZG1dTPxvfCtuSt4id2hbMxOF4HvlAnLbRT5Y9XR/VvfLfBnkoTVjU9yzmN8Lni6NM
         +tmfSuPri8esQ==
Received: by mail-ed1-f69.google.com with SMTP id ec47-20020a0564020d6fb02903be5e0a8cd2so970819edb.0
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 02:47:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PS8yHIKypIU7zjLPbMN2+vMgzErZMgMuY8iIETH4G0E=;
        b=S9ISZsVwab4i0YprTBcfs132qyo3bXbo4XL1qXdkzPE5DYTz0PUlzw+h4kxOc5+htU
         kTnHhBoezgCH9sdQc+ADIkScQMzJCmkTt6YtiWMjcm0O5qpJ+bIHcfKYq3IOgdHxRO8Z
         +8A9TGn1GI1cM6M3c/YYEyedBJU2CgY8cwnsKUckMiZGD8FfjWrdPMNX+GpQ+rAQCfQL
         32DStcRJd1Jyu2GK+g5Tp3z2dLSIR+Yn7LDoYpNuC+62z6di+66ZJlZvWRIq0qpDzbgs
         5LnClWM8rBafnGu4B7FoZxP352lYfRunw101jlAh/mD/j+FM03rxEokrQrSf1p6pNJ0j
         kLIw==
X-Gm-Message-State: AOAM533CW9Z9e6YhmhzNBAH4lIpOYFsH+c1b+Em0unXTTQrXe83+VUqY
        AUNDavx75k+a0Iqwq25gNnCGKhX1RGYz30jIL6iaX/6+3hcJ61NaKuHfn4JpuDtUDDhO5K7/YG7
        7GSQ8/LNXyItbpxItxjIg5YmOlFisdlJCGETzYn4=
X-Received: by 2002:a05:6402:3489:: with SMTP id v9mr10558282edc.379.1628675237983;
        Wed, 11 Aug 2021 02:47:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwKnLgxSqQnEduvT026FRmXeeMndTcAU4cAxXY0ufzsJkkLI7k6aLcWk+14ITfo34bPu2r46w==
X-Received: by 2002:a05:6402:3489:: with SMTP id v9mr10558262edc.379.1628675237812;
        Wed, 11 Aug 2021 02:47:17 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id c6sm7906447eje.105.2021.08.11.02.47.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 02:47:17 -0700 (PDT)
Subject: Re: [PATCH 3/3] gpiolib: of: constify few local device_node variables
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20210728144229.323611-1-krzysztof.kozlowski@canonical.com>
 <20210728144229.323611-4-krzysztof.kozlowski@canonical.com>
 <CACRpkdabg6vDKSRL6_AJUOMm6L_zUFCxf9nBz-MbfA5rLGcHng@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <f830c295-03d1-831c-8561-248d54cd782e@canonical.com>
Date:   Wed, 11 Aug 2021 11:47:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdabg6vDKSRL6_AJUOMm6L_zUFCxf9nBz-MbfA5rLGcHng@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/08/2021 11:00, Linus Walleij wrote:
> On Wed, Jul 28, 2021 at 4:42 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
> 
>> gpiolib does not modify struct device_node, so few local pointers can
>> point to a const data.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> 
> LGTM
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> I guess this needs to be merged with the other two patches?
> I suppose in Rob Herrings DT tree?

Bartosz replied he merged it:
https://lore.kernel.org/lkml/CAMpxmJVtxy-GBWmFLp-tMAOf03Fr7fg8RZ2ndMbvAu_M3qEkHQ@mail.gmail.com/



Best regards,
Krzysztof
