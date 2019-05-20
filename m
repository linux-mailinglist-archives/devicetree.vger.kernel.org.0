Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0E432445A
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 01:29:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726575AbfETX3a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 19:29:30 -0400
Received: from mail-vs1-f66.google.com ([209.85.217.66]:43770 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726370AbfETX33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 19:29:29 -0400
Received: by mail-vs1-f66.google.com with SMTP id d128so10014619vsc.10
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 16:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=CQeZYzD9s3oOBXBqpcz3upzW+HnTQAvaSuAunctoyUw=;
        b=LKTBBoJnF7WkULGQxYRtktRyp16+r2Gr0GC86jOnsS5RT3Wx9ZuGBDEItu79R4p99p
         vAFX/U3chWHezKYIkoxL/MVdaASdEIItymbmrFUUVIacAs0Lnbhz+9Jj3d0vRx0zoZLH
         gTG72w3rwFRZVgtpgcRRnnrJYF5tIVag+zGCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=CQeZYzD9s3oOBXBqpcz3upzW+HnTQAvaSuAunctoyUw=;
        b=QHeh3YQsix4pKnv1PoGKltbg850QqMvolI4SiZW+j935adWITuKxj4WFxHrbD896gk
         xfhU7AIrwNWVFw+WLE+mgkxK0U2LpWoGurkhkGAmc/323fwaiAPOwXs2IgPKKh5xLZFR
         BsLs9X+XudRVikc0a05+LjxHrMLFJww8GsPkQTKGRe1tJldUVoWgDQbjNedF1/ndHXcw
         NVe7L6w1/BLsEPs6buTAtG9ebxTqGdh4e4r4z60ZxQuc++wcHCpYm0QmvLgqWlDFWNxh
         2hOjBVLSmWkXBf4bm4wC1TBj0Q3WG4XTwUomkTm+KcR7HnkCayRXmWWmRjPrLT164l/l
         7e4g==
X-Gm-Message-State: APjAAAXPPaCPSE15pqwD/jom9qObfN0yjqn7dWy3Nb6Z6PqL+KT/n96N
        2koI2Pc8eBnPoPAh4vkCxAiEsZGnF+k=
X-Google-Smtp-Source: APXvYqzrZEbDsMvbK2d5oexIQ2XADZcaoiT7kSYfs24yWJMj9lq2UqIQZ9fkCufQNOrlFwrPySBXVw==
X-Received: by 2002:a05:6102:f:: with SMTP id j15mr7144987vsp.42.1558394968527;
        Mon, 20 May 2019 16:29:28 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id l31sm686614uae.15.2019.05.20.16.29.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 May 2019 16:29:27 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id q64so10037227vsd.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 16:29:27 -0700 (PDT)
X-Received: by 2002:a67:ebd6:: with SMTP id y22mr22498929vso.87.1558394966905;
 Mon, 20 May 2019 16:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org> <20190520220051.54847-3-mka@chromium.org>
In-Reply-To: <20190520220051.54847-3-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 20 May 2019 16:29:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WOpBWapjiz7zq-X7JUG3AaZOcN3Q-Z5XG9md4ZvMCtBw@mail.gmail.com>
Message-ID: <CAD=FV=WOpBWapjiz7zq-X7JUG3AaZOcN3Q-Z5XG9md4ZvMCtBw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: Configure the GPU thermal zone
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

On Mon, May 20, 2019 at 3:01 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> mickey crams a lot of hardware into a tiny package, which requires
> more aggressive thermal throttling than for devices with a larger
> footprint. Configure the GPU thermal zone to throttle the GPU
> progressively at temperatures >=3D 60=C2=B0C. Heat dissipated by the
> CPUs also affects the GPU temperature, hence we cap the CPU
> frequency to 1.4 GHz for temperatures above 65=C2=B0C. Further throttling
> of the CPUs may be performed by the CPU thermal zone.
>
> The configuration matches that of the downstream Chrome OS 3.14
> kernel, the 'official' kernel for mickey.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - specify all CPUs as cooling devices
> - s/downstram/downstream/ in commit message
>
> Note: this patch depends on "ARM: dts: rockchip: Add #cooling-cells
> entry for rk3288 GPU" (https://lore.kernel.org/patchwork/patch/1075005/)
> ---
>  arch/arm/boot/dts/rk3288-veyron-mickey.dts | 67 ++++++++++++++++++++++
>  1 file changed, 67 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
