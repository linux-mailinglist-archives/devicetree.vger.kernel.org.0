Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 37B9F3BF69
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 00:19:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389836AbfFJWSy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jun 2019 18:18:54 -0400
Received: from mail.kernel.org ([198.145.29.99]:39670 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2388757AbfFJWSy (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 10 Jun 2019 18:18:54 -0400
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A55EF212F5
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2019 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560205133;
        bh=6oBvEStZtvvcSHa/hKbHBQL0XCYfvecAsq+xsL7CezU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=UqNct7SoRew3q8kG+U/4wxDUf3Uz0gRRx8FmBm1n9kH1HCOsXzLpgCA20D4rlYmf+
         I3Qiow8v5X9KVOLpqWgBcz1xtieF0Buy2NCXaNN55sKAVvEnqtZ6fULELBAhcWPIIB
         x/BtkjxKca9rqs7nNTp0k1/9NZYR8ymx2jfDEduQ=
Received: by mail-qk1-f181.google.com with SMTP id s22so6414749qkj.12
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2019 15:18:53 -0700 (PDT)
X-Gm-Message-State: APjAAAUOjg7Xsg0H9o2XqW7rCiq4xufjRJH/jJekV9S7umSSGapHOMQI
        ABDE6EhpqlwyYEJYKtA1/NOFlBKausqCW16hEQ==
X-Google-Smtp-Source: APXvYqwtK5gRog36IqvDqf3xV/jBsHyNH8quMrwPH46YRXXnXKt7aIIex6QqaZ1QtVf3YGBvRC0HBgMbjAqRP1Qggk4=
X-Received: by 2002:a05:620a:13d1:: with SMTP id g17mr2535263qkl.121.1560205132939;
 Mon, 10 Jun 2019 15:18:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <20190525134140.6220-3-maxime.ripard@bootlin.com> <20190526160600.GA1399@bogus>
 <20190528063401.7uikujzahuq4wlxm@flea>
In-Reply-To: <20190528063401.7uikujzahuq4wlxm@flea>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 10 Jun 2019 16:18:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ=5Ahr-h8Z+ORQ4ZJJzW0R8L9TKYOC8ouka57YvNGqFw@mail.gmail.com>
Message-ID: <CAL_JsqJ=5Ahr-h8Z+ORQ4ZJJzW0R8L9TKYOC8ouka57YvNGqFw@mail.gmail.com>
Subject: Re: [PATCH 3/5] dt-bindings: vendor: Add a bunch of vendors
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 28, 2019 at 12:34 AM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> Hi Rob,
>
> On Sun, May 26, 2019 at 11:06:00AM -0500, Rob Herring wrote:
> > On Sat, 25 May 2019 15:41:38 +0200, Maxime Ripard wrote:
> > > Add all the missing vendors used in Allwinner DTS.
> > >
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > > ---
> > >  .../devicetree/bindings/vendor-prefixes.yaml  | 58 +++++++++++++++++++
> > >  1 file changed, 58 insertions(+)
> > >
> >
> > Applied, thanks.
>
> While the other patches are in your tree now, this one looks missing.

That's what I get for one foot out the door for vacation. Now fixed.

Rob
