Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D0113005D9
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 15:47:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728565AbhAVOna (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 09:43:30 -0500
Received: from mail.kernel.org ([198.145.29.99]:39038 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728734AbhAVOlx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 22 Jan 2021 09:41:53 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 852E0239EF
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 14:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1611326472;
        bh=gNNp57NP+5LbxVkjx/67W4zGV/me4qc6JzJVBRGZhUk=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=RuQCoSHfgj8wE7hapwzVFPr1BRYZtWnyX/zhdj3YkRjdV3/JPtfYyu4fhw0i1IjVi
         Up0p4SXe+cYrW55ETFWR5nN39GhKwMykFNRKk9REIxarkr4ZBx3V75wVRhwQ37O5XR
         4Vg1dZ1jBH+5r793YxIT7PjbQQoxKgqnxgpe3vuCC7ikJ2IEtnrHLsHQuYkKE3nEsx
         v8WWlgB7iUf0U07JPm6NKG2EbKlvn5Iiw/hZbTIimpMierROajnExxGuDdk3tt86DQ
         C32j5zyX+UXqMZmr5UjLVMUuHJtyKSRuR36Sry3txR00qEBCrUTI7ZkTlgq/VSYSo1
         JQVcl0Vk3TPDA==
Received: by mail-ej1-f51.google.com with SMTP id w1so7935292ejf.11
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 06:41:12 -0800 (PST)
X-Gm-Message-State: AOAM530ScC33E4lQ8lh50P057JIJMk45j6RwVZL+Gz6J8kigEC9L19We
        0unAMDVCyKsfekVudiJZKbDjyqcoSvg8oM79cA==
X-Google-Smtp-Source: ABdhPJx2SH2VlFwlCNHLKsID1okcEyJPQwFmwQUkf5qp+AQB0ba9djnCbIzzSga3NPrQpNL8W9QFNJ5Ki+oNXS2iVEw=
X-Received: by 2002:a17:906:c9d8:: with SMTP id hk24mr3299782ejb.468.1611326471140;
 Fri, 22 Jan 2021 06:41:11 -0800 (PST)
MIME-Version: 1.0
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-5-maxime@cerno.tech>
 <20210115013714.GA3798333@robh.at.kernel.org> <20210118101501.mmlgsiyj5rulrpgk@gilmour>
In-Reply-To: <20210118101501.mmlgsiyj5rulrpgk@gilmour>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 22 Jan 2021 08:40:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK-Dm4zZemZPULXU5wTBhSd1r9s9cy6jm36MCQQ8sA1nQ@mail.gmail.com>
Message-ID: <CAL_JsqK-Dm4zZemZPULXU5wTBhSd1r9s9cy6jm36MCQQ8sA1nQ@mail.gmail.com>
Subject: Re: [PATCH 05/19] dt-bindings: bluetooth: realtek: Switch to unevaluatedProperties
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Alistair Francis <alistair@alistair23.me>,
        Vasily Khoruzhick <anarsoul@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 18, 2021 at 4:15 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Rob,
>
> On Thu, Jan 14, 2021 at 07:37:14PM -0600, Rob Herring wrote:
> > On Thu, Jan 14, 2021 at 12:35:24PM +0100, Maxime Ripard wrote:
> > > additionalProperties prevent any property not explicitly defined in the
> > > binding to be used. Yet, some serial properties like max-speed are valid
> > > and validated through the serial/serial.yaml binding.
> > >
> > > Let's change additionalProperties to unevaluatedProperties to avoid
> > > spurious warnings.
> > >
> > > Cc: Alistair Francis <alistair@alistair23.me>
> > > Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> > > index 4f485df69ac3..f4d4969d87f4 100644
> > > --- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> > > +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> > > @@ -37,7 +37,7 @@ properties:
> > >  required:
> > >    - compatible
> > >
> > > -additionalProperties: false
> > > +unevaluatedProperties: false
> >
> > This would still fail because the serial schema is applied to the parent
> > and this schema is applied to the child node. It's a common problem for
> > how we've done bus schemas. We'd need to split them into 2 schemas and
> > reference the child schema here. I'd rather not do that here because
> > then we'd apply the schema twice assuming we keep bus schemas also
> > applying the child schemas (which is good at least until we have schemas
> > for *all* possible child devices).
>
> I couldn't find what requires additionalProperties in the meta-schemas,
> could you point me to what enforces it?

https://github.com/devicetree-org/dt-schema/commit/14db51af82b0ab52f4a69f9aaa86726087b3022a

Rob
