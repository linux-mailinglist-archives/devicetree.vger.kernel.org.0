Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C7C024453
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 01:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726703AbfETX00 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 19:26:26 -0400
Received: from mail-vk1-f193.google.com ([209.85.221.193]:44089 "EHLO
        mail-vk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726584AbfETX0Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 19:26:25 -0400
Received: by mail-vk1-f193.google.com with SMTP id j4so4324681vke.11
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 16:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=v15ImxXPR82zUC1L9RntmNVljNfZ+KHeuqCJcdfthSU=;
        b=XldTkhejOHyY3VTVRV+hQCD0Mji5ZKkA81D54mqtww+D8rxW79ml/7uspfRba3bqbT
         O+/vJy6pNTe+sH5I3xUvVEIqt8GLD7yg6qfiixUrO0gR+1BEv+40KGwQEAOi6aaqEp6k
         fxsJozVSlGGmyVy+f4DJYp0UhgWTsBh/IBwG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=v15ImxXPR82zUC1L9RntmNVljNfZ+KHeuqCJcdfthSU=;
        b=ezq1eOj6udq0UbrIcpOcYuk5roAKbHw7JZ9jIzUuPJhpBzsRQ9r/Ze2FU+2h33o83d
         /BbKJWXX5mx0FPGDj7AEc811wAen9CaLub3Bs4sdydmS8+dn98CPE7F/kkhnLPH+AjzO
         22quWcfR/La09z5ubz5o7UYECjgahctJmberGpvjF1WlY+KjtPj/LHXySKZjt3ydJ9Aa
         192TezKPWLMk7F/fJhI8G1k/TaoEAPThoJyIHFcK4GpKZRF6osgDj3Q4WOyA9E9zVdhf
         LWUJR1yapicILjI3JIzN7vZXz2HQ0QC1OUblaZ2C+mLC35OhR+/Mv5ZlPKqL9pokjJD6
         o7jA==
X-Gm-Message-State: APjAAAW/cRI8z0TgJNV2ar5nBO7kUj20o+G7atxBij0y0JBIYWYTOB0o
        rSzrVRHdHG41WKHngBwHittg3MBEd2k=
X-Google-Smtp-Source: APXvYqxuwGu1nnyVOJLCAoVarH74IyFmguAzCHwkryaFAiTnKtZPQ8dt9qpZ9IbXt8/5429BAASuaw==
X-Received: by 2002:a1f:b301:: with SMTP id c1mr10324538vkf.7.1558394784551;
        Mon, 20 May 2019 16:26:24 -0700 (PDT)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id o66sm6853740vke.17.2019.05.20.16.26.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 May 2019 16:26:24 -0700 (PDT)
Received: by mail-ua1-f44.google.com with SMTP id a95so5913174uaa.13
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 16:26:23 -0700 (PDT)
X-Received: by 2002:ab0:4a97:: with SMTP id s23mr1167110uae.19.1558394783438;
 Mon, 20 May 2019 16:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org> <20190520220051.54847-2-mka@chromium.org>
In-Reply-To: <20190520220051.54847-2-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 20 May 2019 16:26:10 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UfVwGbraO91Rq2vKA5-H1uZhMPeoE4h+qWH39f0DqnXA@mail.gmail.com>
Message-ID: <CAD=FV=UfVwGbraO91Rq2vKA5-H1uZhMPeoE4h+qWH39f0DqnXA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: Use the GPU to cool CPU
 thermal zone of veyron mickey
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
> On rk3288 the CPU and GPU temperatures are correlated. Limit the GPU
> frequency on veyron mickey to 400 MHz for CPU temperatures >=3D 65=C2=B0C
> and to 300 MHz for CPU temperatures >=3D 85=C2=B0C.
>
> This matches the configuration of the downstream Chrome OS 3.14 kernel,
> the 'official' kernel for mickey.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - added 'cpu_warm_limit_gpu' to throttle GPU for T.cpu >=3D 65=C2=B0C
> - removed comment saying that GPU isn't throttled beyond 400 MHz
>   based on CPU temperature
> - updated commit message
>
> Note: this patch depends on "ARM: dts: rockchip: Add #cooling-cells
> entry for rk3288 GPU" (https://lore.kernel.org/patchwork/patch/1075005/)
> ---
>  arch/arm/boot/dts/rk3288-veyron-mickey.dts | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
