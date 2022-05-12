Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EB5A524401
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 06:18:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346611AbiELESz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 00:18:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346543AbiELESv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 00:18:51 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98BE21F97B1
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 21:18:50 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id c190-20020a1c35c7000000b0038e37907b5bso4393630wma.0
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 21:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ivj2ToufcJh9XX+t7cYN4gR1xGP2Eqnye3FyrAKzUwo=;
        b=pevEQX99aUfHaf9ZrDK/7APbi+nhoR3NrOT9Lf9fouaWT/hRCJI8j764xXLTQCQKIs
         hrE87yqMJxXMhHUsEBbWQdb9wVWRFmAtz2ZIYqANBFvdDzirkqpQqsokZB+g8vdz497y
         E84xI/XyHyL8ZLSEAz2aTc81oXxATbhvV27mFRZICp+yWFgainNwcE4XciaZnlc29Wtp
         Sy2eHNT2wIPzwylVTgUser+RHGp7IW8Vg4RZGn/Ah2HALPzMkE76MdwOrpKW4S2AwaLY
         9pj4oUrJWWHj4cHD8Jmo2BJVXA85ivlGSLmzl9yOrZ3D72qsJ8V5hfiJh4hWtkNtgZcB
         4nAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ivj2ToufcJh9XX+t7cYN4gR1xGP2Eqnye3FyrAKzUwo=;
        b=Wx9n+NU4pHve97pq0uZwC5SVSxxD+jkDWvFtpPdj3dSoZnmr6iUPyFr1NRkAeKnGg5
         HRc32Pn7vvIqXnMLmZIjZ3rI9C90N0oSA2w4ruBKpJE2pZNn7khP28GRb/pzD23anieI
         a59ELXYGKDIz6lFh//T5xhvmWpySeZz7OYZRiq6kKrKsl4izmjECWxfp9p5utm0Df2OT
         IKW3sP0LlAoh06cGL7suD4+vGPAqdz5s1b9iwLTZ9AlhEkpPqs8n+gBEOBaI5WDK6ShD
         4a431e+AVwt3qU0NdEYyEdBKd9W8f9EAfI5xlwj66rloDQ4qNg+gTXsh6XIzJixayTM+
         hD8w==
X-Gm-Message-State: AOAM530jBmm2Gu+5lNYGlKV/8o5Dc8laxeBewDMYqCEBgLxFTmG/c8nr
        uPTP8WLkEfqUpiC5BJSQ0zNoMnSs1m4WEbscGg/GIWy2S/fcIA==
X-Google-Smtp-Source: ABdhPJyqM/Y9gRPJ8ZkauV1Q+8wE6TNSjv45pTRi0KPrGuz2I1L7fH4zvTKxMF9kTPnLMIU1L03Ox9L8FlGJIIupGD8=
X-Received: by 2002:a05:600c:4fd5:b0:394:55ae:32c7 with SMTP id
 o21-20020a05600c4fd500b0039455ae32c7mr7934316wmq.73.1652329129005; Wed, 11
 May 2022 21:18:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220511214132.2281431-1-heiko@sntech.de> <20220511214132.2281431-2-heiko@sntech.de>
In-Reply-To: <20220511214132.2281431-2-heiko@sntech.de>
From:   Anup Patel <anup@brainfault.org>
Date:   Thu, 12 May 2022 09:48:37 +0530
Message-ID: <CAAhSdy2PN8knGzyLadq-aoXVZqN3YASVVu7HxiO3YEb6XyqRxA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: riscv: document cbom-block-size
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Wei Fu <wefu@redhat.com>, Guo Ren <guoren@kernel.org>,
        Atish Patra <atishp@atishpatra.org>,
        Nick Kossifidis <mick@ics.forth.gr>,
        Samuel Holland <samuel@sholland.org>,
        Christoph Muellner <cmuellner@linux.com>,
        Philipp Tomsich <philipp.tomsich@vrull.eu>,
        Rob Herring <robh+dt@kernel.org>, krzk+dt@kernel.org,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 12, 2022 at 3:11 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> The Zicbom operates on a block-size defined for the cpu-core,
> which does not necessarily match other cache-sizes used.
>
> So add the necessary property for the system to know the core's
> block-size.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index d632ac76532e..b179bfd155a3 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -63,6 +63,13 @@ properties:
>        - riscv,sv48
>        - riscv,none
>
> +  riscv,cbom-block-size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Blocksize in bytes for the Zicbom cache operations. The block
> +      size is a property of the core itself and does not necessarily
> +      match other software defined cache sizes.
> +
>    riscv,isa:
>      description:
>        Identifies the specific RISC-V instruction set architecture
> --
> 2.35.1
>
