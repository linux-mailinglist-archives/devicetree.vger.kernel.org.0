Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C748B46ACDA
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 23:41:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376884AbhLFWok (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 17:44:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376296AbhLFWnz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 17:43:55 -0500
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C4C1C0698DC
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 14:39:54 -0800 (PST)
Received: by mail-qk1-x732.google.com with SMTP id t83so12787529qke.8
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 14:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0dlCpKXDdnB3LdPyRqxmoynTirH+zzLw2AsoXketLHY=;
        b=C8PGqD4WFo5043ppfpJ+22mFPpx9J4+FCsksvGJSjIZy2qGcm2LFrh5x3luh/dmrLL
         5x4P4YchSM3ngUe6Rp4BED3CuaAtHSnf/iDMApCbiNjTWy5buyfbGgP4BYcsCFxPwuCy
         nD+r0zOohf64uWGzNdI+hkmspQFiyRUeIZDPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0dlCpKXDdnB3LdPyRqxmoynTirH+zzLw2AsoXketLHY=;
        b=WSGMmgeIP5tHnWe8TRpD0b3FcKlgcRyyF4uuNgBDrU4JqsofX8jYqk+4Kxc60iJJfm
         BTsz0FmJRFiZ9CurpnvnLsId58g2LgkCT6LNRmCVPkBC7m5Cr7Q+/iVRV108Prcuq6NZ
         kz4BpwSS/KW7OWk5vd3jJS1ka2dLV4Fp69wCVcdryhj4ZCY17cI0dLuyEs12FehCj4M0
         9CRgiLlz+QmA6y5i41XQcJvWe4uET1miIDMiih6ZdwC3GZxFWG/FE/b+fvKX6TZoJAiy
         tom3WENcrgTjawuKAGJMUX/W8mc9opj3wGW0m+H+e9LvHC5yUskk6LKlF6VtUIHR9+qM
         44RA==
X-Gm-Message-State: AOAM5321WL15eVubYfe3ALpEAeO88jlTwfWT2f2CfgNmXwHFtp5tb5b9
        yJqtTjL69QR/R5VENMCwMwTEFtaIt+Fb/8OTvY4=
X-Google-Smtp-Source: ABdhPJyb002MRzrnUdhH9jS3C2gNvzDmA6eDyqdysvyoYDDESa1vOVbcFbpObTHjWxRlkJmOBPsnhAY36sZ2EyLoN44=
X-Received: by 2002:a05:620a:4081:: with SMTP id f1mr35618826qko.165.1638830393102;
 Mon, 06 Dec 2021 14:39:53 -0800 (PST)
MIME-Version: 1.0
References: <20211119120057.12118-1-a.kartashev@yadro.com> <20211119120057.12118-3-a.kartashev@yadro.com>
 <FA1B4FAF-387D-4D71-952A-D44B493FC67B@gmail.com> <368313b889cbadc267b053cd808b080e9f6470a0.camel@yadro.com>
In-Reply-To: <368313b889cbadc267b053cd808b080e9f6470a0.camel@yadro.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 6 Dec 2021 22:39:41 +0000
Message-ID: <CACPK8Xcpg+V7BB6vq8oqqu=g7FRoTLLmz7-4G5Cp=hn0ziEuyw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: aspeed: add device tree for YADRO VEGMAN BMC
To:     Andrei Kartashev <a.kartashev@yadro.com>
Cc:     Andrew Geissler <geissonator@gmail.com>,
        Andrew Jeffery <andrew@aj.id.au>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 20 Nov 2021 at 15:51, Andrei Kartashev <a.kartashev@yadro.com> wrot=
e:
>
> >
> > Can we utilize
> > https://github.com/openbmc/docs/blob/master/designs/device-tree-gpio-na=
ming.md
> >  to get some consistent naming across the GPIO=E2=80=99s on OpenBMC mac=
hines?
> >
>
> Some names here are standard for Intel daemons like x86-power-control,
> host-error-monitor, pfr-manager, IntrusionSensor and so on. Other lines
> just called same as in schematics to make it easy for our engineers to
> understand what does it refer to. BTW, most of the lines there not used
> by software and appeared just because dts files are supposed to be
> hardware description and thus we describe all we have in schematics.
>
> We can rename all this according to guide you mention, but are you
> sure, there is any sense to do so?
> Keep in mind, currently there are lot of dts files which also don't
> follow convention, so I believe, it is unnecessary work.

I have a strong preference for using the naming document. It provides
consistency, which makes it easier to review. I'm encouraging that for
any new dts.

If you think it makes the descriptions less useful for your platform
then that's a reasonable reason to not follow the convention.

Cheers,

Joel
