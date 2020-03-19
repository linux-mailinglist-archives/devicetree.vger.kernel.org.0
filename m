Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8ACE18B921
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2020 15:14:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727188AbgCSOOm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Mar 2020 10:14:42 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:36226 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726926AbgCSOOl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Mar 2020 10:14:41 -0400
Received: by mail-lf1-f67.google.com with SMTP id s1so1763814lfd.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2020 07:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OxjXVpGbkMkJ0WExSWqPpSaBQvMwnWJnTr1Wx+V8SG8=;
        b=AZOPCFBQYSqsz/AEYGuuPOzJTdJ/ZTsTX/5uwunSTWHVK4GeC09eczWB8hdsOqDQsH
         NE8V3RKBTTt/IsOKfyue6IUukFCUmj3uB93xzQ16sNd3pX1n2wcUou3DKPqS5PevTns+
         5LNt1lCgFE2eWtnlkTxMBQdN+pvFJKsgupqIqdXFoBTY7yLdtCl4MwY5foZ598hflKd0
         QT2gQX4or7spIgIPXs8+H8T97cA1BW9Up0Z2Vcurti7BHsL+aF7uRlooa5KRFECreWJz
         bd8L7aFaU+J0uvbvpWCM1DHhdsSBSToFgHhOJr52xfwt7vvwoFoygtLsq273UwCfnbVy
         J3Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OxjXVpGbkMkJ0WExSWqPpSaBQvMwnWJnTr1Wx+V8SG8=;
        b=Mg0OkzUf5y036os9buDlr9jEQb77EnayPbVRj7PkasQApsmvUqt8K+9x7fyDeSE1es
         kUNV618wvF7TeJ+LSlVmFich/qjE0iLcJj84gr2nGQsXyHay2wo5EwhaRbPW2hCFHFNF
         aiJ4d5xY81rm1UhAFn7SpYjk+snAfWZck2G5t0I1VvU39oUWoSi5R/nSserleqtVM9ZY
         T/gjKax+OULeQNsSJ+8T7z7mNUrRCpBD6OKZinmIChDMsXCcguLMnbFXY18NEyI5rfVu
         ALwDn/QGt09Pc1wm47F8jqBk2pU06qYF/qFVLNBXb8i8agZjm5wEdrzixBysdXa0RmBR
         MIrg==
X-Gm-Message-State: ANhLgQ14oMl4fG9ZGs86vn7qzPM/x3Nq3K3zdM6o0wvnDs9M9H8T5Nvu
        8wFSLPbosFsmp7t+dQComC2xd7EcwTRqGUJPpqzr/A==
X-Google-Smtp-Source: ADFU+vt1yS1vI9ljM0gwVaf68ZRjuY1p2nfT2WzK32ag3cYSnzmKGhQi4YvVl/W8DZtvTQtWWxSu7seu9AnqnrT9Fjo=
X-Received: by 2002:a19:2353:: with SMTP id j80mr2188497lfj.4.1584627278167;
 Thu, 19 Mar 2020 07:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200316133503.144650-1-icenowy@aosc.io> <20200316133503.144650-3-icenowy@aosc.io>
In-Reply-To: <20200316133503.144650-3-icenowy@aosc.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 19 Mar 2020 15:14:27 +0100
Message-ID: <CACRpkdaVrfd1p+WyACy-gq-3BPsXJ_CZwi2OZe+=csseBcvcaA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: panel: add binding for Xingbangda
 XBD599 panel
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Ondrej Jirman <megous@megous.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Icenowy,

On Mon, Mar 16, 2020 at 2:37 PM Icenowy Zheng <icenowy@aosc.io> wrote:

> Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI LCD panel.
>
> Add its device tree binding.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
(...)

> +properties:
> +  compatible:
> +    const: xingbangda,xbd599

As noticed in the review of the driver, this display is very close to
himax,hx8363.

I think the best is to determin what actual display controller it is,
I think it is some kind of Ilitek controller since Ilitek ili9342 is
clearly very similar.

The best would be something like name the bindings
ilitek-ili9342.yaml and then:

properties:
  compatible:
    items:
      - const: xingbangda,xbd599
      - const: ilitek,ili9342

Possibly use oneOf and add support for the himax,hx8363
already while you're at it.

Yours,
Linus Walleij
