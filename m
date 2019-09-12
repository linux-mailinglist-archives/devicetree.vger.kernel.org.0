Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2BC1CB0B0F
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2019 11:17:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730454AbfILJR2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Sep 2019 05:17:28 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:43534 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730386AbfILJR2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Sep 2019 05:17:28 -0400
Received: by mail-lj1-f194.google.com with SMTP id d5so22876535lja.10
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2019 02:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=szvOgaSKQHuR91dwCdpTxKgQS8xunWLLdcGGO0krnL4=;
        b=sA7zUsLieMzsUVFjX2+urBr0+1oZ9bvhGRHA4G0cboyuuO3Y0mq+djLeDOwM0jAPY4
         /QNlB9igugVuoWRXJRNqk4JkA9GyMlt0oRVwCZo+/fm0cn6IFuMcU30YnHCJLopTFQqP
         EW8b1fGL078UUPetpRD6ZnYfylArrpW1c6mqvxdiMyE+k1g1tk6KPkC11hwPTtzJ9WsU
         Cg9K08Wep9/wMuKC5cmgo0iE0qOqEnvACztRLP90QbET4V/YHOZeiJvgxXL+TDeQYoHd
         C/sGr9e//liFGE+rDfKNa0KlqNI808auphGPLR8RhaQFbgU3KGv8Yv+BC1uVses4g8xU
         t7WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=szvOgaSKQHuR91dwCdpTxKgQS8xunWLLdcGGO0krnL4=;
        b=XlAI7LJUDl4g8hxeTG7dxf4osxkFjjOGuceQ/iA4RH2tUum2r53J0pRvYf4lyIrS8h
         l5cpAN+wFA59Ij70so6+aZhAjbKsad+rV3zewLHuRAvttguaIRlrFVz5SLsrvJw3DRty
         dR1f5sjJeYQzmw0YT3P3aIIoymzU58WZ6ofpivTF9PxA9h3wKP+HCRk3oor4UcjM2y0O
         veZ3I07dUE/sqAX2H46B/vZ69dtwpj7yqvr8qglk6snh+PmR3oL4x4hrhpEUk2PmpCZJ
         l9W9x0U2nenZUJAMQEDK9uL/+vvA/rvWp7eET1hgdX0I6zsk0GcvInKTr4mmXClGWdRP
         beog==
X-Gm-Message-State: APjAAAX5tVq3Z0eRzd71O7AMdS8/fIr3dGIoS84Qbt5GJRNv0eThW1Qc
        qbj8L6FIyjzpY3ZHXFxGHA1XT4T+3EK4v7jJS8g31w==
X-Google-Smtp-Source: APXvYqxL+8XFoDpn8Dd9sc3WWzP6/eBNJgZM935Fj7SoXm0Pq+8cYMp8gFoV2ij+afLEJn83FenUjyZivw8vujXDIuM=
X-Received: by 2002:a2e:9dc3:: with SMTP id x3mr22302607ljj.108.1568279846715;
 Thu, 12 Sep 2019 02:17:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190910152855.111588-1-paul.kocialkowski@bootlin.com> <20190910152855.111588-3-paul.kocialkowski@bootlin.com>
In-Reply-To: <20190910152855.111588-3-paul.kocialkowski@bootlin.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 12 Sep 2019 10:17:15 +0100
Message-ID: <CACRpkdY40PZc9R-yFwooR4-WMgn3LH7K+yTx00ZNxyq6OOnw6A@mail.gmail.com>
Subject: Re: [PATCH 3/3] gpio: syscon: Add support for the Xylon LogiCVC GPIOs
To:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 10, 2019 at 4:29 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:

> The LogiCVC display hardware block comes with GPIO capabilities
> that must be exposed separately from the main driver (as GPIOs) for
> use with regulators and panels. A syscon is used to share the same
> regmap across the two drivers.
>
> Since the GPIO capabilities are pretty simple, add them to the syscon
> GPIO driver.
>
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

I'm fine with this for now, but the gpio-syscon driver is now growing
big and when you use it you are getting support for a whole bunch
of systems you're not running on included in your binary.

We need to think about possibly creating drivers/gpio/syscon
and split subdrivers into separate files and config options
so that people can slim down to what they actually need.

> +       *bit = 1 << offset;

Please do this:

#include <linux/bits.h>

*bit = BIT(offset);

Yours,
Linus Walleij
