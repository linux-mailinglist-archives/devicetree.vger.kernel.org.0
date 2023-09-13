Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B2A979E01C
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 08:39:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235268AbjIMGjD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 02:39:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238357AbjIMGjD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 02:39:03 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 444E81738
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 23:38:59 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-401da71b83cso72640495e9.2
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 23:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694587138; x=1695191938; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vXni+5boQmEaYGoN3pj3Gay1Zsi6v5dMqRf5NvenPXw=;
        b=MvPg2ZI+PLDKdGW37conw/HLdJXtRMBJK+Nk6uLrWPxBpJKddqIaSYGS2I9/XQlg7q
         a+nLhnKQoytxSWIzu/Q+qj2v6oU6DtuQSXooLaekmiGcrnBSZEFYf0A8pJznFpsCvV+R
         oslxycHOCWElSpkFIxdWRoBZsuWDc872Np6+0svWafAsRdpDGG5DB+v4SNJbIYfD3wSA
         dOEl6fN+UFcCT32f13blf/4nHdccniCGT/QnpvifclpvIWI+POb6rpC2tU2bRP9vvOz4
         rfxltFqFoIcQP1kNjqVQncDvt2lTjllpUB85VGH2hBHBz3tDorcZsWGnZpzYihnmcn0o
         1B+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694587138; x=1695191938;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vXni+5boQmEaYGoN3pj3Gay1Zsi6v5dMqRf5NvenPXw=;
        b=V6d3tNH2C0s1tb2oJXivJGs32JVr2ZguLgchbUeEu/JyWCr0JRSzIUz0GdzYPRqPdy
         I1E336g9LbZFfEejg+XBKsRYsapSLL4eHZTJvliSs1ylzTWM6rc9bJgVn9L4RxWSJq9T
         tuHS3ll69U8Ko61Tj9UBJ9VLgaQ2azyfAfeCA0mvUDoQLhUCYg67e8356Ef5OaCoH9SQ
         JzT4YYAWRXDkjGoL2HIU3aRZ1+c53iYSoSIe6xixfZOY+SQCyrlTcjZ/DSLuMNTE1Ur/
         0JGi/cSZkLl3jYKnNfI9dXXpFomud0cKBVEZxxHaaDgZJrRBEcWdgQBwvsakW62IQis7
         Y/2Q==
X-Gm-Message-State: AOJu0Yy4FxwdD2PaNihTXC9lP4qRcfAkx30VW1JYk0V1Uds2tDh+ZxUR
        zYpYTgk2Nc0+yG/r3L7Liup5uA==
X-Google-Smtp-Source: AGHT+IHjbiauJkI1GqGxKgcBlVc77B/2lF4dOPnQfOl3dEP1ToJieZ2KwqLjU/XSoTj0LZdfUvhUqg==
X-Received: by 2002:a05:600c:2147:b0:401:b1c6:97e8 with SMTP id v7-20020a05600c214700b00401b1c697e8mr1253612wml.36.1694587137780;
        Tue, 12 Sep 2023 23:38:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id z20-20020a7bc7d4000000b003feae747ff2sm1030573wmk.35.2023.09.12.23.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 23:38:56 -0700 (PDT)
Message-ID: <644e3564-994d-0b51-7d58-dac6afc1e0ec@linaro.org>
Date:   Wed, 13 Sep 2023 08:38:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] ASoC: dwc: Add Single DMA mode support
Content-Language: en-US
To:     Myunguk Kim <mwkim@gaonchips.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, fido_max@inbox.ru,
        joabreu@synopsys.com, krzysztof.kozlowski+dt@linaro.org,
        kuninori.morimoto.gx@renesas.com, lgirdwood@gmail.com,
        linux-kernel@vger.kernel.org, perex@perex.cz, robh+dt@kernel.org,
        tiwai@suse.com, u.kleine-koenig@pengutronix.de,
        xingyu.wu@starfivetech.com
References: <bf43b771-35e3-1b37-24f5-e21b2c34a415@linaro.org>
 <20230913025342.1460157-1-mwkim@gaonchips.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230913025342.1460157-1-mwkim@gaonchips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2023 04:53, Myunguk Kim wrote:
>> Bindings are always separate patch.
> 
> Okay, I will send v2.
> 
>> This was not tested. Missing vendor prefix, type.
>>
>> Anyway please provide some explanation why this cannot be deduced from
>> the compatible.
> 
> This is not dependent on a specific vendor, 
> but is intended to describe 
> the properties of the signal(single/burst request) connection 
> relationship between i2s and dma.

How does this relationship depend on hardware?

Best regards,
Krzysztof

