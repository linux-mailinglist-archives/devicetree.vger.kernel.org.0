Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27D072F040A
	for <lists+devicetree@lfdr.de>; Sat,  9 Jan 2021 23:15:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726080AbhAIWPT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Jan 2021 17:15:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726148AbhAIWPT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Jan 2021 17:15:19 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2229C06179F
        for <devicetree@vger.kernel.org>; Sat,  9 Jan 2021 14:14:38 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id o13so31853366lfr.3
        for <devicetree@vger.kernel.org>; Sat, 09 Jan 2021 14:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PuGxm3GFcBsNFb4VCYjv1V+efk01JzJKthlrfnQST3E=;
        b=bUPsrc89m8tMUAGi+l2QVNYeEH/XAGp8VALJgeDbfiWuE5UE4mJMJ74pbL+6B5lPaY
         PPvNNGMBkWYpZlxHYz2480aZPc8p168tngGCnarSiN2Fb7oZhGas6hcyXlxnVWycYBJv
         9R3BwGIz801vzLERNgcyn1L83FB7JWHH45BGMOU30x9tBFDOliYomSCX5cJFGiHo27XA
         hMI6s+B3GJN6HKBzmG9MTBoNrefM8ZWi5WS5Rs2in0ui2FlyypeTnvYU1Z9yY9qxoqN0
         6ITuUigNRrV/CS56Q/HJEnqEwhJ5IsEN/q5NlDyOgmUSplQ3rp2dAt7+Y2gtQcwTqqDf
         q6wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PuGxm3GFcBsNFb4VCYjv1V+efk01JzJKthlrfnQST3E=;
        b=RrW7su8eeoX+xA8/p2IIrXa1nXyVS9dpNG5iflYD7a6WeTGkxIbQhHVTlbQzUROaVv
         Th4RpV2ietPq81VerD7GvhOQuHlOKQblr2PzE9hx/sBliHQGPewFNv9i5j1BuZSAt+GM
         JJ5x+JRyKAJD7JIQkzohfuKGVLlvnJJrBk8fIZKIITdeGeuFovy+4G54VxnVpoJmoNHq
         D4bTrYK8+qALS9wfiedod99pJ3SBLQiHaSpFDaBoI3mTIZvSfCVmoL2IMS/f6uMuzewX
         TqewxaElJZAsRb7BqWdLDR70UGQV1ckGOalWWhV43L2FOI4Rs1H2gbpeeOX2poNY1Z9A
         jH6A==
X-Gm-Message-State: AOAM530qkNyyB9pU/MGVV7Jnytgsjeur1k6OFfms+IIi+x6CqWS5Dem2
        dn8wg9A1SKk+uwnr7P2vNCTT7wBfqqPjCxM2vIYcrw==
X-Google-Smtp-Source: ABdhPJw2WqwJduUqNY8DC7qF/2q+9O/eVsIl2egJyl9nuRFKtSZWNQDD5y2ipQevex7TLwS1jqOuJf0xiGv0JFXZy3U=
X-Received: by 2002:a2e:586:: with SMTP id 128mr4663265ljf.273.1610230477212;
 Sat, 09 Jan 2021 14:14:37 -0800 (PST)
MIME-Version: 1.0
References: <20210109140204.151340-1-angelogioacchino.delregno@somainline.org> <20210109140204.151340-3-angelogioacchino.delregno@somainline.org>
In-Reply-To: <20210109140204.151340-3-angelogioacchino.delregno@somainline.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 9 Jan 2021 23:14:26 +0100
Message-ID: <CACRpkdaB4ejWUzBpkYWtRC=_On0tw2H1=3beaVmnLkjncUzn_Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: pinctrl: Add bindings for Awinic AW9523/AW9523B
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        konrad.dybcio@somainline.org, marijn.suijten@somainline.org,
        martin.botka@somainline.org, phone-devel@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Angelo,

thanks for your patch!

On Sat, Jan 9, 2021 at 3:02 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@somainline.org> wrote:

> +#PIN CONFIGURATION NODES
> +patternProperties:
> +  '^.*$':
> +    if:
> +      type: object
> +    then:
> +      properties:
> +        pins:
> +          description:
> +            List of gpio pins affected by the properties specified in
> +            this subnode.
> +          items:
> +            pattern: "^gpio([0-9]|1[0-5])$"
> +          minItems: 1
> +          maxItems: 16
> +
> +        function:
> +          description:
> +            Specify the alternative function to be configured for the
> +            specified pins.
> +
> +          enum: [ gpio, pwm ]
> +
> +        bias-disable: true
> +        bias-pull-down: true
> +        bias-pull-up: true
> +        drive-open-drain: true
> +        drive-push-pull: true
> +        input-enable: true
> +        output-high: true
> +        output-low: true
> +
> +      required:
> +        - pins
> +        - function

Is it possible to just $ref /pinctrl/pincfg-node.yaml# for some of this?

Yours,
Linus Walleij
