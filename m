Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 957274AA858
	for <lists+devicetree@lfdr.de>; Sat,  5 Feb 2022 12:35:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244379AbiBELe7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Feb 2022 06:34:59 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:51534
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234497AbiBELe6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Feb 2022 06:34:58 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6FF873F22B
        for <devicetree@vger.kernel.org>; Sat,  5 Feb 2022 11:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644060897;
        bh=8wZjc4AJmUICEN/J47+AHu6zl7TY1OVui5hLAqvkGdQ=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=vj4XFnlbcInIcHR5RxOkB/aijWrDe/l9eH/srv90HqrqG+PXpsPALNBmHT/WZ9XuL
         imQbz+/kj6GUyLb7496MCBWe1CiEtjKQDG5NJAOX/gY9+P6T5ciXCRKzAkjqJNuOzc
         nUw2i2LWvl0LJmrzlv2DKF1hp8Uy4r6xcbtvxNRz1DZtUP7APBEhhO8kvVXjbFY1Ke
         vQaJxv6L6EskXEIEMANYIc8cUoFWyy+ss3QZiOkyA97xZEk6O5HXmRdeXx6tkM2JXf
         HKu/LOKCoy71zqt8AURDp2arcKCoOQYw6xE6PhvoHI/dDlbY02RvvE80lSm2INum+k
         OLK4jDP4JuX2A==
Received: by mail-ed1-f71.google.com with SMTP id l19-20020a056402231300b0040f2d6b4ec4so586822eda.0
        for <devicetree@vger.kernel.org>; Sat, 05 Feb 2022 03:34:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8wZjc4AJmUICEN/J47+AHu6zl7TY1OVui5hLAqvkGdQ=;
        b=22PBK53bHxUtfWlE6l8cgCx0pJLJFJyqt5MM/jrKTpGk6r7rWgqWFs3Fvpoy7b2QTp
         56Pu/J8i7ksKq64mFD0PlQsL6YXgY4ZbRrfPMqY5xHYO0FzBX5jKXx4X+vJHUvjQtR4M
         xLopvMniJffdngbGVkRL0H6xw7QSJI21qk+ytFxBC9SidY4vrjI3JgLXvdAk97AhB2QU
         XJvu3pqS63lL3RkSp9rOcEyRRhfYuesRNEyVabF6rRgXj8tfYs6yzWTRxvjhJHtInL5P
         ScyOvGZZ95MBzXkbbvolw31x39mArnM85uSbT/w9IO+58gcu+UlFJ9oG/b+h+po8BdXp
         vLzA==
X-Gm-Message-State: AOAM533fQ9NfoQMpiJsuHFbk9O7mbOOVz810ySAeuK0Nt0GnQhnC9VLY
        GStBz7vTzM1QwydVNxo2uls4bLROy0FidTkG7G0WLLFLJwwncyT60bC6GbkQxXS5aufXY61g/Na
        qcT9XPunZW5e0ICBY1iPZnVG2fHjR/afhD5a/dmU=
X-Received: by 2002:a17:906:9514:: with SMTP id u20mr2771803ejx.227.1644060897130;
        Sat, 05 Feb 2022 03:34:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyNClAORm0Is6CvvWa0A5wmi15Ut3l492E6QUKdnkYGlK2vqHYbGFsJvHLoIE4y9hBSj7zuGQ==
X-Received: by 2002:a17:906:9514:: with SMTP id u20mr2771793ejx.227.1644060896994;
        Sat, 05 Feb 2022 03:34:56 -0800 (PST)
Received: from [192.168.0.83] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id ec52sm663468edb.24.2022.02.05.03.34.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Feb 2022 03:34:56 -0800 (PST)
Message-ID: <3dd66b36-5b91-6cb7-cdea-851e780e3d54@canonical.com>
Date:   Sat, 5 Feb 2022 12:34:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 6/6] dt-bindings: memory: lpddr2-timings: convert to
 dtschema
Content-Language: en-US
To:     Dmitry Osipenko <digetx@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
 <20220201114749.88500-6-krzysztof.kozlowski@canonical.com>
 <23d38615-6b75-8715-0f83-fc93755a708b@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <23d38615-6b75-8715-0f83-fc93755a708b@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/02/2022 20:48, Dmitry Osipenko wrote:
> 01.02.2022 14:47, Krzysztof Kozlowski пишет:
>> +  tZQCL:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: |
>> +      SELF REFRESH exit to next valid command delay in pico seconds.
>> +
>> +  tZQCS:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: |
>> +      SELF REFRESH exit to next valid command delay in pico seconds.
>> +
>> +  tZQinit:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: |
>> +      SELF REFRESH exit to next valid command delay in pico seconds.
> 
> Hm.. these look incorrect.
> 
> tZQCL is Long Calibration Time
> 
> tZQCS is Short Calibration Time
> 
> tZQinit is Initialization Calibration Time
> 
> No?

Yes, thanks for spotting these. Copy-paste error.


Best regards,
Krzysztof
