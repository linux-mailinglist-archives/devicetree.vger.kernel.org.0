Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 53A5024442
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 01:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725941AbfETXYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 19:24:37 -0400
Received: from mail-ua1-f66.google.com ([209.85.222.66]:34606 "EHLO
        mail-ua1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726913AbfETXYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 19:24:37 -0400
Received: by mail-ua1-f66.google.com with SMTP id 7so555475uah.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 16:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZR/L7Hf828I4020IYpCxcxcft8SiYhAJProPc5vXrzU=;
        b=Wl9L0AJOEI10bssx6lat9jgrA3rPKbO8BogUuRNHLDN7Ve5zvOpZnNKVUMTpQBBSvA
         p/ROLEzSFq3wxGQ6g2TbkeeBcO4ve3Y+PyFFmeHbkUyvbi63Vy39FzWnFqQ/iYDf8s83
         1rVab5Txti5C4wfalrdFVBqPk8IPgB+yp/yHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZR/L7Hf828I4020IYpCxcxcft8SiYhAJProPc5vXrzU=;
        b=MWDeQ59IAemhJivWvHr6kxkOszod0zOWY0wybjimS3RbX5S+jzEtBsMOD6UfTsTOeX
         Cr9eglIx1fTT2NdfKBc8bb9jG9LJycocXtVQ5tGwmLWcOeowdt1A8Dzgel6aGfPuddsW
         NHTUxNgfldbGLe3fLBCURA2e2+hEzU3sRm6wa2uVkhpB8B5ca1gG48V01ukAQS8qYUNS
         nlYukNc0YxLEca9OGyHM+sl3XIGzD/pOtQAu/PhTj+j5GHcLJaR22jQTHnHUuXhdPpea
         /aKkXFb5Xk6XzqGApGrQsmS3+hzKwMPZ7dy2QsqJjv/HTioOd/xZFKY7ixXl1Rt0CRN+
         BkUg==
X-Gm-Message-State: APjAAAXEfgrBf+5QtBzPN52iO2ZF1kT2WvcFO7ZL8/e9HTkRiEA6rBHL
        AkfCwNZYgSwlMKUsJLU7RZXU3CUG6Ac=
X-Google-Smtp-Source: APXvYqymtmK6hXEl4FH6EvYQO4CpKSnB7ErQ0DgJl1i53u8kLP8J3bj+hBzXhqt7aclZy7XSbJsjYQ==
X-Received: by 2002:ab0:3058:: with SMTP id x24mr8769ual.95.1558394676161;
        Mon, 20 May 2019 16:24:36 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id w9sm3801132vkh.53.2019.05.20.16.24.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 May 2019 16:24:35 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id x8so6100939vsx.13
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 16:24:34 -0700 (PDT)
X-Received: by 2002:a67:f60b:: with SMTP id k11mr31398691vso.111.1558394674402;
 Mon, 20 May 2019 16:24:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org>
In-Reply-To: <20190520220051.54847-1-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 20 May 2019 16:24:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WxhL3FLYWvOoys3GOB68WVKinfgjTVK5byyzyTzVsyBw@mail.gmail.com>
Message-ID: <CAD=FV=WxhL3FLYWvOoys3GOB68WVKinfgjTVK5byyzyTzVsyBw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: disable GPU 500 MHz OPP for veyron
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, May 20, 2019 at 3:01 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The NPLL is the only safe way to generate 500 MHz for the GPU. The
> downstream Chrome OS 3.14 kernel ('official' kernel for veyron
> devices) re-purposes NPLL to HDMI and hence disables the OPP for
> the GPU (see https://crrev.com/c/1574579). Disable it here as well
> to keep in sync and avoid problems in case someone decides to
> re-purpose NPLL.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v2:
> - patch added to the series
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
