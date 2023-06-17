Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC68B733EE6
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 08:54:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbjFQGyH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 02:54:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbjFQGyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 02:54:06 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F9371BF2
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 23:54:05 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-57015b368c3so17176337b3.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 23:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686984845; x=1689576845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bdtV/MXVNsTYrKqOmSjIMz7q9/avU6No9O79dlPLg4o=;
        b=lWN8KQGCQp2fyzA6niAu9qi8qPkMR9Uo5N9XH3SSbZEk3HdnpSJel1WD0QN8ey5gNg
         XnqaZMzIaYscPYWOdwa6XyT5oS7zimjPTHF+9LHBa4aAZl47FTNHiKp+6bBN835epOVI
         Usv7EdKuhTr3q3oMEE2rLc2Ox0RbRfA8kisFZFuW9DgLRjdEGJblK13RvKaKGJ8FOGPf
         R8syVmiGUb3VJrSA0i3mSL7OQ3i/RKVOa2DiJx6RpIsbkbg475qhBK+lSVPFNs8WQfqw
         NTGgnwCMfIaPf4+aoxLOAHf2SXTiWu8ryQlkMRsGNxTbf74MaRLEZQcxtMIOPiW6sk55
         Om+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686984845; x=1689576845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bdtV/MXVNsTYrKqOmSjIMz7q9/avU6No9O79dlPLg4o=;
        b=IB1j9cLgj9Ok3JToa3PfgLGj/iwWh12XGOxJ1sliLE71QjS1qlDfSZr2hXN+Eh1qv4
         EpvQ5snixHlSD8uiLpPwS1WBdP6iKOoTl6rfrXlDnUazwFU2upcg8ywYhdvjgueTos6r
         SqWJsOriJaWoSLmcLMOPUdeujm5JZDPt566sfidSwchxNwqhaBKvKoYyRq3ocxYcN/jU
         9rgREt3o/+LVfZDM2BMCmkiVJg63kRL1XlwmowBdsMAArXpkW3XpPIg20juy9q3HTyPq
         9RQQHE3E1T1eFKw4Xxi2ZQ7wfPzWBAOdCJC1PS9Oj3zm4725xC3WrfF3OaRDLtkgzGoV
         KYVA==
X-Gm-Message-State: AC+VfDwZh4qNwDqH8xAkgNmZk2uc/boGsg7btj0NdRKY9dnhN/ayb0rc
        Hxm21PN68uMC82Cp0MoNm8bRFUfmwVOaFQUFcw4=
X-Google-Smtp-Source: ACHHUZ52sw3ie38tAu1fFwsmlJYcRFNJjls5PAh3xu5TxqVpHPRBgDpjVFAqNCW/gheSeJedLOJTsqo+Q22ilJucSLI=
X-Received: by 2002:a81:7584:0:b0:56d:6c9:d82d with SMTP id
 q126-20020a817584000000b0056d06c9d82dmr3965778ywc.21.1686984844879; Fri, 16
 Jun 2023 23:54:04 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1686882123.git.zhoubinbin@loongson.cn> <99bdbfc66604b4700e3e22e28c3d27ef7c9c9af7.1686882123.git.zhoubinbin@loongson.cn>
 <20230616-projector-visible-4135a378fb56@wendy>
In-Reply-To: <20230616-projector-visible-4135a378fb56@wendy>
From:   Binbin Zhou <zhoubb.aaron@gmail.com>
Date:   Sat, 17 Jun 2023 14:53:53 +0800
Message-ID: <CAMpQs4K38C3URsBQ6YC0km5Fg21o4VuEqOe=f6emeutdoqKf_A@mail.gmail.com>
Subject: Re: [PATCH 5/6] LoongArch: DeviceTree for Loongson-2K1000
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 16, 2023 at 5:48=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> On Fri, Jun 16, 2023 at 02:11:31PM +0800, Binbin Zhou wrote:
>
> > +     memalloc@0 {
> > +             compatible =3D "loongson,ls-memalloc";
> > +             reg =3D <0 0x90000000 0 0x20000000>;
> > +     };
>
> This is not documented.

Hi Conor:

Sorry, this is my mistake, a private driver will use it, I will try to
remove it in the next version.

>
> > +             gpio0: gpio@1fe00500 {
> > +                     compatible =3D "loongson,ls2k-gpio", "syscon";
>
> This isn't valid either, the binding doesn't allow syscon?

The syscon is not needed right now. I will remove it.

>
> > +                     ethernet@3,1 {
> > +                             compatible =3D "pci0014,7a03.0",
> > +                                          "pci0014,7a03",
> > +                                          "pciclass,020000",
> > +                                          "pciclass,0200",
> > +                                          "loongson, pci-gmac";
>
> None of the compatibles from here on out are documented either.

These are required to be added according to DeviceTree Spec PCI [1],
Linux does not use these compatible for now.
Removing them really doesn't affect the driver, but to follow the spec
and make sure every node has a compatible, I've left them all in.

Are they not required?

[1]: https://www.openfirmware.info/data/docs/bus.pci.pdf

Thanks.
Binbin

>
> Cheers,
> Conor.
