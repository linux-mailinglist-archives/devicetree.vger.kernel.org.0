Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AE78E74B27
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 12:07:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388443AbfGYKGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 06:06:01 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:46471 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388139AbfGYKGB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 06:06:01 -0400
Received: by mail-qt1-f196.google.com with SMTP id h21so48413620qtn.13
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 03:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=dY1dpg/OHfGT/mutmAs25ca6whmcjcdibSv9ZWjkmsM=;
        b=Jfhn1IH6hkL03mon/JSCxCgfxtUbbHpAWLvoKakLq9+OvKHCgOwv54x4UYs6F+oQMn
         pYkQIJEg75i+hHconcv4V1/srr2zzQ2gLAF18fBF3ME7Lvqc9OSkQogjIIcoEHtIYzD7
         NNOk23BB7KD8mkF2N8cBwWxrirrIwIZ3Q64/Qs4CiRdRhGrXqGztvhuRIsUjCcx7OsNh
         1K2hL6DNo+hoWiB/V+VadwE/INHTA+S7S2oEyb+FW0F1AAaeEosEGU3YUvgpHt443Dvu
         NWKMDxuEbXYfUF6UQWng1gU1awRncLz4AvRJgscAlnEgrW9grqqxYPfBxrxKl2dxOCEc
         99bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=dY1dpg/OHfGT/mutmAs25ca6whmcjcdibSv9ZWjkmsM=;
        b=Rx03QpW5SjnuhGRFsJzYo7oLgCdYrPdGNexpLhTRVEinnFf1akrfdlNPoWO5Z79v1i
         LaXxCko0H4QxMYM20FOENFPYBkeqL1b9Qnv5Y3MAoyLvHNaxTUwFiWOz5dCnAHIx/mQC
         9HUU2fgiFr57tfnZit+dM09x42kuDGtT0bqyBfSfdFdALbrorvYRfk1hErK7f4FQxdPU
         IIOZog73vhAkBtQRctHdjOXPdu6slaE/mrH+QzsHgmmZek3tgET1yAeWZkBS8oYh8C7V
         pCpWhcWcw2y1XXOw8iJvJZPAfhn+iS2IJa/tY1qpqADeFvCgb09bgoX0kCR33h4hSWub
         OG9A==
X-Gm-Message-State: APjAAAUHcu+GrVnze4zti3UNSs70V4IHNQ5fJeW+pmSYtZY5PfZff3sc
        sWzsgv05HezU8Lzihu4lQEceTb3J+rDATZ67qz6Veg==
X-Google-Smtp-Source: APXvYqyNGztGQcRtMMJsWvdYYDKXUmMJH8KY8KYoJe4UVpVBo8GDSkeBtSiY93R7Znfd5M96vEy07a17By30LwrGnqE=
X-Received: by 2002:aed:36c5:: with SMTP id f63mr62620869qtb.239.1564049160250;
 Thu, 25 Jul 2019 03:06:00 -0700 (PDT)
MIME-Version: 1.0
References: <1563811560-29589-1-git-send-email-olivier.moysan@st.com> <1563811560-29589-3-git-send-email-olivier.moysan@st.com>
In-Reply-To: <1563811560-29589-3-git-send-email-olivier.moysan@st.com>
From:   Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date:   Thu, 25 Jul 2019 12:05:49 +0200
Message-ID: <CA+M3ks6aA2YpHG3Kb+JxxECvdWYkgOVabYqL4-QTUDYkM6N67Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: sii902x: Change audio mclk binding
To:     Olivier Moysan <olivier.moysan@st.com>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>, jernej.skrabec@siol.net,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        ML dri-devel <dri-devel@lists.freedesktop.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Benjamin GAIGNARD <benjamin.gaignard@st.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        Jyri Sarha <jsarha@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le lun. 22 juil. 2019 =C3=A0 18:06, Olivier Moysan <olivier.moysan@st.com> =
a =C3=A9crit :
>
> As stated in SiL9022/24 datasheet, master clock is not required for I2S.
> Make mclk property optional in DT bindings.
>
> Fixes: 3f18021f43a3 ("dt-bindings: display: sii902x: Add HDMI audio bindi=
ngs")
>
Applied on drm-misc-next.
Thanks,
Benjamin

> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> Reviewed-by: Jyri Sarha <jsarha@ti.com>
> Acked-by: Andrzej Hajda <a.hajda@samsung.com>
> ---
>  Documentation/devicetree/bindings/display/bridge/sii902x.txt | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/sii902x.txt=
 b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
> index 2df44b7d3821..6e14e087c0d0 100644
> --- a/Documentation/devicetree/bindings/display/bridge/sii902x.txt
> +++ b/Documentation/devicetree/bindings/display/bridge/sii902x.txt
> @@ -26,9 +26,8 @@ Optional properties:
>         - clocks: phandle and clock specifier for each clock listed in
>             the clock-names property
>         - clock-names: "mclk"
> -          Describes SII902x MCLK input. MCLK is used to produce
> -          HDMI audio CTS values. This property is required if
> -          "#sound-dai-cells"-property is present. This property follows
> +          Describes SII902x MCLK input. MCLK can be used to produce
> +          HDMI audio CTS values. This property follows
>            Documentation/devicetree/bindings/clock/clock-bindings.txt
>            consumer binding.
>
> --
> 2.7.4
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
