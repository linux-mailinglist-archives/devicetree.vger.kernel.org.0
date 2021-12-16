Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D99C478040
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 00:03:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236326AbhLPXD5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 18:03:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235689AbhLPXD5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 18:03:57 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDC96C06173E
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 15:03:56 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id e3so1143599edu.4
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 15:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4XGBi9AWqlgW2iEFwQL1/1nQ3YHkq178Ji39UpQv5Mc=;
        b=5Z/zpo/llfSzl3vtey+5DTAVBphRj7/CDJ9pOYMjp3eqjbJXmr/AEdLxoqB69mFv5j
         ZpwLQI2rHW7KiiUd8nvbKYaBDF7hBvG1sITJkCnUq2r3HhLPikA52eYtnpIS8WB94HPh
         K5++om3EAiuvbLWowQ4mrDzb6BJQUbeomwO4G5kkrc/hm8MyeVdr3IdRfWVlRIHsBnB0
         SZDB77wt9U079h1sU4FLwKwQ2VBgNHae7A/yaW8mYjJy5az1ZTi8VDdO1vC9woQKGaFc
         bM2PAcIX0LN3bauj8SGE+llAKBWqtX8LLgNyFd3MnoXhKqBccaqVcOp90/uwWN21dVsC
         tW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4XGBi9AWqlgW2iEFwQL1/1nQ3YHkq178Ji39UpQv5Mc=;
        b=phMeEEJTHPSr8ymYy22R2DnpMhUyQ4VLTK7+wa7KO4qvDfOQQYC25MHbvSNTZ8kUCC
         LihTEhTwj7MEMiHVepHU1QNNLklHkYP0dvG1FekZ5KSg2uY1duw0dPK1Ifs7AZQlzGvR
         E9WtAxRpaIi0IDXo03nCLg8mkYOMnWaWPn846QAo4AqXeXo3sZXSjHorjl9WRZpaycHD
         wHtpqeaZn1Jcwu/hCkNTBvzMBF8/6IptEk4kQlXzp/04K2IPgs6kqWEhNWOpnogXnDDq
         YqLCLA7+4ZtnOMm/7e9lAEdJEYGkqP0M9JMRR0aaOGrw9ogqsec5wyT+A+4QwQhuUgD9
         Pf0g==
X-Gm-Message-State: AOAM530FcTZt67Z/3mTSsvc7sYDUiVFkX4XkMXs1r8VEcoezX6x3YhXH
        H99RL+DBVW+0ect8NyI+/Rkmbd3ReIeLr5/5eeUuAA==
X-Google-Smtp-Source: ABdhPJwik5gP8WcxT/LlRWowNvewmqUiNaIiabdowVwZ57bu4+JUk4W5a8admDXC7cAvMFqmgEIUFgnO/YFxPYict7s=
X-Received: by 2002:a17:907:9608:: with SMTP id gb8mr243974ejc.301.1639695835285;
 Thu, 16 Dec 2021 15:03:55 -0800 (PST)
MIME-Version: 1.0
References: <20211216111256.2362683-1-aford173@gmail.com> <20211216111256.2362683-9-aford173@gmail.com>
 <YbuqpayfYVPp1dTe@robh.at.kernel.org> <CAHCN7xLGeu4=CwqCv8BBowuQQ5t9iFDQV0adPNmy9dufW8soAg@mail.gmail.com>
In-Reply-To: <CAHCN7xLGeu4=CwqCv8BBowuQQ5t9iFDQV0adPNmy9dufW8soAg@mail.gmail.com>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Thu, 16 Dec 2021 20:03:43 -0300
Message-ID: <CAAEAJfCNQJ+fQzTMM27usxaHhVNa5ime62UKvvbn1U=LSFNg_A@mail.gmail.com>
Subject: Re: [PATCH V2 08/10] dt-bindings: media: nxp,imx8mq-vpu: Add support
 for G1 and G2 on imx8mm
To:     Adam Ford <aford173@gmail.com>
Cc:     Rob Herring <robh@kernel.org>,
        linux-media <linux-media@vger.kernel.org>,
        Abel Vesa <abel.vesa@nxp.com>,
        Adam Ford-BE <aford@beaconembedded.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        "open list:HANTRO VPU CODEC DRIVER" 
        <linux-rockchip@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Adam,

On Thu, 16 Dec 2021 at 18:21, Adam Ford <aford173@gmail.com> wrote:
>
> On Thu, Dec 16, 2021 at 3:07 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Thu, Dec 16, 2021 at 05:12:53AM -0600, Adam Ford wrote:
> > > The i.MX8M mini appears to have a similar G1 and G2 decoder but the
> > > post-procesing isn't present, so different compatible flags are requred.
> >
> > post-processing
> >
> > > Since all the other parameters are the same with imx8mq, just add
> > > the new compatible flags to nxp,imx8mq-vpu.yaml.
> > >
> > > Signed-off-by: Adam Ford <aford173@gmail.com>
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > index c1e157251de7..b1f24c48c73b 100644
> > > --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > @@ -5,7 +5,7 @@
> > >  $id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
> > >  $schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > >
> > > -title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ SoCs
> > > +title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ/i.MX8MM SoCs
> >
> > Just 'i.MX8' so we don't have to change this everytime?
>
> Are you OK with i.MX8M?  8MQ, 8MM, and 8MP all appear to have G1 and
> G2 decoders.  The i.MX8 is different.
> >
> > >
> > >  maintainers:
> > >    - Philipp Zabel <p.zabel@pengutronix.de>
> > > @@ -20,6 +20,8 @@ properties:
> > >          deprecated: true
> > >        - const: nxp,imx8mq-vpu-g1
> > >        - const: nxp,imx8mq-vpu-g2
> > > +      - const: nxp,imx8mm-vpu-g1
> > > +      - const: nxp,imx8mm-vpu-g2
> >
> > Not compatible with the imx8mq variants?
>
> No, the structures associated with these compatible flags telling the
> driver what features are available have options for the post-processor
> in the 8MQ which are not present in the 8MM.
>

Just as G1 and G2 are different blocks, their "post-processor"
features are really different too.

The G2 core typically produces a tiled format, NV12_4L4,
and it an inline post-processor to convert that to linear NV12.

How does this work on the 8MM? What pixel format does it
produce natively?

It's hard to imagine the G2 block doesn't do linear NV12,
so I'm inclined to think it has that post-processing feature.

Thanks,
Ezequiel
