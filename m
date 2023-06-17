Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECD7E733EF5
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 08:59:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbjFQG7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 02:59:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234191AbjFQG7W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 02:59:22 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 627A2211D
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 23:59:21 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-57083a06b71so7442957b3.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 23:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686985160; x=1689577160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uckLMjvzIaZTWhXCpigTz423wFbz8o6FswSoizd2WBk=;
        b=eisGvaZUi3gAoHoa4vj7Ys0ura9VncuZXTFZ1MVIeLxZoZ9CMQCtOftO7ctNRAeMti
         udNCWOgCQAC+MbZYtIAFgh+nyackO17gZqAwXaG5EUvZa1lt3Ym+O7C0om/yT2ZFlIWW
         SKtJbYhMQbutdWEXTeiQ4f1HM27bjj/WvMWjJ6Q6UiNm67UGGhyAI6mFBuwNnffxzw94
         VMcMFoNoFU/Ge3Zs957l3le7odUqxrhZrs5myqppbyf+cU8JEzAd1wE8x98tpi1tJ8Qc
         d7plYrRzgPHgxzKSel3sir/9FQ2lTIAgWfnByKRFfyH4dzZjYlcrJx5kAv6ADuEJMZi9
         k4Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686985160; x=1689577160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uckLMjvzIaZTWhXCpigTz423wFbz8o6FswSoizd2WBk=;
        b=ebjDGmMJqdAcmfrPu4M1og5WAGc8X5xsl78FBcperDUjoei1wZfsXiyOwMH3bhAbwP
         nuWcpzhPW72ygpTH5rO3oEce5ATEUaTN0NIcSqFfU5+XoEQVimcjYPx/g2MPkHQSlImO
         1C+OIrTPqB9ggXtZyp8Fj4Dki6/BXKoawrhAFrRLnwdM5JvgGpVqvSVXUj1cmnb8jYsV
         A/AUHjZiKCFtS9SpYoNH8H3oCMtGiwI3g8PaX7CE6lRJyE75f6Hiq8e74GL614rf1jCY
         /47hHzR8dIJbv5Fnutl96g/AbFGTeCzBF8Xxwvef1Rh7JHLPhN9c2W8z0QTomS1j+CYd
         eKmQ==
X-Gm-Message-State: AC+VfDzinZlAFUp9gFiaOHypX4XmVsyvks/LqFlQHg3QqXEiCYv6gAaO
        9u133yTL/lCmPS+/c3/ZIzrrjRfvLIn/+9KHbnY=
X-Google-Smtp-Source: ACHHUZ5SwcgbC3RQPe/SWrhKQcJ7vCFyxqVvJuq6FtyoL6Z5FZxu2wZ9owz33UnREb4AAtOTn368iEvkRkQdKFKV+Oo=
X-Received: by 2002:a81:7206:0:b0:570:209a:a4fe with SMTP id
 n6-20020a817206000000b00570209aa4femr3997833ywc.32.1686985160487; Fri, 16 Jun
 2023 23:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1686882123.git.zhoubinbin@loongson.cn> <99bdbfc66604b4700e3e22e28c3d27ef7c9c9af7.1686882123.git.zhoubinbin@loongson.cn>
 <493a28b2-8ad5-2e9a-462b-bdc7d585b722@linaro.org>
In-Reply-To: <493a28b2-8ad5-2e9a-462b-bdc7d585b722@linaro.org>
From:   Binbin Zhou <zhoubb.aaron@gmail.com>
Date:   Sat, 17 Jun 2023 14:59:08 +0800
Message-ID: <CAMpQs4JJWryScd_nEi+LpKGPXup=RZXw=rBhb7HQkxJuBXgTBw@mail.gmail.com>
Subject: Re: [PATCH 5/6] LoongArch: DeviceTree for Loongson-2K1000
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 16, 2023 at 5:59=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 16/06/2023 08:11, Binbin Zhou wrote:
> > Add DeviceTree file for Loongson-2K1000 processor, which integrates two
> > 64-bit dual emission superscalar LA264 processor cores.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  arch/loongarch/boot/dts/Makefile            |   3 +-
> >  arch/loongarch/boot/dts/loongson_2k1000.dts | 565 ++++++++++++++++++++
> >  2 files changed, 567 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/loongarch/boot/dts/loongson_2k1000.dts
> >
> > diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts=
/Makefile
> > index 0e5ed373b1b4..c0464bb8e430 100644
> > --- a/arch/loongarch/boot/dts/Makefile
> > +++ b/arch/loongarch/boot/dts/Makefile
> > @@ -1,5 +1,6 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >
> > -dtb-$(CONFIG_MACH_LOONGSON64)        =3D loongson_2k0500.dtb
> > +dtb-$(CONFIG_MACH_LOONGSON64)        =3D loongson_2k0500.dtb \
> > +                               loongson_2k1000.dtb
> >
> >  obj-$(CONFIG_BUILTIN_DTB)    +=3D $(addsuffix .dtb.o, $(CONFIG_BUILTIN=
_DTB_NAME))
> > diff --git a/arch/loongarch/boot/dts/loongson_2k1000.dts b/arch/loongar=
ch/boot/dts/loongson_2k1000.dts
> > new file mode 100644
> > index 000000000000..9fd9d400d97f
> > --- /dev/null
> > +++ b/arch/loongarch/boot/dts/loongson_2k1000.dts
> > @@ -0,0 +1,565 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/clock/loongson,ls2k-clk.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +/ {
> > +     model =3D "LS2K1000 Reference Board";
> > +     compatible =3D "loongson,ls2k1000";
> > +
>
> All the same comments apply here. Don't mix SoC (DTSI) with boards.

Hi Krzysztof:

I'm very sorry, this is the first time I've written a full DTS.
Do you mean that I need to put the descriptions of these devices into
DTSI and the descriptions of the boards into DTS?

>
> It does not look like you tested the DTS against bindings. Please run
> `make dtbs_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).

Ok, I will do these checks before the next version.

Thanks.
Binbin

>
> Best regards,
> Krzysztof
>
