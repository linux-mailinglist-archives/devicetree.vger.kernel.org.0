Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC6565168A1
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 00:16:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378559AbiEAWT1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 18:19:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379346AbiEAWTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 18:19:13 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E5FD657F
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 15:15:46 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id f38so23435920ybi.3
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 15:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EZa3KFecoBDAZI3sGdRvdRLG2OabIpJAh/qlgD0QTyw=;
        b=gZ4y1gB1n3dYhmFPJNgmKJ4wD7DynMl+4/1VrcWFrkqkjJdHsbjyy24kM9asADNWeF
         lIh8p3v9bjSgki5q3N3zuwCksvEFai/YOdvafoBNGYkA5DnASuy8AwsYOgQ3X8c3Rw1e
         YKkP5gNmTxjHkVWFBdvhMIoFJFvfESZW7ztlEPu/8SNqfSGu8xpPnt41pSQx6Vl6w4eu
         hcfY0lwCFRrjnzR3cISrqkklJTZX9d5jWqtbq1cAJrKZhtcbJpTT0BBKvW5JxU+Y50sw
         qI3KBmu7zYsq1jIOku/lbbP0SojwNG4BkOAAdjHk4Zo+yRdawI8BIp2eq1UJ+ANxco78
         KJhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EZa3KFecoBDAZI3sGdRvdRLG2OabIpJAh/qlgD0QTyw=;
        b=NwPqBWKdthhG3t+OoCz2UpQuJOMIFxlG9XT1UM2Jw+mvqBoUF6wh1dkUmSDngEZoEG
         RkMZg9E+MP3G6mrpJEtPSR1iJi30khQXIxElsYbr1gqett7lBq0cyVJ8CBq+cSXj8ZMp
         u1YVoVTuuhDXW3nNL4tkk6vNq6oAp52/Z1ql36QQByqCA5r/hRK80El29z5HKQk5+Sgu
         o87fJDHGAOy+9UUbM/hF32a2Kdws2Kd8fMZQwib9abYnsCrRB/noHaFK/cLi3MaaQEmq
         sXXOjU0xx11xmPLD8NKNURbq8Xo5uu0LxXZxkJ/4swHaRgD1Ojoi5nSpj1/namLtrflr
         Sn0g==
X-Gm-Message-State: AOAM532EoDLJ183AzLiaME2KVnyuXIbMUfrhVezu2eDVqelt38OFpChY
        IF7xJ41xftgTk8TpifrJxJTGHhcj/wPo/9Ttc0u3ag==
X-Google-Smtp-Source: ABdhPJwJMJaG432ETlKc+ifIhJ1zzpxjhyRwkAdBz9IPbz1sqoK+LgyHwyFUymAK6GTKVOXqtB1ngCPEFbKwZnfIyJQ=
X-Received: by 2002:a25:aa94:0:b0:648:62f2:ef4e with SMTP id
 t20-20020a25aa94000000b0064862f2ef4emr8241916ybi.626.1651443345599; Sun, 01
 May 2022 15:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220427144620.9105-1-pmalgujar@marvell.com> <20220427144620.9105-3-pmalgujar@marvell.com>
In-Reply-To: <20220427144620.9105-3-pmalgujar@marvell.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 2 May 2022 00:15:34 +0200
Message-ID: <CACRpkdaqeTs-jHPBmtdiz+LdMM0pz0zqt4diX=e+YpgaGr0Jbw@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: gpio: gpio-thunderx: Describe pin-cfg option
To:     Piyush Malgujar <pmalgujar@marvell.com>
Cc:     linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, brgl@bgdev.pl, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rric@kernel.org,
        cchavva@marvell.com, wsadowski@marvell.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 4:47 PM Piyush Malgujar <pmalgujar@marvell.com> wrote:

> Add support for pin-cfg to configure GPIO Pins
>
> Signed-off-by: Piyush Malgujar <pmalgujar@marvell.com>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-thunderx.txt | 4 ++++

Would be nice to rewrite this binding in YAML

>    - First cell is the GPIO pin number relative to the controller.
>    - Second cell is triggering flags as defined in interrupts.txt.
> +- pin-cfg: Configuration of pin's function, filters, XOR and output mode.
> +  - First cell is the GPIO pin number
> +  - Second cell is a value written to GPIO_BIT_CFG register at driver probe.

Just poking magic hex values into some random register as
part of a binding is not a good idea.

This looks like trying to reinvent the pin config subsystem.

GPIO is using the standard pin configurations in the second cell of
the handle, use them in this driver as well and add new ones if we
need.

You find the existing flags here:
include/dt-bindings/gpio/gpio.h

If you need something more sophisticated than a simple flag, I think
you need to implement proper pin config.

Yours,
Linus Walleij
