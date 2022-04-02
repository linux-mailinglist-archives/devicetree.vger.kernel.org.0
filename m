Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A5314F0611
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 22:10:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244659AbiDBUMD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 16:12:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229776AbiDBUMC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 16:12:02 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C317667D14
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 13:10:07 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id u3so8827765wrg.3
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 13:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=0Jj1n8NaBhzqatfaJy+kbX/a+Snz7j/FCRrNIUPpydA=;
        b=6eVmaNrP/P9vTibYEoyZ7MxfkgjcMxnzMdQ8BmvnLraLfWwOdC2tBfT6jI4JEa4D/Y
         tZ/DCrshzH656mbgpxuj1/6mvctqyQygLVXJ4MsfzunS3JiOmP9lOAXeC8Rc7FTMS5Yr
         oWjs02VJbgP20HULVaEhvnEejjjBJ/8a4LUAfwOp7AWLKWuXwwPvjqa2jXPOhSRFjHW6
         DW/W6UGFVzfy6cwAKvTc/1Q2RkibpfWX7b3of7/ZyT1Q1hHwIntogescQ3/kTx0m3J+e
         FeTt8biuBSRkF5X7Q9i2l3NsuEcytcFd0Sfg1RJMiOOMo6C7VDT4+nVqpXqGtjfjnIgK
         fBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=0Jj1n8NaBhzqatfaJy+kbX/a+Snz7j/FCRrNIUPpydA=;
        b=EcooGbhfvClWAXoGd4WFL7UuWlndS79es6lUCmgROJwPR5zs0Ln6W/wZE0O7lV2u8M
         QC1wKfeKJsSY4PZMxG66wFsp8Ios7eu2pMVmSv96feB3nv/Ql3TH0llRsV5b8ifvKlJp
         6ckzYfaK8W2XS62gGLyxvEWtxCG/+ybaCT7Cwl9J35ctaLRa8o8ILutIeyNJKzIKYJwz
         XAU0ipTWxI8dO3yIIw4tlgmTFKnhYIXHuu9QVIo318ldPhr9vEBLto1jfCsiK95TGrc4
         7200SXGW3RixxJ1aVb76bUlelFn6CLe0fM60Iobpt9JmnHWMd/E8va4Ul9FlGhfj2HkA
         jeTw==
X-Gm-Message-State: AOAM533CJAVHwfWvgJWHriCO0wcJzCdfolmbdEDlazvKemwM4Chcp5Fo
        54S9z461NFupk8Gm6D74nJUuGg==
X-Google-Smtp-Source: ABdhPJw1Jk2TR4G+F8lbC7iNS+1QyVWwMOCGaBhvPusnF28nGhCLUTQ9E4C7nAmOj/5f3e6JBWYfzw==
X-Received: by 2002:a5d:58d9:0:b0:203:fc5c:ba87 with SMTP id o25-20020a5d58d9000000b00203fc5cba87mr11829086wrf.79.1648930206310;
        Sat, 02 Apr 2022 13:10:06 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id o6-20020a05600002c600b002057f1738fcsm5705371wry.110.2022.04.02.13.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Apr 2022 13:10:05 -0700 (PDT)
Date:   Sat, 2 Apr 2022 22:10:03 +0200
From:   LABBE Corentin <clabbe@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 28/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Message-ID: <Ykitm1uLmQtNy3b2@Red>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-29-clabbe@baylibre.com>
 <30305936-4b69-e1ce-44c2-0d1d113b460e@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <30305936-4b69-e1ce-44c2-0d1d113b460e@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Sat, Apr 02, 2022 at 01:53:58PM +0200, Krzysztof Kozlowski a écrit :
> On 01/04/2022 22:17, Corentin Labbe wrote:
> > The latest addition to the rockchip crypto driver need to update the
> > driver bindings.
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3288-crypto.yaml        | 68 +++++++++++++++++--
> >  1 file changed, 63 insertions(+), 5 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> > index 66db671118c3..e6c00bc8bebf 100644
> > --- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> > +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> > @@ -11,8 +11,18 @@ maintainers:
> >  
> >  properties:
> >    compatible:
> > -    enum:
> > -      - rockchip,rk3288-crypto
> > +    oneOf:
> > +      - description: crypto IP present on RK3288 SoCs
> > +        items:
> > +          - const: rockchip,rk3288-crypto
> > +      - description: crypto IP present on RK3328 SoCs
> 
> These two comments are not helping, so this should be just enum.
> 
> > +        items:
> > +          - const: rockchip,rk3328-crypto
> > +      - description: crypto IPs present on RK3399. crypto0 is the first IP with
> > +                     RSA support, crypto1 is the second IP without RSA.
> 
> The second part of this comment is helpful, first not. You have chosen
> enum in your first patch, so just extend it with comments. Additionally
> indexing does not scale. What if next generation reverses it and crypto0
> does not have RSA and crypto1 has?
> 
> Something like:
> 
> properties:
>   compatible:
>     enum:
>       - rockchip,rk3288-crypto
>       - rockchip,rk3328-crypto
>         # With RSA
>       - rockchip,rk3399-crypto-rsa
>         # Without RSA
>       - rockchip,rk3399-crypto-norsa
> 

Hello

There will never be new SoCs with this crypto, rockchip seems to have dropped this IP for a different crypto v2 on their new SoCs.
I will answer more on that on your second mail.

> > +        enum:
> > +          - rockchip,rk3399-crypto0
> > +          - rockchip,rk3399-crypto1
> >  
> >    reg:
> >      maxItems: 1
> > @@ -21,16 +31,65 @@ properties:
> >      maxItems: 1
> >  
> >    clocks:
> > +    minItems: 3
> >      maxItems: 4
> >  
> >    clock-names:
> > +    minItems: 3
> >      maxItems: 4
> >  
> >    resets:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 3
> >  
> >    reset-names:
> > -    maxItems: 1
> > +    deprecated: true
> 
> Why reset-names are being deprecated? Did we talk about this?
> 

Since I use the devm_reset_control_array_get_exclusive, there is no need to have reset-names.

> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: rockchip,rk3288-crypto
> > +    then:
> > +      properties:
> > +        clock-names:
> > +          items:
> > +            - const: "aclk"
> > +            - const: "hclk"
> > +            - const: "sclk"
> > +            - const: "apb_pclk"
> > +          minItems: 4
> 
> minItems for clocks
> max for resets and reset-names
> 
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: rockchip,rk3328-crypto
> > +    then:
> > +      properties:
> > +        clock-names:
> > +          items:
> > +            - const: "hclk_master"
> > +            - const: "hclk_slave"
> > +            - const: "sclk"
> > +          maxItems: 3
> 
> min/max for clocks
> max for resets and reset-names
> 
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - rockchip,rk3399-crypto0
> > +              - rockchip,rk3399-crypto1
> > +    then:
> > +      properties:
> > +        clock-names:
> > +          items:
> > +            - const: "hclk_master"
> > +            - const: "hclk_slave"
> > +            - const: "sclk"
> > +          maxItems: 3
> > +        resets:
> > +          minItems: 3
> 
> Similarly.
> 

I will fix that in v5

Thanks.
