Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8CEE4146E4
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 12:43:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235017AbhIVKpX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 06:45:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234900AbhIVKpX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 06:45:23 -0400
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A640CC061757
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:43:53 -0700 (PDT)
Received: by mail-vs1-xe35.google.com with SMTP id f18so2478909vsp.2
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Qo78C9hpTaUZzshSE3JqG8ok1Cx6hErSNU/DUKP7eFk=;
        b=oAitpk7+hwMaSzXiFoweF6+l6LfDs62vtoxg8zfF1Brb15BUTYk0A3vw7YvX0PqHzx
         L4Y/1RMN6CUwiDmNgPLuzuz0kCe9a8KNFrR9e6uq0s/rAbH0FASu9fzwqqrYY6SNOxN2
         o7W9NfSNODqb+axmlIUsYV9UlFO6bLMt+5v4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Qo78C9hpTaUZzshSE3JqG8ok1Cx6hErSNU/DUKP7eFk=;
        b=xDyabBxKn+f4Imw83YlTeDlk4VEaNM0rjUa2WXkpz+sLKcYbpBTTJ0pMihufInN2QM
         CRdYk8hXD55TzhjUDUMJfMbAu1kG9TiNKjNG12ppspPiztSgzWuDcfD0chJ0cfvFOv4h
         9vdDFEVBbcrnUyOP6pyHrhJTwx66VSKxBYJjOuESYAGlIU0jk9bAY2WrHolNZ+bgNbVd
         xD0CnDnw4MbvRAdNE6nTIVCFK7D/A+GXpG0bFIsgCOtmTHNTi6xDzBqNw9EFnOq4rBFn
         Qbt21+T71+mIsNox5sZAJps4CUFCQat7ypX3YjhJR32S/WkDCYcD65Xz4m8wSWQCPbnw
         yVXg==
X-Gm-Message-State: AOAM530NbyllBqaTImvpGbT3QxZqCHZa2z/Ko9GLy2mGyYmvmSUT+w3g
        oVyTlsGAP9AMMHTj4vfGJUOldFnssRHN3UNkTHbnrQ==
X-Google-Smtp-Source: ABdhPJwPF6z5EYCd61rZYdUMIeZzdf+8Q0cyOmNAUaIoUh0BCayeTwfyb8i9gArK7fN+eXHN7cvjsRzmQx2wAsZ8Pbk=
X-Received: by 2002:a67:c01b:: with SMTP id v27mr11715890vsi.45.1632307432766;
 Wed, 22 Sep 2021 03:43:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210717045627.1739959-1-daniel@0x0f.com> <CACRpkdbE+_DJFhBCmtz5JwJupf7QkkWZhXrgf1KG_3rPqvEm0w@mail.gmail.com>
 <CAFr9PXmFHanrx4Frg3hQwo-RbAY-UXxC=FOAj++cshSHa99z3g@mail.gmail.com> <CAMpxmJUoG7qPhy2CxapCn1M=w_AssOQsEmyvXO18OpedM6hBjw@mail.gmail.com>
In-Reply-To: <CAMpxmJUoG7qPhy2CxapCn1M=w_AssOQsEmyvXO18OpedM6hBjw@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Wed, 22 Sep 2021 19:46:01 +0900
Message-ID: <CAFr9PXmCygArTf6njAwOz9b_j6J6vZvQXz3MHT=3gNZy6hU+5g@mail.gmail.com>
Subject: Re: [PATCH 00/10] gpio: msc313: Add gpio support for ssd20xd
To:     Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bart,


On Wed, 22 Sept 2021 at 19:20, Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:
> I only have a part of this series in my inbox and patchwork doesn't
> have it at all - can you resend it with me in Cc?

Sure. I want to do some fixes to the DTS bits at the end of the series
so I will send it as a v2. The gpio code parts will be unchanged.

Cheers,

Daniel
