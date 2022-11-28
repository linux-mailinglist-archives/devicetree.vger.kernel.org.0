Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C49FA63B0E5
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 19:16:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234183AbiK1SQE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 13:16:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232907AbiK1SP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 13:15:29 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A070D2E6B9
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 09:58:28 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id k185so3804778vsc.2
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 09:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=k835onYIZmsMuurlywEhGfRyXKYROEnVcvL+bYuMNFg=;
        b=qeAlsrxSTYrFNmaODPT2/lB5DxDq+uU+fCNqqy+mRXc+Af9X3azUb12ENwHsOoDqed
         63QFTN4UFnImZsWpuhwXZmmk0pJVWe0EjZalYULvfIuAPSv6+67/LL8CMmLoRgVeo104
         gGXXlVp7xDfgQGaDZDzAH6/hbVMQE5Rt7/PTgFVVcQKoJNfxNA3vCIOXA9W4vReoUFXW
         Kya4ASz99JXKdpdfpOMAP5bXB+RuPRiGqCNONFyJMNYNPQFSCQLqYnm9DKo24lHOzZr1
         eF0BLnHG+Vq2MNRUaCcSvgaMd7Dw89BMO1MjOVoRRK0Dd1AqwufbwATpNdU5kPVkOMGG
         P59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k835onYIZmsMuurlywEhGfRyXKYROEnVcvL+bYuMNFg=;
        b=NP87J4a7PA0n2f4/FPUTeEbivw6BVD98USBguhCkWxPCkO/JdP9Pn6lSXz80HF895b
         g8apFb/nkkbQWpPbG3EkICs7IN/04aQVUbx90lcppemi0wXAvcw5O1OHE2AZK3Aoc/tT
         dAhy6804SMtaPmfIQC5HLWhqnZpsN3zYUUv0T3YR0a6XHcqjYBY3lta3qhY3r2ZOeTZF
         K9ki6/dzHhqTUH+TIIEqEBZKZHerGwX80vvy/YaM7ZSCFsDpbLZ/YfUy6SPyBmjsPSWL
         Tm5Rjw2KZSGhSZrzMcOTH4OGFI5gYGlX4ljhGK/qdOaeL+C0sVhEd0CkGBzf1EcO5brK
         IdEg==
X-Gm-Message-State: ANoB5pnCPqrxHMMYT2GnlHKKmBjeenypqws4ljmc8u3NbFl8bpbiYUam
        QHrmXBEqk3QMDwUzUGItWvXDzSUF95mqfMwg9nc/IA==
X-Google-Smtp-Source: AA0mqf48IEw+OIVt1k1bXjwXtS42iy/rgvamsgwyKVRPbDhgOrUIFCNugUYhB4LxZmQEbqe3FwwXtxhmz8941Q3A3UY=
X-Received: by 2002:a67:1c85:0:b0:3b0:92e2:37b0 with SMTP id
 c127-20020a671c85000000b003b092e237b0mr5455727vsc.9.1669658307802; Mon, 28
 Nov 2022 09:58:27 -0800 (PST)
MIME-Version: 1.0
References: <3f75784c57dc0682b5e1758daddd93fee6bb4b27.1669585920.git.christophe.jaillet@wanadoo.fr>
In-Reply-To: <3f75784c57dc0682b5e1758daddd93fee6bb4b27.1669585920.git.christophe.jaillet@wanadoo.fr>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 28 Nov 2022 18:58:16 +0100
Message-ID: <CAMRc=Mffq-RXt+huAT48zZvo0OJY=nhb6SV7kxSNzr1Xv=h1nQ@mail.gmail.com>
Subject: Re: [PATCH] gpio: Do not include <linux/kernel.h> when not really needed.
To:     Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 27, 2022 at 10:52 PM Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:
>
> <linux/kernel.h> is included only for using container_of().
> Include <linux/container_of.h> instead, it is much lighter.
>
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> Not sure if the prefix should be gpio or gpiolib.
>
> Let see if build-bots spot something which is inherit via kernel.h
> ---
>  include/linux/of_gpio.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/linux/of_gpio.h b/include/linux/of_gpio.h
> index a5166eb93437..6db627257a7b 100644
> --- a/include/linux/of_gpio.h
> +++ b/include/linux/of_gpio.h
> @@ -34,7 +34,7 @@ enum of_gpio_flags {
>
>  #ifdef CONFIG_OF_GPIO
>
> -#include <linux/kernel.h>
> +#include <linux/container_of.h>
>
>  /*
>   * OF GPIO chip for memory mapped banks
> --
> 2.34.1
>

Applied, thanks!

Bartosz
