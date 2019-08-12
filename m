Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2F65F8A363
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 18:31:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726719AbfHLQbS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 12:31:18 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:51842 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725901AbfHLQbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 12:31:17 -0400
Received: by mail-wm1-f68.google.com with SMTP id 207so138129wma.1
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 09:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7j2F6czmvL1ihv3E7n7MMuOUAa5rNveJU7g593UBgYA=;
        b=xSTOh9h2HX4eRr/sFVEwfbnUvN24DujY5BIcNJrS8ivVAR6KMTWJ/ODWqQXBloN/jK
         z/XY2ixB+QMFtF0BLRbNSzSwRkyzcSXSXgWNBjcaF1mI9AaGtSexLw18VhF9X1SySAsY
         wynbSdt/jvTDFZkKTDx6B/u1LupR6bRzT5md+cGGgrkRNhvEbiHdHwhsbQ/ylF7TPebN
         gKiWtFddsM80lb1BkTKx++1N7O58a5UhkYM8AZjfqwnwm3Z/1SRF9fIkbeb5wrPkKy9W
         DkstxnclguamE68bROEp5JsalTxz2zlCJTDuRzy6UJF/bYrYmzf80dRMcooY8DeHBCPN
         bDGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7j2F6czmvL1ihv3E7n7MMuOUAa5rNveJU7g593UBgYA=;
        b=uVWXqikYgzsmH8/Yi0toMFpAdfC47LU22y/kbOloPKG9z2YX91XTjx1I++ugTyiWPD
         fKrCPWFTpTPA0839s577QeEhDLBs81YKh6grPpuUaHEOScwwPt5/9twtupzHQY8+edUC
         A4QirvTyd1EV1n7bq464oWwB+1K4waBgN7SwxQS41TtwyuuF5/GXxxXdDDQgyh3t9mKc
         IR0M0PWc7Jf/YmKXwrW2bOSoi098qcOngoh5yfNt02G7iYs7opj6EsoWjfZuu7O/wQh/
         /mlezPuowGjVXkHUD53XqzGtZK2c8TildUHz9qTzJrvehNw0rpKybZJGSRGl2akRgjFM
         B1BQ==
X-Gm-Message-State: APjAAAX3QCZhvbi4A2fRd8nvDCTcW/7iPMYvPJcY/+BcN27Ip9B9U1Vm
        0rr4FjrwEEkuqNS51QVa7K4vXdxYppySoSCABdlzCA==
X-Google-Smtp-Source: APXvYqyBPrcQ6sKCBQ9GudU9fmlJm1BzQW1oNBg6A7HHuE1qGnnV3Lr+F7PfdpqBa1bRHlFWSF9yk1iPYMGg2B6knOM=
X-Received: by 2002:a7b:c04f:: with SMTP id u15mr165779wmc.106.1565627476232;
 Mon, 12 Aug 2019 09:31:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190808085522.21950-1-narmstrong@baylibre.com> <20190808085522.21950-4-narmstrong@baylibre.com>
In-Reply-To: <20190808085522.21950-4-narmstrong@baylibre.com>
From:   Maxime Jourdan <mjourdan@baylibre.com>
Date:   Mon, 12 Aug 2019 18:31:05 +0200
Message-ID: <CAMO6naxDkpjLTaByYBhkgP6i1YE1F1ATBAp8gPuVjDy9DAUM7g@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] MAINTAINERS: Update with Amlogic DRM bindings
 converted as YAML
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 8, 2019 at 10:55 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The amlogic,meson-dw-hdmi.txt and amlogic,meson-vpu.txt has been
> converted to YAML schemas, update MAINTAINERS to match them again.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  MAINTAINERS | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6426db5198f0..c55c18531cd1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -5318,8 +5318,8 @@ L:        linux-amlogic@lists.infradead.org
>  W:     http://linux-meson.com/
>  S:     Supported
>  F:     drivers/gpu/drm/meson/
> -F:     Documentation/devicetree/bindings/display/amlogic,meson-vpu.txt
> -F:     Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.txt
> +F:     Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
> +F:     Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
>  F:     Documentation/gpu/meson.rst
>  T:     git git://anongit.freedesktop.org/drm/drm-misc
>
> --
> 2.22.0
>

Reviewed-by: Maxime Jourdan <mjourdan@baylibre.com>
