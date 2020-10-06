Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FF902852E2
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 22:08:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727140AbgJFUIP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 16:08:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:33326 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726103AbgJFUIP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 6 Oct 2020 16:08:15 -0400
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C1A2F20760
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 20:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1602014894;
        bh=avIsIuNLGkilg01KYyPB8ZMf/MyjeJUSeipqra54pos=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=fjxnCr+QO4IDx7tlHUQXj5DcOMXV4wdfilsrp9R/eLZay3KHg6QPgK7PwTGrY9jZJ
         ixLbr50aIXogduCHc6XaOMAwhL6txE9NYkzYdExm3+faWHwDXSwryyA1uvKs0jBU5U
         9yxQbGQjPX3PGB+fmXJjR6zdndRNQiFRD+1j+WFw=
Received: by mail-oi1-f173.google.com with SMTP id w141so13962140oia.2
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 13:08:14 -0700 (PDT)
X-Gm-Message-State: AOAM531O0939OujCcXJCTE4ncvkMrmu452FuvaC/ppCysV245TqKWlin
        1ne+vcbO6U3t9iowkyI3cNOUPSenEEQR0uIoLw==
X-Google-Smtp-Source: ABdhPJzwGhlvjV1HPPcO4uA+kbudU9GF3fNrDbdo2xFrMwp6RaHzhVzap4C4zJ+xXLiw9e2tpjfYshRezvuiJ3iNIEo=
X-Received: by 2002:aca:4c52:: with SMTP id z79mr3977034oia.147.1602014894092;
 Tue, 06 Oct 2020 13:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <2367272.gIzBuxHi73@pc-42>
In-Reply-To: <2367272.gIzBuxHi73@pc-42>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 6 Oct 2020 15:08:02 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLf=Mqjgz9HHyDZ92-ZSFwhXH8SQ32=t4bPGR9UXw0-zg@mail.gmail.com>
Message-ID: <CAL_JsqLf=Mqjgz9HHyDZ92-ZSFwhXH8SQ32=t4bPGR9UXw0-zg@mail.gmail.com>
Subject: Re: Need some advices on Yaml conversion
To:     =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 6, 2020 at 9:57 AM J=C3=A9r=C3=B4me Pouiller
<jerome.pouiller@silabs.com> wrote:
>
> Hello,
>
> In order to get the wfx driver out of the staging area, I try to convert
> the following DT bindings to YAML:
>
>   drivers/staging/wfx/Documentation/devicetree/bindings/net/wireless/sili=
abs,wfx.txt
>
> Unfortunately, the conversion is not straight forward. The WFx device can
> be connected on SPI or on SDIO. The requirement for the two interfaces ar=
e
> different. For exemple:
>   - <reg> should be set to 1 in SDIO, while it corresponds to the Chip
>     Select in SPI

What's important for 'reg' is how many entries. The bus defines that
in both cases here IIRC, so just 'reg: true' is sufficient.

>   - The attribute reset-gpios is not available in SDIO
>   - The "interrupt" does not have the same exact meaning in SPI and SDIO
>     (it is required in SPI, but not in SDIO)

Just list them both and note the constraints. That's no worse than
what we had before.

> I have considered to declare two different devices, but I am not sure the
> dtbs_checker will appreciate to have two definitions of the same device.
> In add, some attribute descriptions would be redundant.
>
> I also considered to use conditional statements, but I didn't find how to
> check the bus that the device currently use.

I've thought about adding a pseudo '$bus' property for this purpose,
but no, there's not currently a way to do that.

>
> Does anyone has some advice about the way to achieve that?
>
> Thank you,
>
> --
> J=C3=A9r=C3=B4me Pouiller
>
>
