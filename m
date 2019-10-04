Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BCA8BCC3AD
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 21:41:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728954AbfJDTl1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 15:41:27 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:40506 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725932AbfJDTl1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 15:41:27 -0400
Received: by mail-lj1-f196.google.com with SMTP id 7so7653141ljw.7
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 12:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lKdiNzyflX1qifC5XC0/R1ENRYDqFG5nqNIeHJGhC9c=;
        b=KTwXzKKXxYtdYVYAyRPHF5pabKA8YkMM0SRyWPhD/SpHiZ5JiNFPBkCEeMw9/3PqZU
         /KB8zyT7qfMfNp/S5nfmS2hQTwPdPfhP2er0Oeg2qOINbkqOCFnRkq4bUY3h6Rv2nlfT
         1ZquD6PxAawVJm0tLCJVEep05bgPNEs2qJo2GQW84SP+GuErKh+d0I/iNYYb9s6sJVA0
         X11fWhKRQeyVj1Qzx8a0cN+yz4sVpCJUNUMCE1bCrjz1IjvjMCt0UsgxpfvT3w/dWw6o
         3RwY1eK31O/i6p8w6fbSMuXwfAsOiI2bPO1s7ITVaJFCNpVaBpsGwip2JYRX3fOOKL8H
         58nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lKdiNzyflX1qifC5XC0/R1ENRYDqFG5nqNIeHJGhC9c=;
        b=Z91WSI2MaTXgjo46s54hYDHXC4tqBve+93rlqoOnS3bQ+9dSDOy7nJaPZfyijqKqni
         yWRgZb5jKU8BVum27hPdO0GhDZL2m/gXZu7em3t7gTzmnlBi8G34XX0eIdFnemOH9YQL
         MFwFbXrcxHXuKVLX/elYHd0yBXfv2YJXOwutRcXYlVUmYPqQ5DurUgf68rI/IpZjwtIT
         Bl+Fk0wiqFsoe9v8xO/BpWWmnWiLcCITm6XWzNf68CAt06x2wK7h8duCqAwdMxjTc4jx
         am16JMGsHnMRkdp9dnywyMA7KbSA5XY9rCDQKq8Egvg8jkLceg3Q5ShniCJdIozPKqBe
         f0Jw==
X-Gm-Message-State: APjAAAUC9rV5JvFbrFB8shcULFvK6Ed8jd0mWPG2Tzf9F7aQC9WrN67b
        mrCDk0Mw75phAh45QxzHi70Q8do1QuLUGplNfi55JQ==
X-Google-Smtp-Source: APXvYqxcAjEf5jSw1FQIUN5tjMJ7zHHze2fmxgHbMJDye516yP2RLhmHOWNNK8dMzlSsiqV2U5SsXtnT8VHpBX+Oaxk=
X-Received: by 2002:a2e:80d3:: with SMTP id r19mr10309621ljg.41.1570218084405;
 Fri, 04 Oct 2019 12:41:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190917124246.11732-1-m.felsch@pengutronix.de> <20190917124246.11732-4-m.felsch@pengutronix.de>
In-Reply-To: <20190917124246.11732-4-m.felsch@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Oct 2019 21:41:12 +0200
Message-ID: <CACRpkdYAjj+EuF+iu4fKjt2Cviu8V+U66HnQThawwU58UGRUzQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] regulator: da9062: add voltage selection gpio support
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Support Opensource <support.opensource@diasemi.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, stwiss.opensource@diasemi.com,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 17, 2019 at 2:43 PM Marco Felsch <m.felsch@pengutronix.de> wrote:

> +       /*
> +        * We only must ensure that the gpio device is probed before the
> +        * regulator driver so no need to store the reference global. Luckily
> +        * devm_* releases the gpio upon a unbound action.
> +        */
> +       gpi = devm_gpiod_get_from_of_node(cfg->dev, np, prop, 0, GPIOD_IN |
> +                                         GPIOD_FLAGS_BIT_NONEXCLUSIVE, label);

Do you really need the GPIOD_FLAGS_BIT_NONEXCLUSIVE flag here?
I don't think so, but describe what usecase you have that warrants this
being claimed twice. Normally that is just needed when you let the
regulator core handle enablement of a regulator over GPIO, i.e.
ena_gpiod in struct regulator_config.

> +       /* We need the local number */
> +       nr = da9062_gpio_get_hwgpio(gpi);

If you really need this we should add a public API to gpiolib and not
create custom APIs.

Just make a patch adding

int gpiod_to_offset(struct gpio_desc *d);

to the public gpiolib API in include/linux/gpio/consumer.h

and add the code in gpiolib.c to do this trick.

Yours,
Linus Walleij
