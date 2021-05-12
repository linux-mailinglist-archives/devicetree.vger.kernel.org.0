Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 875A237CD81
	for <lists+devicetree@lfdr.de>; Wed, 12 May 2021 19:14:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233043AbhELQzv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 12:55:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236566AbhELQME (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 12:12:04 -0400
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9818C0610E6
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 08:50:32 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id u33so343816qvf.9
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 08:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=lUNZPIvUpUF22GN5HWhSK1rgVPittay1FdfmyU3qBis=;
        b=eNHinH3Lowl5TPC4qzBSoPxoX/gKqjEPywzf7TT5e+BrQATO37VG3Y0VkR8+l6xCIx
         z7b9RVrTWPtyjqGdGlzIqGZhQCtj5s5mbfmFfg2B1aQJRU0YGWpsglyGrBCkdp1HAsmg
         Vw8u/JZMDNenOo0Y1QlWc+iHA3Ekihxi0JYZowvMgscNMV8UzWhyFcaCPi4gH6m4IDQ1
         NRpe2ULsORnUome5DaDnwiSiDbGnKkwKbEeHN0cOLDe69d4x2ITvJmL8RHilEyN1PTto
         nAs/I1FE3BUsXuTWphyVnOKc+YO4jv1Bw0veBcHO3aOEa6j03FmeBtPe2Rd8ePrTN3Ys
         01OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=lUNZPIvUpUF22GN5HWhSK1rgVPittay1FdfmyU3qBis=;
        b=N4ic73E+/icW4lN23TE3Yh4MemZSmZzRBD1V2YDbm7rGtjv4kLqlzu0B+zA9ucrfxH
         Gsdd17boI9bD6FMTsaZOAOaBNHUEYZUctIlSP3W87tnQuNgNUGnNYgt5jorxlI+zLH0h
         ij+U6H/VAWf489riCpnecZMIww7E3YxNCgEFR+Xp4FpzKM5lF3DIsTGK3dYFy2gWzOUq
         lBZsQlDKUQcITS6PNeAdK/4QUxsZlbQo/1Z12KoWRvwhgUpZJ2U1orC8iPMUMpz8XNS3
         ixqKzDQql08VPmHAdiix8XfcMvJPoUBq4WY05qQWhRD215Aya25UIyltATvbkSmQTBig
         jfbw==
X-Gm-Message-State: AOAM530+E8gJvkgd09bDxN3smkDzoDI5stxalWBvmypSNnFVh2amN38y
        J3tVxFcW4kS1vlWX8xL4norgfBnEBHoBwcHHdpu02qbZKN4hWQ==
X-Google-Smtp-Source: ABdhPJz6I3XQOp+zixZ7kGGsPE2zOHfne5RsDQ+wRfzC9asD+rAhS7zspcx9Gw5yOVuvTqVd8JrQY59x/0A4Nigu9LA=
X-Received: by 2002:a0c:e3d4:: with SMTP id e20mr36129254qvl.10.1620834631926;
 Wed, 12 May 2021 08:50:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210322003915.3199775-1-mw@semihalf.com> <YFiKHu3hlAk+joOn@lunn.ch>
In-Reply-To: <YFiKHu3hlAk+joOn@lunn.ch>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Wed, 12 May 2021 17:50:19 +0200
Message-ID: <CAPv3WKdf5aX2W77N_-FBM5hugYW-ME1DvkjNuCUrcU8FG2XENg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: ensure backward compatibility of the AP807 Xenon
To:     =?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>
Cc:     linux-arm-kernel@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Gregory,

pon., 22 mar 2021 o 13:14 Andrew Lunn <andrew@lunn.ch> napisa=C5=82(a):
>
> On Mon, Mar 22, 2021 at 01:39:15AM +0100, Marcin Wojtas wrote:
> > A recent switch to a dedicated AP807 compatible string for the Xenon
> > SD/MMC controller result in the driver not being probed when
> > using updated device tree with the older kernel revisions.
> > It may also be problematic for other OSs/firmware that use
> > Linux device tree sources as a reference. Resolve the problem
> > with backward compatibility by restoring a previous compatible
> > string as secondary one.
> >
> > Signed-off-by: Marcin Wojtas <mw@semihalf.com>
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>

Do you have any feedback about this patch? I just noticed it's not
merged in v5.13-rc1, it would be great to have it in the next release
though.

Best regards,
Marcin
