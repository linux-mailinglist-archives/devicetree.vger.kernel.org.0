Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3F1030C9CB
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 19:30:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234636AbhBBS37 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 13:29:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238660AbhBBS2C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 13:28:02 -0500
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E209C061786
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 10:27:11 -0800 (PST)
Received: by mail-io1-xd34.google.com with SMTP id q7so8464894iob.0
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 10:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sO45hddV4SFvCIJx/H8JjvwkptnOnST0NRJqIDfcvAw=;
        b=haGA9pofOxAw8R+yTCDViL2ai4UOWRphsuuFxNbv1c/P5oAAvOOJnWQ4mrb0/1nV4j
         uRWiFwBTmHNomtCw7p9YSXXMCzbwTOksiy8CBkvEiwWi/E5v9K01iKCu/tNjEQbtplpm
         L1ibZ+KNu4FWS5U0Q6L/Z/bJiJAmH7BiRNWXY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sO45hddV4SFvCIJx/H8JjvwkptnOnST0NRJqIDfcvAw=;
        b=BKzvmklTmp6dSFMAvHrLVR8e2Yt3YNqbUNgVSvG5ibyq7DMbRrin9JB67j/lCeDGG9
         CQczj+Cvr5j2ec30H8+5BZhZs2KN8C8LuIzOxnw1ebz8bkMD4MpbTyDI42b85JD64WiK
         vAUGkTssF6uN37BbKwOdO6BBKZjwRDmncmsFQmkCE1XShdHc9pqX404EwPUoDt3VGuoe
         t9j6LIN+LVc6/J+xb3cKiVmirNPwkeSbRSjephpWp2bFjPWRojMS/Q1MUhDTRvpkrvID
         JCALiIh1qt4LeJ8I+FXpy3qo3UQPvHSS2Fe3H4lwM5LOs6/lClUAq0NePy70ELLYhBqX
         M5wg==
X-Gm-Message-State: AOAM531XJwVMTMWBT3cyg6Dd3ufsMpauAbvNJMbLL0q74zWdxSg871pM
        0qp/MFqA7u6r39VzypbI1NybCCInhFe3U2dLGjP2
X-Google-Smtp-Source: ABdhPJzEtajs+ltmE06IYaBT7IB2gM2CPxjo0h1wGG8p11J07dRxyA7dSIaSzYInnkSjBfizJQJmBkC14QjGI9wF/kw=
X-Received: by 2002:a5d:96d5:: with SMTP id r21mr18497123iol.53.1612290430810;
 Tue, 02 Feb 2021 10:27:10 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com> <20210202103623.200809-7-damien.lemoal@wdc.com>
In-Reply-To: <20210202103623.200809-7-damien.lemoal@wdc.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 2 Feb 2021 10:27:00 -0800
Message-ID: <CAOnJCULuBKGMDt_CdijiS_zBdyN=xATaEmBy_+0wgRL0PATfsw@mail.gmail.com>
Subject: Re: [PATCH v14 06/16] dt-bindings: update sifive uart compatible string
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh@kernel.org>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Atish Patra <atish.patra@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 2, 2021 at 2:37 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> Add the compatible string "canaan,k210-uarths" to the sifive uart
> bindings to indicate the use of this IP block in the Canaan Kendryte
> K210 SoC.
>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  Documentation/devicetree/bindings/serial/sifive-serial.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.yaml b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
> index 3ac5c7ff2758..5fa94dacbba9 100644
> --- a/Documentation/devicetree/bindings/serial/sifive-serial.yaml
> +++ b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
> @@ -20,6 +20,7 @@ properties:
>        - enum:
>            - sifive,fu540-c000-uart
>            - sifive,fu740-c000-uart
> +          - canaan,k210-uarths
>        - const: sifive,uart0
>
>      description:
> --
> 2.29.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
