Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82F176EF42D
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 14:20:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240816AbjDZMUJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 08:20:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240073AbjDZMUI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 08:20:08 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B06122D4D
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 05:20:07 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f178da21b5so48277775e9.3
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 05:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1682511606; x=1685103606;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AsyA/AkOxo8ZoshwfcmReREGpPnJGd+uW8k6ZSOAWtw=;
        b=DBgGwMsHhifBRn/EU1NjGyg0aWSE1n5N62i97uQFvC8SbAPiLNcfTiFyESyTeLGC0c
         rg7VkhPWIO37ejTAAjrFGJpff7RSOsZDRCJnA7CdrfkoVF4da3oUQtN9O5RGX5AngCGM
         7iub3WsQ1hSrf4zeatlNt0LnEQ9DblKuDziWmLmywHaOJ0TXCFsY4TLuqR+svLUm4wNZ
         WMh4llEVB3YkEQfNDgEqNPGshoT8YMa8I6X+DtnYs61pgoGL7IRrA+d5RuiNB/v5uK6B
         72VDBtdMo9qVzfg5pRyGTovT8YiDz/mWSJwTorYE1lCoaSV2v7AWN5AdkRxt84NhssTj
         WX+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682511606; x=1685103606;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AsyA/AkOxo8ZoshwfcmReREGpPnJGd+uW8k6ZSOAWtw=;
        b=Lh3rxvBeUIsR8wXnwh4+pDcT1Wulxks7Dj96Uuu6aR/oXSQuyLmzQM7Vbn48h6mflW
         G57PnQifPWP5FzhPryhpBx1/PaD2J8TmbB79X7nCTZs9CogHpaTHFzUo8tHotWr2wOK6
         /WkFOm/2kTJtizcwpzHJ1fH5DvSj/HHuiGgSLCOfQvko+WPIivMKusYGs1XcQaJ7CD+A
         g9I6WLFyfQy2azI4LQlQVnkCEdh8DbhlwrAc4K3uHGHCubMrITlAlV1GgjN0Zwr0kn9y
         rIpDP1F2awJ5Y5d9VTAmGejQ+qxYSEM2JaXElEDVK8Wr5mvAf3t0ShZOazcU2EtrFt9z
         p2VQ==
X-Gm-Message-State: AAQBX9c+mOrwxeRSoFzX87OEk/JQxdRLAM7ctXCLHsPtBsHoPgQUttBT
        9w+mA0HvErKRmOP+cS7+zJV9bg==
X-Google-Smtp-Source: AKy350Y3HkKJCAG0hUS1i+AeOxbKgcCQF3tpJIWU+1uZBHvn3AVYrzpGQSXGWuW/PQ4mJJZWaqOMjg==
X-Received: by 2002:a1c:7201:0:b0:3ee:775:c573 with SMTP id n1-20020a1c7201000000b003ee0775c573mr12126765wmc.20.1682511606182;
        Wed, 26 Apr 2023 05:20:06 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id n10-20020a1c720a000000b003edef091b17sm17748669wmc.37.2023.04.26.05.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 05:20:05 -0700 (PDT)
Date:   Wed, 26 Apr 2023 14:20:04 +0200
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     palmer@dabbelt.com, conor@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Wende Tan <twd2.me@gmail.com>, Soha Jin <soha@lohu.info>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v1 2/2] dt-bindings: riscv: drop invalid comment about
 riscv,isa lower-case reasoning
Message-ID: <ad3znhrgwbzqnfjpg7caw26yqmqemw7pu3kto3bsiz4dntfux2@5xga2lwvew6o>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-payphone-nautical-7098d15035c8@wendy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230426-payphone-nautical-7098d15035c8@wendy>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 26, 2023 at 11:43:25AM +0100, Conor Dooley wrote:
> "Ease of parsing" may have been the initial argument for keeping this
> string in lower-case, but parsers may have been written that expect
> lower-case only.
> For example, the one in released kernels currently does not behave
> correctly for multi-letter extensions that begin with a capital letter.
> Allowing upper-case here brings about no benefit but would break
> compatibility between new devicetrees and older kernels.
> 
> Drop the comment to avoid confusing people.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index f24cf9601c6e..9e273a3264e3 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -86,7 +86,7 @@ properties:
>  
>        While the isa strings in ISA specification are case
>        insensitive, letters in the riscv,isa string must be all
> -      lowercase to simplify parsing.
> +      lowercase.
>      $ref: "/schemas/types.yaml#/definitions/string"
>      pattern: ^rv(?:64|32)imaf?d?q?c?b?k?j?p?v?h?(?:[hsxz](?:[a-z])+)?(?:_[hsxz](?:[a-z])+)*$
>  
> -- 
> 2.39.2
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
