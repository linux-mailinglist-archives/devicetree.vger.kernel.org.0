Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5CEDC11CAAF
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 11:27:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728614AbfLLK12 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 05:27:28 -0500
Received: from mail-lj1-f194.google.com ([209.85.208.194]:36468 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728561AbfLLK11 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Dec 2019 05:27:27 -0500
Received: by mail-lj1-f194.google.com with SMTP id r19so1675700ljg.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 02:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X1IjxJJxDMWAlUZ4WjR8vfjxD9i7QeZnQLbWau+hr2w=;
        b=zKrVndDfMw5glaHDvVVAERCr6kNERWEAEMaXnAn6XjQp1Dz/ANs2Bs7QXF0mQR/Cz2
         nJq0uiTRUI3KdAfk94Snpeb5sFuFc/+MjT+xGMz7lVSrbWVIMg1wk0Bo7Vdx6zRT0Nwp
         jLhzeS9MJVDq/XIfd9aBvnCKoN9Py6x7OHzWKLGzROylVGLJIa1F9LbGhaOyzkSWLlNg
         PMmv5RSR22LOqjofX27f+enAaGR/ruNw47HlU9/dwmk4sPOTsPo1DNXe0IZH3BS1hDMp
         v5HpUjV3QdTya4PFNm84l69+yY6Rl07fkHSbD4ILn9bLvr3w5FD75QFUCNLLK0adbwu1
         bUzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X1IjxJJxDMWAlUZ4WjR8vfjxD9i7QeZnQLbWau+hr2w=;
        b=T9SL7W9kjYETtzMUngOiA090+h5Cprv5NoFlNIY1w+zU2yn0qengKpJQNyeXR1PL2L
         /hrRHoyRViEMPj4BmDuOf9wqOi4K6BGnd+1hAGxWuQf5PuoKSq8dL3eO5NPcmiL+paW4
         JCTP06ByhNsRWjEhcWCKYZOoJ8aEBIpHqVuPs2X2z409vAS2qaTtXcWzOhZR/9Yleu50
         2psp5QnkJj2xclj4eRdWVh/Ujj123nCzgtiNWOeNb08eiUEHysPy9SykvlIi9kBjlHnY
         FwMm9WE+rfIaW/MDe4kT2NDOV6fVoV+DOYNlJARtnKvjoKlcooSHLFKsS04pflYxaYY4
         CurA==
X-Gm-Message-State: APjAAAXhR6VVOyaDm2jusloDO3ml6D1bCKTGYs7XjxUFLgu3+O7O+1wr
        4LTSHjQBpOv73ydqVauKmXs1aFK14wDbW5EhBhrZTA==
X-Google-Smtp-Source: APXvYqwyACjvGWNGgkwPrufrCiow0rWiDwCg8ObQ7/eGrZqpX1fin/kDROJF3DYdo4KqAwmTuqVW6FWtIZ4Mh9qKk0M=
X-Received: by 2002:a2e:844e:: with SMTP id u14mr5340967ljh.183.1576146445650;
 Thu, 12 Dec 2019 02:27:25 -0800 (PST)
MIME-Version: 1.0
References: <20191211010308.1525-1-dan@dlrobertson.com> <20191211010308.1525-3-dan@dlrobertson.com>
In-Reply-To: <20191211010308.1525-3-dan@dlrobertson.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 12 Dec 2019 11:27:13 +0100
Message-ID: <CACRpkdaTfA1+Wj--cqCGWDOQGMWnupSYRhQeGL2i7917mN8pEw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] iio: (bma400) add driver for the BMA400
To:     Dan Robertson <dan@dlrobertson.com>
Cc:     Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dan,

thanks for your patch!

Inspired by my recent work to revive the BMA180/BMA250 driver
for BMA254 I have some comments:

On Wed, Dec 11, 2019 at 2:20 AM Dan Robertson <dan@dlrobertson.com> wrote:

> Add a IIO driver for the Bosch BMA400 3-axes ultra-low power accelerometer.
> The driver supports reading from the acceleration and temperature
> registers. The driver also supports reading and configuring the output data
> rate, oversampling ratio, and scale.
>
> Signed-off-by: Dan Robertson <dan@dlrobertson.com>
(...)
> +#include <linux/bitops.h>
> +#include <linux/device.h>
> +#include <linux/iio/iio.h>
> +#include <linux/iio/sysfs.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/regmap.h>

#include <linux/regulator/consumer.h>

> +int bma400_probe(struct device *dev, struct regmap *regmap, const char *name)

Even if the component is always powered on in your design
please add regulator handling already from start so that we
don't have to go in and add it later. I've added regulator support
to sooo many IIO drivers by now.

You can pretty much just copy/paste my code for BMA180/BMA250:
https://lore.kernel.org/linux-iio/20191211213819.14024-2-linus.walleij@linaro.org/T/#u

Yours,
Linus Walleij
