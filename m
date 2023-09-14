Return-Path: <devicetree+bounces-90-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1196879FBD7
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B174A2812A1
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DB392115;
	Thu, 14 Sep 2023 06:23:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B31A63B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:23:00 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 651E498
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:22:59 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9ad8bf9bfabso76475566b.3
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694672578; x=1695277378; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7IY6Klcup6lhl/U3i4EA23kuZdk+E7DI+uCdmyLnRtE=;
        b=jqYrseqPyH21d5ws8e1CcSoeZVI45XIXn1hiUuNUPmrvJ+VQIf6ofDdaNN5dKDVS+M
         2IwsxHi0e4y5lfzhAdGiiGBAUmuwhFrEgrwjoW1hfMRQYIMBLg112dYI3mfq9Su0ei4D
         9QDQZLW8dWiemwLj+x0Ag/VaSHk8AUEZwuNbuOr2YNxFDhkHEKG+qPSHldMaEAB7e3SA
         ruWROaSiycEiaOBgeaPwD0S6EsdY1AfdkcLG4d/4L2WCdtlRyPpYHtfv1Ay0z5OZEcc2
         2hjNl4r7/b9lbdmRtqSv8BOyoAHSU6LKEG2hemcGunZl0DQhUeMoIjIDIzHPagWOSnDV
         iUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694672578; x=1695277378;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7IY6Klcup6lhl/U3i4EA23kuZdk+E7DI+uCdmyLnRtE=;
        b=CZnKi5OBTssb4VPs8UMXfzwismYxmu5aWm/mffZvWuTm29s/MOPH3EZZ/IAREaycyF
         LR5noATvI+E/h+PJZdko9HE6lpfUALKwlBDF1ZwnvDRYlS6X+T8PRUqKFQw4URW+bxce
         51LCgvKTlOY90jSEi8WCGKUMSsPWtIoS6Gue2RGpczjXPifVsiDB57zjBzyMIxuycpfy
         KfW3FU9DK78UJBRr9951wallViyvt9I5Jc4EC+CNARamT8D6PPTPRknKv/c9r+XE8xgE
         MjAuQJi4vQK3nepkzQjB51HXqU9OUD+RKvLWWUc/hQIyMVLjxFoNWp3nFktBr/tHTwwu
         tg2g==
X-Gm-Message-State: AOJu0YytPHMDizip0NjUQqRaBPSRuZqJ6sOAAlQQoWdPFsenPu5Zdl5/
	c2CfEW6FYqCoufNvd7mUU0TALw==
X-Google-Smtp-Source: AGHT+IGKIIEs8IOe0HhBpjx4EsRiO8dHrpPLhJSDgfHSmzRmaGEaG5r/fh7DRpWKCw5ScNBiYpvtxQ==
X-Received: by 2002:a17:907:7811:b0:9a9:e4f8:3501 with SMTP id la17-20020a170907781100b009a9e4f83501mr3510882ejc.43.1694672577897;
        Wed, 13 Sep 2023 23:22:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id kt27-20020a170906aadb00b0099d959f9536sm527418ejb.12.2023.09.13.23.22.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 23:22:57 -0700 (PDT)
Message-ID: <95bf5c64-3fb3-6ee0-4290-3696d4b72883@linaro.org>
Date: Thu, 14 Sep 2023 08:22:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: input: touchscreen: document Himax
 HX852x(ES)
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Henrik Rydberg <rydberg@bitmath.org>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jeff LaBundy <jeff@labundy.com>,
 Jonathan Albrieux <jonathan.albrieux@gmail.com>
References: <20230913-hx852x-v1-0-9c1ebff536eb@gerhold.net>
 <20230913-hx852x-v1-1-9c1ebff536eb@gerhold.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230913-hx852x-v1-1-9c1ebff536eb@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/09/2023 15:25, Stephan Gerhold wrote:
> Himax HX852x(ES) is a touch panel controller with optional support
> for capacitive touch keys.
> 
> Unfortunately, the model naming is quite unclear and confusing. There
> seems to be a distinction between models (e.g. HX8526) and the "series"
> suffix (e.g. -A, -B, -C, -D, -E, -ES). But this doesn't seem to be
> applied very consistently because e.g. HX8527-E(44) actually seems to
> belong to the -ES series.

...

> +  touchscreen-inverted-x: true
> +  touchscreen-inverted-y: true
> +  touchscreen-size-x: true
> +  touchscreen-size-y: true
> +  touchscreen-swapped-x-y: true
> +
> +  linux,keycodes:
> +    minItems: 1
> +    maxItems: 4
> +
> +additionalProperties: false
> +
> +required:

If there is going to be resend, required: goes before additionalProperties:.

In any case:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


