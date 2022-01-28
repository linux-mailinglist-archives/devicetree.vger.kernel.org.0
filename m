Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1C2849FA67
	for <lists+devicetree@lfdr.de>; Fri, 28 Jan 2022 14:16:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244037AbiA1NQh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jan 2022 08:16:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237228AbiA1NQh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jan 2022 08:16:37 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64219C06173B
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 05:16:36 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id h21so10806076wrb.8
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 05:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BHcagqEkqEykMyyD1xqLGjKIFp6BT1eCL4LXbv7aRtk=;
        b=z1z4u2VR4nMLNcfMJQxbE378w1Bkvo+bQ12eM82xrKedNFu09LNRo7PtbYC1YT/sKn
         BMKP/Se1i9xSMY3zMzepRXR0gXeNa/6MbH1tu+aJ+TBwTVxyp75vMC7XPnyfwKglLeIS
         eXMvLY2mQvN/3j6RtTuOnVRdBsRMJFbzLDgl5xu5U4X2tQEaYKd3zQzGUlGOUC5pHrCp
         tpp5Z79F3+lSJ3VVbaJw5YGBStBUYTmVM85JmZbmf9nu7mj+gQmVkEttd78esru7agde
         ej3MhA+QzWmuSD6ZHxv2SrfivSYAXHflcMXgQTiHjAhNUTxfA1VHL3HPqHAog/Q2k+nO
         NgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BHcagqEkqEykMyyD1xqLGjKIFp6BT1eCL4LXbv7aRtk=;
        b=UZmX7w/RsegCNiH7UmUsEqxikNiJDr0/odjyP9c+smT/PJ6rx+FnhJ+REl/dFof3g2
         tZhENHnKBKRyJ4z9DpiUpsxtuGGyC1Hs5nOYVwu4h64y4ofT3ZEWzdy9bVcw2Et7KVII
         yNqMV5vxpXdXrwtyZV3oq3Yrz4ljxpzRyhR4qx8COR0cLHVVdDIJKggfo0uJBOv5q+OX
         tPCy68GNoTQOTpgn9XhQxqf12Us0LdIK2roxtRyIZabYAm2MHVa75LFxsiijKYr+F/Ei
         ilfl0gNNrlPLwCfaxA/+tY0qh712K78PzJy+pPFGiX8jE6a4qNzI3WZaQKpmdOQax3oe
         RM1A==
X-Gm-Message-State: AOAM5302+0YeQELkz2mei2EcJbpGQLQiXpVFSmwqh0Oeqe9mb+tJ5Zkg
        9mjjVj3AnAOUwtb2XTsAMvU7oAQtSL96VPFmFa2ciQ==
X-Google-Smtp-Source: ABdhPJzA3jkPCbW0m1A2rMkTINirAStcdud8umRS8/GKCdo23UjL6ZBvlx5/0/v4gLHlo2udk8QVh6ji0A7krqXzCYs=
X-Received: by 2002:a05:6000:387:: with SMTP id u7mr7204296wrf.214.1643375794752;
 Fri, 28 Jan 2022 05:16:34 -0800 (PST)
MIME-Version: 1.0
References: <cover.1643360652.git.geert@linux-m68k.org> <e6a4c5b20d2acb52125d7d6e6c7e3694d7cb182c.1643360652.git.geert@linux-m68k.org>
In-Reply-To: <e6a4c5b20d2acb52125d7d6e6c7e3694d7cb182c.1643360652.git.geert@linux-m68k.org>
From:   Anup Patel <anup@brainfault.org>
Date:   Fri, 28 Jan 2022 18:46:23 +0530
Message-ID: <CAAhSdy1+aWmNZJxxDS+tVHeOjGdLH6ALXLp4X6+tgZu+HS1d9g@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: sifive, clint: Fix number of interrupts
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Anup Patel <anup.patel@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 28, 2022 at 2:37 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> The number of interrupts lacks an upper bound, thus assuming one,
> causing properly grouped "interrupts-extended" properties to be flagged
> as an error by "make dtbs_check".
>
> Fix this by adding the missing "maxItems", using the architectural
> maximum of 4095 interrupts.
>
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Acked-by: Rob Herring <robh@kernel.org>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
> v4:
>   - Use architectural maximum instead of practical maximum of 10,
>
> v3:
>   - Add Acked-by,
>
> v2:
>   - Split in two patches,
>   - Improve patch description and document limit rationale.
> ---
>  Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> index 8d5f4687add9e81e..fe4b73c3f269fc0f 100644
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -44,6 +44,7 @@ properties:
>
>    interrupts-extended:
>      minItems: 1
> +    maxItems: 4095
>
>  additionalProperties: false
>
> --
> 2.25.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
