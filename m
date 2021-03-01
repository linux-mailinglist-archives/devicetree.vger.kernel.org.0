Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32418328162
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 15:53:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236544AbhCAOwU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 09:52:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236624AbhCAOwO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 09:52:14 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68024C061788
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 06:51:31 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id v9so8142721lfa.1
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 06:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9BnG6OcLz4MdkA8niW29Ho+/QnSajzdzvM6d+k9RjhA=;
        b=YdCqs+GMjIwYpuli9n6ChS9KcSVMisnjvmPMVhyTZr1+QgSH6aYWMXdGN7+BX+bC0N
         RUf1HL4pXH40LSezbd8Vz+YeBJ7BvNhLsUREpDjlwIF02U4C8/cEuCW2e9Aspgz5bkFY
         RibEIgSjE69BuZ+V0NH9HCiRyAN9/Ur02tR9K6zXnm21K0vf+DdTDJ8rovmSKE7iK4yJ
         bfxk7TUjcuYiXgH2nyPEGHs2DrOfjmefWHshsYBhF9Ypn74S2M8poDHQSjxLt6yhz5rG
         g3T8bHOGyMwokI2l2zqTu1bng3ENcQnuLNG8nvpnXGTu3xMVRVvEVWVfwcZoYY1JH8WS
         PLIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9BnG6OcLz4MdkA8niW29Ho+/QnSajzdzvM6d+k9RjhA=;
        b=XxiyyOIPHlVzBM7892PsPeNvF/cy5Ve6R6nrwCtYyzZX9iphdkeyp8BBFn3ruxVvqx
         zhjU8t4Oi4FisPyimcehWu17CovZ2yCkCI7iAoUB9XZazSWoTsQ8wSCrJ99n2c1LeZrr
         dMcjeKKn6UVHYtPocrV9+HTUU63c1GN/Gpsbxu8j1DZr/8a+0WhH0gooXLVrzlqADOGL
         vZ9b606/IYgBSA/qFo3dWYkUyCqLAWEczUYSDEH7a1amFNkgyjFLMExZIlK9dLih0UhW
         Jkzvx02qVhb8UHk2a7qO0knGBltzGiCRd1lvOC9+YosInCJJRK1R2KIxg+c4Y2jTGfeh
         SK0w==
X-Gm-Message-State: AOAM5312bbVc9NWXA0m2LNaTfzkPTL6vlJJaePzsGYHO7uvddBRcxOus
        L1j10+QibwzafYeNySpJH1OWZJ4Iqwhxxpuv4k2wbQ==
X-Google-Smtp-Source: ABdhPJw2hltL6dqzQRsiwOWELt2s4pnYTKVvz2cutcRv4szIKBMeFXJwGheIGYaQTVosfai7/l6TGb0G57xQwMFnKWs=
X-Received: by 2002:ac2:4d95:: with SMTP id g21mr10180879lfe.29.1614610289944;
 Mon, 01 Mar 2021 06:51:29 -0800 (PST)
MIME-Version: 1.0
References: <20210208222203.22335-1-info@metux.net> <20210208222203.22335-8-info@metux.net>
In-Reply-To: <20210208222203.22335-8-info@metux.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 1 Mar 2021 15:51:19 +0100
Message-ID: <CACRpkdb5R+VQrv0QuKa+EYmAMkodRpyv4fV1QCWQ+vcEyd0sZQ@mail.gmail.com>
Subject: Re: [RFC PATCH 07/12] gpio: amd-fch: add oftree probing support
To:     "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 8, 2021 at 11:24 PM Enrico Weigelt, metux IT consult
<info@metux.net> wrote:

> Add support for probing via device tree.
(...)
> +       pdata->gpio_num = of_property_count_elems_of_size(dev->of_node,
> +                                                         "gpio-regs",
> +                                                         sizeof(u32));
> +       pdata->gpio_reg = devm_kzalloc(dev, sizeof(int)*pdata->gpio_num,
> +                                      GFP_KERNEL);
> +       if (!pdata->gpio_reg)
> +               goto nomem;

I don't know what the idea is with this but register are not normally defined
in the DTS files. The registers are determined from the compatible value.

> +       pdata->gpio_names = devm_kzalloc(dev, sizeof(char*)*pdata->gpio_num,
> +                                        GFP_KERNEL);
> +       if (!pdata->gpio_names)
> +               goto nomem;
(...)
> +       ret = of_property_read_string_array(dev->of_node, "gpio-line-names",
> +                                           pdata->gpio_names, pdata->gpio_num);

And this is already handled by the core.

Yours,
Linus Walleij
