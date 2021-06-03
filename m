Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9726F39A0C2
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 14:24:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbhFCM0P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 08:26:15 -0400
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192]:50048 "EHLO
        egress-ip33a.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229747AbhFCM0O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 08:26:14 -0400
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72]) by mx-outbound11-191.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 03 Jun 2021 12:24:29 +0000
Received: by mail-wm1-f72.google.com with SMTP id n20-20020a05600c4f94b029017f371265feso3371907wmq.5
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 05:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+TA3AAERDSFxmcTo7IEUscozdp5ww0w8/FGUTDzlEJg=;
        b=cpBnzt7OLFAWZYfFj5LnsLm8Poffh+NdM1G+INc0UlNP2W6b74pD7XD50pNqZGjj/z
         pCnuxMSlZKuICBdt31kWMsKxIvWoPKtxN5SrSO3A/eS5FM9IkgSEtKozzU7MpsIoDB0P
         9ece5MZbARqoobwmig5WN7LwUNBb1iekyq4JM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+TA3AAERDSFxmcTo7IEUscozdp5ww0w8/FGUTDzlEJg=;
        b=OVyznNga3bsBYnVvmItBsOvEsXumhvPJTPGOfkxFYRrpsqj5UK6zRpzQXQGqT3nrUn
         KVwGhotYJ0UrZ+f+paLR1KZ1OGWTWjwzh+OoZZeHWdqN4hoEeP3FL8jr8VOctnLE6x2R
         OWELnw5NgwIWvg/mKAWbCcJYph2Dcs0RctZ+gbkPaSGAdbdAciSD+VzLgc6SIawAbVm8
         jVyosWTfJ+dpbmBNqurn9D6mnQsAH2CTOKBlG16lwW4W+mUqEZ3oQWBn/zIb+c/2C8KN
         0PVWUveayY6TQgXWw1dDAesGbB67ngAJcFgr/Y4LqGobcmEPRcGuezdMnaFkh/wLnq0I
         +LIw==
X-Gm-Message-State: AOAM532BByQvHgKIhvB9//l1imeokFNhT4rx2NDMABjhZlngqG2v7TcY
        akb293ftH/Gx3fXRJ78DpLR57JXFYZ+OOfVi8v7py/hDTPSt3Fp0b9VJllnK1dWV6X90hJoGjo3
        8+ukYz3KrM8kQWE2kPNOpoWB4lopd0cVExusEWUmfbBsrWZgouNw6br+leOGhK2kA0TvwFwhqaA
        ==
X-Received: by 2002:a1c:e915:: with SMTP id q21mr7690527wmc.110.1622723068673;
        Thu, 03 Jun 2021 05:24:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxlPVybzT5yn4C/UuLnwZ1C2mLOMu492hl97ID3ZbXCdEuCB0ZnkB5pLeQddv34wMtnVgZnrziARG77SgqX6AQ=
X-Received: by 2002:a1c:e915:: with SMTP id q21mr7690514wmc.110.1622723068493;
 Thu, 03 Jun 2021 05:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210602182237.12632-1-sinthu.raja@ti.com> <20210602182237.12632-2-sinthu.raja@ti.com>
 <1622665173.253924.3924523.nullmailer@robh.at.kernel.org>
In-Reply-To: <1622665173.253924.3924523.nullmailer@robh.at.kernel.org>
From:   Sinthu Raja M <sinthu.raja@mistralsolutions.com>
Date:   Thu, 3 Jun 2021 17:54:17 +0530
Message-ID: <CAEd-yTT+RTDKVntXbX9diBmjRc3Nun60swyDQQvcHHo5Z9RVeg@mail.gmail.com>
Subject: Re: [1/2] dt-bindings: arm: ti: Add bindings for J721E EAIK
To:     Rob Herring <robh@kernel.org>
Cc:     Amarnath MB <amarnath.mb@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tero Kristo <kristo@kernel.org>,
        Sinthu Raja <sinthu.raja@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Nishanth Menon <nm@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BESS-ID: 1622723069-303007-5551-90323-1
X-BESS-VER: 2019.1_20210527.1616
X-BESS-Apparent-Source-IP: 209.85.128.72
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.232683 [from 
        cloudscan11-229.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 3, 2021 at 1:49 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, 02 Jun 2021 23:52:36 +0530, Sinthu Raja wrote:
> > From: Sinthu Raja <sinthu.raja@ti.com>
> >
> > J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
> > for TI=E2=80=99s J721E SoC.
> > Add DT binding documentation for J721E EAIK
> >
> > Signed-off-by: Amarnath MB <amarnath.mb@ti.com>
> > Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> > ---
> >  Documentation/devicetree/bindings/arm/ti/k3.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/remo=
teproc/ti,k3-dsp-rproc.example.dt.yaml: /: compatible: 'oneOf' conditional =
failed, one must be fixed:
>         ['ti,j721e'] is too short
>         'ti,j721e' is not one of ['ti,am654-evm', 'siemens,iot2050-basic'=
, 'siemens,iot2050-advanced']
>         'ti,j721e' is not one of ['ti,j721e-eaik']
>         'ti,j7200' was expected
>         'ti,j721e' is not one of ['ti,am642-evm', 'ti,am642-sk']
>         From schema: /builds/robherring/linux-dt-review/Documentation/dev=
icetree/bindings/arm/ti/k3.yaml
>
> See https://linkprotect.cudasvc.com/url?a=3Dhttps%3a%2f%2fpatchwork.ozlab=
s.org%2fpatch%2f1486849&c=3DE,1,iIjO1U6FeYcns7IR90F8V0U--545Y71F5JY6Imzb3Pv=
TuPMht6sg0BpDbx7zvPe6hiInzXD-Jlt9L7harG-5n6pTJTnQ-haZhbukv25Bt-8NVFlY-Xcc9f=
R68g,,&typo=3D1
>
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
Hi Rob,
Thanks for your comment and valuable inputs. Earlier with the 'make
dt_binding_check', I didn't get the mentioned error. After installing
the yamllint and dt-schema update I am able to see the error(s).
Will fix and resubmit the patches.

Regards
Sinthu Raja
