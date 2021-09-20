Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D347341138A
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 13:29:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231727AbhITLa1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 07:30:27 -0400
Received: from mail-wr1-f42.google.com ([209.85.221.42]:35679 "EHLO
        mail-wr1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231279AbhITLa0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 07:30:26 -0400
Received: by mail-wr1-f42.google.com with SMTP id i23so28685879wrb.2
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 04:29:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PhCyR5e+0u30KO96xN+OUpH445jhTB3K3MWPDPmPJ/8=;
        b=2dxD54B+ICiwB28TR9on+TLeLbK1TshJtQmF4f9YYJPzv7mcQy5TsZdZrajmLzk5Qj
         1aD1N9bZMBTrEX23yzIhoPDuKDqnJfDd+YEg9IC2++9/T5VEcSoaZOqIZnQqBlXC9k+9
         VjFeOqNXdsT/jXv+EZfAJhELjyIrZk8STaPYrKzpsehcamWrohp4I0X98MBrrdBTKPwa
         1WoVaADovSGlex+zPfpCPnW7F4Xpmowx54tiS8cioNr45hHxiB1D97jrgTTu1zYW5okg
         oMfggTaOCYzR8tPCT9d9rFLcxICdnvpeSPJQYxtPMvFRZ++nCjvQ+/TUIOTvxyP3Ai6d
         Z0zA==
X-Gm-Message-State: AOAM530SaRp50GPMLuP+ePPpZMDvQ9nffT8u1Lc3fa8MhF61+2ZrLQ+1
        N2TeIsgEhzL+yUWjI94g25XWFU8qCX1I9w==
X-Google-Smtp-Source: ABdhPJx1sstBHm2/iORXzKQu8BkHFkUpI6G6zkHr+cqiPxPUjScEjja1FOqUIK1RZO1WRSwUZ9JwMA==
X-Received: by 2002:a5d:4ac4:: with SMTP id y4mr27672908wrs.190.1632137339311;
        Mon, 20 Sep 2021 04:28:59 -0700 (PDT)
Received: from [192.168.2.20] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.googlemail.com with ESMTPSA id l19sm15869941wrc.16.2021.09.20.04.28.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 04:28:58 -0700 (PDT)
Subject: Re: [PATCH RESEND v2 2/2] ASoC: dt-bindings: rt5682s: add bindings
 for rt5682s
To:     derek.fang@realtek.com, broonie@kernel.org, lgirdwood@gmail.com
Cc:     oder_chiou@realtek.com, jack.yu@realtek.com,
        alsa-devel@alsa-project.org, lars@metafoo.de,
        albertchen@realtek.com, shumingf@realtek.com,
        albertwang@realtek.com, flove@realtek.com,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20210907120557.1593-1-derek.fang@realtek.com>
 <20210907120557.1593-2-derek.fang@realtek.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <b4eb2486-f9ff-3a8b-911a-0791e012bc03@kernel.org>
Date:   Mon, 20 Sep 2021 13:28:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210907120557.1593-2-derek.fang@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2021 14:05, derek.fang@realtek.com wrote:
> From: Derek Fang <derek.fang@realtek.com>
> 
> Realtek ALC5682I-VS codec is a ALC5682I-VD variant which supports I2C only.
> 
> Signed-off-by: Derek Fang <derek.fang@realtek.com>
> ---
>  .../bindings/sound/realtek,rt5682s.yaml       | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
> new file mode 100644
> index 000000000000..fbf23696f1a7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
> @@ -0,0 +1,100 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/realtek,rt5682s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek rt5682s codec devicetree bindings
> +
> +maintainers:
> +  - Derek Fang <derek.fang@realtek.com>
> +
> +description: |
> +  Rt5682s(ALC5682I-VS) is a rt5682i variant which supports I2C only.
> +
> +properties:
> +  compatible:
> +    const: realtek,rt5682s
> +
> +  reg:
> +    maxItems: 1
> +    description: I2C address of the device.
> +
> +  interrupts:
> +    description: The CODEC's interrupt output.
> +
> +  realtek,dmic1-data-pin:
> +    enum:
> +      - 0 # dmic1 data is not used
> +      - 1 # using GPIO2 pin as dmic1 data pin
> +      - 2 # using GPIO5 pin as dmic1 data pin
> +

+Cc devicetree and Rob,

Guys,

This is really poor. The patch was never sent to devicetree maintainers
and does not build at all!

There are several errors here. I fixed few of them:
https://lore.kernel.org/lkml/20210920112106.140918-1-krzysztof.kozlowski@canonical.com/

but still you need to fix missing description for vendor fields.

Derek,
Your duty is to use get_maintainers.pl script to Cc all relevant
maintainers and mailing lists. Second duty is to test it. This was not
tested.

Best regards,
Krzysztof
