Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1768246DF19
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 00:45:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238035AbhLHXtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 18:49:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235293AbhLHXtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 18:49:15 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83A56C061746
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 15:45:43 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id v15-20020a9d604f000000b0056cdb373b82so4442686otj.7
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 15:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YldXPNriDKYtYwgx9lykZV2BMiK32i6pAMV1HydoZJ4=;
        b=jbRdDuLKzRdq4WaF/RveHO3Iwd+Uf37BlD6z0i/teP9u1E1B0YckJQGWWEb6ASr5zS
         PY9BQEfLcfYCipMN4FtfXRtNqjqXp8oTVTZehDA1NhXijMpSBjQBwzuAQCeuXItzUxuW
         ZVvmUUZJgKEWimwPLJyBNnZnaDEZXlMsrR1GzAHotPE8dHNqmhaK8mCMWVckWRFGfMq8
         4eqnJARG9TVe7z4xW8eOinSJUAWxfhvm0bBwKkFiIcCfA/mSmC5d6r71bMugeuaSycv1
         MNS/3MY5j0S5ulZcrtdPY57qHYbjCHnmyB2oFZxEfjaBmKBzMwVvzHYWVC+ypjECo6t5
         Ex8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YldXPNriDKYtYwgx9lykZV2BMiK32i6pAMV1HydoZJ4=;
        b=c1gRriVatgfAXzfchqMWfy09GrsfN+cs6Kyli+ET1eoA6sa4bi3wl0EEptbqxyKCoU
         w6xuAfC48tPmYzi9tgbkYqCtNPlJ1YUY0NXXfjJfHtge9DWJJLaYRL/2g7kRaPQKycPv
         UpM2LH8Wn/y3FPX/6cYnBEYcslNJ5VJ7Wkh5dL4TJrbO9OrX0mAm5KDabd25Is2sk1jP
         8EBP0La/FWqWQ+zDqVA1Z7Pana58enZemdEhhEALnA+cJz63E2xokRwEYekB7u7iyQbo
         zrCujxWneQ7Z7EbULvpOCwXN7r4JzxbqBQIXvv+z6ZcTnNXVUeidlf7TGBkrCN7vtPUE
         71eg==
X-Gm-Message-State: AOAM530xHgcFnBhSiH+4oGC5+tcmkb2Oq4O8JzOKsbR1DxKL/Kh7QH7F
        Dnlpv3kSKljwScfA2wVKqpZ+Li6mg10PbKsYLGFbMzqPrbzKi53y
X-Google-Smtp-Source: ABdhPJz+TYvULfXNcHlTeVjt7r6Fzb/nBNqiICpe2bk497QivS3rHldEp1qzveW+p5MgMm0Z1QqbNnvgQivsBvDD2gc=
X-Received: by 2002:a9d:7586:: with SMTP id s6mr2431922otk.158.1639007142820;
 Wed, 08 Dec 2021 15:45:42 -0800 (PST)
MIME-Version: 1.0
References: <20211203181714.3138611-1-dinguyen@kernel.org> <20211206102242.e2ql7kcgzivh75v4@ti.com>
In-Reply-To: <20211206102242.e2ql7kcgzivh75v4@ti.com>
From:   Dinh Nguyen <dinh.linux@gmail.com>
Date:   Wed, 8 Dec 2021 17:45:31 -0600
Message-ID: <CADhT+wfrtqO6dDSUbq-eeyRodzigA7Gsce0xgK6mzLo0ujb5AQ@mail.gmail.com>
Subject: Re: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document "cdns,qspi-nor-ver-00-10"
To:     Pratyush Yadav <p.yadav@ti.com>
Cc:     Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        broonie@kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 6, 2021 at 9:51 PM Pratyush Yadav <p.yadav@ti.com> wrote:
>
> On 03/12/21 12:17PM, Dinh Nguyen wrote:
> > The QSPI controller on Intel's SoCFPGA platform does not implement the
> > CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> > results in a crash.
> >
> > The module/revision ID is written in the MODULE_ID register. For this
> > variance, bits 23-8 is 0x0010.
>
> When I looked at your original patches I was under the impression that
> this was a SoCFPGA specific thing and did not apply to other
> implementation of the IP in general.
>
> If this is indeed a generic thing and we can detect it via the MODULE_ID
> register [0], then why not just read that register at probe time and
> apply this quirk based on the ID? Why then do we need a separate
> compatible at all?
>
> [0] I would like to see it stated explicitly somewhere that version
> 0x0010 does not support the WR_COMPLETION_CTRL register.
>

I cannot for sure confirm that this condition applies to only 0x0010
version of the
IP. I can verify that the IP that is in all 3 generations of SoCFPGA
devices, all have
MODULE_ID value of 0x0010 and all do not have the WR_COMPLETION_CTRL
register implemented.

I'm almost certain this feature is not SoCFPGA specific, but
since I only had SoCFPGA hardware, that was my initial patch. I made the mistake
of not CC'ing the devicetree maintainers until I sent the DTS binding
patch change,
and he rightly suggested making the binding something more generic.

I do like your idea of making a determination in the driver without
being dependent
on a dts binding. I'd like to know the impetus behind your original
patch of removing the
dependency of "if (f_pdata->dtr)"  for the write to the WR_COMPLETION_CTRL
register? Perhaps there's some other common property that we can key
off for why the register
is not implemented?

Dinh
