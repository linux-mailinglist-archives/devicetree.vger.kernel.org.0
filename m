Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E2E2F63BA0
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 21:03:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727372AbfGITDF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jul 2019 15:03:05 -0400
Received: from mail.kernel.org ([198.145.29.99]:40680 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726401AbfGITDF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 9 Jul 2019 15:03:05 -0400
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A558F2087F
        for <devicetree@vger.kernel.org>; Tue,  9 Jul 2019 19:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562698984;
        bh=0jo5om4+437E/wVYZzX/IPiHCmerbPvNANrfOXGIXMY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=jMxml/sX3X6XJOkJ8p0MQoVo55ZK2tO4FQTni/thx+rnNUiwrIL0pevZZlNtD95PC
         vRa7UX6UW4znwU2Ictmg1pOLjgIXHhDbyBgnIlIOiM2cc0HNpxGwIu0DzX2YCMVXbF
         a/ZQeSGZbWDhfSWIJN8UVbbLtJ8DmZoI4FcQw1Vg=
Received: by mail-qt1-f176.google.com with SMTP id k10so15131453qtq.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2019 12:03:04 -0700 (PDT)
X-Gm-Message-State: APjAAAUR5sL7H7ldgdLi5GoBpiA2eA1n/aeXFV4guks2/Ph+Mkq0lJky
        T6kitbcpVa0bztXDobXguxz6K4En/F80kXWXFw==
X-Google-Smtp-Source: APXvYqzYkgzQHGPEoTbjXo3x8oEYz3oMXwuoYQv7z0jcgLS1/1KzdMPcnqepLkbRqvA7M1DNX1gayfA1Zu25XlgU9Mk=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr21282466qve.72.1562698983919;
 Tue, 09 Jul 2019 12:03:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190618212229.32302-4-robh@kernel.org> <20190709171508.GA10127@Mani-XPS-13-9360>
 <CAL_Jsq+S9FEVq_ikLF2vWS3VkrGueFa8nPnbHhAjThemP+eajA@mail.gmail.com>
 <CAL_Jsq+=rAafEFq+3pUc3A35aLzf9gtgGzj1aheHzoQ+MSiO1Q@mail.gmail.com> <20190709184459.GA11886@Mani-XPS-13-9360>
In-Reply-To: <20190709184459.GA11886@Mani-XPS-13-9360>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 9 Jul 2019 13:02:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKWML51A330RXarJaZReiPNeFdCsMbsse3hoNE1pKqc2A@mail.gmail.com>
Message-ID: <CAL_JsqKWML51A330RXarJaZReiPNeFdCsMbsse3hoNE1pKqc2A@mail.gmail.com>
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

On Tue, Jul 9, 2019 at 12:45 PM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> On Tue, Jul 09, 2019 at 12:41:19PM -0600, Rob Herring wrote:
> > On Tue, Jul 9, 2019 at 12:29 PM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Tue, Jul 9, 2019 at 11:15 AM Manivannan Sadhasivam
> > > <manivannan.sadhasivam@linaro.org> wrote:
> > > >
> > > > Hi Rob,
> > > >
> > > > On Tue, Jun 18, 2019 at 03:22:28PM -0600, Rob Herring wrote:
> > > > > Convert RDA Micro SoC bindings to DT schema format using json-sch=
ema.
> > > > >
> > > > > Cc: "Andreas F=C3=A4rber" <afaerber@suse.de>
> > > > > Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > > ---
> > > > > Andreas, Update the license on this one too to dual licensed if y=
ou
> > > > > want.
> > > >
> > > > I'm fine with GPL-2.0. Since there isn't any other RDA specific pat=
ches
> > > > in my tree, you want to take this patch? Else I have to send the Pu=
ll
> > > > Request to ARM SoC folks with this patch alone.
> > >
> > > Okay, I can take it. The preference is actually dual licensed which i=
s
> > > why I asked, but that can be done later.
> >
> > And is that an ack from you?
>
> Yes, here is the formal tag:
>
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>
> Also, Andreas asked to switch to Dual license for Actions platform since =
he
> is the maintainer of it. But for RDA he is not, so I don't think there wi=
ll
> be a concern here (I'm fine with GPL-2.0).

It's authorship that matters and Andreas was the author on the
original file. The maintainer only has a say in what license they'll
accept.

Rob
