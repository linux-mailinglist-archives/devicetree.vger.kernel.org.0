Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8576C63B44
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 20:41:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729221AbfGISld (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jul 2019 14:41:33 -0400
Received: from mail.kernel.org ([198.145.29.99]:58484 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728675AbfGISlc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 9 Jul 2019 14:41:32 -0400
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id BFEF5214AF
        for <devicetree@vger.kernel.org>; Tue,  9 Jul 2019 18:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562697691;
        bh=jIiJEaeQzkGgslYzOQrb/gG6tj9ALGXUZbsHRs3NNWY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=MMKQDxT3LDTZvHD6APJXizIt44/oJyOIkl8VJjR8WgxtcMvV0uwtr7wOJZOkQDdY/
         1a84KZboSSYeDHgxBOvQ9+l88huJp5u4ajZR1oTqAUmBjF79kvOiLTjqsJpha/LXrd
         rPOa24uqYwCcdCNGXi81700eqWl6S7Fm5DHMMgTg=
Received: by mail-qt1-f178.google.com with SMTP id d23so22728448qto.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 11:41:31 -0700 (PDT)
X-Gm-Message-State: APjAAAVfOaXyNCnJGjV6zEaxqp2uq8hZLj72rdSZBF8HVuxg/JYDvy7Q
        jssLD5x8+jXuiRmGbbA7IMOXwbib6ro9f/pOhA==
X-Google-Smtp-Source: APXvYqzkX7bt2ZiLmD+YpYn58+9JlkhqcI/fqW87d86Ei0oxUWPrhPUrbnVr6uZt3o1wNV1dhvSwtS21IJOZDuI3OEs=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr20461479qtc.300.1562697691079;
 Tue, 09 Jul 2019 11:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190618212229.32302-4-robh@kernel.org> <20190709171508.GA10127@Mani-XPS-13-9360>
 <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 9 Jul 2019 12:41:19 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com>
Message-ID: <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: Convert RDA Micro board/soc bindings to json-schema
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 9, 2019 at 12:29 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Jul 9, 2019 at 11:15 AM Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > Hi Rob,
> >
> > On Tue, Jun 18, 2019 at 03:22:28PM -0600, Rob Herring wrote:
> > > Convert RDA Micro SoC bindings to DT schema format using json-schema.
> > >
> > > Cc: "Andreas F=C3=A4rber" <afaerber@suse.de>
> > > Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > ---
> > > Andreas, Update the license on this one too to dual licensed if you
> > > want.
> >
> > I'm fine with GPL-2.0. Since there isn't any other RDA specific patches
> > in my tree, you want to take this patch? Else I have to send the Pull
> > Request to ARM SoC folks with this patch alone.
>
> Okay, I can take it. The preference is actually dual licensed which is
> why I asked, but that can be done later.

And is that an ack from you?

Rob
