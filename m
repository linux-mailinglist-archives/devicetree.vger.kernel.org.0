Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8470F7DEBB
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 17:24:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731657AbfHAPYO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 11:24:14 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:33542 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730087AbfHAPYO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 11:24:14 -0400
Received: by mail-io1-f68.google.com with SMTP id z3so4053664iog.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 08:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MBiW41NqW4TAnHAH02ISFrYBi40GZVKimkx9qKPuwA4=;
        b=I4/fSki/ZDrS6t7bxww5FkiNPP2v+Wto9BSBGL3O8+1uX0mJYcLuDX9I5jr6F7Vo2F
         RVdBOEz9IE8EgNq14z9ZkR5Ab/zYBF6nELYdYTXnVW/1zOmAKi+XJDMjr9fEkjdVq94C
         Q4T5EOR/uFZmmt2HU6d+B1lOkrDlksNvJMoH1DSmCX8gQy7rebL3Wl43K0EdtxIL48Aq
         DyyonSFKF0HO8VIRLQ1RD4cM4Mz6RDrYsGPJ9osBOspZLkFykPhjikc/mO8jATnLcCug
         KdO2mkv9Tgv/mSw58s9mgTpSvGCfA3J8s8fMadt8Exwq5BnB25/J7+ANWwc1yzKC1n9T
         /phw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MBiW41NqW4TAnHAH02ISFrYBi40GZVKimkx9qKPuwA4=;
        b=sFiz1HWsaMplyoL8M8ChfH/R3RtZNYS+1QbaH+t1LKD2xrjCH7+5bpkEdbro4dP4UG
         Z2dezCiNDBjWIVM4IuDQcXXm3wYHRTASqnuw99r3HsX9EsgXm+GsleKwa2Rskf+vhJnC
         UiN7FaSc08gQjP3hcDPvCxfW/gGgjtpkxFM7j5gN5i1IVpkOLSeeSbvBplH11LRuRO3m
         fkeIK6A4AI9Z1HX+oIgK+a3Yg5FzIwrp+p3DhfpM+nMy2l0F+V/gTLd1mO00iVtUm2Cu
         uPDHBxGSft2L4StvfFIkiHnn5buzk5FLMZSTUMrQzBnVYNIUyOKcJJ7j8Sx8GlBh5pVo
         eLLA==
X-Gm-Message-State: APjAAAWFL97H6BQVfYkKtWyab68K02tKs8gcLzL1I6Vb8RKfbBd/jxPc
        y3UKi/KpUohEA4HLo0sPZFcYaDeqP2vUFR3Desc=
X-Google-Smtp-Source: APXvYqwzE2acoA4+wz4386LeXXCfJdLnqPuKvYgJFDux4lZmG/U1xFLAmvWFRo2QrkPNbI1+x3/JUs5uKgzYilBc8zU=
X-Received: by 2002:a6b:f406:: with SMTP id i6mr48192506iog.110.1564673053693;
 Thu, 01 Aug 2019 08:24:13 -0700 (PDT)
MIME-Version: 1.0
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com> <20190709200857.GA8477@bogus>
In-Reply-To: <20190709200857.GA8477@bogus>
From:   Han Xu <xhnjupt@gmail.com>
Date:   Thu, 1 Aug 2019 10:24:02 -0500
Message-ID: <CA+EcR20ui8Liot+PtzdU6CJb5WzLDHS0Xc7VR7qGAOpD5=ArNQ@mail.gmail.com>
Subject: Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
 ls1088a and ls1012a
To:     Rob Herring <robh@kernel.org>
Cc:     Ashish Kumar <Ashish.Kumar@nxp.com>, devicetree@vger.kernel.org,
        bbrezillon@kernel.org, Kuldeep Singh <kuldeep.singh@nxp.com>,
        broonie@kernel.org, linux-mtd@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 9, 2019 at 3:09 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, 19 Jun 2019 16:41:54 +0530, Ashish Kumar wrote:
> > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > ---
> > v3:
> > Rebase to top
> > v2:
> > Convert to patch series and rebasing done on top of tree
> >
> >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> >
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Acked-by: Han Xu <han.xu@nxp.com>

>
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/



-- 
Sincerely,

Han XU
