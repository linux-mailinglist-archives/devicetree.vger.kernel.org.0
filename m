Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E021C779C29
	for <lists+devicetree@lfdr.de>; Sat, 12 Aug 2023 02:49:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237099AbjHLAtL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 20:49:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236991AbjHLAtK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 20:49:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ED7F30C8
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:49:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0D173613B3
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 00:49:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D06DC433CD
        for <devicetree@vger.kernel.org>; Sat, 12 Aug 2023 00:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691801349;
        bh=9j6d9Wofxm7Fh8whI8STMpdxW0WB168mbZCcZGWuTlo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ZftZYaQrnIpaKgYAOuqxyOyiZUFePE4HJ19RVTcol6ezOCnwKU5iOFElksGOcR4+3
         uiYUNS0ML8tf5rbjTqU5jzZeepSWHR9lzzhSKuQWlvgV95n9U4dlsgp6p+LjOMDFaW
         JaZ76Ohf84jEA2q0hJGxWpe2bY2JDGuW1H0E2XK4D559PzSq2ENwc3QKHrvsoNR8uY
         vKIv+gNzIezQJ2i5AUFgRyI2xSECT+63yZ8EJiNXmftwmD6Ssnkd9jG8/9OU8d+FcX
         cCJGyyoUF4gNQAV7cZgSsqHJfciXJ2EMMbHFyWI0sV1bJMvdZjKAOtlGAd850x9LOr
         v+0GcRfiNDQRA==
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-523c7b55d82so1605219a12.0
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:49:09 -0700 (PDT)
X-Gm-Message-State: AOJu0Yx6vUMWvoZmLNRzkw24Lmd0bxP2/425kGGpJiXoD3h2RXyHboi4
        qNPgMgoTCJbQ5wRjthDLRvFEwvUYxac8FAzKt8M=
X-Google-Smtp-Source: AGHT+IEnvNTtTMTg1Wz98n4oSBAmVld9uEmekhzRlhXDISgI9dtjezWXUIBydsKR/MES2gy+G9CZAjVdifoVEnPX9QU=
X-Received: by 2002:a05:6402:650:b0:523:2da2:1ec4 with SMTP id
 u16-20020a056402065000b005232da21ec4mr3011514edx.11.1691801347671; Fri, 11
 Aug 2023 17:49:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230808132958.1097873-1-guoren@kernel.org> <ZNURXBKkYdiWLanf@xhacker>
 <20230811-cardiac-platter-8b50b3b764d3@spud> <CAJF2gTSYAz5ogsnB5SD_A3J1WEPzAHU1GDy_cPnuvXytqvMiBw@mail.gmail.com>
 <20230812-septum-gestate-4c62ef7c7213@spud>
In-Reply-To: <20230812-septum-gestate-4c62ef7c7213@spud>
From:   Guo Ren <guoren@kernel.org>
Date:   Sat, 12 Aug 2023 08:48:56 +0800
X-Gmail-Original-Message-ID: <CAJF2gTToB_a0gPitfHSPkNq4sdEsJ0RfHCGzHA_AystjY1fi+w@mail.gmail.com>
Message-ID: <CAJF2gTToB_a0gPitfHSPkNq4sdEsJ0RfHCGzHA_AystjY1fi+w@mail.gmail.com>
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

On Sat, Aug 12, 2023 at 8:16=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Sat, Aug 12, 2023 at 08:07:50AM +0800, Guo Ren wrote:
> > On Sat, Aug 12, 2023 at 1:57=E2=80=AFAM Conor Dooley <conor@kernel.org>=
 wrote:
> > >
> > > On Fri, Aug 11, 2023 at 12:33:32AM +0800, Jisheng Zhang wrote:
> > > > On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
> > > > > From: Guo Ren <guoren@linux.alibaba.com>
> > >
> > > > > +T-HEAD Fdt Reset Driver Introduction
> > > > > +------------------------------------
> > > > > +
> > > > > +Every T-HEAD CPU provides a reset control signal and reset addre=
ss signals.
> > > > > + - Reset address signal determines CPU where to start up.
> > > > > + - Reset control signal releases CPU from reset state and begins=
 to execute
> > > > > +   at reset address.
> > > > > +
> > > > > +Many vendors would gather these signals into SoC control registe=
rs. These
> > > > > +register designs are similar but with different base addresses a=
nd bits
> > > > > +definitions. We only provide standard opensbi, Linux binaries, a=
nd jtag gdbinit
> > > > > +script to simplify Linux booting at the FPGA stage. The fdt rese=
t driver helps
> > > > > +users bring up their SMP system quickly with the below settings:
> > > >
> > > > +DT maintainers and DT list.
> > > >
> > > > I can submit a dt-binding for this if DT maintainers agree with bel=
ow
> > > > properties. Could you please help review?
> > >
> > > I already reviewed this once & nothing has improved.
> > > In fact, things have gotten worse IMO with this "using-csr-reset" tha=
t I
> > > don't think existed in the original iteration that I saw.
> > > I did see things getting better with the use of standard stuff like
> > > "reg" in our earlier discussion which I don't see here.
>
> > It's not a patch to improve the implementation and we don't make a
> > deal in that discussion. This patch improves the document because the
> > previous doc didn't describe the whole thing about the
> > thead,reset-sample driver.
>
> That's all well and good, but there's still no point in Rob, Krzysztof
> or I reviewing it, which is what was being requested in the email I was
> replying to.
We aim not to deliver any custom software binaries to our CPU
customers. Only generic opensbi & Linux images are all enough at the
prototype stage.

>
> > > What is the point in carrying out any further review if things will b=
e
> > > flat out ignored?



--=20
Best Regards
 Guo Ren
