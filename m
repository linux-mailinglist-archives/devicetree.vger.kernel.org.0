Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D69D310B0B3
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2019 14:59:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726852AbfK0N7C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Nov 2019 08:59:02 -0500
Received: from mail-vs1-f65.google.com ([209.85.217.65]:39576 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726320AbfK0N7C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Nov 2019 08:59:02 -0500
Received: by mail-vs1-f65.google.com with SMTP id x21so15245117vsp.6
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2019 05:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gAq++vOmWlGE0rfhdloa1GAF3bf8ceEKuBq/5jw6JRM=;
        b=autV2GM15bvqwiA+NNcmk4/aTXU/HSFEF/5su4++BbyqM9TTPEl160Dl4aSSi4PSHx
         7dEzEqyacVs+yewRvnBZ83UHqscNkWGpzMcJWLLLi+QCkk1xhjhnBlxejNfHU/qVmTuj
         T8igdSS/tZRj5c7YLCT4H6AYMtIaHIBwPBfL+kI7kHRiUmSNwFnRVIFTZRS1Wyt1h3R3
         cyqBUvI2GSXDWeDlgidAaqloDquB80gWY3CD6nCyEEBi1JxlLSFZcsLD22SLWLifDTD2
         +z7R1ny87pHoyTM6Q6jqCBqMtdOrTs+pljEMTkDmflCfHXKg6KEMU4pBGfyFDHpkZxXz
         MSgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gAq++vOmWlGE0rfhdloa1GAF3bf8ceEKuBq/5jw6JRM=;
        b=n59yKJmqYYyU55bHoJ6OV+4bLusr20OBRo9dpE1HzbfgaqhVx/ceL8gVdHnbCaq7vQ
         Ac8VoxeqdckZmsfR46LFTs2y9xY1hbXpn78oW/Cm12+izHbZwPPwIIf3KneFH1z00KHg
         fzGxn6eaXRMt+UhmrBIi/NbE5HwMeXedwdCZpBoi8vG8HF4fiK4jjrnTOpRx/LUsyjmM
         I+MfKjvrRTn52ef5lP3HsznPsd3WJL1wdAX74gQNdFsu9fh1Z2hpe0C4IfczmQgw8zpK
         9dJ+IQ+9Ju/5JeNWPkXFjx4ybfIz9qAVdbIsNsGTXkkCNVqzHCsKhkpIIrLMvO5ZDEM4
         WGYA==
X-Gm-Message-State: APjAAAXprrwSNlbzAQkyYkaaNPaEIvZ9nuhP/otV6+6v8naoTnhp+Qmk
        s/m3m+KpuCJqEbLXAp4e2q+m1HKNnO8RwZ4sPOi+Sw==
X-Google-Smtp-Source: APXvYqyf8H0dROBB9bvOXaLHvIe1OfTnJRLDLNL9AnIDcuNOVVLHNLEtVlUz2d1I4D3NhQ2ISu26ZnJQDRyo/JcRIiU=
X-Received: by 2002:a67:88c8:: with SMTP id k191mr3366250vsd.86.1574863141682;
 Wed, 27 Nov 2019 05:59:01 -0800 (PST)
MIME-Version: 1.0
References: <20191124195728.32226-1-stephan@gerhold.net>
In-Reply-To: <20191124195728.32226-1-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 27 Nov 2019 14:58:50 +0100
Message-ID: <CACRpkdagXoVamNGj6hQ-0YQAoDpwTVOY8uUCVB8wwsXY9aQj4A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ux500: Add "simple-bus" compatible to soc node
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Nov 24, 2019 at 8:58 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> The "soc" node in the Ux500 device tree does not need any special
> handling - it is just a simple I/O bus that can be accessed without
> additional configuration.
>
> Therefore we can additionally describe it as compatible with "simple-bus".
> This can be used by platforms to probe devices under the soc node without
> special handling for our custom "stericsson,db8500" compatible
> (e.g. in U-Boot).
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied.

Yours,
Linus Walleij
