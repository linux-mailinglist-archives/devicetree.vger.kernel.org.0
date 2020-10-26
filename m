Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 576C8298F70
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 15:34:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1781556AbgJZOeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 10:34:17 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:46572 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1781552AbgJZOdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 10:33:18 -0400
Received: by mail-ed1-f67.google.com with SMTP id 33so9559236edq.13
        for <devicetree@vger.kernel.org>; Mon, 26 Oct 2020 07:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NL7oE/FOu1FdsHVXtgRhlmVNZvxP63/3P1s2iUbijps=;
        b=dK5R82NlOAMd7fUkIrlIbQkTB2oerujWd4Mw9WtN4FTE/lPkGh171HrY27lBvKr6vu
         qjeipXZx6EA0OZLi04vOur2lkzUlmykDa5Peh3TMCwIaXnlrVZmmmSCHtC9EHGluDTSj
         tYj+lv8ffsMq6neJxq2dtDet7+yC0lJRaaJjDyyKthx41MdC8b86hIecqPKtSLemLD/t
         zIZTwFv6lxsX88YYwjCy3zHyUGPgC93hjOO0r4ks2iHDE5V05fhH0E36/UBhLyv1CHO/
         Ufsvsj1cxwWXG+EyElFbNdTmz2hNcg/YATpDxiXP/JVY6Wq3RnrFEwzqBJgBLlCqLGhy
         rnbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NL7oE/FOu1FdsHVXtgRhlmVNZvxP63/3P1s2iUbijps=;
        b=qJcuDwi2FDNKI7Q90ZEImsfzBdb5wYMlHZLOVFYk/lcNNW3AfLC/u8FekOkuDmuY9h
         2zs+mjJH9fCYe90EAHvF4ZRSZupM26R+Y67yVZtBtvK/ZreHtdQLAkkuk35BklHuXBr/
         xBa49ovXYHORau5lz9LpAhHDhDYm8yF3h/XzN1mfw69HQG98RUPQW92f4ZcAuhoOH7af
         mU+QY/dAppM9JZvRSiqz94S5v+oaNdyaH53heW8KdeY8Pac0HVsLDFqh3mO4v2jUOHCc
         IYSQ9RBiiOz58XbCnV2al2X+rotDEPngsnZXRgIcALyomMbFfaJRq1tNyW2E/o3fKqRS
         L7Ow==
X-Gm-Message-State: AOAM531f4l2bzvkvNGpCtHrhKPxNVXJbKs5wArDShMaKn//Z+GBRI3se
        5viKhbF3nAC90wXgM8LkyXymmDnmWyoa4UISx7JbSg==
X-Google-Smtp-Source: ABdhPJzKi4tmV2Cv4sbeMgWAKFUg/xRJTcrF5bAtYkBBrbRRCZ/yk3UOFCsJ5Ct+BNZnK7a4S1TUBkEdvwENFEdk8+E=
X-Received: by 2002:a50:99c3:: with SMTP id n3mr6280737edb.213.1603722795508;
 Mon, 26 Oct 2020 07:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <20201009060302.6220-1-mike.looijmans@topic.nl>
In-Reply-To: <20201009060302.6220-1-mike.looijmans@topic.nl>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 26 Oct 2020 15:33:04 +0100
Message-ID: <CAMpxmJVkM_Jp-PZwgYU2mrACy1z8-aCk+OkihKq8idWfobU3Qg@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: gpio: pca953x: Add support for the NXP PCAL9554B/C
To:     Mike Looijmans <mike.looijmans@topic.nl>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 9, 2020 at 8:03 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
>
> The NXP PCAL9554B is a variant of the PCA953x GPIO expander,
> with 8 GPIOs, latched interrupts and some advanced configuration
> options. The "C" version only differs in I2C address.
>
> This adds the entry to the devicetree bindings.
>
> Signed-off-by: Mike Looijmans <mike.looijmans@topic.nl>
> ---
> v2: Split devicetree and code into separate patches
> v3: Devicetree bindings in yaml format
>
>  Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml b/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> index 183ec23eda39..f5ee23c2df60 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
> @@ -48,6 +48,7 @@ properties:
>        - nxp,pcal6416
>        - nxp,pcal6524
>        - nxp,pcal9535
> +      - nxp,pcal9554b
>        - nxp,pcal9555a
>        - onnn,cat9554
>        - onnn,pca9654
> --
> 2.17.1
>

Hi Mike,

please resend this rebased on top of v5.10-rc1 with tags collected if
you still want it merged.

Bartosz
