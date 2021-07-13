Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 780263C6A35
	for <lists+devicetree@lfdr.de>; Tue, 13 Jul 2021 08:03:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232582AbhGMGGb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jul 2021 02:06:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229945AbhGMGGa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jul 2021 02:06:30 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22073C0613DD
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 23:03:41 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id p22so5627311pfh.8
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 23:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=FB5vlvnYYvrU21B0CO4PGpbTyzy5lXFnKOJGx4/Q5XE=;
        b=H4eCa4SvuHL/QWjRdLmS+gv2GALPuJmxIAHxiRqfZdnVu6of/q5Co0QFLNCiInuu1k
         LUirhDbKxTne3QHePIiEfmQ77whgezOlJ8Nwelh11uNtXr2Pk2A3x0jt0Ven/CSYeQqM
         Ds24EAskBKW8wcANZhwqsBkrWJIP9lcJiuGn/j6UdIDP7OottKITrU8q8dAiWSy74/+b
         eyTi2D5XOH5KY5XmzsmFnftZixqqDxFQOIT3DBwkEIXh4YcurcRGQqUOW8UAYiQJiEkt
         cPgfcyi/HFc+oVcbfXjAeOVL1z6mWhweZuNbrpiV2UizV88hZKSX+Xv4EWVho1gOBUj9
         EcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FB5vlvnYYvrU21B0CO4PGpbTyzy5lXFnKOJGx4/Q5XE=;
        b=jy5VhdrDs3Kzh5V4so5rGIDJ0mztXuusvfuTJDCKefssy/kudgF/0AIk6v6rjtiipl
         2KhH2mBr/gcS+mdISnAmPWCVcTkKO2668Nk6fgvhVUgAyAEtBnjmeCVzV3HHcsmdkU5a
         K3ihyfi+cvEQ43ydaCwXF4dKaiUVRn1xyYg6SIWCxDsUpL22gF7DDrkEDjuQKPYtVvAf
         EEBlztzNPUHgSA7mp7FLRTRcjO1ha5hMd+G0MkFP6Kzagb1658ZJiX6Pcm+gUIYGC2SG
         Hxj9hbJckKbfc3SKt/wcE7OYrIyODwtFdt1LAGKsFhl3NEsNX0VMgxF5pf/FsWcvO5Q9
         eIMw==
X-Gm-Message-State: AOAM531lJdqJ9gnGUlG1lhQmT1VQQkBQMGbE491y52q96qINYEbEI4AY
        oL3Hok4uLjEoLofvxOEt7HzTcNBqBCctlw==
X-Google-Smtp-Source: ABdhPJw2WQAbtFk5/oGiEfXgsdAIOhd7cw/6gmLcg2Wkdqol49gEbGfNEypCUC8rP0zYXi+GhAGHkQ==
X-Received: by 2002:aa7:8218:0:b029:316:88e:2a3a with SMTP id k24-20020aa782180000b0290316088e2a3amr2814735pfi.16.1626156220600;
        Mon, 12 Jul 2021 23:03:40 -0700 (PDT)
Received: from x1 ([174.127.163.79])
        by smtp.gmail.com with ESMTPSA id n6sm12039049pgb.60.2021.07.12.23.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jul 2021 23:03:39 -0700 (PDT)
Date:   Mon, 12 Jul 2021 23:03:38 -0700
From:   Drew Fustini <drew@beagleboard.org>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Michael Zhu <michael.zhu@starfivetech.com>,
        Wei Fu <tekkamanninja@gmail.com>,
        Jack Zhu <jack.zhu@starfivetech.com>,
        Leyfoon Tan <leyfoon.tan@starfivetech.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] dt-bindings: riscv: add starfive jh7100 bindings
Message-ID: <20210713060338.GA2992629@x1>
References: <20210709201603.2625664-1-drew@beagleboard.org>
 <CAMuHMdVBVAzy3cZtR1pOTNq3wTgGx+0_dvUXU118XfT+rCOSrw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdVBVAzy3cZtR1pOTNq3wTgGx+0_dvUXU118XfT+rCOSrw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 12, 2021 at 01:24:19PM +0200, Geert Uytterhoeven wrote:
> Hi Drew,
> 
> On Fri, Jul 9, 2021 at 10:17 PM Drew Fustini <drew@beagleboard.org> wrote:
> > Add DT binding documentation for the StarFive JH7100 Soc [1] and the
> > BeagleV Starlight JH7100 board [2].
> >
> > [1] https://github.com/starfive-tech/beaglev_doc
> > [2] https://github.com/beagleboard/beaglev-starlight
> >
> > Signed-off-by: Drew Fustini <drew@beagleboard.org>
> > ---
> > v3 changes:
> > - added revision number for the board and soc after question from Palmer
> 
> Thanks for the update!
> 
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
> > @@ -0,0 +1,27 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/riscv/starfive.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: StarFive SoC-based boards
> > +
> > +maintainers:
> > +  - Michael Zhu <michael.zhu@starfivetech.com>
> > +  - Drew Fustini <drew@beagleboard.org>
> > +
> > +description:
> > +  StarFive SoC-based boards
> > +
> > +properties:
> > +  $nodename:
> > +    const: '/'
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - const: beagle,beaglev-starlight-jh7100-r0
> > +          - const: starfive,jh7100-r0
> 
> While I can be convinced about the board revision number (probably you
> know better if there will be different board revisions that matter),
> I'm wondering if the revision number makes sense for the SoC part.
> Will there be a new revision of jh7100, or will the next revision
> be jh7110, which will use a different compatible value anyway?
> Is there an on-chip register that allows the kernel to find out the
> revision info? Might be better to use that with soc_device_register()
> and soc_device_match()

We do anticipate making additional BeagleV Starlight boards with the
JH7100 SoC and those new boards may need to have a different USB hub
chip due to sourcing. Thus it is possible that there will be a r1 board
in the future.

However, I think you are correct about the SoC. There won't be any new
revisions of the JH7100 SoC. All chips with that part number will have
the same design. There will eventually be JH7110 which is a different
design but I did not want to prematurely add a compatible for that.


Thanks,
Drew
