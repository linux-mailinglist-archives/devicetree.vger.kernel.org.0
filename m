Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC10C3D4306
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 00:43:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232401AbhGWWC1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 18:02:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231954AbhGWWC0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 18:02:26 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6625FC061575
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 15:42:58 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id a7so3445864ljq.11
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 15:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iXmfZl7tl4+qVCvx5N5v67i1rD9bv+ydkZCcMvPVVHY=;
        b=emilnGg82dznkreHtSs41UKfoTE6WyVDLr+Z/pur5y1tylLzPoNnJyh82qMBtUh7PF
         zvsnjErIowErAYZdwo9TBzgxkO8LlFzLV+nRSdV3xixFdzRBxzt/w9Idj1kGh7i8s/oU
         oqYt/x8y+ERqXHb7Sz7zdWPjh7c/3LfpQRadqpTu5ZaSc9gBTogIcNCvW0DER/+Gp5Mp
         frsmj13Y3334cQ7JeIL6ohBQ3A2x2qVShMUAyVctHD3zgZt3GFTMq0ep+LFau/P0BthZ
         liaFT7kvNUxp7m+fqEyyMPI8Frvcnv0Tj1Am10fMbGVl6k8fhzcuLiy09uo+NRiPX2+E
         /+ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iXmfZl7tl4+qVCvx5N5v67i1rD9bv+ydkZCcMvPVVHY=;
        b=oKUNH1TZjV9iZtzewwPFApW0xkKy/1s2CAuqUlp2p3k8ZuGKaCAxAx7xzUcPd3iVTu
         nGWpc4HaGKUYe2WZp2OJWdeAdfBcOJG6XwGYnVnxvJhFNFtjq+DEXEFpphjhBNu5VT+m
         Za6EDq23NGy9FbpP4GDemhKHWqDChCaBOhyjHFYES23NcYeSc9ibL3IStPSFu63JzEkO
         YXv6kFRxggDl4TpMbEk1VsKjT6+SKJPZL9dQawtWGc2rjo5nRc6Zdxh28TM9x7jfDrs5
         oXUtpTuMcrTXgM3Ni4AMydlAmsOMdLYb3CSLa44kdCD8iQIbFJJt+cYgdVOoN/8WFMQk
         hsDQ==
X-Gm-Message-State: AOAM533eo0+47PRrjZgzhx0PIHbNSawAIlvTmv28dk9hEj+TygT1vVU8
        YqI3nmZau8Qn6IfgGfkqvap7t69FrFr3WzQC6OrPDJYfhi0=
X-Google-Smtp-Source: ABdhPJy0HTvu8w5e9tu7S4zKY9bY9cPxWmJhDoGQm5rv4/Vj2F+LHm2JpFTIbbLaamVyoJlwd1+KsZrvl/DcflauJ0w=
X-Received: by 2002:a2e:888f:: with SMTP id k15mr4597318lji.326.1627080176511;
 Fri, 23 Jul 2021 15:42:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210722084330.1618239-1-linus.walleij@linaro.org> <20210723204233.GA2541746@robh.at.kernel.org>
In-Reply-To: <20210723204233.GA2541746@robh.at.kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 24 Jul 2021 00:42:45 +0200
Message-ID: <CACRpkdZ7kh9KYhqa+gsmi2kNE350Zse0SUr23s6MPXXbbs0FVw@mail.gmail.com>
Subject: Re: [PATCH 1/2 v2] bus: ixp4xx: Add DT bindings for the IXP4xx
 expansion bus
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 23, 2021 at 10:42 PM Rob Herring <robh@kernel.org> wrote:
> On Thu, 22 Jul 2021 10:43:30 +0200, Linus Walleij wrote:
> > This adds device tree bindings for the IXP4xx expansion bus controller.
> >
> > Cc: Marc Zyngier <maz@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
> > ChangeLog v1->v2:
> > - Drop unevaluatedProperties: false from the node match.
> >   additionalProperties: true will be the default.
> > ---
> >  ...intel,ixp4xx-expansion-bus-controller.yaml | 149 ++++++++++++++++++
> >  1 file changed, 149 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
>
> AFAICT, there is no patch 2/2. If there is it never made the lists.

I have the habit of occasionally just resending the patch that changed.
Maybe this is a bad habit :/

> Applied, thanks!

Please drop it if you can, I found problems with the bindings...
It's always more complex.

If it's hard to drop I can also make an incremental patch.

Yours,
Linus Walleij
