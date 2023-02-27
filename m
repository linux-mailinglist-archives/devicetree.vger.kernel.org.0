Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 596E36A4D5D
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 22:37:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229894AbjB0Vhb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 16:37:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230007AbjB0Vha (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 16:37:30 -0500
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E26E628841
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 13:37:27 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-536c02c9dfbso214371107b3.11
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 13:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CJffYA4vmJy5FgYF8NvcBzhPSAl7eUCcEzAmD9/W9Fs=;
        b=VpcdPcr1BxhbyceM6ofOMjC82Uzy9UdMxkbjQ94UjzZaa0q6XscfQHC61FfP1zbWKp
         xcEcsTFkjDG7MVQPNtp4qoiInPsfRwcr0fdUd99cBVCg2SObY2kaQnqSaj5E6FBZEFDA
         4P+w/T3nJv6/1KN+kWJp6X5ZbUUK/xZx9k1PlXWhWPIKifAFcNFvqFrRBTBMDBMJSCjv
         Sqc9ukghAKsPdG+Pej3aKJfQ8V+Wo8qoSxhDctW8D9hmJQ0Mt52snXxSfhJI2nSWbutH
         jPePu1xJpwfFwq5jtP/3LQ1bVIx3zKWkDUYpejjY6M1EmnysBdfjtVqA21VySen+Fmy1
         FAdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CJffYA4vmJy5FgYF8NvcBzhPSAl7eUCcEzAmD9/W9Fs=;
        b=EBHYicCAMYdaPthNiw08LA42TGWPcY4cTeYe9KIuACDa0w69GCthTgtCdhdy5Mv4gz
         xmW5f6SnGJeygl/DGQ7JKXokzQxI7DIsOJVhJc2NF/Hb/AcZoQsAPzO4A00K17V96h7q
         aysfuPK+Do/XOCIoolMfwOTV/qmS+lgkHAAU8yBkGgJHlJcEuK0WN0sonxLT1zf85f3n
         4KZ0Ng5fm0/JPRCZ9M4oQS89/ya8NUIlWZqfR6VEJURweoemDOhfyza45KnHvshAhiqk
         6D5Q3PxsRgJ/qHZlNBvV+AtFqRXwVKe4cA1G9RN9uqa1RUmh5TOEr+WCTcg7vFTRd1gO
         jMQQ==
X-Gm-Message-State: AO0yUKWBqDqUTt+b8UwzIs5D/zW5Vvh/6+6dZMygtlzAP/YJtQdPLiMH
        3H+YCCDEU7fvAHXhlDIHTGbWJYA0mANZgzcmBBWNEg==
X-Google-Smtp-Source: AK7set9gPqARkizBvC0E3a9KJ1PBbG7jASa3Cnk0ZMLTkCaDAjkgv9zWDbbP77Lgo/MRLJzFY8wj6LFx4TT4BGrlJa0=
X-Received: by 2002:a05:6902:70e:b0:8fc:686c:cf87 with SMTP id
 k14-20020a056902070e00b008fc686ccf87mr856261ybt.4.1677533847134; Mon, 27 Feb
 2023 13:37:27 -0800 (PST)
MIME-Version: 1.0
References: <59efb87b-5f97-a409-46ae-095ab03d01b9@linaro.org> <20230210025132.36605-1-twoerner@gmail.com>
In-Reply-To: <20230210025132.36605-1-twoerner@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 27 Feb 2023 22:37:16 +0100
Message-ID: <CACRpkdaSdxykJFbChSA3MqyBv6BFm8p96mxbUxkch-Gk0+vM6g@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: gpio: nxp,pcf8575: add gpio-line-names
To:     Trevor Woerner <twoerner@gmail.com>
Cc:     linux-kernel@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 10, 2023 at 3:51 AM Trevor Woerner <twoerner@gmail.com> wrote:

> The devices described in this binding represent 8-bit and 16-bit i2c i/o
> expanders. Allow the user to specify names for up to 16 gpio lines.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> changes since v2:
> - expand maxItems to 16 to accommodate that some of the io expanders
>   covered in this schema are 16-bit (e.g. PCA9675)

This v3 patch applied for the next kernel (v6.4).

Don't expect to see it in linux-next until after the merge
window. I applied it so I don't forget about it later.

Yours,
Linus Walleij
