Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7B873EBA0C
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 18:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236114AbhHMQaN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 12:30:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:50440 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235752AbhHMQaM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Aug 2021 12:30:12 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF7CA60EB2
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 16:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628872186;
        bh=wKj03RgBBsB4L/81//BD1MH3Wr9vd0NxPSjboXBcryc=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=mzmaLRKftPvfyUu90Fz4oKRJPSUaB/ZfbTRfzQsVIFnSwsGq/doveorLA9FCw4or6
         RLbDreCQxonb8HbMaIikUY/o7R71LDCokIud9gderDcmvT1XPXhyKPLsn8AlQzBQxD
         whZUTAqVm3eAljAhDsl1++chXnO8btOy7RMkL8Bib3ibseukbiMOItPcPoOuIRN5LI
         XghxTtnkAvM5RGAzXP+Qswz31CpVCPH0GLoZsaKj8x1x+LLx7kOCmBIU9pEeSJQtPm
         NAz5LDOUg8MBR6arOyd3FM59iqjqTQ4hEohOEwWSl/vgPamyGqMRvhMnZJWmOd1C0x
         o0dXjNtDvF1rA==
Received: by mail-ej1-f54.google.com with SMTP id b10so10797661eju.9
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 09:29:45 -0700 (PDT)
X-Gm-Message-State: AOAM531KM/k1tmd4QKNJ9WGt5OzipaVYPiHTGtPFv64n27dQB1qWTrcV
        7ce2kBpHtuhISqDa1pqonJPINDky5C4T7kQItw==
X-Google-Smtp-Source: ABdhPJxwE9YhpLEurAf5R/ZwP490B2Z55qCViPEO3fP0hZtj+tU58WOgE3QMVNkD7ojv02bn/gk1jvgDodzIg4LopsY=
X-Received: by 2002:a17:906:519:: with SMTP id j25mr3212359eja.525.1628872184592;
 Fri, 13 Aug 2021 09:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210802040458.334732-1-matt@codeconstruct.com.au>
 <20210802040458.334732-2-matt@codeconstruct.com.au> <CAL_Jsq+rDox9gBDpZ2ZhiBvbyeHtwJDqFv_3imgSzt8hk4K4dA@mail.gmail.com>
 <47d77b0c67cade473c496a956754ad5fc3d074ca.camel@codeconstruct.com.au>
In-Reply-To: <47d77b0c67cade473c496a956754ad5fc3d074ca.camel@codeconstruct.com.au>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 13 Aug 2021 11:29:33 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+EKpUkKvL500aOGGtQDOgHs_pFbO9uCxjcxPOYsQnkPA@mail.gmail.com>
Message-ID: <CAL_Jsq+EKpUkKvL500aOGGtQDOgHs_pFbO9uCxjcxPOYsQnkPA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: net: New binding for mctp-i2c
To:     Matt Johnston <matt@codeconstruct.com.au>
Cc:     devicetree@vger.kernel.org, Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 10, 2021 at 10:39 PM Matt Johnston
<matt@codeconstruct.com.au> wrote:
>
> On Mon, 2021-08-02 at 10:45 -0600, Rob Herring wrote:
> > On Sun, Aug 1, 2021 at 10:12 PM Matt Johnston <matt@codeconstruct.com.au>
> > wrote:
> > >
> > > +  slave functionality. The reg address must include
> > > I2C_OWN_SLAVE_ADDRESS.
> >
> > This constraint can be a schema.
>
> The flag is already described in i2c.txt, is it OK to just make reference
> to that?

I know it is, but you are saying the only addresses valid must have
that. Sounds like a constraint to me, so it should be a schema. Why
make a user have to debug that they forgot to set that bit?

Rob
