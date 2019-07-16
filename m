Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 07D746B29B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 02:00:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728597AbfGPX7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 19:59:37 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:44631 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728235AbfGPX7h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 19:59:37 -0400
Received: by mail-qt1-f196.google.com with SMTP id 44so21445482qtg.11
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 16:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zfE+1oH2ev9A7CB6B7OCM0HfuvGIKPETwgwy1wYPeZk=;
        b=myAjYl3qrrjUdybw3rfkkqgxLpxX2EWxa6gWin7tovqVhvuC1kAEj0YUMz0a+INMKn
         k34dHtcAcHsWoDetwCiVgDi03O2ZbX6tn7T6FBnKsTPf2BLewHVVFqVnoOY7p/UiUCEe
         +2TMI/XehWPm3bOXRcM82WCBDwbCShBjLtw7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zfE+1oH2ev9A7CB6B7OCM0HfuvGIKPETwgwy1wYPeZk=;
        b=ah2nKOV6zJFVaAED1Glq25xmcRZBxxdpb7CJxW2UUXR+5lxwtyYQ6DFKd8174G2MXz
         N6iSBKA2cFYwufa7iQC33s2N2PsuQrQiDCjk6ukk7NZ76E8jUE3ZrNQATx01R5yk9eKb
         ggH3mLw3znO6nJMO5mC0+omXFjplB0Tf0Rt0gOqoqn85IGOPhmRHObwm14vp+vr+IGyO
         P9G+FaO/LVFcK+QBTTq3tiw3WkD4bZnBCn8qZ5RxNga0qrWac7AkX3GeiGv0zEBiUpB8
         5csTRZZq3kgYyx9A7eVBei4oW3aC/+lOhDf1JR0SJd1YtYs8FMrNO6lvw5shcj/IuGwF
         4VxQ==
X-Gm-Message-State: APjAAAWZtm8M4Q8Bqp7dfcumwYSQTUAF89wzjsgiP2ugMONEFGwNTu82
        4AsJdoqP7O7q62tUtIsenyVCZCq/EXzMnGzNSoJpZg==
X-Google-Smtp-Source: APXvYqyCn5WDabT9u/P+OGBvnjMb2lK0frfpzoQz2UZeeBoGFN9gytFn4nfFqeUwNxxQx3qvg3WhGoAnUFfps5oKIQ4=
X-Received: by 2002:aed:3b1c:: with SMTP id p28mr24024945qte.312.1563321575377;
 Tue, 16 Jul 2019 16:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com> <1562625253-29254-7-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1562625253-29254-7-git-send-email-yongqiang.niu@mediatek.com>
From:   Ryan Case <ryandcase@chromium.org>
Date:   Tue, 16 Jul 2019 16:59:23 -0700
Message-ID: <CACjz--k0wVpxWTBXQeUHqm50RgvaCNkNb3DO+KviCOtq-e9gTQ@mail.gmail.com>
Subject: Re: [PATCH v4, 06/33] dt-bindings: mediatek: add mutex description
 for mt8183 display
To:     yongqiang.niu@mediatek.com
Cc:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 8, 2019 at 3:37 PM <yongqiang.niu@mediatek.com> wrote:
>
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
>
> This patch add mutex description for mt8183 display
>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> index bb9274a..4a22d49 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> @@ -53,6 +53,7 @@ Required properties (all function blocks):
>    For most function blocks this is just a single clock input. Only the DSI and
>    DPI controller nodes have multiple clock inputs. These are documented in
>    mediatek,dsi.txt and mediatek,dpi.txt, respectively.
> +  for MT8183 mutex, this hardware is always free run, has no clocks control

This should have capitalization, punctuation, and drop the trailing space.

It also reads a little strangely. You may want something like "An
exception is that the mt8183 mutex is always free running with no
clocks property."

>
>  Required properties (DMA function blocks):
>  - compatible: Should be one of
> --
> 1.8.1.1.dirty
>
