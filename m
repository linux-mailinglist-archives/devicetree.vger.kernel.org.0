Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D971C447B98
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 09:10:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237576AbhKHINS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 03:13:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237562AbhKHINR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 03:13:17 -0500
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com [IPv6:2607:f8b0:4864:20::932])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A04A8C061714
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 00:10:33 -0800 (PST)
Received: by mail-ua1-x932.google.com with SMTP id t13so14500870uad.9
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 00:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2+1TTlc9xwZih44a5849v2x4l1vXCAR2nfrUVYgiR3c=;
        b=PmgnMxI87YGsl4UDOvad3MIkBRLFuSbvFbhEvWiqMEulobgpBUjzQ7qsNZFB7TrLfh
         q1Y11AwMECJi3upYjA/iXxZkMCON+W85LdpM5bE5WZj7r23xAr2HNJAqTnlNjQPFKpQh
         H/mrBZjX+BXA5BCvK35sRbvQ6mZP6u/Em4gxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2+1TTlc9xwZih44a5849v2x4l1vXCAR2nfrUVYgiR3c=;
        b=zCP4LQxtCiZGY26ndQOwNq+J2r9dKMywc9cyCNhfeQlA10jJwuMMpz5XTC3ybgVidC
         pAqiVSzh/Nm5JWOeOgy3pfQx4mzGLUSoSTfImhqg1eJ7bPk08eTciOCRZvOZs+BRlRhU
         0RE+prFOqrfKxiWnm3xuYyZSeZEOXeOXWez5RFetYDrTrZIIyIrLAOh9uUgQiu7Uu8k8
         UP0JtfIPXVmuQg6FLAyICVuTEu1Y18jeyjm2gGzkqXsQnrnVNlGAnV/CGPJ3NsuMq9BM
         g0v5NppO2uPnI2JwA8PTGITZGuA/atYh01vhjliFxKXKKS83JMWGLAAXMzHdVEx7fBQE
         1qQA==
X-Gm-Message-State: AOAM533IeVAVeff3a0d9pRjGgWb9DRcRztMy6MlqUS5mdWWibYpyUY5A
        kDyuZaRLpb5D8n85bILD1fxpSEJz26dJgWsFDWh9wWmaD4iTIg==
X-Google-Smtp-Source: ABdhPJypn5ldFm8d20a28vAsb9VgMeCgEt6OtSsBAo7c+Ifjy+KvBJxcPi60jxce+NO+Q0J7RZ8/XR0P2goqB+MHtQU=
X-Received: by 2002:ab0:3154:: with SMTP id e20mr90919214uam.14.1636359032861;
 Mon, 08 Nov 2021 00:10:32 -0800 (PST)
MIME-Version: 1.0
References: <20211108072711.1628566-1-hsinyi@chromium.org> <20211108072711.1628566-7-hsinyi@chromium.org>
In-Reply-To: <20211108072711.1628566-7-hsinyi@chromium.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 8 Nov 2021 16:10:21 +0800
Message-ID: <CAGXv+5GD7KU4i+P--6RShhMu32Rhf-g6SZF8SRDscc4XEG4QrQ@mail.gmail.com>
Subject: Re: [PATCH 7/7] dt-bindings: arm64: dts: mediatek: Add sku22 for
 mt8183 kakadu board
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 8, 2021 at 3:29 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Add sku22 which uses different audio codec than previous kakadu board.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index 99e7f8e294cd03..da5f9ecc1a9b37 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -161,8 +161,11 @@ properties:
>            - const: mediatek,mt8183
>        - description: Google Kakadu (ASUS Chromebook Detachable CM3)
>          items:
> -          - const: google,kakadu-rev3
> -          - const: google,kakadu-rev2
> +          - enum:
> +              - google,kakadu-rev2
> +              - google,kakadu-rev2-sku22
> +              - google,kakadu-rev3
> +              - google,kakadu-rev3-sku22
>            - const: google,kakadu
>            - const: mediatek,mt8183

This matches

    "google,kakadu-rev[23](-sku22)?", "google,kakadu", "mediatek,mt8183",

which isn't what you want. You want:

    "google,kakadu-rev3", "google,kakadu-rev2", "google,kakadu",
    "mediatek,mt8183"

or

    "google,kakadu-rev3-sku22", "google,kakadu-rev2-sku22", "google,kakadu",
    "mediatek,mt8183"

I think the following is closer, but I'm not sure if nesting "items" is valid.

items:
  - oneOf:
    - items:
      - const: google,kakadu-rev3-sku22
      - const: google,kakadu-rev2-sku22
    - items:
      - const: google,kakadu-rev3
      - const: google,kakadu-rev2
  - const: google,kakadu
  - const: mediatek,mt8183


ChenYu
