Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDA9C2F48E8
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 11:46:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727052AbhAMKoM convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 13 Jan 2021 05:44:12 -0500
Received: from mail-lj1-f173.google.com ([209.85.208.173]:39597 "EHLO
        mail-lj1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725681AbhAMKoM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 05:44:12 -0500
Received: by mail-lj1-f173.google.com with SMTP id b10so1982489ljp.6
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 02:43:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=tgP/px9dEMduUnVn7Ii7SHYctPo6qFWBGOF3w2zM/rE=;
        b=M+vX9SD+lGIxNCtYjN5/35gQB1aPzTfygxiTt16ypqOKfn3zAYK8GyY9LmXcMZknlx
         pNMpfQ7JhWv0DizOCYdncF7NhLT6PLXdUiz4gku10aCAIIeZstjXuY1UmMAsugN55VDF
         TWjjVBonlJu8EcqcBOCydPGVyXp8WRZk8jTycQYhrKIfG5WhFAiuJyF50iWbBHJn7v1V
         ofW/fVMZgg9DUN+PocOCacld7zNkdA4LqZr1+2r0TeBgCba5Ii6/j7rjBqbZEBpVyiob
         0xXI+WpWVzvTeV+aAXAUF2r9oyOY4YnqPdTQ/jghnN+5pmFKwgbCgF0gWHwkLgu4eC8X
         GcWw==
X-Gm-Message-State: AOAM531hkNETVbXL6OiyNOpokR+y5HM0bwrWcUzKvvE1CFzc5FbOP1Ha
        Iur4P1nPAjBhECeGSP38KLwKA1hnEjaenw==
X-Google-Smtp-Source: ABdhPJz2r77/efrKIU8StLx4VlsOjIL4Hrg4L5RtZRNM54+r7fbzz6b45ucE7hCaYs/ma6mQ18QaWA==
X-Received: by 2002:a05:651c:2da:: with SMTP id f26mr690665ljo.252.1610534609682;
        Wed, 13 Jan 2021 02:43:29 -0800 (PST)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com. [209.85.167.52])
        by smtp.gmail.com with ESMTPSA id h23sm145164ljh.115.2021.01.13.02.43.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 02:43:29 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id b26so2035084lff.9
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 02:43:29 -0800 (PST)
X-Received: by 2002:a19:810:: with SMTP id 16mr619252lfi.233.1610534609099;
 Wed, 13 Jan 2021 02:43:29 -0800 (PST)
MIME-Version: 1.0
References: <20210106150525.15403-1-andre.przywara@arm.com>
 <20210106150525.15403-2-andre.przywara@arm.com> <CAGb2v66V6=jeLuLCvOENhuwXfPAMd1nYcMor3K7FToHT9grTTA@mail.gmail.com>
 <e85c945a-f6b2-6c78-b577-f3705535ac22@arm.com>
In-Reply-To: <e85c945a-f6b2-6c78-b577-f3705535ac22@arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Wed, 13 Jan 2021 18:43:16 +0800
X-Gmail-Original-Message-ID: <CAGb2v64oQfv8D=EetS8Ayt-NF3AcynGmkamLy5+16xOLUDoqgA@mail.gmail.com>
Message-ID: <CAGb2v64oQfv8D=EetS8Ayt-NF3AcynGmkamLy5+16xOLUDoqgA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/7] arm64: dts: allwinner: H6/A64: properly
 connect USB PHY to port 0
To:     =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
Cc:     Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 6:30 PM André Przywara <andre.przywara@arm.com> wrote:
>
> On 06/01/2021 15:56, Chen-Yu Tsai wrote:
> > Hi,
> >
> > On Wed, Jan 6, 2021 at 11:05 PM Andre Przywara <andre.przywara@arm.com> wrote:
> >>
> >> In recent Allwinner SoCs the first USB host controller (HCI0) shares
> >> the first PHY with the MUSB controller. Probably to make this sharing
> >> work, we were avoiding to declare this in the DT. This has two
> >> shortcomings:
> >> - U-Boot (which uses the same .dts) cannot use this port in host mode
> >>   without a PHY linked, so we were loosing one USB port there.
> >> - It requires the MUSB driver to be enabled and loaded, although we
> >>   don't actually use it.
> >>
> >> To avoid those issues, let's add this PHY link to the A64 and H6 .dtsi
> >> files. After all PHY port 0 *is* connected to HCI0, so we should describe
> >> it as this. Remove the part from the boards which were already doing
> >> that.
> >>
> >> This makes it work in U-Boot, also improves compatiblity when no MUSB
> >> driver is loaded (for instance in distribution installers).
> >>
> >> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> >> ---
> >>  arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 4 ----
> >>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi         | 4 ++++
> >>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi          | 4 ++++
> >
> > It would be better if the H6 parts were separated out.
>
> Sure.
>
> >
> > Please also add a fixes tag, which helps with backporting.
>
> The whole concept of DT backports raises some eyebrows here, but it's
> surely easy enough to do.

Well, whether people choose to backport is their decision. But providing
information used to decide whether to do so, and if yes, what else is
needed, is IMHO something the author can help with.

Likely backport scenarios are distribution kernels AFAICT.

ChenYu

> Thanks,
> Andre.
