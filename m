Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D34A31F9F8
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 20:30:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726475AbfEOSa2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 14:30:28 -0400
Received: from mail-ua1-f66.google.com ([209.85.222.66]:39014 "EHLO
        mail-ua1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726360AbfEOSa1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 14:30:27 -0400
Received: by mail-ua1-f66.google.com with SMTP id 79so241815uav.6
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 11:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=x1GsAM8bhdilQ74FwqzJHpjAIW1mRUZnatlHpEToBDY=;
        b=QxhYWoPZ+1PlCeInJqiH5EdtHpzqJylxhCJeEIF6Jo3c2n26Xg9zJvIAjyi21FRb1E
         shfVV0sjHTkIk+XT0LuVrMEHJjAIGk1WL7tVbohxb8T16rinc4xS01nUc4/e6KTE5MTA
         PeT9fUG9BtVkJC9XKXysA0q0GuB+i28ib1IbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=x1GsAM8bhdilQ74FwqzJHpjAIW1mRUZnatlHpEToBDY=;
        b=LFVGqPCzToydbwj7O2Erc39nWRgRyaX5oVW/34BSQIJ2Cu+SHNAPq/oIRkmywLbX9J
         33kDi6WOG6pOVd+ofEqG/i9WML+kJha7XymmqLE6DUqtt5iJxEiIyRMpjN8eoxcdbokx
         zpykvUX7o1UVHV/blkV5vSOePbEHrxquYtv3/g01K+1+SZSgAJJ35lyxt/TtxxoEMhcK
         PiKZkcW8iy64iDld0mumvop6OM1RNG3c5MV1rZyExSZ6Ir5CQ3+q8dc9Tan0OWzjT80q
         mIO/VbvS2elQfZD7jhg03LpS1zh1qGLUAu9x/l4/42NdlIylOZX+Z3tk2yofr7121c6u
         H8yQ==
X-Gm-Message-State: APjAAAXNKMD03HQ8GqkLNUumGsPQxvl+SJ+nXvUolc10E5Gqhd5T6AvT
        gOhJ5HN0Fk2Y72dO3CQ26n/LSFhlER0=
X-Google-Smtp-Source: APXvYqySuH36f/AeMhLa/iC3rVTCeDSGKC1umcV8wElsg5fHJHnDdr/eRsn1qIEhSkMxwopAJTN0Ug==
X-Received: by 2002:ab0:44a4:: with SMTP id n33mr20998637uan.17.1557945026263;
        Wed, 15 May 2019 11:30:26 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id x14sm7098501uae.16.2019.05.15.11.30.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2019 11:30:24 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id o5so591434vsq.4
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 11:30:24 -0700 (PDT)
X-Received: by 2002:a67:79ca:: with SMTP id u193mr20058967vsc.20.1557945024176;
 Wed, 15 May 2019 11:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190515153127.24626-1-mka@chromium.org> <20190515153127.24626-2-mka@chromium.org>
In-Reply-To: <20190515153127.24626-2-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 15 May 2019 11:30:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XgoG5hiT=vAhNtUF4iVj1-Lmj7S5tvk86ehxB1uUZyxw@mail.gmail.com>
Message-ID: <CAD=FV=XgoG5hiT=vAhNtUF4iVj1-Lmj7S5tvk86ehxB1uUZyxw@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: raise GPU trip point temperature for speedy
 to 80 degC
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 15, 2019 at 8:31 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> Raise the temperature of the GPU thermal trip point for speedy
> to 80=C2=B0C. This is the value used by the downstream Chrome OS 3.14
> kernel, the 'official' kernel for speedy.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/d=
ts/rk3288-veyron-speedy.dts
> index 2ac8748a3a0c..394a9648faee 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
> @@ -64,6 +64,10 @@
>         temperature =3D <70000>;
>  };
>
> +&gpu_alert0 {
> +       temperature =3D <80000>;
> +};
> +
>  &edp {

Similar comments to patch set #1 about sort ordering.

...I'll also notice that if we do end up setting the "critical" to 100
C for most of veyron then I guess we'll have to switch it back to 90 C
here for speedy to match downstream?  Maybe that's an argument for
doing it in this patchset so we don't forget?  I'm somewhat amazed
that downstream has only 10 C between "alert" and 'critical" for GPU
for speedy, but I guess it's OK?

-Doug
