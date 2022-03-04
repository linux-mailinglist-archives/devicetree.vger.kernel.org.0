Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6BA94CD704
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 16:01:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbiCDPC3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 10:02:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240006AbiCDPC2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 10:02:28 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C3061BD9BB
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 07:01:41 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E03873F5F5
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 15:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646406099;
        bh=veW4gKIbKo9jmCs1Wuv5XKB6ixDrTo7kj8IuMc2L6jg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=bNbuZu7ajGxRnI2zD0k7do++qOxwoXPlCAvITsMHchHJWkhAfPtBD51YbW27pKLXQ
         GC7/AiTmei3VTkWda7lp/GCGF8IRovOWTc+wB0893Qt2IJXhfKNuQkgHUbSufe2Dsk
         PAlTCwN5raHd7Mhh16fdohGzjuthSiJocJEreokn3hQ6ICJ/MUfzQSAgcfLxLHWFHY
         3u0tPG2CKfmKudxQbycplB+B7wWRn1qwXGaDv5OJnO/dHroLSL8VhEECte+SctVq9y
         Tm5BuKWeszVVaADkGOWv46iqJ6cN2/o1a59kwNeEwhVa1NFhtNNLu2n6DUGVmWcpMN
         ySFgt7QEODUAA==
Received: by mail-ed1-f69.google.com with SMTP id e10-20020a056402190a00b00410f20467abso4703323edz.14
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 07:01:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=veW4gKIbKo9jmCs1Wuv5XKB6ixDrTo7kj8IuMc2L6jg=;
        b=VqW1DRsfH9sG6OjLnm+KW17xTxeY948gE3O79RmBbQOF+OURJwEdXbwFv4ujII0tii
         NjZE0LDuofBArtX5QbBTZme3V/5+xPUbxZ0pZpQuAwERkQAuKl8ZSBQJVhCP7lDAoac5
         qIcZcQNhrbZfwI1BUDC3PlXnMpJmxcx+czoP4GB5FCa5xhdMlV0jz4PKv01fC8NijnV/
         cSTcC+OJ0pmGK+jU06Rndkbtr0KUWUBtv5nkY54DuRxZRl7sA6fRFlixplO/TYFuMLcF
         Gr6tcRJ9sH0A3vXn8K29M/8Crw0noe9Rdc5lq7NBaVQ+FQufYsu5ZwRIKfAh2qMBFNZe
         H/Dw==
X-Gm-Message-State: AOAM533mIwQ7+uGnmfNpjGpGZtqtbmw5Wirn9zzDX3NBRAZM7iasN7qU
        wO3sW8BJEGIMMKLuD8DL/cJCzORf4MMLDe/URb0kX4hle3rnUf8jP0yKBs+X0IBOOCT4X6L4HRK
        JQXK/Q3dKrwbkLeBgvPjYXyWBdhids/LKQdefGek=
X-Received: by 2002:a05:6402:3489:b0:415:bc37:a81f with SMTP id v9-20020a056402348900b00415bc37a81fmr12512638edc.354.1646406099198;
        Fri, 04 Mar 2022 07:01:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxgaVeX2hMApbdyglZkusLEVifJ+zoAKzqcXR0aV/1vWe1MjVa35U8Tzx/bcGq+skX2sVwWTA==
X-Received: by 2002:a05:6402:3489:b0:415:bc37:a81f with SMTP id v9-20020a056402348900b00415bc37a81fmr12512608edc.354.1646406098927;
        Fri, 04 Mar 2022 07:01:38 -0800 (PST)
Received: from [192.168.0.139] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id k3-20020a05640212c300b0041605b2d9c1sm603615edx.58.2022.03.04.07.01.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Mar 2022 07:01:37 -0800 (PST)
Message-ID: <9113e319-58a2-fd90-6887-fb32eb21fd18@canonical.com>
Date:   Fri, 4 Mar 2022 16:01:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings:pwm:Add bindings doc for Sunplus SoC
 PWM Driver
Content-Language: en-US
To:     Hammer Hsieh <hammerh0314@gmail.com>, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
        robh+dt@kernel.org, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     wells.lu@sunplus.com, hammer.hsieh@sunplus.com
References: <1646374812-2988-1-git-send-email-hammerh0314@gmail.com>
 <1646374812-2988-2-git-send-email-hammerh0314@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1646374812-2988-2-git-send-email-hammerh0314@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/03/2022 07:20, Hammer Hsieh wrote:
> Add bindings doc for Sunplus SoC PWM Driver

You miss spaces in the subject.

> 
> Signed-off-by: Hammer Hsieh <hammerh0314@gmail.com>
> ---
> Changes in v2:
>  - Addressed all comments from Rob Herring.
>    modify author's mail match Signed-off-by.
>  - rebase kernel to 5.17 rc5
> 
>  .../devicetree/bindings/pwm/pwm-sunplus.yaml       | 40 ++++++++++++++++++++++
>  MAINTAINERS                                        |  5 +++
>  2 files changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-sunplus.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-sunplus.yaml b/Documentation/devicetree/bindings/pwm/pwm-sunplus.yaml
> new file mode 100644
> index 0000000..19fe5d5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/pwm-sunplus.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) Sunplus Co., Ltd. 2021
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/pwm-sunplus.yaml#

Is it going to be one binding for all Sunplus SoCs? Existing and future?

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sunplus SoC PWM Controller
> +
> +maintainers:
> +  - Hammer Hsieh <hammerh0314@gmail.com>
> +

allOf with pwm.yaml
Then unevaluatedProperties instead of additionalProperties.


> +properties:
> +  '#pwm-cells':
> +    const: 2
> +
> +  compatible:

Commpatible goes first. Rest of properties you could order
alphabetically. Similar approach in required.


> +    items:
> +      - const: sunplus,sp7021-pwm
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:

compatible

> +  - reg
> +  - clocks


> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pwm: pwm@9c007a00 {
> +      #pwm-cells = <2>;
> +      compatible = "sunplus,sp7021-pwm";

compatible goes first, then reg.


Best regards,
Krzysztof
