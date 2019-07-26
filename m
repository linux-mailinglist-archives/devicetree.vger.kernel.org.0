Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CE757753D
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2019 01:40:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728238AbfGZXkJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 19:40:09 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:36108 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728243AbfGZXkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 19:40:09 -0400
Received: by mail-io1-f65.google.com with SMTP id o9so4576673iom.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 16:40:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=POPirI/BayAlIzVm1TD2k/2PexeF4p4dvmZZLfGLQW0=;
        b=dNTumB6u5yIQDtFw0QObW2icmVOjQJeUMwqmf5F8X8+aiyIuu8GvKT5/FsTWcGdr+O
         EAKMfEq7fxHpy/g+1b5FN0sBU5GSM8JDXM6PKEYHjGce7Kc3EBq5hmyAYayZSYnqzGXO
         fO2FuE9o5/qmd144ZU9v0PsVQc/73z4/woY/x/kQ6R72DJWnJyzyoaRywOIdmjJIXvyz
         /Fe8IFPzCTDQ8m1U1UCaERMm53+frPeDtYY8oCqA4afDpkaey4AaZpr5pj6CTBB4Rmm+
         MesrB1lJlBGPAScUtOPbtehp0NlQjuCAJQDJCCFG6sYP4vlhMbyQOPtUWZa9PugKHN2d
         r2xQ==
X-Gm-Message-State: APjAAAWF+Otlufrr3Mlcil6bkxG/n+aMXKgmXtRKueVaYHAMlhKtDOy0
        rvrxF6J7Q3TQIXgBhU3SiQ==
X-Google-Smtp-Source: APXvYqxXUhsaMm7q7cyuBQ/hEayTBXScPjWYMylt50j3n2bBmA4EdT6CDvjZ+48Mqw8Jku0dLJua8w==
X-Received: by 2002:a02:ab83:: with SMTP id t3mr99588019jan.133.1564184408717;
        Fri, 26 Jul 2019 16:40:08 -0700 (PDT)
Received: from localhost ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id f17sm51375468ioc.2.2019.07.26.16.40.08
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 26 Jul 2019 16:40:08 -0700 (PDT)
Date:   Fri, 26 Jul 2019 17:40:07 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: nvmem: SID: Fix the examples node names
Message-ID: <20190726234007.GA7328@bogus>
References: <20190703095421.11798-1-maxime.ripard@bootlin.com>
 <CAL_Jsq+fqJe5_H80xwimsjueVCEwxbNa2sVQCAg=RjD-n1VfXA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+fqJe5_H80xwimsjueVCEwxbNa2sVQCAg=RjD-n1VfXA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 03, 2019 at 01:04:53PM -0600, Rob Herring wrote:
> On Wed, Jul 3, 2019 at 3:54 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > Now that the examples are validated, the examples in the SID binding
> > generates an error since the node names aren't one of the valid ones.
> >
> > Let's switch for one that is ok.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml    | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Seems this one has been missed for 5.3, so I've applied it.

Rob
