Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98B486D5846
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 07:56:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233413AbjDDF4N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 01:56:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232954AbjDDF4M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 01:56:12 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C202130
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 22:56:11 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id eg48so125875255edb.13
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 22:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680587769;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CUSbmYm7Thlr3qErxfg3DCYXeLDBbkSf11BtgUpbVOM=;
        b=LNJXNHOPy4HsV+T7i9vasHRj8Fv5vXgaaP1UpTVCNWDx/hrJYwWD6Zs96kauiMVsu2
         Re5oNhazexcjC1tiS3YAuon8Hux3eDfEAaYPCTjAd00UkZRE7d4MBD+b07B4L38BwuWR
         acUr1N1Ut+sl1w0Mrk4jx5R8UQn520Jp5/YeLCKpsxs3b4EwvKmbffXnV567hJbkmQJ2
         89D2vvssyizB2l6UtYLFAo2PuVu72jF5CSYdRpWr5DzpvDT8KvpmzTNOhrRykeXonkZr
         gALm1+9yKWw+UY1Drb0hub3X2NVjWE8wCXy5DwMr4xrRagdJVPBE7WQzTn1JFImj3I5a
         3S4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680587769;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CUSbmYm7Thlr3qErxfg3DCYXeLDBbkSf11BtgUpbVOM=;
        b=YL21sb3hs+VjDm27imIraBJts9u2aOB/u638q/XLRM+BZCmREslaFk2JghWKUFLQiB
         M1xelRLJSIwUEG9bkTs1yFXpJOYdNlPx6C52GiSfFkF+AhGmoadYngAcrhF+c9n3jdC5
         G2loAKICJzc/oT3T6qd0vFWj08oWQ5WM3GPe6eyLjivJVlQPNt8n8YZc/voRON5KVq1p
         KMwHYfnRNY25TaQKrLX7tgPZXJfKNdkS3Sb5z2Nv0rV/qbIVSgxCJJutvRc6gOVrgZRQ
         CL77lh4Ic/AosfdJtad/KAY/QqkzjQpVf0DStgtEt7ebvdt81B5zJujRsLGRniTvGu8h
         8HMQ==
X-Gm-Message-State: AAQBX9eL+7uX4ChByklgEhqLIGHnuv6sNThNMrzkBqx4pFtvSzfBQvEp
        ZqRpeqzBHOXFzSwquraYay4i0g==
X-Google-Smtp-Source: AKy350arsykze/fNQjW+jfzLcLr0fVb7LmmgY683Vvilgy+sGdx4O98hikKaI1+dtBJT8xJLxeuoOQ==
X-Received: by 2002:a17:906:b741:b0:932:cfbc:7613 with SMTP id fx1-20020a170906b74100b00932cfbc7613mr938443ejb.24.1680587769597;
        Mon, 03 Apr 2023 22:56:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:233a:5c18:b527:381e? ([2a02:810d:15c0:828:233a:5c18:b527:381e])
        by smtp.gmail.com with ESMTPSA id y20-20020a170906519400b00930569e6910sm5560139ejk.16.2023.04.03.22.56.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 22:56:09 -0700 (PDT)
Message-ID: <d36da931-28e4-8793-2f0a-8044b59ad236@linaro.org>
Date:   Tue, 4 Apr 2023 07:56:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] watchdog: dt-bindings: atmel-at91rm9200-wdt convert to
 json-schema
Content-Language: en-US
To:     Otabek Nazrullaev <otabeknazrullaev1998@gmail.com>
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230404054642.5691-1-otabeknazrullaev1998@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404054642.5691-1-otabeknazrullaev1998@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2023 07:46, Otabek Nazrullaev wrote:
> Convert atmel AT91RM9200 system timer watchdog from text bindings
> to YAML format


...

> +
> +examples:
> +  - |
> +    watchdog@fffffd00 {

Drop unit address. Test your patches before sending, you should see
clearly warning.

Best regards,
Krzysztof

