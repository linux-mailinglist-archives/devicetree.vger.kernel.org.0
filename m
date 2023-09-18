Return-Path: <devicetree+bounces-1078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7BF7A494F
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 14:11:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C1CD1C20CDC
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11801CAA6;
	Mon, 18 Sep 2023 12:11:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3827D38F93
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 12:11:45 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BEFCA4
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:11:10 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c008d8fd07so16616191fa.1
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695039069; x=1695643869; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nNg5sBvXpTkFIEXWpv9DgGZCDJnmvTQX83kuJA0NYGE=;
        b=yf5Kz7a+hEt86reAJzJ/LCYDawqQPqdqCXfg2oCNSfM/IRLT9xK8VVYVpNxvCCmDp1
         yx0dkzEgjC8glOYGzgd1CKAdTzD1Vof+B69Lq3/YQdggA2Z/0p9PNgYQ4QSyY8DFTzi+
         LUmeXR9ivoguBpvWj0zwMxg28IVw3nMcWhCWJIxm4QiwDLQ3PAWO+4QwkKlz9G+sCH4M
         3aB89/1jac81Oe2uADkZUkxwh24DhZEWzoJlBaUswKip1I7bEpvhOGp50sw0a+mGgdkh
         zaYt7eHa2NA9mfohGsERP8bGNTBRGe8Zgv8Pe0smLoehJHo1krZwcI+NwE56bONJFv+6
         vfLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695039069; x=1695643869;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nNg5sBvXpTkFIEXWpv9DgGZCDJnmvTQX83kuJA0NYGE=;
        b=PTDDh3gSUWdhph1IcS9z1frPm+RYYB5uFlaHAOaP5Io9Y6AXySs+H4WKkM0bwR1G9G
         jRo4U82PTqFHyS6INQ3+sXrqAb17qxqs4kPUm+W3bgGpZXM/hyoYiyol8HslQc4zTAue
         PWwLkYvfD7AcE/XCF5Y+BF8tbou4vL/ZYGy8WldZi7899ox52IYl/YTvgN7bWzoVXjDL
         eTGZDeHpxpgOV31WO3AQ+GHS0aG5IBF71C6ynPYjMmrf1Mr2hd5UjrXJw5+VvTq9sRHn
         meOiDz88eCRphplGi1AWem/WORlKblVVqUxTbAjvl9RxQwD7k3rlBMpmwN6pQPGDUbBc
         nsCQ==
X-Gm-Message-State: AOJu0YyMe/xVqKukciIVhIJkl9ocSlLZPQOW2Fnyjlr3xiO8UCKT8DAV
	2wjsSXCgMt5pbNz9njkT9z8YXQ==
X-Google-Smtp-Source: AGHT+IFwerwMQ9p0BqOOgGf8TfiZGafrKqJF/xTtLKwKD07Ub3Rfj01f0aVJZ19zwA3dnMtXaMRXaA==
X-Received: by 2002:a05:651c:2115:b0:2bf:df8c:4e56 with SMTP id a21-20020a05651c211500b002bfdf8c4e56mr8540093ljq.39.1695039068635;
        Mon, 18 Sep 2023 05:11:08 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id rp9-20020a170906d96900b0099e05fb8f95sm6346237ejb.137.2023.09.18.05.11.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 05:11:08 -0700 (PDT)
Message-ID: <ed222918-68ca-cb57-15b8-57f45cdb5a5b@linaro.org>
Date: Mon, 18 Sep 2023 14:11:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: Add Richtek rtq9128 audio
 amplifier
Content-Language: en-US
To: cy_huang@richtek.com, Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Allen Lin <allen_lin@richtek.com>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1695030341-20711-1-git-send-email-cy_huang@richtek.com>
 <1695030341-20711-2-git-send-email-cy_huang@richtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1695030341-20711-2-git-send-email-cy_huang@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 11:45, cy_huang@richtek.com wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Create richtek,rtq9128.yaml for rtq9128 amplifier.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> ---
>  .../bindings/sound/richtek,rtq9128.yaml       | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/richtek,rtq9128.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/richtek,rtq9128.yaml b/Documentation/devicetree/bindings/sound/richtek,rtq9128.yaml
> new file mode 100644
> index 000000000000..a79694c2b169
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/richtek,rtq9128.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license is needed. Just like checkpatch is asking for.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/richtek,rtq9128.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Richtek RTQ9128 Automative Audio Power Amplifier
> +
> +maintainers:
> +  - ChiYuan Huang <cy_huang@richtek.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The RTQ9128 is a ultra-low output noise, high-efficiency, four-channel
> +  class-D audio power amplifier and delivering 4x75W into 4OHm at 10%
> +  THD+N from a 25V supply in automotive applications.
> +

Missing ref to dai common.

> +properties:
> +  compatible:
> +    enum:
> +      - richtek,rtq9128
> +
> +  reg:
> +    maxItems: 1
> +
> +  enable-gpios:
> +    maxItems: 1
> +
> +  '#sound-dai-cells':
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#sound-dai-cells'
> +
> +unevaluatedProperties: false

This goes with mentioned $ref. Alone would not be correct.


Best regards,
Krzysztof


