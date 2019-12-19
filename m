Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C32AD126032
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2019 11:59:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726652AbfLSK7l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Dec 2019 05:59:41 -0500
Received: from mail-il1-f194.google.com ([209.85.166.194]:42023 "EHLO
        mail-il1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726696AbfLSK7l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Dec 2019 05:59:41 -0500
Received: by mail-il1-f194.google.com with SMTP id a6so4482175ili.9
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2019 02:59:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=YEnz6rtmOsqvmaj2aduLHDl66N+lt0mfLf6uw+pTiDQ=;
        b=it61dloBhcSk7XfxC33/CGeJ+D3J3nOc7Y/y6UWUpck1kTpT2JgJrOEebHC97Rb9b9
         0+zPbW0SW6LJJvlQv1+92dgCo+CAfpS9gElWv0kCnTplCvQ53jYHfc3hHWOzOfJcEqNp
         KfHSTmkjktmk3oqCC6L/zFjDBJnrxvScUP/VDcIGwPrwXnZakb+UU2anfDVb0jHxZxpr
         OgP7ja80QFqG65VQhBzdd2hlsaEtw9OJk9TqdroTkzSNPaeLRplqM8IXX7oE7O3VrNv6
         xlyDMxnDBzkXqjQBsxU4pgo+WknYG3ilEMSxYDlMWxrFg6zzJTloTVkGaJuOzz28RgOj
         nqWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=YEnz6rtmOsqvmaj2aduLHDl66N+lt0mfLf6uw+pTiDQ=;
        b=P7wotofzArlWSChm+uUAI5z3gF4XVgvond5R7SamtGXKHASdtRgylQ15/wFdNC9j0t
         CsL5rv0n44qIHZrHFLVz7OTeOLBIZofZWaxgDiaRvQr+rqrR/vb3033ouWTSZmQYCmeG
         9fesFAWzTeCEiu0qWuvTN0hr3GR65YeX7Hv59F09P0qVfnhQ3Ehv6JZlBslpQdNUF7Cb
         pDkp6y1IUtGurc0eCYQ9RYeMnt2TlKQEOodNHi5VQBP7WRauZQEnbHOrcQx3JCLP4W4O
         9rG9k8Os7ABqyZ6dtdOjRCLwrkXvOevXtnx94hvcxb0cPFicD/N0QnAm1qzfTFBlrZV5
         zs8Q==
X-Gm-Message-State: APjAAAVZoCKMKcRpgazest0xG/zdFnk74Hf/md28/K5VrFq82fvtxiHp
        jck/Aa/dn51IMarNDRp4qxMneByZ76QvEqdlEh9ghQ==
X-Google-Smtp-Source: APXvYqz+lUlue15W96AqQpyFaKFQAt4AOaLfE1iA5SmiiXn2rwdF7Mivdq3SM/UWgXrCxbg1MQ7kOSBxmwYZlVVsric=
X-Received: by 2002:a92:9c04:: with SMTP id h4mr6772212ili.6.1576753180511;
 Thu, 19 Dec 2019 02:59:40 -0800 (PST)
MIME-Version: 1.0
References: <20191210154157.21930-1-ktouil@baylibre.com> <cd9f342c-5576-57f5-c62d-a78c5876a7fd@linaro.org>
 <CAMpxmJUM2WWyJyU0MuOu9qObPFr2ghH5LHs8DXo_poMwtZqPNA@mail.gmail.com> <b56813c2-d29e-c461-ca1d-80a131c9341a@linaro.org>
In-Reply-To: <b56813c2-d29e-c461-ca1d-80a131c9341a@linaro.org>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 19 Dec 2019 11:59:29 +0100
Message-ID: <CAMRc=Mc+OCJTMOx2qXT74RBma6iVTsuwjc_g3SbmHDKxvtfOWA@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] at24: move write-protect pin handling to nvmem core
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Khouloud Touil <ktouil@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        baylibre-upstreaming@groups.io,
        LKML <linux-kernel@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        linux-i2c <linux-i2c@vger.kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

czw., 19 gru 2019 o 11:56 Srinivas Kandagatla
<srinivas.kandagatla@linaro.org> napisa=C5=82(a):
> >>
> >> Thanks Khouloud for this patchset,
> >>
> >> I can take this via nvmem tree once we get an ack on dt bindings from =
DT
> >> maintainers.
> >>
> >
> > Hi Srinivas,
> >
> > this will conflict with my at24 tree for this release - can you put
> > those patches (once they're fine) into an immutable branch for me to
> > merge in?
>
> I can ack nvmem core patch so that you can take it directly via at24
> tree if thats okay.
>

Sure, even better!

Bart
