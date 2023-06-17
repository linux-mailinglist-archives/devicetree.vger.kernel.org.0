Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D868E733EB7
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 08:31:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231217AbjFQGbm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 02:31:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229687AbjFQGbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 02:31:41 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D46D4E66
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 23:31:40 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-bc9782291f5so1650958276.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 23:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686983500; x=1689575500;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ojxzkT9Y/xK695pRTZ6SYKEpFMh9KWUqZ4lZ86oCXSU=;
        b=mhVXRV8QQ4Sw3xl9XfzBSTwep0QBWvIK+i5qhuaKS649s6YKwoX0dWr1tilMIQdeS/
         8MMCDdbDivzK9zbu+YjKxW2bGp0gdJsSA+RNNcl4e7ZwI1OJEQh7Fx2uksGLEVkvymg1
         J8WdL2jwB8hodc+4HkaXj4emVEaDcuFf+cF++w/ASUYW5ivEf3Raqwf+DwwkCOfzk2qb
         Ws3jBRzSi5QBVOd6lL/oSI+JrLF4haQgsUhN1gxRTbx3VGbVeV2aESpO25/frgRIRvPi
         hArM4mrccihfOwMJRWNNce5Zh3c8HuYppzZg2kMumKl6Lz7roZf/j4WfS1VgLAfEMbuP
         86MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686983500; x=1689575500;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ojxzkT9Y/xK695pRTZ6SYKEpFMh9KWUqZ4lZ86oCXSU=;
        b=d1vIos09SP3UAXpX6r7FJRlgI+a06NsTECaqnnnxK+sayMbCEcH5HGxdu83gUQuLhE
         /jqUlvU3owWMUmObGoCZSiOpOzpmUYqHL1Nit/BDc0agblZ5K+9rKawr9HJEAA8tsjpa
         hs09/tL9Xd5BQ53xhpUrwuu9VSZsgdzdHF/VPo0kCye+g5tpjcO1OFk6yxNPHvg3APHN
         NRms4lz9tLCzLQ9SokMfvVx2LhPvX5wacNcIBBHVkCsPyd1DK/K92lEPB+pVPXp0cots
         b9LLzG96Ls1JnCMuiVSM9TUchiKom467so6dNAJIX9DVlYnAvfaGbV8hRuU+mPNvr24F
         VMLg==
X-Gm-Message-State: AC+VfDxLczRsEVqyKvIw7HyVIVkXiVDtvBqPxWTqGTS11SIyN70BgafQ
        TEdOoTftuyYPjJKpuVyR3MkEKNO1vlpLGz29Nes=
X-Google-Smtp-Source: ACHHUZ4CCjZ0kn7J0zFcGTDsbjx1bc8zahyEmCiijZiNZ21bqAwtjiL4O2lXnZkuKYjgxxAxeH5yztmPYhYvBA0Mkrc=
X-Received: by 2002:a25:e756:0:b0:bd7:545e:ab41 with SMTP id
 e83-20020a25e756000000b00bd7545eab41mr1503800ybh.27.1686983499980; Fri, 16
 Jun 2023 23:31:39 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1686882123.git.zhoubinbin@loongson.cn> <c1f86e5d1026937abda331ce564e5ee96b7114c7.1686882123.git.zhoubinbin@loongson.cn>
 <6bfd273e-d7e8-8447-f7e7-ebda33092337@linaro.org>
In-Reply-To: <6bfd273e-d7e8-8447-f7e7-ebda33092337@linaro.org>
From:   Binbin Zhou <zhoubb.aaron@gmail.com>
Date:   Sat, 17 Jun 2023 14:31:28 +0800
Message-ID: <CAMpQs4JiyGk+qTyv6Bbnn-P++5FTxdhBNBOa+FcxNVm0j0-9tg@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: loongarch: Add CPU bindings for LoongArch
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
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 16, 2023 at 5:51=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 16/06/2023 08:10, Binbin Zhou wrote:
> > Add the available CPUs in LoongArch binding with DT schema format using
> > json-schema.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../devicetree/bindings/loongarch/cpus.yaml   | 65 +++++++++++++++++++
> >  1 file changed, 65 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/loongarch/cpus.ya=
ml
> >
> > diff --git a/Documentation/devicetree/bindings/loongarch/cpus.yaml b/Do=
cumentation/devicetree/bindings/loongarch/cpus.yaml
> > new file mode 100644
> > index 000000000000..c3e2dba42c81
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/loongarch/cpus.yaml
> > @@ -0,0 +1,65 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/loongarch/cpus.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: LoongArch CPUs
> > +
> > +maintainers:
> > +  - Binbin Zhou <zhoubinbin@loongson.cn>
> > +
> > +description:
> > +  The device tree allows to describe the layout of CPUs in a system th=
rough
> > +  the "cpus" node, which in turn contains a number of subnodes (ie "cp=
u")
> > +  defining properties for every CPU.
>
> I understand you copied it from ARM, but I would prefer to have here
> something meaningful. Bindings description does not explain what is DTS,
> but explains what the hardware is.

Hi Krzysztof:

I am very sorry, this is my problem and I will rewrite this part.

>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - loongson,la264
> > +      - loongson,la364
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  device_type: true
> > +
> > +  clock-frequency:
> > +    description: The frequency of cpu in Hz.
> > +
> > +  model:
> > +    $ref: /schemas/types.yaml#/definitions/string
> > +    description: User-visible cpu name in /proc/cpuinfo.
>
> First, aren't you mixing nodes?
> Second, it is derived from compatible, so no need for such property.

Well, this attribute is an attempt to tweak it.

As the description says, this attribute was added to show the model
name in /proc/cpuinfo. here, we will show the custom name instead of
using the cpu core name directly.

For example, on a Loongson-3A5000 machine, although its cpu core is
la464, we can see:
[root@fedora ~]# cat /proc/cpuinfo
system type : generic-loongson-machine
..............
Model Name : Loongson-3A5000-HV
............
CPU MHz : 2500.00
...........

Unfortunately, some Loongson-2K chips are not designed with
corresponding CPUNAME registers, so we expect to add them in the DTS.

At first, we considered writing it directly into cpu compatible, but
it seems that dts compatible is all lower case, while our desired
model name contains upper case letters.

What do you think if we repositioned this attribute under cpu?

                cpu0: cpu@0 {
                        compatible =3D "loongson,la264".
                        model =3D "Loongson-2K1000".
                        device_type =3D "cpu".
                        reg=3D <0x0>.
                        .....
                }.

>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clock-frequency
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    cpus {
> > +        #size-cells =3D <0>;
> > +        #address-cells =3D <1>;
> > +
> > +        model =3D "Loongson-2K1000";
>
> Drop, not related.
>
> Best regards,
> Krzysztof
>
