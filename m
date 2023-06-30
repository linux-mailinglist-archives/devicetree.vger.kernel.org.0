Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C76974376E
	for <lists+devicetree@lfdr.de>; Fri, 30 Jun 2023 10:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232614AbjF3Igi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jun 2023 04:36:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232644AbjF3IgP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jun 2023 04:36:15 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D8E835BD
        for <devicetree@vger.kernel.org>; Fri, 30 Jun 2023 01:36:14 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3fbc77e76aaso3442255e9.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jun 2023 01:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688114172; x=1690706172;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vYLmeNIa/qbq0KtAzV/Ey9lpEGHL4i7EOrsVCQLPj3A=;
        b=A+sxzTewrp+4wWtq/DbqZ2PmzuwXHSL5d+QkgJIf/INdv9tJM6AL+Ql5b1Amu4UtfO
         Vjm8RM6HWVcmHCB5QnVEIAj0w4VxuvAub5BJ9OILwaPraOTZ9gRxcYhIZKJSiPL73eRv
         DJSAzIIT2WcwcZPHWwYGjs3RlzM+iHgycuiIV3PyH7BhYiDUNtUGt/sueuB0M6BxqcrF
         YdSkz4d+5/XN39dPE19udl8Z37W2gmiO/6sRvMf1MMfTzhsZIl1NOopZwFUsp/B4N+jC
         T0Eq9STbIySEa67sLPNzpyx2VFqkI0gzA9Ug391DoOfM8qkpye8ayVq+T5bkKr8ALyur
         /R8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688114172; x=1690706172;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vYLmeNIa/qbq0KtAzV/Ey9lpEGHL4i7EOrsVCQLPj3A=;
        b=RhMM8I6Os2HcHlAFDW5IL2k/yAhu4+nZplRaYkKBjy1ooxthSEBYqRSO1oMdBJX9pl
         QZUUwyhjaEe+BM1K7yYtS4orVpiz7TA7oL7xxpV6kcErj9FwRwkp/zHWGd0lfom7EDAh
         sioai7IOBgN9MXm7ujNKfpgQLFBSMSVBGIMrpyFMkT619D16hltaE3MZrqLJ1YGxToLL
         0+qWfvpMsaSYVFvFAZ6IpmLNdViorV6oobzGFIkRU7X2nG8TKWTcmkDzJ03VjAPxwKNR
         B3CbNzzM2UsRvPFrCpcpVNP6duwU9OgUPQW2/2WJboeNYW9Ai4n2uyiVVABzzSFdWt1v
         vEnA==
X-Gm-Message-State: AC+VfDwX3v7PmT42I1CHWfZE73imbzmTp6h6sqtSDtUuotyT1FYbhvRl
        yIu/z999NcFhUpdtVcVvMP7hdvRHU7ouIercfII=
X-Google-Smtp-Source: ACHHUZ7EZObFAaKzqiAF5KKdvIUKd3ODGlToOXtpArd4HfG1IV5jWmOGUZTY+v+gqbbS0+LUc2uoKg==
X-Received: by 2002:a7b:c445:0:b0:3f9:b7cc:731 with SMTP id l5-20020a7bc445000000b003f9b7cc0731mr1457072wmi.15.1688114172525;
        Fri, 30 Jun 2023 01:36:12 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.171])
        by smtp.gmail.com with ESMTPSA id n2-20020a05600c294200b003fa78d1055esm18320515wmd.21.2023.06.30.01.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jun 2023 01:36:12 -0700 (PDT)
Message-ID: <cba4c06c-65ed-141a-80e4-3731c3560ae9@linaro.org>
Date:   Fri, 30 Jun 2023 09:36:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: mtd: spi-nor: clarify the need for spi-nor
 compatibles
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>, linux-mtd@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20230616140054.2788684-1-miquel.raynal@bootlin.com>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230616140054.2788684-1-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi, Miquel,

On 6/16/23 15:00, Miquel Raynal wrote:
> Most SPI NOR devices do not require a specific compatible, their ID can
> in general be discovered with the JEDEC READ ID opcode. In this case,
> only the "jedec,spi-nor" generic compatible is expected. Clarify this
> information in the compatible description to (i) help device-tree
> writers and (ii) prevent further attempts to extend this list with
> useless information.

Sounds good. If you don't mind I'll reword the description from below
when applying.

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> index 7149784a36ac..bef071163e38 100644
> --- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> +++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> @@ -43,8 +43,10 @@ properties:
>            - const: jedec,spi-nor
>        - const: jedec,spi-nor
>      description:
> -      Must also include "jedec,spi-nor" for any SPI NOR flash that can be
> -      identified by the JEDEC READ ID opcode (0x9F).
> +      SPI NOR flashes compatible with the JEDEC standard or which may be

s/JEDEC/JEDEC216, s/may/can

> +      identified with the JEDEC READ ID opcode (0x9F) do not deserve a

"deserve" is a little harsh. How about "must be matched against
the generic ...".

For future me: 0x9f is not a JEDEC216 opcode, it just happened
that the industry agreed on a specific opcode for reading the
ID of the flash. JEDEC216 doesn't care about the flash's ID.
We care because of the fixup hooks.

Cheers,
ta
> +      specific compatible. They should instead only be matched against
> +      the generic "jedec,spi-nor" compatible.
>  
>    reg:
>      minItems: 1
