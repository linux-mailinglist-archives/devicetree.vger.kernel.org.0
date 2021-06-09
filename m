Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3071B3A127F
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:21:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238343AbhFILXB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:23:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235446AbhFILXB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:23:01 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40789C06175F
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 04:21:06 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id f30so37470730lfj.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1elVfwOvcaESeQvZLqDrd8CapZfzhuucwYU0NEEL3IM=;
        b=zQXh4epnqeNGF/Zt/INy2VLEzNDzcix9fmozTSqK9HrE16nO6LEo0dyozC25DpLjhC
         NQeUL3TatwEp6kFzwvHqWDGGz8ZbWMlRQjEjjoxZFHCGfqtUSgqf85rqWCX2N02VrbOu
         tYjHUt6xdh2BQz1leRLw4KXmOh3nCrANlF3sbFciCAsi7GqR8gckNryRjQEv6vyv8xhI
         OuFWMAXtVN67ZoOtCjP0QMtIqg559UJe9U6d/YRZyuLeZ9yxWY1S53llTCalL79rwwN/
         X9znF/pIhlRhZuHFZUMjUy+Hz7uq7MQppJGqcRaNQUZbK5srBMLIdyJsK0QP4wxK2DKA
         1Xuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1elVfwOvcaESeQvZLqDrd8CapZfzhuucwYU0NEEL3IM=;
        b=OzCzh0B+GL1Ww1KsAwxMeQtFU3+psuge8tJfU5vpmsJ7Mdx7WmCINTTCbQvnT7xM66
         ogVIJovO7i9VOvjvnxXN65PgQrSQcCUM1nsnqB4AB52DJ5eGQb0DJYMB/NRvsgerUAAy
         5EKvlt2xpptjhw+73zNd7xQpMTZybYzINRPQWvV0EzOKpoNKa3GRhChBRpKROY1RTfGx
         J9QDGPq1nUFfWNKbh1LNI8Gsx0FVohvRq+dBwr66sGywtPiuK8PfRXlDoz+G/fcPgSTJ
         hK3MqVC/6RQd68ZqeOM0luEXJi9DzKal2LbrgSdewCB3IYOzmHdbxJLYV/smTJol0lmT
         PyJA==
X-Gm-Message-State: AOAM5300ekSet0e/MGkLAxaOAOVDQGK05v8s7KXGVBNkDvrRVQQyIZ+W
        2pGp4I0DrIYM5k6RMDxG8OYtYHsZ3/wLfQ5nHpKheg==
X-Google-Smtp-Source: ABdhPJxjRNYZa7CArMuSR057imgElswJ0539mWpU00VB+QbDL43HR/W/KXcMY10hVWytT/G6HYIvfW5d9J8On6evxRg=
X-Received: by 2002:a05:6512:3241:: with SMTP id c1mr19407580lfr.29.1623237664559;
 Wed, 09 Jun 2021 04:21:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210607193500.3085920-1-robh@kernel.org>
In-Reply-To: <20210607193500.3085920-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Jun 2021 13:20:53 +0200
Message-ID: <CACRpkdaghKYiU9AgyEd3arFHiNEq-9+Xo8z4hxUxHFqrJM7n6w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: Convert mtd-physmap to DT schema
To:     Rob Herring <robh@kernel.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 9:35 PM Rob Herring <robh@kernel.org> wrote:

> Convert the mtd-physmap binding to DT schema format. The arm-versatile,
> cypress,hyperflash and intel,ixp4xx-flash are all just an additional
> compatible string, so they are all merged into the main schema.
>
> There doesn't appear to be any users nor support for 'vendor-id' and
> 'device-id', so these have been dropped.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: linux-mtd@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Very nice, thanks for doing this!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
