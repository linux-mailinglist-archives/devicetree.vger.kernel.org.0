Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C8BD29F2B6
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 18:11:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725938AbgJ2RLs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 13:11:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725777AbgJ2RLs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 13:11:48 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2FD2C0613D4
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 10:11:47 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id v19so3799274edx.9
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 10:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B7msipSc39tbx1cyam8omVWWLfNOcLFksmzhLfw5XTU=;
        b=Ntol3+ZCQdnYkvEnnGcK6/sb2MP3E3Iv0WyuPD3TEh3RsyFIlLIbWDZPLenuJhseJd
         PRao5U88R1b15s775JvkBydB0C3Ppdz6is+tlkXlOebPD+eyL50aS0wNzhTUo169v2GH
         FG1+hXR3AtcxocCKOA4fK6FaCzKGdDkadP8IBZphfOoIU/MeFWs5d5Za6m9bVS4SccOP
         CPOhPlmn2ezvhyB0dsJaE9AJ//uH8fx6VRvUpqO/ElW/Oot9e2+yn+zA28ER8BstNHiI
         aLMTxPCcT7BHiZtxSHS2CuhsOF3BIPf45R17FPrLqGnfnktYM62YiABQ2gdQwI7JJZdU
         jscg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B7msipSc39tbx1cyam8omVWWLfNOcLFksmzhLfw5XTU=;
        b=kb4cRzMh5PBh7aFdPYnaRr64xAQmOus3is2LlE5mH1j9xuyCOrV0DjauX9KcxBwWzm
         x7qVhUAMdFBYEWqYknf1qtEXwPDNXRDiPwjTl/ZogzR+1t+RhZ80onN/e4N1KT10HJrJ
         UO8/X0bYZYR+LEOJJ93hB8DIbVY/IRq2p8HC6IuLwE+iKb+nDvWH4W152CfMeA4kCLOa
         Lf9VHDcUX2U41E/S99xmKPDT2inEY3QFOFro82+FwJ06DXk6AzVwDuxilPpnS/+OboR/
         4ygLI8zTR4Pe3iYAMNzTXP7PaS07+jidQM8Jsv9MXv08OG7io40lfAglluYfQKquIqPB
         Z6Cg==
X-Gm-Message-State: AOAM533hGgMgkkiODAs8/Uymq20XVn9d5p/aKKEzaJ7KolJdWl3f4FBF
        T+nzdNFJbmFCIaefJi0OwQQMq8ewA5p+D5dfC+OauA==
X-Google-Smtp-Source: ABdhPJzaEhMJXsACQWDk9L0LSAaUdCxVgC3daLMdvGu6jdDQF2oJHrqIDTIma9G928K/x3q1Idovqlw76AnsZGHAmWE=
X-Received: by 2002:a50:96d2:: with SMTP id z18mr3478714eda.367.1603991506282;
 Thu, 29 Oct 2020 10:11:46 -0700 (PDT)
MIME-Version: 1.0
References: <20201004162908.3216898-1-martin.blumenstingl@googlemail.com>
 <20201004162908.3216898-3-martin.blumenstingl@googlemail.com>
 <CACRpkdbTw4UBw02RXX2prju45AsDZqPchhz=gdzsuT-QjhYHVw@mail.gmail.com>
 <CAFBinCAFDhWp6mgUqyOjdMVBR5oZQVpmVPjhnZs1Xg16tFa0PQ@mail.gmail.com>
 <CACRpkdZdwoQCxxqosn2jQPMXLDnTEjuxSWOxG-L1YGE33wbFrg@mail.gmail.com>
 <CAL_JsqLF8KHG6qZUJzdMyN5cX-ZvPDbuGSGZLOw=CkY90SUGLw@mail.gmail.com> <CAFBinCBpDn1Vx1ZQdk-Gf-muuAyxjXb+zCkvW6jsH8jP6mDuTw@mail.gmail.com>
In-Reply-To: <CAFBinCBpDn1Vx1ZQdk-Gf-muuAyxjXb+zCkvW6jsH8jP6mDuTw@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 29 Oct 2020 18:11:35 +0100
Message-ID: <CACRpkdZ6oaLJoPPROzRmL0yazy=aGdAw5SOx5+F5g2wQ3ro11Q@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] dt-bindings: gpio: Add binding documentation for
 Etron EJ168/EJ188/EJ198
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-pci <linux-pci@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 16, 2020 at 10:52 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
> On Wed, Oct 14, 2020 at 2:43 PM Rob Herring <robh+dt@kernel.org> wrote:
> > On Tue, Oct 13, 2020 at 8:27 AM Linus Walleij <linus.walleij@linaro.org> wrote:

> > > I do not understand why a PCI device would need a DT binding
> > > at all. They just probe from the magic number in the PCI
> > > config space, they spawn struct pci_dev PCI devices, not the
> > > type of platform devices coming out of the DT parser code.
> > > No DT compatible needed.
> >
> > Same reason for all the discoverable buses need bindings. There can be
> > parts that are not discoverable or connections with non-discoverable
> > nodes. There's also cases where the discoverable device has to be
> > powered, reset deasserted, clocks enabled, etc. first to be
> > discovered.
> >
> > If the GPIOs here had connections elsewhere in the DT, then we have to
> > describe the provider in DT.
>
> this is exactly what I need it for: that platform has hand-written
> .dts files and I need to wire up a GPIO LED

Aha I get it! OK then :)

Yours,
Linus Walleij
