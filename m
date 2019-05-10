Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5FACF1A37C
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 21:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727945AbfEJTrj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 15:47:39 -0400
Received: from mail-yw1-f48.google.com ([209.85.161.48]:35951 "EHLO
        mail-yw1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727656AbfEJTrj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 15:47:39 -0400
Received: by mail-yw1-f48.google.com with SMTP id q185so5650778ywe.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 12:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=JffiYT1tcBGQIyMyATAAqC+loflKT9wWvMspK9YpWxU=;
        b=L9rajkoSfGFOjIbxutcs41C2onJXUVFAJgqVs9w1sSdio8psH8qdqdtNSlz6J8mWXJ
         2hZNWk8niZ71Z1BjOuJA3N7gWccB5GyCo+GU/zl6iWf8KaR3g3FDrQLWdMT0E1J0C/tk
         oCoc5RIs/0WtLP7KOt929aLMotaEgmzRyElnJtWpqq0RqWmNFheAz7Vlp0/bmxtiCwUI
         6QETIz9vERD5SC8hXPknwpZhooujlKLvXcBsZYFzrHka87+dvti1Ob/rceX8IiCN++2d
         vYl/EWX5nUE7o069MmMcOAxgqi7h0SG658fx7G94Pq47CGmafyWX8aBNSnfXkj9pTkv2
         hHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=JffiYT1tcBGQIyMyATAAqC+loflKT9wWvMspK9YpWxU=;
        b=ncXQO5p31xRHFX4/9y1VBpsjcVqsovD5axFkWbzOoa4foxUUcLSmAivk++nk/aBXuj
         gV2A8H3NhSQOcu6+5yESeHKDg48TG7B6SZs/qKi4uE4Rnl0ngOWREsL4vbY3CUwGDc+L
         vhykN1MGYSCp7Dr9PvGDyIToZ2koaQ6NLtBMm47dQsqELbcmxaiaGdFZITvirgcPxvMi
         TKJZN5ju0YBSSKbjjm9Ra5hCE58t++TtEV/BDNf5TBCDaDiBL4AQBJ7mJ8wC848eEAjq
         ZapzG4yFzYMw/8HGVX81MHZOzHNfD4p1cm7EUYgPQgfhClE6H5Y0KxwuQezOD35V+r4P
         Yvtw==
X-Gm-Message-State: APjAAAW7tW5cDfhWWuE7hivXqMe55o23rTX/LqHzZVrdVsVPDQAgA+tb
        NslaJ3EX5KuNAHIdmrGc051QsD1UIxFN0vY8FqE=
X-Google-Smtp-Source: APXvYqxSZTxra4dSqZ0uV4+z/sqWLOp523MKAu/O7d6N9vyouCLmoaGITPfCGmeHt1dh893kQWldYZyfSdtX9+YPhIo=
X-Received: by 2002:a25:9cc4:: with SMTP id z4mr6727169ybo.92.1557517658068;
 Fri, 10 May 2019 12:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAJiuCceeLwY+myYtUf15frSYsLKmGaUBifAOxUkNWwSjbF4oDg@mail.gmail.com>
 <20190429220503.GA4720@bogus>
In-Reply-To: <20190429220503.GA4720@bogus>
From:   =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date:   Fri, 10 May 2019 21:47:27 +0200
Message-ID: <CAJiuCcc2_HWKvHyBepu_PXG+T-qD_4KFw=qT_rtrvqJDEXbrZw@mail.gmail.com>
Subject: Re: Question about compatible fallback and documentation
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 30 Apr 2019 at 00:05, Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Apr 14, 2019 at 06:18:04PM +0200, Cl=C3=A9ment P=C3=A9ron wrote:
> > Hi,
> >
> > I have to bind an already existing IP by a vendor in a new SoC called
> > "SOC3" device-tree.
> >
> > In the 1st gen of "SOC1" the IP is introduced :
> > soc1.dtsi :
> > compatible =3D "vendor,ip-soc1";
> >
> > Then a 2nd gen of the IP is introduced in "SOC2" with new registers.
> > But the driver of the 1st gen is still working fine and no update of
> > the existing driver has been introduced because not required.
> > soc2.dtsi :
> > compatible =3D "vendor,ip-soc2", "vendor,ip-soc1";
> >
> > Finally in "SOC3" and regardind the user manual we think that the IP
> > introduced is the same as "SOC2".
> > Should the compatible in soc3.dtsi be A or B?
> > A) compatible =3D "vendor,ip-soc2", "vendor,ip-soc1";
> > or
> > B) compatible =3D "vendor,ip-soc3", "vendor,ip-soc2", "vendor,ip-soc1";
> >
> > I propose the solution B) because we don't know what could happens
> > maybe the IP could need a quirks only for "SOC3". And device tree
> > shouldn't move for the user only the driver.
>
> B is correct.
>
> Or you could list soc3 and soc2 given you do know there are additional
> features. That would require a driver update, but likely the new SoC
> requires some OS changes. Maybe someday SoC design will be disciplined
> enough that new SoCs are fully backwards compatible.

Thanks for the answer,
Clement

>
> > Last question does we have to document all the compatible use in
> > DTS(i) files in the Documentation ? or only the compatible used by the
> > drivers ?
>
> What is used in DTS files.
>
> Rob
