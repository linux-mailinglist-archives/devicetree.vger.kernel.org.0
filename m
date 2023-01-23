Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C760677798
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 10:44:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230255AbjAWJoK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 04:44:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230131AbjAWJoJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 04:44:09 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 273EF14220
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 01:44:08 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id b4so13924006edf.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 01:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tzw7rVzTiAE2k/bJcZBk03eWLle0ey7P0sqdJk1vnSM=;
        b=Plu12ZxwGb6JsyyWkxd2rHh4SjNlcEvN324p4m6LtWds1GO+Hax8AGLJ6wHcRXrmeG
         WxEcfNUpxC6KQytDKSE2msAWJ6ukXAyQPcxTtxOuhe6uwbVjbh8JMjCIJXZiOBa/D/YY
         VJLw6jw/JAuObEKslK9X0NTn1zhFYUA21kzoDGN8RVsy3q8RtvGprz03VpvMqxbKZRro
         HbqfcUdCEIG4svaIQJ22q/9nFKQzzhgQicTpZ25PKXw0Gg2Nr+a4ntpzAfeVtu1ID3Ux
         mBiGrabv3QCuRAtEb7O+DKYfGuZrp3is9C4T6W9FlZ60qwSNCv+oaHW1OHbGxBdgdf2U
         dCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tzw7rVzTiAE2k/bJcZBk03eWLle0ey7P0sqdJk1vnSM=;
        b=GM0xLXaNmfMhfDqb9bGiyMaCvaH3S7xVGzwXCjgJti6UmVwWisjRNHfvXWG2KzR6Ix
         CQ0odRmAueWrbq6Z6qC2DK9D0uJutMgbFoUimIkXYosJe35qwa8FTmvOFEE4goBtxodJ
         uTwYeo5W7ZC+ZHWrA7dL4M4Xe38PIUgV/Kmp8QoPmaLkAoawlmJ2iGvgIaSNAhGEo5Iq
         lSvBdVrulYimNmkMDa9rsB9d73rmE+hW9iaLfnqujbUKqnZg7GyqdWpZ+7GG2vEY0fMv
         SMguoT8q8yW+csAzGgwzxpEr2XOoRN2trGRWqbudjLYOEQ94a4iOFNAKqknvDtvw/DHI
         Ae+w==
X-Gm-Message-State: AFqh2kouOcEVaaRz6xb3BjlSVJyIVOBJwkXI8rCHVkCJPYvwllfWhqXb
        zr5ovqC1noDtdcm5evLnUwnecA==
X-Google-Smtp-Source: AMrXdXutGuQsdwPBdG0nyzaFoN1CE+Hi1ozPIjd2kpvHRh/7ZdJXcy0rLy+58kuMSsp/lk+rggSzlw==
X-Received: by 2002:a05:6402:602:b0:49d:f448:878c with SMTP id n2-20020a056402060200b0049df448878cmr33389242edv.2.1674467046664;
        Mon, 23 Jan 2023 01:44:06 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id v17-20020a170906293100b007be301a1d51sm21720198ejd.211.2023.01.23.01.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 01:44:06 -0800 (PST)
Date:   Mon, 23 Jan 2023 10:44:05 +0100
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor.dooley@microchip.com>, g@orel
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Document cboz-block-size
Message-ID: <20230123094405.2ageo63zauqt6g2n@orel>
References: <20230122191328.1193885-1-ajones@ventanamicro.com>
 <20230122191328.1193885-3-ajones@ventanamicro.com>
 <Y85A+3MW2N/jPTHH@wendy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y85A+3MW2N/jPTHH@wendy>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 23, 2023 at 08:10:35AM +0000, Conor Dooley wrote:
> Hey,
> 
> On Sun, Jan 22, 2023 at 08:13:24PM +0100, Andrew Jones wrote:
> > The Zicboz operates on a block-size defined for the cpu-core,
> > which does not necessarily match other cache-sizes used.
> > 
> > So add the necessary property for the system to know the core's
> > block-size.
> > 
> > Cc: Rob Herring <robh@kernel.org>
> 
> FYI bindings need to be CC Krzysztof & the devicetree list too.

Thanks, hopefully CC'ing them now is OK (I just added them). If not,
I can repost.

> 
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > index c6720764e765..f4ee70f8e1cf 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -72,6 +72,11 @@ properties:
> >      description:
> >        The blocksize in bytes for the Zicbom cache operations.
> >  
> > +  riscv,cboz-block-size:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      The blocksize in bytes for the Zicboz cache operations.
> 
> Do you think hardware that has different Zicboz versus Zicbom block
> sizes is going to be common, or would we benefit from just defaulting
> the Zicboz size to the Zicbom one?

I'm not sure. If it turns out the block size will be the same in most
cases, then we could add another property named cbo-block-size, which,
when present, would be parsed first and used to populate all CBO-related
block sizes. Then, these specific properties would only serve to override
that general size for their respective block sizes when they're present.

> 
> Either way,
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
drew

> 
> Thanks,
> Conor.
> 


