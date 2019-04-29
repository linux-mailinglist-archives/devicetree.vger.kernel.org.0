Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 66B83E9CA
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 20:13:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728903AbfD2SNm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 14:13:42 -0400
Received: from mail-it1-f195.google.com ([209.85.166.195]:35547 "EHLO
        mail-it1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728844AbfD2SNm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Apr 2019 14:13:42 -0400
Received: by mail-it1-f195.google.com with SMTP id w15so534646itc.0
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2019 11:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=2QB4RJLb+6FEgLy4+w2DfbmeovqCpuAG21kyMkfP7XA=;
        b=hYcWBuwZg/dYju1jvYpCEc4yGVpKLo1p/FuOY+cVj7+/Jpy0Mw80hE6psm76KVf1i8
         KpY9I0ahMAcReeV47+0bPMixh6yQufRO1oQxGQhrHNh+I5hVIm4HgefeyLcBEY0YZgvP
         6MJfEAAII4GbchxZO26JIPCDmjhXoZhVrk7P8sslat8s+/XGBgvkTts89RxtQLZ7SOXW
         GMgg/3L9Zui9809LZAVhciqSjpqx6kR70O2XurbBlYHPM0LV6TOjDPFk9+HkyTOKrSe7
         c7AmKwacwdZSG93o7MNnmcUwdAxTf7BpA8HeiroNIqIk+H9PUWgntk2lQSor4Y57Y50l
         bixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=2QB4RJLb+6FEgLy4+w2DfbmeovqCpuAG21kyMkfP7XA=;
        b=FEUxN7op1W/J7UctCA6guP526K+DDvEhBUGiPNJEZIC/fMKdxksi3klvaQKtA8J9zk
         9J9eomFeXaIupEoh1x1HXshljcZC4yOmmrhsIwjvBUo8RWjTbSVoptqJqp1NRU1B+qu3
         srVaKsuBJtaOssEMf7HhXJ6NOZ+jtv6klfRHRIIWib3xP50cP/WHcsD70YDcpECApEWc
         778C/sTpCv5Jf2BGVGO2+9/tjItl+BxnqZecprRp2m1EUt3kWLBTFJoJdhbP+1CDnaHp
         cIHOufBYzsX/Bu/Co+3oWWvDhe8jetGeFdGEiDE41R6GdSWvO1goHs19aqHIxjMZxM5f
         md+A==
X-Gm-Message-State: APjAAAVfkE/pfqGYjHwtUD7M/MBY6DZUQ28RO6FEDq5o2IfSTT3JWKRy
        pVXOoLZE7LCuk/N0syNjtcBprg==
X-Google-Smtp-Source: APXvYqx4XUXqAY+TWlfS929HupQJSdXoLFiGxqPYvRrbV+KHeRkcNZnCuY/p2CVCrXYNGOGlQp8gEw==
X-Received: by 2002:a24:5309:: with SMTP id n9mr329796itb.11.1556561621668;
        Mon, 29 Apr 2019 11:13:41 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id k203sm175872itb.0.2019.04.29.11.13.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Apr 2019 11:13:40 -0700 (PDT)
Date:   Mon, 29 Apr 2019 11:13:40 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Rob Herring <robh@kernel.org>
cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, Paul Walmsley <paul@pwsan.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: [PATCH 2/6] dt-bindings: riscv: sifive: add YAML documentation
 for the SiFive FU540
In-Reply-To: <20190429180846.GA26021@bogus>
Message-ID: <alpine.DEB.2.21.9999.1904291113140.10713@viisi.sifive.com>
References: <20190411084304.5072-2-paul.walmsley@sifive.com> <20190411084304.5072-3-paul.walmsley@sifive.com> <20190429180846.GA26021@bogus>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 29 Apr 2019, Rob Herring wrote:

> On Thu, Apr 11, 2019 at 01:43:00AM -0700, Paul Walmsley wrote:
> > Add YAML DT binding documentation for the SiFive FU540 SoC.  This
> > SoC is documented at:
> > 
> >     https://static.dev.sifive.com/FU540-C000-v1.0.pdf
> > 
> > Passes dt-doc-validate, as of yaml-bindings commit 4c79d42e9216.

...

> > ---
> >  .../devicetree/bindings/riscv/sifive.yaml     | 26 +++++++++++++++++++
> >  MAINTAINERS                                   |  9 +++++++
> >  2 files changed, 35 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/sifive.yaml b/Documentation/devicetree/bindings/riscv/sifive.yaml
> > new file mode 100644
> > index 000000000000..d2808d8d79bb
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/riscv/sifive.yaml
> > @@ -0,0 +1,26 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/riscv/sifive/sifive.yaml#
> 
> The path here should match the file path. IOW, drop 'sifive/'.

Thanks, will do.

- Paul

