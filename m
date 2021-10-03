Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 582F142044D
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 00:23:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231866AbhJCWZc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Oct 2021 18:25:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231835AbhJCWZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Oct 2021 18:25:31 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4680AC061781
        for <devicetree@vger.kernel.org>; Sun,  3 Oct 2021 15:23:43 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id j5so58773703lfg.8
        for <devicetree@vger.kernel.org>; Sun, 03 Oct 2021 15:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O/FxwEf/ljL+I4K8aO0+PoKOHCdArWeMASBh/CyW6KI=;
        b=qfEM6cF2OLMJ53NY12A502/ixv0G/JjWTBwhzz6Vs80kkkAQIwV4j3WjIHq5h83E/u
         gALIQ93uVr1UJCCJ7pO04EtYFUNvZq2YdqSXywDUODnWpCI6pOzB/VfhUt94H5QcAxWG
         TRL3VFh9QmlcuPxI36TjKgl1MINdLQlBv+TO42mDQBbz30Or59QJ4vcHNzWhvRvsRjTu
         NIPkbbtmf9Q87owKeVnz4wl7eOlzG9FRiVPadol+T23718Gc19uRPN4tWUXNbLn+l3GZ
         4w/x1gohDsTd2UfvH/EpaE1MojnqUZwx8cb+QttCiwl47rD14tQ56JMgDal2iHEuuZkD
         bJ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O/FxwEf/ljL+I4K8aO0+PoKOHCdArWeMASBh/CyW6KI=;
        b=gwstgL/xh8b4VfOmHyT5rmtUahK2rM1HsgofpQ4hSAVOSvwjXInPSKKgxw01RA3nr7
         So64LV8aAiHp8DAob5dW1Z1trSxX2mcqTLoPeAb8yrfRcVVVI3+7zxnNjD58Sy/CViTx
         kbnrkx6a4XgK8wjMDXDo0Yn5wRrM3M2NKjalfRFHUQHpOczl3JwqEt5Xy7P9huYlkZ6e
         DuPiH0xC5p0bICU04Ea8uVfgm+HrwGu65HyI9/Ek2cmfI+Z2C+yeOHVXZvMdoGZXhOv2
         3e2Yr+xXtBrH8n1m28P7pVwunFLOvmXpUn0TxuOqzpfk4SHHOC1NGWbqWc7vBbt2EBjP
         UXQA==
X-Gm-Message-State: AOAM533AtkDdTG+/wHiZgzhpce5/tExDVM4GvLeLOaUr6rnt3CWnrkzu
        nI4xcQ3Os41uUN7IK9MYVjekhpiKZe5FZ+hY6pyL1Q==
X-Google-Smtp-Source: ABdhPJzEqjAKixPW3TyeCjj5pMRCXmNyWQBDT5fjYz1jQ20kea+SLwzvxYP/nVXSJ65JOfP1FUjILreDtm+FXVHhHn8=
X-Received: by 2002:a19:c10a:: with SMTP id r10mr9206931lff.95.1633299821672;
 Sun, 03 Oct 2021 15:23:41 -0700 (PDT)
MIME-Version: 1.0
References: <20211001191209.29988-1-joey.gouly@arm.com> <20211001191209.29988-3-joey.gouly@arm.com>
In-Reply-To: <20211001191209.29988-3-joey.gouly@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 4 Oct 2021 00:23:30 +0200
Message-ID: <CACRpkdafohAh8xdEgHGpJbZes8mMGjkmeYcz0=QgmGtSA2i2uw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: pinctrl: Add apple,npins property to apple,pinctrl
To:     Joey Gouly <joey.gouly@arm.com>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Hector Martin <marcan@marcan.st>,
        Marc Zyngier <maz@kernel.org>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Sven Peter <sven@svenpeter.dev>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Kettenis <kettenis@openbsd.org>, nd <nd@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 1, 2021 at 9:12 PM Joey Gouly <joey.gouly@arm.com> wrote:

> This property is used to describe the total number of pins on this
> particular pinctrl hardware block.
>
> Signed-off-by: Joey Gouly <joey.gouly@arm.com>

Fair enough!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

> +  apple,npins
> +    maxItems: 1

Add some smallish description like "the number of pins in this pin
controller instance" when you resend, but no big deal.

Yours,
Linus Walleij
