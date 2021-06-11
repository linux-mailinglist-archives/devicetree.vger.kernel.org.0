Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F0533A4B8E
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 02:00:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbhFLACb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 20:02:31 -0400
Received: from mail-lf1-f46.google.com ([209.85.167.46]:44869 "EHLO
        mail-lf1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbhFLACa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 20:02:30 -0400
Received: by mail-lf1-f46.google.com with SMTP id r198so10954965lff.11
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 17:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Bnh77Qps8T12Yo/r2kYdixbFDzWVS8YUSFSt9pZejSw=;
        b=AWtH1zVWX9LrMGgrpUo8HPUUIvzDUyoZl633ankwLTvO9+62f67jyPXuHc8n+a02MG
         UHULZ1LG5CBtjgzuSZJXsdg0SjnrhKflsqkS4ZLewVv3lLY4FsQMK0W6BIl2aYe40nQx
         sto7cZqnjIxxo8Fx5z/HQRsPfzKR8PxSZoLSK0TKpxR5wlIqGVU2tqynp0DpZnjqC63Q
         NIHZ+boUkpYMzXf1yA9/gsKEGFZwD9ioyqzhk2iatGD+G8BahRSPtnQYGll1dcIhxP8n
         13BC+c0/5/XVpGwbcIsY41Fnb126vfb7mkGaCmZgiK7O8r8A0vLXttw2y4Hxm4te39Rz
         v+/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Bnh77Qps8T12Yo/r2kYdixbFDzWVS8YUSFSt9pZejSw=;
        b=gOOYvYnSc4VKVOG6NvLIOVwBrTyq7OVolwdUsTY9i8QS9v/rVa9S5ahV9jLpfprDXq
         Zp7U1o6PCKWdnlsvTooMtOMycLeu0K+CqygFnfLW4HG0w1K0irP0fvKhbBTR+1f/G+6q
         ohhvIryW0JakC8r7ophZwbGA1l7quqmB4ShmCot9JDnuBHsFwZ0y+1nJzIoF0rH/ILcp
         S2VeBRbwR3lE6rKTvZwRQSTQYDyqMOpCMglJnOVSu56IrgJv5FTglwHHMASYcPvBUCrM
         ibyM6JnxfdLWuReqCX5uyKsgk6eQ9zs+P+yzXY/N8WKzwcg0LoVq4LWyHS2pajr4O3IO
         HHOg==
X-Gm-Message-State: AOAM532hVEahSyGIBWS0DaQEjvUQG3B1ipazSs/1ddlVmvC5g7zTjsvQ
        UnUCnWqErSq43yvlkn7FZEU9j/XvKy1wjrid36DxVA==
X-Google-Smtp-Source: ABdhPJwagqfRiKpcWXHus3RD/FpEgWbbMjU5geKQlpNnM1DDaB0xKy+40r48Ne1QzLI3tptGAMTR2TGiC1N0nmUmS3s=
X-Received: by 2002:ac2:544f:: with SMTP id d15mr4235452lfn.465.1623455956385;
 Fri, 11 Jun 2021 16:59:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210610132438.3085841-1-akaessens@gmail.com>
In-Reply-To: <20210610132438.3085841-1-akaessens@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 12 Jun 2021 01:59:05 +0200
Message-ID: <CACRpkdbkjpV4DY+WMVdYX0136XxB9Z9bga-KbZ+D0oB+pQu_ww@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: mcp23s08: Add optional reset GPIO
To:     Andreas Kaessens <akaessens@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-kernel@i4.cs.fau.de, Darian Biastoch <d.biastoch@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 10, 2021 at 3:24 PM Andreas Kaessens <akaessens@gmail.com> wrot=
e:

> The MCP23x port expander RESET# line can be connected to a host GPIO.
> The optional reset-gpio must be set to LOW if the reset is asserted
> at probing time.
>
> On page 5 in the datasheet [0] the "Device Active After Reset high"
> time is specified at 0 =C2=B5s. Therefore no waiting is needed after the
> reset transition.
>
> [0] https://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf
>
> Signed-off-by: Andreas Kaessens <akaessens@gmail.com>
> Signed-off-by: Darian Biastoch <d.biastoch@gmail.com>

Both patches applied, thanks!

Yours,
Linus Walleij
