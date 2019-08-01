Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 246087DEB2
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 17:23:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731601AbfHAPXG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 11:23:06 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:43204 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731490AbfHAPXG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 11:23:06 -0400
Received: by mail-io1-f66.google.com with SMTP id k20so145162687ios.10
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 08:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xrfoslv7AaDIIfdPVT2VtUHeNymqmupFg0gKwWPnwYg=;
        b=k6ddA0kZy2PnnO+eInoSw6Q792k+VRdA46a43rlYFVfP2msLWDKEwr5eJKg9FRV9rM
         hjTjLdpJQKyHkrMCzmac9cBy81b35w/aN0F2aZfBRBbY9v9SGZeqyJ/ij4aQQOcic02u
         RO6js+4+EsBhIJszCHk3GtJ0ekpzGQnBNpEgKYY1yISXzTs/z1UPurfa+zut66oHN7/c
         FKLFZqIYrJsDBjknazc9Nq6WlJUnw72u9da5QCcMizNADQUey0xS7wQyuwKi0YjP92VU
         d5uMIF7l+5PoSBA6TrlneGdjDyN9b3i5GeYxCJUX/YEv6GG6kRBiJyRAqafK/53dnnGL
         SHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xrfoslv7AaDIIfdPVT2VtUHeNymqmupFg0gKwWPnwYg=;
        b=FaXVkbggkZtu+Dx1HHGDEnH6d7YHAAJ2Cj2n1FUtgMZiXUHx31Fg215VyYu0cw3oaM
         dzWcSNQN/Z/qO53qX5Gi3EOG8J42TqEIwjrhbUAnC0G1aZD4/6ccH69UbZLv2dMti3JE
         otU3Pppyu3f4HSiDcXm5IibjsbRutZjvTicp/w1+1868aObmX+5/vq5v0lMQyUPN7OpF
         fSbT4DwYOItlA624cOBmRJaFmQIUvi8dIZoFUq69MDQPH2KCim6oldJgj232YSdozfgk
         iDECSMdUedpJd8rliFt8xzjzNSVl7b8CV3EA3+Wo4/WjHGY6FSqdkFIK/CXmI4jLEV0H
         b49Q==
X-Gm-Message-State: APjAAAXTpFZgzyhf7JiJhr6jCkORlEeFTvY/G1gSjnNL0VkOzqgc0itu
        x8L5zu05oPyaEU3v6edJogYJ1xpZFmsmqgP+Pis=
X-Google-Smtp-Source: APXvYqzy49TSPdqiKtgVuS2Fu5PMDVjkUz2RTttBXfqC4h1kI4oDa3RJ/ySn8/GEHvAa/khCPciWjGYQYPJT/rmSXRY=
X-Received: by 2002:a5d:87da:: with SMTP id q26mr110715205ios.193.1564672985236;
 Thu, 01 Aug 2019 08:23:05 -0700 (PDT)
MIME-Version: 1.0
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com> <20190709200837.GA7806@bogus>
In-Reply-To: <20190709200837.GA7806@bogus>
From:   Han Xu <xhnjupt@gmail.com>
Date:   Thu, 1 Aug 2019 10:22:54 -0500
Message-ID: <CA+EcR23hhD2=abMtNGDoW1LtXSE4qfjTy1uzU7sgrbi7W=KSbw@mail.gmail.com>
Subject: Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string to bindings
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
> On Wed, 19 Jun 2019 16:41:53 +0530, Ashish Kumar wrote:
> > There are 2 version of QSPI-IP, according to which controller registers sets
> > can be big endian or little endian.There are some other minor changes like
> > RX fifo depth etc.
> >
> > The big endian version uses driver compatible "fsl,ls1021a-qspi" and
> > little endian version uses driver compatible "fsl,ls2080a-qspi"
> >
> > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > ---
> > v3:
> > Rebase to top
> > v2:
> > Convert to patch series and rebasing done on top of tree
> >
> >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Acked-by: Han Xu <han.xu@nxp.com>

>
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/
