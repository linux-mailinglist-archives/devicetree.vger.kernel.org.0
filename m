Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3E41E74B25
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 12:07:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387997AbfGYKFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 06:05:44 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:42340 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387956AbfGYKFo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 06:05:44 -0400
Received: by mail-qk1-f193.google.com with SMTP id 201so35944397qkm.9
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 03:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=7MqY5TdYDukrmEcvyvH1Gy2JxiZVpxAfuPKcTJpAIOc=;
        b=bZG05YAAVga3Lrh/0yIRiZu0OwBZ1sptqRJR8ItXyufWxbjZiVGIoqJ0QpP+TPerhF
         VS0hlrNFycUS3jM5WWtRoTESWbMzjpbMJgoMIj2JvhSvGV8FVTTpKMFtDJdX9DvdLpM6
         9DRwIIX/Qy19YhgVSoNRaga21XU0ELRRBHGN2XVRcrCVDHwsYoEyrRoa/m2wMLE0DfON
         diKx1f2P1O9zbznpnDIteD9wOHwQ/zzPS3GCxbbLKKO1EAKn3XcjR9ESC3eEnrRNBXfq
         D5x8VcJmwr7IFSNLpFwemFmEYv6f9thE4MW8BI/eQmHOwtYrPEkfgzCM7MUc4qpuJRo3
         GiUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=7MqY5TdYDukrmEcvyvH1Gy2JxiZVpxAfuPKcTJpAIOc=;
        b=L2de/do1cOTKsdZAgSUt8QMptoCs8HlpFkveCknQalPgPxpnFwMvQDCQCSCxQOkj/f
         NaXiQRytohKIBkj8KTN0Jhl2st8BrOajawMP1PObCkFKkma9whu326d2dV/eDehuQ/43
         Fs1VYJli4JcMJLxuJQWfZe36d61Ltp6pCjQA9ap1DRJqvKFK8i3bTXRG5uiuM/knR5Ha
         KVYPuJKBY+fdddwBHPGs4qKxYnquuNjoY46Uo2KJBqWjAkb7gLYDa+XLETq3SjiEirLr
         AlBpKFhWySYVx+7eTBXT/ycnOkYaNYMmzGQzFz/unQfYEYQHQlsrGP30Skvzf1ab4fTz
         x1Tg==
X-Gm-Message-State: APjAAAXSuydHjiaZggIs16Ik+phVezijDHpguitVNjyaBxrM6zQ05VMe
        DPzogda0FYMxIp+Dr3iaSNjT4z9hNninb8sVeA7S5Q==
X-Google-Smtp-Source: APXvYqyhCeRsfUMKnaFdLn3aJWF2r7C0su+s5w1UqLu1cTlcNydCdWit5JkkqefwAGH3hmKajOG/V6rCyDq9aRuGQfA=
X-Received: by 2002:a37:bcc7:: with SMTP id m190mr56245928qkf.433.1564049143158;
 Thu, 25 Jul 2019 03:05:43 -0700 (PDT)
MIME-Version: 1.0
References: <1563811560-29589-1-git-send-email-olivier.moysan@st.com> <1563811560-29589-2-git-send-email-olivier.moysan@st.com>
In-Reply-To: <1563811560-29589-2-git-send-email-olivier.moysan@st.com>
From:   Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date:   Thu, 25 Jul 2019 12:05:32 +0200
Message-ID: <CA+M3ks5v7vF_mPBr4mkwsHidc-N4jfJDgqWWE7qRv0LDsYJ-pQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drm/bridge: sii902x: fix missing reference to mclk clock
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
> Add devm_clk_get call to retrieve reference to master clock.
>
> Fixes: ff5781634c41 ("drm/bridge: sii902x: Implement HDMI audio support")
>
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> Reviewed-by: Jyri Sarha <jsarha@ti.com>
> Acked-by: Andrzej Hajda <a.hajda@samsung.com

Applied on drm-misc-next.
Thanks,
Benjamin

> ---
>  drivers/gpu/drm/bridge/sii902x.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/si=
i902x.c
> index c2f97e5997a1..962931c20efe 100644
> --- a/drivers/gpu/drm/bridge/sii902x.c
> +++ b/drivers/gpu/drm/bridge/sii902x.c
> @@ -751,6 +751,7 @@ static int sii902x_audio_codec_init(struct sii902x *s=
ii902x,
>                 sii902x->audio.i2s_fifo_sequence[i] |=3D audio_fifo_id[i]=
 |
>                         i2s_lane_id[lanes[i]] | SII902X_TPI_I2S_FIFO_ENAB=
LE;
>
> +       sii902x->audio.mclk =3D devm_clk_get(dev, "mclk");
>         if (IS_ERR(sii902x->audio.mclk)) {
>                 dev_err(dev, "%s: No clock (audio mclk) found: %ld\n",
>                         __func__, PTR_ERR(sii902x->audio.mclk));
> --
> 2.7.4
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
