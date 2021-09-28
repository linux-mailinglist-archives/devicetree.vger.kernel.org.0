Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DD1B41B376
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 18:03:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241600AbhI1QEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 12:04:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241748AbhI1QEp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 12:04:45 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77F41C06161C
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:03:05 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id x2so23927856ilm.2
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HH09lUa+7qN1sYezPxRWaJBxZPYFuimbbtUWFtN4us8=;
        b=K6hclX3gk+EEFG3tbRp+TEhpJaNfPLHUT5zMP/me4eBptchCIlH9ZzqnibDvZvkDka
         4z7rg6Kjb47gDXQBygug8cvjpju2Ppuu4cFmVOo//9EsBP/+Ei+tozcD0N7nWzEKXII1
         1bcmcl9I1MUDZdiAiBb15ld/Z5kSyxJdVQTz+l10tW5BgpnwFzVaNod5AKQqVtBzRTfp
         d7zm1vafM9IMYIhHarxQdIL6khvQY1JKxgIpS1KDv1r5pgkhEGGc1C/7QQm2xCfkFY4B
         mJwzzD8l2KheXSy+CvEt6B0l3Qix7Hbr7GhLdwnWvHRBgCNjnXP8+NF253EQ+l7o0y72
         jFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HH09lUa+7qN1sYezPxRWaJBxZPYFuimbbtUWFtN4us8=;
        b=emY2otfukEpVJwR5MlegsMSLgRCs83dFDldJ+PqMyEPw6b4LY37ZnudW+9zZwM/Ue1
         TKvKwIRanhiv21E8bpjABYcgBshgpJvlwYou+D9qF7+W6BB35M4LyCg1wi+PRZtFcC1P
         x5N0ykhy3ay38tpwHor5qfw2kWDTDRfpRS0o4LfTVztkav+6Cwd2cdgEPnbjIx+LME6F
         aRDfAQAnJBe4I0t3vxou7O9UOoxTrkEH7n957gFc7Q3sZjEkTZeOkkYnfvBPhxXDosee
         MGfLV4W4vD6V4eHjTM5CfYt9JqumNty9S2dg6eL76c8OyfeXP7Gjw0VRf5hFYJ9gm0nz
         SJhA==
X-Gm-Message-State: AOAM532i1sj6R5bJXf2kdPazWq0NZziH66ntRQSOKNyydS88E5NG4HBY
        5n5iINgo4lYz9w7aGJvcWEME4He+oOyQ+kuRIeAB5BAyoSs=
X-Google-Smtp-Source: ABdhPJyH8hUx2p+EEf65T6N6lduFBQ4l8PLfDZKFT1VhuWe2kzjudCVA+TsEZRvuVTlF4gpRQwMQ2G4/F/fqX9YNXdw=
X-Received: by 2002:a05:6e02:1b88:: with SMTP id h8mr4927872ili.40.1632844984977;
 Tue, 28 Sep 2021 09:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210927154159.2168500-1-robert.marko@sartura.hr>
 <20210927154159.2168500-4-robert.marko@sartura.hr> <20210928153731.7we6p7mclil2e5j2@pali>
In-Reply-To: <20210928153731.7we6p7mclil2e5j2@pali>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Tue, 28 Sep 2021 18:02:54 +0200
Message-ID: <CA+HBbNH61aAQ=ad3cRVHBvDqdTa2p85Lc62SLjOELRK3BJRnsw@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: marvell: espressobin-ultra: enable front
 USB3 port
To:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc:     Andrew Lunn <andrew@lunn.ch>, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 28, 2021 at 5:37 PM Pali Roh=C3=A1r <pali@kernel.org> wrote:
>
> On Monday 27 September 2021 17:41:59 Robert Marko wrote:
> > Espressobin Ultra has a front panel USB3.0 Type-A port which works
> > just fine so enable it.
> > I dont see a reason why it was disabled in the first place anyway.
>
> If USB 3.0 port is was tested and is working fine, then what about
> adding Fixes: tag into commit message?

Sure, gotta send a v4 anyway dropping the first patch.

Regards,
Robert
>
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.=
dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> > index 96855a10b4a0..aada43fa236c 100644
> > --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> > +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> > @@ -112,7 +112,6 @@ rtc@51 {
> >
> >  &usb3 {
> >       usb-phy =3D <&usb3_phy>;
> > -     status =3D "disabled";
> >  };
> >
> >  &mdio {
> > --
> > 2.31.1
> >



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
