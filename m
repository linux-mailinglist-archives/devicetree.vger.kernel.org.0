Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0544432C047
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243966AbhCCSkn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:40:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240412AbhCCP3b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 10:29:31 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CD3FC061762
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 07:27:58 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id v9so19933952lfa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 07:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=B7e8ps8+6KgtwjvkMtXtTUb/RUWQBqnIoQ/7yrVtwxM=;
        b=T3smYZREz3wZWOrOSabPyhBR1Ae/LDRY6AZCilnUYUMM5nMBXkOAhVBhw42fX5HQKP
         HhkbLxIvWgFs6YOQC+ZdY2/X2zs5Z+NfwmjNQceUwTVUXN7cJ6mk0kCf9ZguGvQoBH5x
         Ae/DKwVkOz1w8Uu0dg67GrEFQvegQ4wdvkdL7gmrBLyLSS9nt7j3K7AzKPCvW4ucVWEM
         kvYxd1lOv9fT/PQADKysIpq/+1xniWBx+88T8HXNSDCLNva7WKKLWnQKYV4hSR7Y5l0V
         FguLvQybJDffzc496glALtZFHwt74u/lZttgBD+EtgrzIJpxtsin0Gy495PcfYtytwFW
         WTGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=B7e8ps8+6KgtwjvkMtXtTUb/RUWQBqnIoQ/7yrVtwxM=;
        b=Wo9D324VmaApOryI+VizuRZogyR/YK1nvCiECFBoaiDiArn0ymQhx0qQ4i79SDw/OK
         IZmIu9g5RteUkOKiIrGVT+yZ9IAv2Z8A/OAm82pmYgj6ljrZ6PCrpofcGSfgN8HR7ECB
         JL2r3Z/64OBz0UixiF85mlrhyqqsHSH0PZA0XnALMUqrN7rCBjyRWuG8tXI2+J8adzJt
         h1CEX5UHP3HYdR4qh7E+7Kz3lf9+CpnIlJI9L1TpHW1c+dbe8H6bBZq/IFf8CjXjKaQG
         Vm1/CToeP9ZZC+dKAFxfQj9GmFQdVGqQ5qevH3F3o92z2HAeJSUbnlX5OrvT+ksux0ug
         YF2w==
X-Gm-Message-State: AOAM5334oA0A3n8noVdUZLi0/QQcH/qDjTfTVXkWbtDV5rJRkG7y32Bc
        U+ffXX3iJz9kEiPEPEa0E+0iMLsMqzJ3elerSbn7hA==
X-Google-Smtp-Source: ABdhPJxwSZfkYhtJWwEjy73tyu94P/P5s2En+mmWPKHZ4Ff70sGNABOhy3vBB9KOx8oiJgQnlsb7bBHfgb4lHbxSFgA=
X-Received: by 2002:a19:4c08:: with SMTP id z8mr14810793lfa.157.1614785276573;
 Wed, 03 Mar 2021 07:27:56 -0800 (PST)
MIME-Version: 1.0
References: <20210303142310.6371-1-noltari@gmail.com> <20210303142310.6371-2-noltari@gmail.com>
In-Reply-To: <20210303142310.6371-2-noltari@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 3 Mar 2021 16:27:45 +0100
Message-ID: <CACRpkdb56dB+f89Neuix=KKtAsYSTHKuCifhmmzN7jy2LuUbdQ@mail.gmail.com>
Subject: Re: [PATCH v3 01/14] gpio: regmap: set gpio_chip of_node
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Michael Walle <michael@walle.cc>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 3, 2021 at 3:23 PM =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gm=
ail.com> wrote:

> This is needed for properly registering gpio regmap as a child of a regma=
p
> pin controller.
>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> ---
>  v3: introduce patch needed for properly parsing gpio-ranges.

Oops a little bug. I suggest that I merge this into the pinctrl tree
together with the rest of the patches when we are done with review.

Yours.
Linus Walleij
