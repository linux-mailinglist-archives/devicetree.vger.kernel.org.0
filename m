Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 836EF3C8002
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 10:27:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238509AbhGNI3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 04:29:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238511AbhGNI3n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 04:29:43 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92539C061760
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 01:26:52 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id u14so2261235ljh.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 01:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8zfNM5YqJ9ia0d7b1JxsHsYsljSn9Qi6joq52XtjhSc=;
        b=EeRP5cYeC6+cRM+wF/8DpZgWNdBfy9oJSwyZ8rIhnn03+sBLW1qWs1zHamDZ3mTDuo
         +xyI+1NpIYnI3pRulS51eok/Tk2aSBs7dcYsRKJx5CTTcxhE+SCPiNpVl7iixUa2L42A
         dfqcujcDs8Ofst4Trj0vMw6uiRs5HVtarpJcK+8QZdZ5sUpWbJ81V8XlMrYBKg1G3zyi
         wCyAaQL2mTn1hnBMsXocBb+ofVC24EKbM0iL0YsW3ZBCytYA9oGhv5aaYH+o6j2HDbwT
         t2fG1VtW1X4DrG9BJhUHOh7ENRxGqMrhZw8lrGFv8AO5hnPDGzF6/5mKeAAao8TleGjl
         UBcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8zfNM5YqJ9ia0d7b1JxsHsYsljSn9Qi6joq52XtjhSc=;
        b=i0CwwR+xWra20bUb0kpJ4tZnkMpDskg3blznB8DPRz143mWap39xGBHchsjQ2O6idj
         CIFc8EFCHda00L23fORyc/uU+lq2mEnwNVSXsHMy00d/OOnSgaJL5gcNfyxFNl5YcWCY
         VR5H7KyPbtW6OIKZpYfPT1T1ADdJas+1EghxWY+I4p91XDyDoYucWhXmVSj07f1E1Sjq
         qZL2nihXgGLnkp0WJTbGcV56fzBYHezDgCTIoVxx8IkShPaqFXhNJRl+hseI9ActGq0N
         Nr/PA+Hl8RPqzTnXp7pCu9jq/s1+UH9h4iCU9OkCXnwq0L0ahw6rBh2vn1xVmSygTpDl
         AyPQ==
X-Gm-Message-State: AOAM53158xwESQLgJ822IE5jJDuZbwKcqHr7hZ1Qxddt/6uVd0WLKsRK
        wYTE0C9+1iTVMCmYC+/+kl6PbfD4yBKVRR/Wyzw6Zw==
X-Google-Smtp-Source: ABdhPJyrH3MVRoc/cKZlUL7NFDICRxRUvv+gmLgI6eAsl9jEWbS+zVKI/MD0QtSkYNVI9ntVf9RL77birvDsRMfycVQ=
X-Received: by 2002:a2e:9b45:: with SMTP id o5mr8171451ljj.273.1626251210869;
 Wed, 14 Jul 2021 01:26:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210412122331.1631643-1-linus.walleij@linaro.org>
 <20210712130444.bois24oukqmxpg27@gilmour> <20210712145639.00004604@Huawei.com>
 <20210712141613.66hw4glnkqlw3n4d@gilmour>
In-Reply-To: <20210712141613.66hw4glnkqlw3n4d@gilmour>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 14 Jul 2021 10:26:39 +0200
Message-ID: <CACRpkdZqth9kYEaCr=C88=EbhEy+r5V1vPXOPKNky5HeP7QxPg@mail.gmail.com>
Subject: Re: [PATCH] iio: st-sensors: Update ST Sensor bindings
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Jonathan Cameron <jic23@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 12, 2021 at 4:16 PM Maxime Ripard <maxime@cerno.tech> wrote:

> > maxItems is set, but not minItems.
>
> Yeah, and if one is missing the other is added with the value of the
> other.
>
> What the schema enforces currently is that (for the common part) the
> interrupt list can be between 1 and 2 and then for a specific set of
> compatibles (including the LIS3MDL) it has to be exactly 2.

maxItems is not an intuitive naming to what it does so it creates
bugs like this :/

Can you fix so it works with your PinePhone DTS and send a patch?
Perhaps also add as an example so it doesn't happen again?

> Even the common part looks weird though, it says that it can handle up
> to three interrupts but has maxItems: 2?

Maybe just drop maxItems for now?

Yours,
Linus Walleij
