Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F27248F9FD
	for <lists+devicetree@lfdr.de>; Sun, 16 Jan 2022 01:34:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233880AbiAPAem (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jan 2022 19:34:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232736AbiAPAem (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jan 2022 19:34:42 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6654C06173E
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 16:34:41 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id i7-20020a9d68c7000000b0059396529af8so8284668oto.4
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 16:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ZzvCLaxte6t1+ns9ZlRppkBkDjsfJFHHvFmlzKogF6Q=;
        b=hUFil8u8LU6GPrMUqmFlfmRZGj7f4UwgoZLx152kmtl7i7SoEMgSYZ4dlmkhmvXKCx
         RIF7PbEWdXly4mEPcLmwxmAVq1XP4pAS+jNbub1RyfWY/l6Bv2S0z95fit/eTVXZP2h4
         DsRzXSBKTOzRXrP37EtkfV1t5Ijwf45lFkp3D/9V5mvj/nbOuctS0klEsEMHNPY0ABrU
         X8cepU57/vNoN5xKMhWxooAgi01+5LZsulJEVNT6hwZAiHGjawusOAh1qkklgxXLh44u
         l3UPpzurWGxJc4fHv354hy/p3wkbjJXD3A33fd94boM03pYe1tdwsAdcomoiC+moGPTC
         FFkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ZzvCLaxte6t1+ns9ZlRppkBkDjsfJFHHvFmlzKogF6Q=;
        b=FDLkrsAikUv/DU1naUOucrX2c7DjyZbVBRUgxd7/KOui2q7GfFLf7kv0ZC0H2Ci4GF
         Ib+5cZH3OTqdA2t0tWBSyl4uKYZn6LpoH88jVxfNkYwufp/SL/0HNtwoCVvj+YGMV1Kg
         ZF/mLO8GWkZesT4De9uP9xakDwb3UCM295X6FzG/k05nCnimEBFw6zUUmzI6NLepJi8o
         FtIpQPBko/II1iWvhc/zP0JACd/gqwzQBP0IOGsZtL6Hmur3JsKN+GgG3s7cnwod74bP
         YDSMMK0uUh/6Pc40p/MR6V/TIzUwiCU6EJghEe0hrZbnSMwIirstGm5FRDbVUMPf4tVq
         TuRA==
X-Gm-Message-State: AOAM531S2SYjusjKbvzwlfCDCblAfwTX0NQO5CamMom2d5iXX8s40jc2
        /CFJQr5Jf/FhPALhwVQtobZzaxUnYkvYUMPSo0DYRA==
X-Google-Smtp-Source: ABdhPJwJpGCm5V68sgM58qpJsDpihskxpQISyTShDKElb0SqKN6QicmPUUkLunpx2G+ZLVjrIcCx+8/2QJlNQHQRNHw=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr11992209otg.179.1642293281169;
 Sat, 15 Jan 2022 16:34:41 -0800 (PST)
MIME-Version: 1.0
References: <20220109115331.388633-1-alistair@alistair23.me> <20220109115331.388633-3-alistair@alistair23.me>
In-Reply-To: <20220109115331.388633-3-alistair@alistair23.me>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 16 Jan 2022 01:34:29 +0100
Message-ID: <CACRpkdYQEBiSsnwrV1jMks3UYcbnwZLtN8dnUPdsKB3rLcwDjg@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] dt-bindings: input: Add Cypress TT2100 touchscreen controller
To:     Alistair Francis <alistair@alistair23.me>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        dmitry.torokhov@gmail.com, rydberg@bitmath.org,
        andreas@kemnade.info, alistair23@gmail.com, robh+dt@kernel.org,
        =?UTF-8?Q?Myl=C3=A8ne_Josserand?= 
        <mylene.josserand@free-electrons.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 9, 2022 at 12:53 PM Alistair Francis <alistair@alistair23.me> w=
rote:

> From: Myl=C3=A8ne Josserand <mylene.josserand@free-electrons.com>
>
> Add the Cypress TrueTouch Generation 5 touchscreen device tree bindings
> documentation. It can use I2C or SPI bus.
> This touchscreen can handle some defined zone that are designed and
> sent as button. To be able to customize the keycode sent, the
> "linux,code" property in a "button" sub-node can be used.
>
> Signed-off-by: Myl=C3=A8ne Josserand <mylene.josserand@free-electrons.com=
>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>

Looks good to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
