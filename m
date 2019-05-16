Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EB3AC20D87
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 18:58:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726545AbfEPQ6N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 12:58:13 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:33348 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726449AbfEPQ6M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 12:58:12 -0400
Received: by mail-vs1-f65.google.com with SMTP id y6so2808149vsb.0
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GQWLFHbMxy0K35NUOa8JBzz6IPOsbH5VHwjdAfW9zU0=;
        b=egW17PcXO0BjCt7HxJYjB66FokiITWMqtp0008EeL5GbbhpQKonq2gHOFHRGrZ0me5
         TihY4jgy1laPIDXVBzdJoZ0YexQhL6W55jcDyEERvFOMCdfrqTI14wa/uBSkoCgEekSx
         1nR/Oufvd/pGx1D8omffLmUof28M5fDBbkk5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GQWLFHbMxy0K35NUOa8JBzz6IPOsbH5VHwjdAfW9zU0=;
        b=XI/CxiFmJSDKFg4136fW4h0w9Ph4peRz1hr1rqg7zugAqYcwNEsOE0qoKjkN5WneXq
         OGI2qllKmbM7L7IQ2CPlQwbtO9E0yplAXPZPvk1sZgauVWc2F3+smc1q6nPU5xy2a9cg
         sWqWxUdGO3LDPeZtv375VHTG/E51KlwHKNNuI8lNUZitc4qyt219M/I56Zu5ZrG/KXk8
         Cg0Ue0rPF6woiFiEmPQkGylxMIozXVIu3PDuRfSkrXN5l2DZ5V8ycYre9SrYkI40Gzoc
         PFuCvsjHPUIMdfi6xbk3mCyad/5yjCLIDXsnjFT5kyKNzJ9IegWCxfTkyLRB42Hbxem7
         xDJw==
X-Gm-Message-State: APjAAAXi5wuLbF6qhs06IPPmj+lPrUjOg9wYJMl+W2RXnJt2zcBl2NqE
        dYidMxLKp3qZIzp08VqnyQLA/JbwhXA=
X-Google-Smtp-Source: APXvYqwqswvRw6IjyqEWqeKEOB3yaO5piSIXHrPcR0xu52KUmcsLfcotRrM26JY+8UWvS4C5hRp7NA==
X-Received: by 2002:a67:f88f:: with SMTP id h15mr6117406vso.67.1558025891451;
        Thu, 16 May 2019 09:58:11 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 69sm6498002uas.0.2019.05.16.09.58.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 09:58:10 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id e2so2748835vsc.13
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 09:58:10 -0700 (PDT)
X-Received: by 2002:a67:b348:: with SMTP id b8mr16923750vsm.144.1558025889986;
 Thu, 16 May 2019 09:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190516162942.154823-1-mka@chromium.org> <20190516162942.154823-2-mka@chromium.org>
In-Reply-To: <20190516162942.154823-2-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 16 May 2019 09:57:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vqpiq4=pt=KnCW7Zpj9QF0v4STHu5s05PZ9G5AyHbX0w@mail.gmail.com>
Message-ID: <CAD=FV=Vqpiq4=pt=KnCW7Zpj9QF0v4STHu5s05PZ9G5AyHbX0w@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: raise GPU trip point
 temperatures for veyron
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

On Thu, May 16, 2019 at 9:29 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> The values match thorse used by the downstream Chrome OS 3.14
> kernel, the 'official' kernel for veyron devices. Keep the critical
> trip point for speedy at 90=C2=B0C as in the downstream configuration.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - also raise temperature of critical trip point
> - add entries at position in alphabetical order
> - added entry to keep critical trip point for speedy at 90=C2=B0C
> - updated commit message
> ---
>  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 4 ++++
>  arch/arm/boot/dts/rk3288-veyron.dtsi       | 8 ++++++++
>  2 files changed, 12 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
