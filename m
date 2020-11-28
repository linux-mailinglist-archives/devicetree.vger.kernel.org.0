Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 466912C6E96
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 04:12:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726740AbgK1DK3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 22:10:29 -0500
Received: from mail.kernel.org ([198.145.29.99]:47182 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729330AbgK1DJo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 27 Nov 2020 22:09:44 -0500
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 46DA92222C;
        Sat, 28 Nov 2020 03:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1606532970;
        bh=cPu4TwUzOowxSFqCt8qJamGozmiKO+tKdN2mzbyV+LI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=hy8seXQ0Mub5kgP2OLAW57M/uz+XEMf3Fx9vJvt02cUHwsfJUJvdZOgDlXQ+xzLgS
         GcGf6VuaMXGIzMT9Q0/eDWJutySru+E4wfhCwr04qMLtIZ2wMLLF7Mn7N9HEH5LyGZ
         QLjXMqlFaimN52Fj+c8LW/v4oJle4L60JZ3fauyI=
Received: by mail-lf1-f53.google.com with SMTP id d8so9667699lfa.1;
        Fri, 27 Nov 2020 19:09:30 -0800 (PST)
X-Gm-Message-State: AOAM531sinpSMfaIc6c0LoNyN7iMewIaggkr/DwzWbmj5Xy67zDWZlcV
        loWlYKXzDb2kdnImQTFJ5QAD3WPlA8bboG+aPwY=
X-Google-Smtp-Source: ABdhPJypr8decYKcsICWgxmhbIwa30irmA/OPToF/E4Bk2yfko/MnTbLMpqILVyYXkdeeihJVd+qBzGNS5gkL3FlbeA=
X-Received: by 2002:a19:c354:: with SMTP id t81mr4864858lff.283.1606532968633;
 Fri, 27 Nov 2020 19:09:28 -0800 (PST)
MIME-Version: 1.0
References: <20201122003841.1957034-1-icenowy@aosc.io> <20201122004011.1957325-1-icenowy@aosc.io>
 <CAGb2v64f71Dv6cp4ObhMTyMELRNP6h524-cg4h07MNRhsz_MSA@mail.gmail.com> <4FF2364F-76AE-4181-88BB-02AB95424DD4@aosc.io>
In-Reply-To: <4FF2364F-76AE-4181-88BB-02AB95424DD4@aosc.io>
From:   Chen-Yu Tsai <wens@kernel.org>
Date:   Sat, 28 Nov 2020 11:09:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v65JA803yHVNS5=6-EAUFSN-cqoCetkJJ3kCDE7e89Tijw@mail.gmail.com>
Message-ID: <CAGb2v65JA803yHVNS5=6-EAUFSN-cqoCetkJJ3kCDE7e89Tijw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/3] ARM: dts: sun8i: v3s: enable EHCI/OHCI
 for Lichee Pi Zero
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Chen-Yu Tsai <wens@kernel.org>, Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        inux-kernel@vger.kernel.org,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 23, 2020 at 6:22 PM Icenowy Zheng <icenowy@aosc.io> wrote:
>
>
>
> =E4=BA=8E 2020=E5=B9=B411=E6=9C=8823=E6=97=A5 GMT+08:00 =E4=B8=8A=E5=8D=
=8811:37:43, Chen-Yu Tsai <wens@csie.org> =E5=86=99=E5=88=B0:
> >On Sun, Nov 22, 2020 at 8:40 AM Icenowy Zheng <icenowy@aosc.io> wrote:
> >>
> >> As the USB port on Lichee Pi Zero works in the OTG mode, enable the
> >> EHCI/OHCI controllers for it.
> >
> >You should probably mention that the host controllers work better
> >than the OTG controller in host mode. Otherwise this change lacks
> >justification for enabling two extra hardware blocks.
>
> Our PHY driver do not sense whether ?HCI is enabled or not, so
> for host to work it's necessary to be enabled, otherwise the phy
> driver will just route USB to unenabled ?HCI and fail.

So, this was never working in Linux to begin with? You should mention that.

Maybe a fixes tag is in order then.
