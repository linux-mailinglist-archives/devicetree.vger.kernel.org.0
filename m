Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B0EB49F5EF
	for <lists+devicetree@lfdr.de>; Fri, 28 Jan 2022 10:06:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231806AbiA1JGY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jan 2022 04:06:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238005AbiA1JGX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jan 2022 04:06:23 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E02AC061714
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 01:06:23 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id v13so9529050wrv.10
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 01:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xKmKkemO7LZgNH3z0FyPV0a1F2pctQzcwkbzVf+pn9M=;
        b=dMjEiUSnrp58PvxtH8/oq3uk2znAwoXs16+ia+Di+iOLZWWrdxj1szC1T8NAzX/gps
         Pt8T8++gA+3eGQxk785oSrLqWGJdXzyYzgYvqx7BtIPIusrsdYU/OUmX4buHQzaVOsyd
         I2GdFE2nwLxRGW3VhTokvS5WpQ5E7/19VRiuzYkUSMWAj+P7z9tzgIyx5K9z4GxiB7Ip
         BeUR2/u3SCO/rN+Cbs01UtQjK2gDMsPOzWti1O1KnyY3AcKYkaNIKWSI46p0Nia80PVX
         UDoBkKTzZuI/qK/EkT3CGKvbsreqwuhwv6Qqf7zeVI2HFmxZTIvexSh1B1aC5vXlGOTu
         5C9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xKmKkemO7LZgNH3z0FyPV0a1F2pctQzcwkbzVf+pn9M=;
        b=793dk6bS2QOoIIPod+6gX/d/qIAsWGaNOVdMibFNU3jdApvTdsm9F+uhpCG+7Vwc41
         JFAULWjbbFBI7ZnmyZoBmiIdc3mBu7OPNW9CrshYPyqjQVTz+O/hDw/YfICZMdGuIL9t
         lcnHUjE65WqFJokuuvPAGwBr/QkeydeyPebsQnTntB/CTt0UBhUAFcQIzdBvg1BP0nwF
         mlAonKv36S1+RdeXtKp4zeasHZjB1vEMk/m6TkASuJpRGLD5mXWfPGhbroigO9AhuNn6
         qvu9Lwx2QMaoTRyBltKn+QKYvjzoiElLChnQO0jmBYU8brscsBSDE7rtbc6NfRzMX1c9
         sZ9g==
X-Gm-Message-State: AOAM532rJu/tvYdFht5QBiXqgakpYf7VnTNAi98tMSWlJYJPlM8ZuJYh
        WPpZ300U+VnM4PoPPwpefxg8BnL9W04jnShg89lMMQ==
X-Google-Smtp-Source: ABdhPJyi2j2no5AvzLexpxvXn1W3Bl71f/NV5cWi8/uC4z/VF2s2n5jyqjBFmXLiJFR1/nEBiZPeQCSoIZM2KrosgAc=
X-Received: by 2002:a5d:6b48:: with SMTP id x8mr6411882wrw.86.1643360781694;
 Fri, 28 Jan 2022 01:06:21 -0800 (PST)
MIME-Version: 1.0
References: <cover.1643360419.git.geert@linux-m68k.org> <f73a0aead89e1426b146c4c64f797aa035868bf0.1643360419.git.geert@linux-m68k.org>
In-Reply-To: <f73a0aead89e1426b146c4c64f797aa035868bf0.1643360419.git.geert@linux-m68k.org>
From:   Anup Patel <anup@brainfault.org>
Date:   Fri, 28 Jan 2022 14:36:10 +0530
Message-ID: <CAAhSdy2r-F8cJR8feV9c5-RHATe3Wv7ioYU2RwgNbwUMBJhHJA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: interrupt-controller: sifive, plic:
 Fix number of interrupts
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 28, 2022 at 2:34 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> The number of interrupts lacks an upper bound, thus assuming one,
> causing properly grouped "interrupts-extended" properties to be flagged
> as an error by "make dtbs_check".
>
> Fix this by adding the missing "maxItems", using the architectural
> maximum of 15872 interrupts.
>
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Acked-by: Rob Herring <robh@kernel.org>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
> v4:
>   - Use architectural maximum instead of practical maximum of 9,
>
> v3:
>   - Add Acked-by,
>
> v2:
>   - Split in two patches,
>   - Improve patch description and document limit rationale.
> ---
>  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> index 28b6b17fe4b26778..57c06126c99502fa 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> @@ -62,6 +62,7 @@ properties:
>
>    interrupts-extended:
>      minItems: 1
> +    maxItems: 15872
>      description:
>        Specifies which contexts are connected to the PLIC, with "-1" specifying
>        that a context is not present. Each node pointed to should be a
> --
> 2.25.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
