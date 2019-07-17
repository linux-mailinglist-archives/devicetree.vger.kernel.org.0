Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B63886B837
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 10:31:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725980AbfGQIbF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 04:31:05 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:35575 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725799AbfGQIbE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 04:31:04 -0400
Received: by mail-qt1-f193.google.com with SMTP id d23so22486622qto.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2019 01:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pds/1gSMFiprMXZtpb+croEbMG/8G+VprC//ZL8i4YI=;
        b=VGbsQRn6U6kYb6plw41KT49QLVKXHxnDeDUq6x8R9ZcUzR1KO/HRfF9mLflrbKfhXl
         kC7+nMCwrTJ2J0fMWkJ6EdK+VY8VFHPjehYEPAJbRDI6Zza30WZk4fX72SFSNY7xdd0J
         ql1uHNn6WR+PHkfIP7X5ZPSIKUnsQ5Sx/wOmjczvRWE+6xJVHIp5sEDfJ+8mcToIuiBb
         HIkktiqqm0o/psr+iz0yxfugaTm17IZTqIJYjYuEvTgYiHWv1v1qQ1v6cW5jftkmAFbR
         nFxFoWVi0RHazXTbuXbBD6Nt9MwjcN/jC1SBVDIA2iIPKBypHN6p718EW+1oQx7/aqkm
         6Jpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pds/1gSMFiprMXZtpb+croEbMG/8G+VprC//ZL8i4YI=;
        b=gxt33DDe6W80CtABhb7EFLnirDvo4SZcmPuKFWIDG04/FkfxQqcPbnRO9N+5AKu2Up
         SWtGhJXYPJc9YClowGzNCo8XZAldpjsot7x2Ib3EXomsvJJVw50sOkT5NWH2PRSgp5Da
         KOkeURq8wGKpET9e+cgq/jCTkLDIyARUM0XezNKme6mp9eN98eZ94JnjiJthrigXBWpB
         gNoM4qb7wCDRk5lBNsT9smqTJ2EVcpaFbj7WC/95V5I2UEol4e4Jtfqy7f1Fzt82uUCM
         Fk0YZOn5lO9+7hhxE5NH4f9jgcJXzHMMxCs1yRwSpMveJbRVScXcOIMPeBBi+uZxleVD
         DqEw==
X-Gm-Message-State: APjAAAXIyjPNatsuxEdM3fSbFhcEMIWSv68VS77jNoC50l34LWDBLUOE
        Uu4a0yIzphB9eLYPbdEEg/QdtF8Fp2rxnJMFpWI=
X-Google-Smtp-Source: APXvYqzp1lAk9uOOUY5V4b8FesQOhje/rpMg+PEM7ePcouMUEG9v/kRzcloJROLhQKhkpWkkIWQD+eAP4dyPGnHcwIc=
X-Received: by 2002:a0c:8695:: with SMTP id 21mr28008087qvf.166.1563352264156;
 Wed, 17 Jul 2019 01:31:04 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-7-git-send-email-aisheng.dong@nxp.com> <CAOMZO5CdBhJmdbavfWzpx0YPhAXgQvA+ik3GMz0e5U1j6ytyHg@mail.gmail.com>
In-Reply-To: <CAOMZO5CdBhJmdbavfWzpx0YPhAXgQvA+ik3GMz0e5U1j6ytyHg@mail.gmail.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Wed, 17 Jul 2019 16:22:08 +0800
Message-ID: <CAA+hA=T29ek3B=s_aRS9Rk82cNHzx4-AD-TZh4T1_L1ja66rBw@mail.gmail.com>
Subject: Re: [PATCH v2 06/15] arm64: dts: imx8: add adma lpcg clocks
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 17, 2019 at 3:28 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> > +       uart0_lpcg: clock-controller@5a460000 {
> > +               reg = <0x5a460000 0x10000>;
> > +               #clock-cells = <1>;
> > +               clocks = <&clk IMX_ADMA_UART0_CLK>,
> > +                        <&dma_ipg_clk>;
>
> Putting the clocks into a single line helps readability, even if it is
> over 80 col.
>

Is this a new rule? I'm not aware of this requirement.
By looking at imx8mq.dts, it seems also have not followed that rule.
I'm a bit concern that it might be super long for other lpcgs with 5 clocks.
e.g. enet.

Regards
Aisheng

> > +               bit-offset = <0 16>;
> > +               clock-output-names = "uart0_lpcg_baud_clk",
> > +                                    "uart0_lpcg_ipg_clk";
>
> Same here.
