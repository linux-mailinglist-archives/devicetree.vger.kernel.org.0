Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 11D8424209
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 22:21:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725978AbfETUVs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 16:21:48 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:46501 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725763AbfETUVr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 16:21:47 -0400
Received: by mail-vs1-f68.google.com with SMTP id x8so5836012vsx.13
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 13:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+cwBfmNJOYYnLoNWnVRRnVYNxdiZh0AA2x8O10NbLoM=;
        b=UUk3ytbRvoMJoCb1BDVV+bhMWyNCfP4VAtjMhf1lzGoGdYLBnk+w1DzR1J257pctAl
         Z1sIhOH/IrWFoh7qnyLcIMvuCkh8fkDTGFrKquN9TP9ipVXj2ksMpQf/2h+xNxqCH3K2
         oiIVhVB2Wc5K/vc4KJ88h0vfB7fgjFsM3M9kY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+cwBfmNJOYYnLoNWnVRRnVYNxdiZh0AA2x8O10NbLoM=;
        b=SM2Zcd7lMQsmIL0WA4H3QoFCIN5q7vGezVjDT6t0JmTTMjpOPH2+fCnepR4X8jeiBl
         0a8EVtCQH/ZoQwaaAzSj84Wm0qG/mBLbMa8ekIwJZP42wEkN00Zlid6JOIJWIK8mEAGN
         kbWSmAYT6Cpdlw+3bqFGqOgnfzADlLWplxzbnY9UAHV3bBSxo5GVkwc3u1PL4kN9CjY0
         qVHdFdax7YwNERYtExUj1ehl2SmjbavHB9bHcJfZnKI7ISRsONP51bCJnONpXJF18hJe
         xULKom6KuJ/NB83wY9Fklii2S0Sx/Oho5NDYI2pt4Sbr5E5o2JZhSw4OzsSm7/V325Ko
         e/2g==
X-Gm-Message-State: APjAAAVU9leKQYqFzhHVSD3j3MzIhZvnxNeeLHkH4aExlXHaSv1ygbXP
        vJPVz4tjYOwdonBfUrScNMyDGuH2cag=
X-Google-Smtp-Source: APXvYqznW5O4wXhJ5pX2N3t1Zjkgfat0L1/6NFq6/9JOsDne+jl1+Z9IY113AVIbspgZcGeaOCoJDQ==
X-Received: by 2002:a67:edc8:: with SMTP id e8mr37629686vsp.190.1558383706476;
        Mon, 20 May 2019 13:21:46 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id l22sm5175204vkl.2.2019.05.20.13.21.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 May 2019 13:21:45 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id g187so9745881vsc.8
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 13:21:45 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr31790963vsk.149.1558383705071;
 Mon, 20 May 2019 13:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190520170132.91571-1-mka@chromium.org> <20190520170132.91571-2-mka@chromium.org>
In-Reply-To: <20190520170132.91571-2-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 20 May 2019 13:21:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
Message-ID: <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure the GPU thermal zone
 for mickey
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

On Mon, May 20, 2019 at 10:01 AM Matthias Kaehlcke <mka@chromium.org> wrote=
:
>
> mickey crams a lot of hardware into a tiny package, which requires
> more aggressive thermal throttling than for devices with a larger
> footprint. Configure the GPU thermal zone to throttle the GPU
> progressively at temperatures >=3D 60=C2=B0C. Heat dissipated by the
> CPUs also affects the GPU temperature, hence we cap the CPU
> frequency to 1.4 GHz for temperatures above 65=C2=B0C. Further throttling
> of the CPUs may be performed by the CPU thermal zone.
>
> The configuration matches that of the downstram Chrome OS 3.14

s/downstram/downstream


> +       cooling-maps {
> +               /* After 1st level throttle the GPU down to as low as 400=
 MHz */
> +               gpu_warmish_limit_gpu {
> +                       trip =3D <&gpu_alert_warmish>;
> +                       cooling-device =3D <&gpu THERMAL_NO_LIMIT 1>;

As per my comment in patch #1, you are probably ending up throttling
to 500 MHz, not 400 MHz.  Below will all have similar problems unless
we actually delete the 500 MHz operating point.


> +               };
> +
> +               /*
> +                * Slightly after we throttle the GPU, we'll also make su=
re that
> +                * the CPU can't go faster than 1.4 GHz.  Note that we wo=
n't
> +                * throttle the CPU lower than 1.4 GHz due to GPU heat--w=
e'll
> +                * let the CPU do the rest itself.
> +                */
> +               gpu_warm_limit_cpu {
> +                       trip =3D <&gpu_alert_warm>;
> +                       cooling-device =3D <&cpu0 4 4>;

Shouldn't you list cpu1, cpu2, and cpu3 too?  That'd match what
upstream did elsewhere in this file?
