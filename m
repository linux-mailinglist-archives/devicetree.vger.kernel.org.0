Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED13456BDB2
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 18:08:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238468AbiGHPup (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 11:50:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238825AbiGHPuo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 11:50:44 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CDCA72EC5
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 08:50:42 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id h23so38330721ejj.12
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 08:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jl7f3zCIIBfJgcYQrmkUSn7PhHRlgAzBj5FJLVNttC4=;
        b=ajjKeS6nN/0t/H3DqKPb39ZKq8Tf4LJTG2iFJ6onS3ODZ1vuYr7Wt19M3zZ5bWjWQ3
         VOdsYiuDpn/qEbdw4lnyTH7bj8vtyoKnWRhiGge8mdreOqeBMzQExcGhQIdLDe2JYsL6
         9UGanBLMzQXlHg3zWje9etwHJLZLe1btM9HsAYpqtxDkR9wdxO+BSEfZy6cgWLzPZZsz
         jd1hQEosYNdg1CV7j0FnaTpPDl0i0irWCFqe4y0GsPjC7iqR9bnrbTLabK1rZn/wzDaV
         A5WbAtunZjUoRscgybF23XEIT4akJbKl3445znNj1F/Q7ope3b5s8rzUg+bt8bwtEQbK
         AXEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jl7f3zCIIBfJgcYQrmkUSn7PhHRlgAzBj5FJLVNttC4=;
        b=Y5lSCDmu7qABTmWU9odpT+sFWJ0A3J8wsvFJHMuyClFW8Hf+i6br2dPlx7d+q0L+Rj
         2gdAIhuAL5e8a+WHvCWjjSJpdTnkTGK6YLmzErNf+7Bme4ck/Lu+jurS1kEn9neiZNm+
         7YQ8TvgmEA4TAek+1113HBQ3Pw2pqwmRkIjTMjZ9hmd9J9HFAhqS75O71AcuJEyKtJTh
         pRp/eX6LVxdlQrPlN5l2K+Qt8HFe+9Z/osnmrA7LGvypLn0aEFiuiaMpFseMfhGrM0JJ
         ykUFuHbhnZ8bXVUo+PQAwgd4mAgohtVhnEc3AvOF+V/n2m404K4wtV7rquufgd8gziaK
         QNpg==
X-Gm-Message-State: AJIora8lDX4rS4XIY8+oAzV1x/qTKLjE5hsFlDGbveAjPwzNGax29/XW
        cl6hGCQsxAfZxVjkgIWxB4GJL/aKImwLli5ztX/tEQ==
X-Google-Smtp-Source: AGRyM1tMTGpPQQDaNeDtx5dmCuICKJw0T4N4k3T1R0Jc2GXgx02gefgVaIUJEkTdl0odGW6SDqb9aY22UWsvdDj1i5M=
X-Received: by 2002:a17:906:739d:b0:722:e94a:24c5 with SMTP id
 f29-20020a170906739d00b00722e94a24c5mr4167021ejl.734.1657295440850; Fri, 08
 Jul 2022 08:50:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220223174215.17838-1-a-m1@ti.com> <CACRpkdbj2B90-RE2XKQJ5qEj1hZQA-u=vUu2vpXwNqQLf_kaPg@mail.gmail.com>
 <e682175fcfc54217a6ed006270877f4d@ti.com> <ddc2b24e-37a3-4751-80b9-84b13606a703@ti.com>
 <CACRpkdZ7Kb0=7LHa13KJeZc2Kwb6z5kuH9nnHrk4p9OqB8+QgA@mail.gmail.com> <08422d68-21e4-b2c3-7d07-a19a121b24de@ti.com>
In-Reply-To: <08422d68-21e4-b2c3-7d07-a19a121b24de@ti.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Fri, 8 Jul 2022 17:50:30 +0200
Message-ID: <CAMRc=MdWcRPFXOTWct+mfSWPr=zp54_23PeCfHqmP-XXZpdOGg@mail.gmail.com>
Subject: Re: [PATCH v5] dt-bindings: gpio: Convert TI TPIC2810 GPIO Controller
 bindings to YAML
To:     Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 8, 2022 at 7:24 AM Vignesh Raghavendra <vigneshr@ti.com> wrote:
>
>
>
> On 07/07/22 16:49, Linus Walleij wrote:
> > On Thu, Jul 7, 2022 at 7:19 AM Vignesh Raghavendra <vigneshr@ti.com> wrote:
> >
> >> Hi Bartosz,
> >>
> >> On 05/05/22 14:28, M, Aparna wrote:
> >>> +Vignesh
> >>>
> >>> Ping. Can this be picked up for next merge cycle?
> >>>
> >>> On 15/03/22 06:31, Linus Walleij wrote:
> >>>> On Wed, Feb 23, 2022 at 6:42 PM Aparna M <a-m1@ti.com> wrote:
> >>>>
> >>>>> Convert gpio-tpic2810 bindings to yaml format and remove outdated
> >>>>> bindings in .txt format.
> >>>>>
> >>>>> Signed-off-by: Aparna M <a-m1@ti.com>
> >>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >>>>
> >>>> Yours,
> >>>> Linus Walleij
> >>>>
> >>
> >> Sorry, this patch has been around for sometime w/o any comments and has
> >> relevant R-bys. Wondering if this fell off the radar
> >>
> >> I believe patch would go via GPIO tree?
> >
> > You need to use the right mail address to Bartosz so he can pick it up.
>
> oops, thanks! looks like original author copied wrong ID
>
> >
> > Bartosz: this seems to have fallen between the mail address cracks,
> > check it out.
> >
>
> Bartosz,
>
> Let me if I need to resend to right inbox.
>

Yes please resend it, I can't find it now.

Bart
