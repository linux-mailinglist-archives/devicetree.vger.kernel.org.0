Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F1CA4A88A8
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 17:36:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352249AbiBCQf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 11:35:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234742AbiBCQf6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 11:35:58 -0500
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D0C5C061714
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 08:35:58 -0800 (PST)
Received: by mail-yb1-xb34.google.com with SMTP id i62so10647280ybg.5
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 08:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AH05FNi0eHjnyKWHpwP6aP5DMLc/YvS0qJ8PqKU0jks=;
        b=QnqDWAnXrKKAOcPkQk92Iauc3sa9kAsuMyDMKrp9zQJCzCD2su7lvlStR+xujSpkIH
         D9LVMXEG+GBwzkmTgqTn7PAkEBZZv5OpoXv85f0Aiaxp6ZCuR9SX8f0ppco88eHt/0XH
         n//IrSfq86J1V6SqQg4iF9b1R/Ot5LfCIj8/KiLEW0MaVcZu7w8jztwfPd/mKkm/ldLw
         HotMlGjgYvtRkK31Z8Sc8C7nEd/t19B0rfXJbPAHex0e/zWBYlWjAZ7eF+xQKa3SXXAN
         Xh5S9QAlYHjII1UhFOhQap7oPyfvauq8csAI2C34WU5L+ACo6v0/RXsAHolDjPDX3eVI
         EtCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AH05FNi0eHjnyKWHpwP6aP5DMLc/YvS0qJ8PqKU0jks=;
        b=xdOSmPtArSfqYLcczS1nIPT1+daavccvIxC5GYbVi6yD51QcRIAt6TqbF728Z7KOe7
         /2+k6IFlwGEqOjo0w0BdpotnvQpvi6s2SzkvM9YbeD/Y4q5+td53oYW9tL58ICnK5GhK
         MQKsN6/3e/gqUvdukagAfH/VDDTs5Na6QHhTFU8aNRoBlSUmBBFDw0Vq2XjiOhPwoqyS
         Tm4UK82p300imegNZaMBj2UC5LsMfhYZH6j5P3n1zxbW3IEq3MBbZ7jC+dB4Z/m1lfSx
         gw2/3HOClrf+xM7bsJKQNomlvofKmQZoKaRUtUktlk9dU7IdU2WZMtOqX4nNvtU49dv8
         Z/RQ==
X-Gm-Message-State: AOAM531iC77reJ0rF6jry1oZUwYCenqwto+3xPf86HMbLFIcUw3+6SMf
        FOF7ot8jZYsdjF8PaMSK3nPsmyPjymdAEByEu/XF0Q==
X-Google-Smtp-Source: ABdhPJwa+7BO2viz+KvmyLlQG2IVqXMRSJ54OwUetrl3DIY0CC33McuCotiiQ+uVGoEhh/EeBwIAcM3UMG8Wov2yhEQ=
X-Received: by 2002:a05:6902:72f:: with SMTP id l15mr3454839ybt.511.1643906157537;
 Thu, 03 Feb 2022 08:35:57 -0800 (PST)
MIME-Version: 1.0
References: <20220202235049.8051-1-samuel@sholland.org> <20220202235049.8051-3-samuel@sholland.org>
In-Reply-To: <20220202235049.8051-3-samuel@sholland.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 3 Feb 2022 17:35:46 +0100
Message-ID: <CACRpkdYZD5-Tyx=QsT=nfSLHk9_ngSYALJdwyi=S1=n8e6vPUA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: iio: st: Add Silan SC7A20 accelerometer
To:     Samuel Holland <samuel@sholland.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Denis Ciocca <denis.ciocca@st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 3, 2022 at 12:50 AM Samuel Holland <samuel@sholland.org> wrote:

> This chip is not an ST part, but it appears to be register-compatible
> with the LIS2DH, so it can use the same binding.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
