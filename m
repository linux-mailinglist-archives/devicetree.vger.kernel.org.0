Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A59D27E5A1
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 11:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728149AbgI3Juv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 05:50:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725823AbgI3Juv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 05:50:51 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CECC9C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 02:50:50 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id 197so752913lfo.11
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 02:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4kDE8wrBm+qziaG4g1g/VJGmcusF/BRkFisBqvCmFDc=;
        b=iB9qiHLogQUzM7o9zQ0HZSYyL+GiBm7AI8MvcXqzE0jGilJA0KZYljsZ8m9uKTTCQc
         R1njFwaJF0vK63FD5OBjwsuSnFdkTGxq798Au1eMT7JiYmwoqa0pwiHjvkaiSwV0ikqN
         RtmufQ+1PQox26UJ7CET8s54aSa4d1keVad5xLbcKEAKG+6H33cNjCWBYqwgxnLbyBq8
         XABwbLDKig7zrWK55uisXFhtb6jUAbChmHI6iQKy/MB+qAvXuIePzXWoGh9+DC1FGvFJ
         3S8LXpJdpL9q5RR+PEkKs4oeML1VVrza/35HZGGZwS5SnkZkSoNFX8lJJhpDxwnnuDQa
         QY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4kDE8wrBm+qziaG4g1g/VJGmcusF/BRkFisBqvCmFDc=;
        b=LmYzGhW98cMc7XeremJIusDmKzdq/Dw+E6rEyFHkVUYWO/2Vgv6YoTEGi4oeLbNs41
         YeO1UTiCoqshwrfa/z0yYRMOU224D3jfnODl566z4PUvwN/o9RmYE0N6AG2GmxwY1Ubk
         Jp9q7Lm01UgUmsgF0i2QwduYbGbFEb0liq/x/n3Vlwh9aOm25/FB6/UitxAJNHTzrKMC
         EhOjPdgivCPx3ouKu3dKA/i2YfVFqvOIadbfwZjR/Hzwap02V6XtTPEkVhPkTSlItaxC
         G3mZJybWh4xQrPpKfFI+UIFCZ6x+hxYG8XXLEjpUGgc1BbYwYFWGWcQSNho7gawoRAl6
         uXBg==
X-Gm-Message-State: AOAM533OL/d8EJ/Nkoe72qdx7L2cKSx9BpK9bg7v96fyiRN4tM9V4MSZ
        qHIksc/485BqDOT7IwPaA8WIZNlE5dL3DYgqGZOrsg==
X-Google-Smtp-Source: ABdhPJxm7dZ5605/6k4XUptX9QM1RtmPezAq+DEnqYIEsde95WBlbJgEIx/rubuQiw8SILz7iUX4fADZC23QYKW2izE=
X-Received: by 2002:ac2:4c11:: with SMTP id t17mr641852lfq.260.1601459449318;
 Wed, 30 Sep 2020 02:50:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200930092053.2114-1-mike.looijmans@topic.nl>
In-Reply-To: <20200930092053.2114-1-mike.looijmans@topic.nl>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 30 Sep 2020 11:50:38 +0200
Message-ID: <CACRpkdbsYcmv9m2EiQNgPDZ0MdjPnWTxXvnqATVPvWpB=8Oqkw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: pca953x: Add support for the
 NXP PCAL9554B/C
To:     Mike Looijmans <mike.looijmans@topic.nl>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 11:21 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:

> The NXP PCAL9554B is a variant of the PCA953x GPIO expander,
> with 8 GPIOs, latched interrupts and some advanced configuration
> options. The "C" version only differs in I2C address.
>
> This adds the entry to the devicetree bindings.
>
> Signed-off-by: Mike Looijmans <mike.looijmans@topic.nl>
> ---
> v2: Split devicetree and code into separate patches

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

This patch 1/2 does not apply to my tree, I suppose Rob has
to apply it?

I will try to apply 2/2.

Yours,
Linus Walleij
