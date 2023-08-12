Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9267D779BC7
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 02:13:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234892AbjHLAIH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 20:08:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234620AbjHLAIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 20:08:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA082120
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:08:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 407EE63ECF
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 00:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A31BFC433CD
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 00:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691798885;
        bh=vSDP7CHPKFVEq9ObT36MWuyLkHpMwnbD3yZutHX5LxY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=JF+7rNnBK26dao5y9+UW+AJDDnyrEd/5bdl7uusLATxw/tH1el0DHxMIbDooSkVhz
         l8HvrDAaActZ/xMylgErBgcednQfeu72gGfEE978DZMCaHtx/x7uNOJiDnKMmFDkh6
         OVkliUjnoew02Ig6sW/w6LFT6Kxzv7CFrGcl4B9/omDsvBnL+3yi6Ao+oZtA3t8W/T
         apvxUHehwAmcnhScZqbrw/IIF7ATyqkICEs349FnvopMa636pkjIrNqxyNINaTpbNH
         1EPSq9M4DlL1YvIIV8yz9ir6kqDmkdqg1riF3X5UIA6Lmc+NwfsKB2fr62mlxqndZ5
         q7meA7gK5pjFw==
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-318015ade49so2253988f8f.0
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:08:05 -0700 (PDT)
X-Gm-Message-State: AOJu0Yz5ma65KP0ogqRNXe2d5Qvm9MHokSYJKzYGY7Q2SvFKGVCB7RGY
        2VrRf2Vqg1MwcWHS2HYzXD8GXFa3ptwnH0aPV3o=
X-Google-Smtp-Source: AGHT+IEHTXDKi1VI5rwzSvLCRqbC5fGu+EdJBQtY2JvEHQg/ytJtebypzvglLQ1ayGleJNj1Ua19AE6DIwtSUfoeB8g=
X-Received: by 2002:adf:e3cb:0:b0:317:6fb5:bafc with SMTP id
 k11-20020adfe3cb000000b003176fb5bafcmr2673124wrm.65.1691798883865; Fri, 11
 Aug 2023 17:08:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230808132958.1097873-1-guoren@kernel.org> <ZNURXBKkYdiWLanf@xhacker>
 <20230811-cardiac-platter-8b50b3b764d3@spud>
In-Reply-To: <20230811-cardiac-platter-8b50b3b764d3@spud>
From:   Guo Ren <guoren@kernel.org>
Date:   Sat, 12 Aug 2023 08:07:50 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSYAz5ogsnB5SD_A3J1WEPzAHU1GDy_cPnuvXytqvMiBw@mail.gmail.com>
Message-ID: <CAJF2gTSYAz5ogsnB5SD_A3J1WEPzAHU1GDy_cPnuvXytqvMiBw@mail.gmail.com>
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
To:     Conor Dooley <conor@kernel.org>
Cc:     Jisheng Zhang <jszhang@kernel.org>, wefu@redhat.com,
        jrtc27@jrtc27.com, anup@brainfault.org, samuel@sholland.org,
        bmeng.cn@gmail.com, opensbi@lists.infradead.org,
        Guo Ren <guoren@linux.alibaba.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 12, 2023 at 1:57=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Aug 11, 2023 at 12:33:32AM +0800, Jisheng Zhang wrote:
> > On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
> > > From: Guo Ren <guoren@linux.alibaba.com>
>
> > > +T-HEAD Fdt Reset Driver Introduction
> > > +------------------------------------
> > > +
> > > +Every T-HEAD CPU provides a reset control signal and reset address s=
ignals.
> > > + - Reset address signal determines CPU where to start up.
> > > + - Reset control signal releases CPU from reset state and begins to =
execute
> > > +   at reset address.
> > > +
> > > +Many vendors would gather these signals into SoC control registers. =
These
> > > +register designs are similar but with different base addresses and b=
its
> > > +definitions. We only provide standard opensbi, Linux binaries, and j=
tag gdbinit
> > > +script to simplify Linux booting at the FPGA stage. The fdt reset dr=
iver helps
> > > +users bring up their SMP system quickly with the below settings:
> >
> > +DT maintainers and DT list.
> >
> > I can submit a dt-binding for this if DT maintainers agree with below
> > properties. Could you please help review?
>
> I already reviewed this once & nothing has improved.
> In fact, things have gotten worse IMO with this "using-csr-reset" that I
> don't think existed in the original iteration that I saw.
> I did see things getting better with the use of standard stuff like
> "reg" in our earlier discussion which I don't see here.
It's not a patch to improve the implementation and we don't make a
deal in that discussion. This patch improves the document because the
previous doc didn't describe the whole thing about the
thead,reset-sample driver.

> What is the point in carrying out any further review if things will be
> flat out ignored?

>
> Thanks,
> Conor.
>
> > > +
> > > + - entry-reg:
> > > +   The base address to store reset address value
> > > +
> > > + - entry-cnt:
> > > +   The numbers of entry-reg, all of them set the same reset address
> > > +
> > > + - control-reg:
> > > +   The base address to reset the controller
> > > +
> > > + - control-val:
> > > +   Write which bits of control-reg for booting
> > > +
> > > + - csr-copy:
> > > +   This array determines which csrs to copy from primary hart to the
> > > +   secondary harts, which are set in sequence from left to right. Th=
e
> > > +   secondary harts should keep the same setting as the primary hart.
> > > +   These settings are also the first part of the bootup instructions
> > > +   for secondary harts.
> > > +
> > > + - using-csr-reset:
> > > +   A legacy reset controller for the SMP system, but abandoned in th=
e
> > > +   latest T-HEAD processors.
>


--=20
Best Regards
 Guo Ren
