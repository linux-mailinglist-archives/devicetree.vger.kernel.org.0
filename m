Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBCAF76DAFF
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 00:53:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229883AbjHBWxH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 18:53:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbjHBWxH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 18:53:07 -0400
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com [IPv6:2607:f8b0:4864:20::a33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 588DE127
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 15:53:05 -0700 (PDT)
Received: by mail-vk1-xa33.google.com with SMTP id 71dfb90a1353d-486453928a4so120788e0c.0
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 15:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1691016784; x=1691621584;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aBVXuTo/8ehjYkvlx2DaLR/kSdWzLoO8wG7T6rpe/Qs=;
        b=F7S7MWxO/JdXWZiQ4M3wtX17sdcHm93BDLUWhYfvfW8gMDo2iTBP7drdmgPdAjphcv
         Hu8L2IgGXRzyLq5OE1Zk7KL9FjFVOpy3dej4E6xqDWm7BWA9ele+P/wtG/YwBB+0YjZ7
         hsJx1pvn7b2vC3DlGijA9ENUyPlWNeEKl7+3DiSzlMbgOsuoVOlteNrLt8CnrH8r0Js2
         thDEZX6/VOhWkNPuUlNPQk5hG1/jdJyOW5/rlav1zawY8uP9RcWtAQBJryvJ1rlXgsrx
         kUPJKArqZapID7d56d+V+OXUxUDFONu0tPu/zYblgrGJPGVYSMNTndrD98CP4G6qw1mc
         LxZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691016784; x=1691621584;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aBVXuTo/8ehjYkvlx2DaLR/kSdWzLoO8wG7T6rpe/Qs=;
        b=Izuz1b+nqtDWg6IQwoyK9aZneSed/DUgWqX2INqlcd+PG9V24yJhYIfhdaQMiM+KTS
         uDMbHszWLZ5k22ia5bk9ziKLr63GOZjvbilrnpdgxQdQLxplIWZD3hnxmNjPm6NTH1S5
         mpFDaco2xsqj2aB5p5IkL7oaBR7X8DsSihWbkx8dA/5d1hiuMuJ+h5NFfDcsZ4trIKhc
         jO8by4pjLuMYH3px+rRTzklx+03ZTGilHYoUEYnqb75NYfkkCIL+qhCFeVeX4YW7TlNF
         5ZTYsns9L940s0MJA/dNe7oA06JuptFWTkwdtEV6yon4KjArXhXn2GVuDQwJY6hvpgG1
         XzNA==
X-Gm-Message-State: ABy/qLZX/R5cQ16AGyo1ng2Oo+bZRlddfh28Fy1PGgCF1GO7+XX32R6Y
        13edfUlWyrUONOZPhsi7F+M/Qjehb6dktky+GYqHeA==
X-Google-Smtp-Source: APBJJlH04fl+pFertjoJkva8RcoeBVyLWmr942AX4GnstkvBLzOQNIiLlNwY336ycpjDQV8nkIigb2lAdQK1IDcr9EE=
X-Received: by 2002:a1f:e603:0:b0:486:556c:a0bb with SMTP id
 d3-20020a1fe603000000b00486556ca0bbmr6152826vkh.9.1691016783127; Wed, 02 Aug
 2023 15:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230717050736.10075-1-okan.sahin@analog.com> <20230717050736.10075-3-okan.sahin@analog.com>
 <20230718155502.GA3542993@dev-arch.thelio-3990X> <20230726161033.GA1102409@dev-arch.thelio-3990X>
 <PH7PR03MB739122A373964651D995EA5AE701A@PH7PR03MB7391.namprd03.prod.outlook.com>
 <20230727145143.GB2013261@dev-arch.thelio-3990X>
In-Reply-To: <20230727145143.GB2013261@dev-arch.thelio-3990X>
From:   Nick Desaulniers <ndesaulniers@google.com>
Date:   Wed, 2 Aug 2023 15:52:52 -0700
Message-ID: <CAKwvOdnPQEdbTGBO0hBn7CC4d0xtRV2zmfrYDfAhH0stfDYeJA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] regulator: max77857: Add ADI MAX77857/59/MAX77831
 Regulator Support
To:     Nathan Chancellor <nathan@kernel.org>,
        "Sahin, Okan" <okan.sahin@analog.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "zzzzTilki, zzzzIbrahim" <Ibrahim.Tilki@analog.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "llvm@lists.linux.dev" <llvm@lists.linux.dev>, linux@leemhuis.info
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Okan,
Have you sent a follow up fix? The build should not remain broken for
so long.  Otherwise I think Broonie should drop your patch.

On Thu, Jul 27, 2023 at 7:51=E2=80=AFAM Nathan Chancellor <nathan@kernel.or=
g> wrote:
>
> On Thu, Jul 27, 2023 at 08:34:44AM +0000, Sahin, Okan wrote:
> > >On Tue, Jul 18, 2023 at 08:55:02AM -0700, Nathan Chancellor wrote:
> > >
> > ><snip>
> > >
> > >> > +static struct regulator_desc max77857_regulator_desc =3D {
> > >> > +        .ops =3D &max77857_regulator_ops,
> > >> > +        .name =3D "max77857",
> > >> > +        .linear_ranges =3D max77857_lin_ranges,
> > >> > +        .n_linear_ranges =3D ARRAY_SIZE(max77857_lin_ranges),
> > >> > +        .vsel_mask =3D 0xFF,
> > >> > +        .vsel_reg =3D MAX77857_REG_CONT2,
> > >> > +        .ramp_delay_table =3D max77857_ramp_table[0],
> > >> > +        .n_ramp_values =3D ARRAY_SIZE(max77857_ramp_table[0]),
> > >> > +        .ramp_reg =3D MAX77857_REG_CONT3,
> > >> > +        .ramp_mask =3D GENMASK(1, 0),
> > >> > +        .ramp_delay =3D max77857_ramp_table[0][0],
> > >>
> > >> This breaks the build with GCC 5.x through 7.x:
> > >>
> > >>   drivers/regulator/max77857-regulator.c:312:16: error: initializer =
element is not
> > >constant
> > >>     .ramp_delay =3D max77857_ramp_table[0][0],
> > >>                   ^~~~~~~~~~~~~~~~~~~
> > >>   drivers/regulator/max77857-regulator.c:312:16: note: (near initial=
ization for
> > >'max77857_regulator_desc.ramp_delay')
> > >>
> > >> and clang:
> > >>
> > >>   drivers/regulator/max77857-regulator.c:312:16: error: initializer =
element is not a
> > >compile-time constant
> > >>     312 |         .ramp_delay =3D max77857_ramp_table[0][0],
> > >>         |                       ^~~~~~~~~~~~~~~~~~~~~~~~~
> > >>   1 error generated.
> > >>
> > >> This relies on a GCC 8.x+ change that accepts more things as
> > >> compile-time constants, which is being worked on in clang
> > >>
> > >(https://urldefense.com/v3/__https://reviews.llvm.org/D76096__;!!A3Ni8=
CS0y2Y!7B
> > >eWxuzHgLzOprQA_madbvdR7hd0ZgmS73lUlDbgoxWUFWdDSIRXLnhyqLeRhu3uTaqpS
> > >kzZKwc5pHA$ ). Since the kernel supports older
> > >> compilers, this will have to be worked around somehow. Perhaps a def=
ine
> > >> that can be used in both places?
> > >
> > >Was there any update on this? I do not mind sending a patch for this
> > >myself if I have some sort of guidance on how you would prefer for thi=
s
> > >to be fixed, should you be too busy to look into it.
> > >
> > >Cheers,
> > >Nathan
> >
> > Hi Nathan,
> >
> > I thought that I should fix this issue after merging main branch that's=
 why I did not send patch.
>
> That is an understandable position but no, this issue should be fixed
> before this change makes its way to Linus, not after.
>
> > I sent patch v3 so should I send new patch as v4?
>
> No, you should checkout Mark's branch that contains your patch and send
> a new patch on top of it just fixing this issue, like the other two
> patches that have already touched this driver:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git/log=
/?h=3Dfor-6.6
>
> https://git.kernel.org/broonie/regulator/c/2920e08bef609c8b59f9996fd6852a=
7b97119d75
> https://git.kernel.org/broonie/regulator/c/541e75954cadde0355ce7bebed5675=
625b2943a8
>
> There are GCC 7.x and earlier toolchains at
> https://kernel.org/pub/tools/crosstool/ and LLVM toolchains at
> https://kernel.org/pub/tools/llvm/ should need to reproduce and verify
> the fix.
>
> Cheers,
> Nathan
>


--=20
Thanks,
~Nick Desaulniers
