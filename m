Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2DB57355DD
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 13:30:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230453AbjFSLab (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 07:30:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231171AbjFSLaa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 07:30:30 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC88210FE
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 04:29:58 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-988e6fc41ccso46203766b.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 04:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687174183; x=1689766183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y0b3K6wMFTNOqwQ0pN9Qbjkbd6YMHXdpJVSfbzbME+o=;
        b=xAZsAhT9XBb2axZvJJB/ULopxk5VfhMeBiQ7fS5IKPGLdeXXWvkV9vr3+R2jk+C0tv
         jyKvLxLNUWqVIeAMePFye66NeAM4KzneMd2DNb7U57HZtW9VG29UqxRwUpXqG1Z78byL
         zdW0VBhV8W9h1XQ1Hd+c5lQQsgVD1XxJyw3MJ1tV6EYF4ISmJj9fS7aIi3Q2pgX9OM5Z
         IT3BXXmrKboUBAbJcBZpVA33Dxe70cstBDJjkHD58gQJJMVdIfGHBzKf7WcwtEjcCAkb
         l1uaxzZhrB8r7NmnYD7MT56WegCYPZxuTY/HW3OTr38j5Hrl8jhJloxuJt1YvKSvQpMK
         ebEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687174183; x=1689766183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y0b3K6wMFTNOqwQ0pN9Qbjkbd6YMHXdpJVSfbzbME+o=;
        b=UWUcreu53iXWS/qIy6s1GacSWW7oXbq9owJmLMMNybo1tXUdw5g81QKj36yjXotCOz
         W1fcm/ECaWOk4E64Qs+N9ijeDdvUnq+PrLxRZUtmd7gFEAlwKbvG3IsqmOkZTLB3ijE/
         E76cyAxhDrRUVZ15d2tH5JsYPGyt47ZWH3YtpT5vsxNi1N95+HbEXAzC34xVXw5NoNkJ
         O0yaaimLPdr7LAmeD8HQnVeyqxvRjB9rwKNwZvzsEzh2ZiMq2Thvqw+pVNn3NqKEF9zl
         cUttMSiCyr4aE8kiO7mwFfNJ7IoP7F+znI8ONV4xrPQnxkyW9jW/pEhFrWUivIlj3d8H
         OEfg==
X-Gm-Message-State: AC+VfDzbKYYE4c2+SlUkCaW99qzHksH6MXkoEnLg+7F+JSpZHgasLWzK
        kdQNmlANBaMTr6Ag+Q5LniGbuG12DwSn8c4odc8=
X-Google-Smtp-Source: ACHHUZ6WFouwYfH5BNhHUgF4MGOqLFUkcN5gjighatzA0G29gC3yrUTKzrMz6I/mAFIrkGxk1K0wFA==
X-Received: by 2002:a17:907:3da3:b0:987:2db5:ad26 with SMTP id he35-20020a1709073da300b009872db5ad26mr5390514ejc.25.1687174183283;
        Mon, 19 Jun 2023 04:29:43 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id w18-20020a17090633d200b009875f08c213sm3351409eja.181.2023.06.19.04.29.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 04:29:42 -0700 (PDT)
Message-ID: <00ef5b07-3c1a-40d2-0858-5aaf3c8d073c@linaro.org>
Date:   Mon, 19 Jun 2023 13:29:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] dt-bindings: iio: proximity: Add bindings for Murata
 IRS-D200
To:     Waqar Hameed <waqar.hameed@axis.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@axis.com
References: <cover.1686926857.git.waqarh@axis.com>
 <9487391b0565434761055b39ba04900bd839580a.1686926857.git.waqarh@axis.com>
 <07a6766e-7e2b-22fa-6f20-3a8ab7019635@linaro.org> <pnd1qi73dbu.fsf@axis.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <pnd1qi73dbu.fsf@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/06/2023 12:40, Waqar Hameed wrote:
>> Node names should be generic. See also explanation and list of examples
>> in DT specification:
>> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
>>
>> so I guess: proximity@?
> 
> On that list there is "temperature-sensor". Would it make sense then to
> call it "proximity-sensor"?

Choose whatever is the most popular in existing Linux sources.

Best regards,
Krzysztof

