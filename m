Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C35362B588
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 09:50:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232798AbiKPIub (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 03:50:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231952AbiKPIu3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 03:50:29 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80488A44E
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 00:50:28 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id a29so28427870lfj.9
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 00:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tmMdI4WFLpMX3R8QoEHliNFUihkav6luIBgijGBFVqM=;
        b=tZvavu3atKzH6HkUL4xw65NKlHm9/49SW8Zn6whRQEBNVZnh5Byst3O4WZpUtUKAz2
         rzAyXnqJdOE+5IOh92jywg1HY9sJMnXrn6KueGawoWcxKj1fsILNwpuLEiQWzBErMRnQ
         QJ+tg5QkztqZDizu7ufkgCiJgpiDDDYl1l7vi2wKqEviSuK7GHmwr3tViDOElUTM0a4U
         SVxF67yaP8/z9l/RkfejDzYZZn7yDgusiAqwTnoe4DGhkGzQKey+JpZf4xoOQ1A2TNvP
         pkJPzgB740r5UHVnhKUlopDNYVMyW3br6pS8PTscUfd5nTpPmUBW7APXLqiOZIhsrxeP
         Z2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tmMdI4WFLpMX3R8QoEHliNFUihkav6luIBgijGBFVqM=;
        b=T/7mqH+zsNG37uHNIsYENvrzn6NQSEq0GMC9OjH/CKR7cwfL4enFwJgEde4GnOpNYu
         iP82cxbbVnHoKXgNT76JF1sq7JAlao2jZ0q66OLEe3f78KPuJF0eK4wiHjbs/oq72Md0
         eE/fFMG5+ClNYzAgVq1jqbS/pPTzcUZKdAKY/TN8Qz64WYiEawaU1uQ79BTRt8Ctprys
         0R6rxJFKjHiucZYL/vHcjFv0svJkrrzOO8zVzG/4W5DPOOozD1pMX8fZ9QXQozc5K0+m
         KX44Rdh+wTja+YGNnTe8ST1soYXsZjEjPF0yA9kDKdwHcw7Wx8I8unsCkQWGwEpkvtyO
         d/Vw==
X-Gm-Message-State: ANoB5pmQcDKaBzpYJuXpLJmDS05qO1xOY46gU6A1rmYEieu6QgO6e+Df
        3NVhKMxYmgdmvEzrDnsaymAY5Q==
X-Google-Smtp-Source: AA0mqf5Gm3nkC4nCOWNd3+CUtd+Ha8+85ZHi/1/29g6hyZDOEHrihpAtNiwzQ+GD1IeVwdiv6nz0cQ==
X-Received: by 2002:a05:6512:12c1:b0:4b1:785c:838d with SMTP id p1-20020a05651212c100b004b1785c838dmr6620071lfg.388.1668588626874;
        Wed, 16 Nov 2022 00:50:26 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s7-20020a056512202700b004a0589786ddsm2499844lfs.69.2022.11.16.00.50.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 00:50:26 -0800 (PST)
Message-ID: <83492f7f-1217-69aa-8b38-ec1f08995832@linaro.org>
Date:   Wed, 16 Nov 2022 09:50:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: Add bindings for Renesas ProXO
Content-Language: en-US
To:     Alex Helms <alexander.helms.jy@renesas.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        sboyd@kernel.org, mturquette@baylibre.com, geert+renesas@glider.be
References: <20221115233749.10161-1-alexander.helms.jy@renesas.com>
 <20221115233749.10161-2-alexander.helms.jy@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115233749.10161-2-alexander.helms.jy@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/11/2022 00:37, Alex Helms wrote:
> Add dt bindings for the Renesas ProXO oscillator.
> 
> Signed-off-by: Alex Helms <alexander.helms.jy@renesas.com>
> ---
>  .../bindings/clock/renesas,proxo.yaml         | 51 +++++++++++++++++++
>  MAINTAINERS                                   |  5 ++
>  2 files changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/renesas,proxo.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/renesas,proxo.yaml b/Documentation/devicetree/bindings/clock/renesas,proxo.yaml
> new file mode 100644
> index 000000000..ff960196d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/renesas,proxo.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/renesas,proxo.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas ProXO Oscillator Device Tree Bindings

Same comments as for your other patch. All the same...

> +
> +maintainers:
> +  - Alex Helms <alexander.helms.jy@renesas.com>
> +
> +description:
> +  Renesas ProXO is a family of programmable ultra-low phase noise
> +  quartz-based oscillators.
> +
> +properties:
> +  '#clock-cells':
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - renesas,proxo-xp
> +
> +  reg:
> +    maxItems: 1
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +  renesas,crystal-frequency-hz:
> +    description: Internal crystal frequency, default is 50000000 (50MHz)

If it is internal, then it is fixed, right? Embedded in the chip, always
the same. Why do you need to specify it?


Best regards,
Krzysztof

