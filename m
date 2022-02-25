Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 976AB4C4162
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 10:26:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235507AbiBYJ0b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 04:26:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233276AbiBYJ03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 04:26:29 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A9FC182D89
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 01:25:57 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0A4BF3FCA8
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 09:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645781156;
        bh=u3BiR+sSk8E/BV+I3I6ftChtPOWoeeNyFGRFGGOpa64=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=rYQbm1PbEIiadAGKAam2nsDAySUxlzfJ7nGqmdFsd3CTOdKKzT/YYG72mXZb3luJJ
         svB6MRJdnDAG/6dCGeRtiU1lYCPc2V9ticYz1iKPgfmtQqq0nZkl/HY5jP0wL6y+BI
         Nu2syPfecDPpXCmAex7r0iS+iHGL1OlNzUVJpzEnMnZlwQIqHctB3Bk8MLA/wp3aP/
         7isJUsqhsAGCzdhP08PE+twe2Rq/q00W/p0EWSMItAAWxbZd6h+8IUIjDrYapw+KOu
         nK4WVgBya65D6AbJFYimjRdnw0DVcaBtLZM/nccLrILqtBb2JMl4NdDL5UGsx2GLx1
         HDGmmHkhXefHA==
Received: by mail-ed1-f69.google.com with SMTP id y13-20020aa7c24d000000b00411925b7829so2029199edo.22
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 01:25:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=u3BiR+sSk8E/BV+I3I6ftChtPOWoeeNyFGRFGGOpa64=;
        b=TNUcWUW9DzffAlgp33Irvk/rXTstLuIQA9XFJ+Rk1R9rYqpME3P13IxX8joPumdoDT
         FuWFzfoEj2FlJhOQbu7SoDj6iKV9w6Z+OJS/WvXixh6PIODmnPu9WlcX1C/nuEBrm+ym
         PozfA73uKYFK850NPldRHqKGtLFh0epAc0CvqdX+y/CrrNPecmXDXSSVDKmy5+Myeh59
         vpT4l59C+SGPsGE+1/Uc0Nv9XhE293eeIlyMK8Mwda0kq8mwPAVBHByVZB+nEqMJHaP8
         MXNyZ+mbMk8zfLjhb42HMaziQ76u9cn9Ibk1m/zmfa2ai8s3GOkxxgGjsvHKK/xJJSPU
         vjeg==
X-Gm-Message-State: AOAM533jMdbvR8bQnAAPiGC3x41UgPo0UJAeybIYHVgtFgX6lgV8+6oW
        ioPxl5eJeMH+ai6BBSGKOUSMhY5knYFgFku8T4rJU0CYZ5q50yMe0YVWuryp29RU9iWN9JkYIUN
        gorYsSk8PhoLOLafWcTCCdoDzBQRBTHWvreX6fmc=
X-Received: by 2002:a50:fe14:0:b0:410:8621:6e0c with SMTP id f20-20020a50fe14000000b0041086216e0cmr6128262edt.356.1645781155713;
        Fri, 25 Feb 2022 01:25:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx/RAHRHmxO306I0azib6Jyq/W0/GSgjv7dozaF7qDQqAcFJcfFq3x0jrM69GeMCTbpnIYaWA==
X-Received: by 2002:a50:fe14:0:b0:410:8621:6e0c with SMTP id f20-20020a50fe14000000b0041086216e0cmr6128244edt.356.1645781155556;
        Fri, 25 Feb 2022 01:25:55 -0800 (PST)
Received: from [192.168.0.130] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id g11-20020a170906538b00b006ae38eb0561sm764572ejo.195.2022.02.25.01.25.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 01:25:54 -0800 (PST)
Message-ID: <5784ee6b-1957-32a0-3406-cabbfed86832@canonical.com>
Date:   Fri, 25 Feb 2022 10:25:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: renesas,rzg2l-adc: Document
 RZ/V2L SoC
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-renesas-soc@vger.kernel.org,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220224125843.29733-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20220224125843.29733-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220224125843.29733-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/02/2022 13:58, Lad Prabhakar wrote:
> Document RZ/V2L ADC bindings. RZ/V2L ADC block is identical to one found
> on the RZ/G2L SoC. No driver changes are required as generic compatible
> string "renesas,rzg2l-adc" will be used as a fallback.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
>  .../devicetree/bindings/iio/adc/renesas,rzg2l-adc.yaml         | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
