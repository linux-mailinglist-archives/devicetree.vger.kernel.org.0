Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1AC3788C3F
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 17:14:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233594AbjHYPOH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 11:14:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234079AbjHYPN4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 11:13:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B66C212C
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 08:13:54 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 11AF764E44
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:13:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 724BBC43395
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692976433;
        bh=WkhOJYLE+ues6uXybxrkDTqzwzf54+ugLpiyd1X1qD4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=hVl+dq/YMlku1ai1U5AOXCm2uo/geY18Uym7VClfr3vuDw+UwpDvc3HeAhIAGkgSu
         VZkZYlteZ4bnxaY6Kl4Oe2AMfaVnLNxtTLuOmb56KzR+XGtdVSSgzx0YoLfjnJOWGu
         fKI+5FoBmiXtghAmlH5Uo5KMNfXLQM3OTrnY5JUDAOaBEqk6LndCLdLLK/wGqjH4Jt
         i3CSXz6ACvXwZrbpxOwhJxeg6DNyMr1+Ns6tiiqizxprbrOTDtfHWA7pKBl1Pk7SJW
         gBX9MDjrBz9/zr5VBAsZkoKjhk0m2y75zOJ6ORj52OCAVBqtGAfN+5+xjNUff4UBrL
         FiBewBKlv4Mww==
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-52683da3f5cso1520389a12.3
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 08:13:53 -0700 (PDT)
X-Gm-Message-State: AOJu0Yx8TxMh+Id+fAs7e9XxhvHjo3JrGY+1M0sXc7rre6QnLTrcJCHz
        vGV+j+xa3RgUAcp3hqSVbBSOVIk4XRGA2NzHM3k=
X-Google-Smtp-Source: AGHT+IHwf5sskXQeP52vSQ1CC9d7CGeC42LRXf66m6UturBCBYbtfOO65oVp7jksLJ1+wvTIJ3jfeb+r3lujLqEAoEk=
X-Received: by 2002:a17:907:2671:b0:99c:e38d:e47d with SMTP id
 ci17-20020a170907267100b0099ce38de47dmr14271574ejc.27.1692976431644; Fri, 25
 Aug 2023 08:13:51 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1692783907.git.zhoubinbin@loongson.cn> <3e69929008c8190cff331941dd4d34f748e5e44a.1692783907.git.zhoubinbin@loongson.cn>
 <20230823194250.GA2768550-robh@kernel.org> <CAMpQs4KQzXYDsMJesGGRVX=e_psyiik-Th2Y0CV=keU+-v86mQ@mail.gmail.com>
 <20230825-hypocrite-smoking-cc6ce8c2936b@wendy>
In-Reply-To: <20230825-hypocrite-smoking-cc6ce8c2936b@wendy>
From:   Huacai Chen <chenhuacai@kernel.org>
Date:   Fri, 25 Aug 2023 23:13:39 +0800
X-Gmail-Original-Message-ID: <CAAhV-H6LqgcHpioGU7GS0Cab7JKggGLc=TOwDsQmamuPwa4OtQ@mail.gmail.com>
Message-ID: <CAAhV-H6LqgcHpioGU7GS0Cab7JKggGLc=TOwDsQmamuPwa4OtQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/7] LoongArch: Allow device trees to be built into the kernel
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Binbin Zhou <zhoubb.aaron@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
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

Hi, Conor,

On Fri, Aug 25, 2023 at 8:01=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> On Thu, Aug 24, 2023 at 11:20:34AM +0800, Binbin Zhou wrote:
> > Hi Rob:
> >
> > On Thu, Aug 24, 2023 at 3:42=E2=80=AFAM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > On Wed, Aug 23, 2023 at 05:54:51PM +0800, Binbin Zhou wrote:
> > > > Some systems do not provide a useful device tree to the kernel at b=
oot
> > > > time. Let's keep a device tree table in the kernel, keyed by the dt=
s
> > > > filename, containing the relevant DTBs.
> > >
> > > Support for this in other arches was added to support legacy bootload=
ers
> > > with no DT support. You should not need this for a new architecture. =
Fix
> > > the bootloader to provide a useful DT.
> > >
> > Yes, our bootloader already supports DT.
> >
> > Our original intention of providing kernel built-in DTS is to describe
> > all possible device information of that SoC, so that everyone can use
> > it as a reference during development; we will unlikely to add more
> > .dts files to the kernel besides the reference ones.
> >
> > And as a reference, our built-in DTS provides the most basic bootable
> > combinations (so it is generic enough) as an alternative in case the
> > DTS in the bootloader is unexpected.
> >
> > Does this make any sense?
>
> I don't see how this answers the question - as far as I can tell Rob was
> asking specifically about the building the dtb into the kernel, whereas
> your response seems to talk about havint the dts files in the kernel
> tree.
I'm sorry, but from my point of view, giving users a chance to build
the reference dts file into the kernel is not a bad idea. Of course
the commit message can be improved.

Huacai
