Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9BFB4A1BE
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 15:11:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725988AbfFRNLP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 09:11:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:35426 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725919AbfFRNLO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jun 2019 09:11:14 -0400
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 05E54208E4
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 13:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560863474;
        bh=7JroxIQyNQeYiA/nDU7vtSLWYTTT3Ald5Q/R/7U83P8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=cntng++kN0fBbAtz+jK3kTPwVF7mSPzQxb/3zV1ND8efvHw8XxYdS5BSkhavVPx5V
         UkUDqbMjvYOq08uXis1SulyOvG4aCZqKr525jCM5zJjmeZJf7heOoGssM83JGgVR9w
         ADByBsECXb+2HFs7FSl/3fPSM4lKVlMAopXOKoJI=
Received: by mail-qt1-f171.google.com with SMTP id j19so15125129qtr.12
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 06:11:13 -0700 (PDT)
X-Gm-Message-State: APjAAAWz35gybFx++OxBo/AKbIOzo2+ZZOyC+D9RZsmb2Soh4igMBhDX
        JXDnes6o/MRdMGQCV9JApLjllhTSwrjyTRc+DA==
X-Google-Smtp-Source: APXvYqy+FDRVfJJjBq8pSkHMbDkkEiiaH2YItVCa8J1WypjRg8AWveUeB8pkYwgyvwORgR7qmYNTA6Eh7ULD0nbFX1M=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr100553401qtc.300.1560863473270;
 Tue, 18 Jun 2019 06:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190617224028.26974-1-robh@kernel.org> <CAOMZO5DdAKH5N0vDq0tdnjarzWFkJrLg_OfuFoJj=qm7mw+Jzg@mail.gmail.com>
In-Reply-To: <CAOMZO5DdAKH5N0vDq0tdnjarzWFkJrLg_OfuFoJj=qm7mw+Jzg@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 18 Jun 2019 07:11:00 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+nXVB3Pr961N1GAm5Pr-zAkvFPPxQvF18JO2r5N-Qx+g@mail.gmail.com>
Message-ID: <CAL_Jsq+nXVB3Pr961N1GAm5Pr-zAkvFPPxQvF18JO2r5N-Qx+g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Add back missing i.MX7ULP binding
To:     Fabio Estevam <festevam@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 8:27 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Mon, Jun 17, 2019 at 7:42 PM Rob Herring <robh@kernel.org> wrote:
>
> > +      - description: i.MX7ULP based Boards
> > +        items:
> > +          - enum:
> > +              - tq,imx7ulp-evk            # i.MX7ULP Evaluation Kit
>
> This should be fsl,imx7ulp-evk instead.

Ugg. That was me typing in the wrong window...

Rob
