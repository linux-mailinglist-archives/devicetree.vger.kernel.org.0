Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92D94623F44
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 11:02:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbiKJKCT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 05:02:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbiKJKCS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 05:02:18 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC71C6B226
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 02:02:17 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id a67so2242929edf.12
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 02:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VU3oEISNUYg+d9wlGb/h98JkMGsEQ9ti4i8WQ+4TZ8Y=;
        b=l+2q3EoEkmW8KGxjLUAosaPRqu2QuiS97YcetdfBswNY2l1mTPG41tKL/97tNx2aqd
         7mSqpF6EUPeU2jC3TP48/iKnJqPBF5FE2P6AjYJZGIu56KfW7qJL3cmD08aTmnBO9lVE
         07dTococsvCklATL4SyE1b/aEr4+0J06VUIQYMJyDglGDouF0LJI4htyQq8QwuxsUsyo
         w7oHSV75DAvKrCuBRg1V+HMXwXlBMcPYYy1GwTQXuMfSt+qEFbOJz2ST/Akt2O71n796
         mpvHe1TqQ2cvW+5JN36H8uHw/pkQ/k8tQPO/FF9mBxquofw6+JXnXMMGJ3aOa1/7hOxc
         aV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VU3oEISNUYg+d9wlGb/h98JkMGsEQ9ti4i8WQ+4TZ8Y=;
        b=yDGPlpy1Imt8y7sE9NnhimYEAmsYFDeC0GX10I+gvh+NzagXqjoCtHveI2c9zUfAPq
         n1F54MBFzaQ46ctOv2bsE2xvmZp7ArpJAesDriGnUb82hyx+pNLJ5S5YGGAF2EDa2MgU
         taAXXPhIqOYu0Ptdb0xUuUETGbFfqsK5piRZbJ6dAOU2OAJRr/AcQvs9R5Z7diCEUO/c
         aXi68FVMMpwkycfks8/N8jkFxxGL/FLuLCjM4PXnexU258Y/tC/WGz6w6Y5zt5A/eUfx
         kHvMAdMkLZ5Lzs0FYF2A6vdFYwGSFN1Qww3GP3xUwxW6hqDRO0j7Bo19VFiOxXN75owy
         zo8g==
X-Gm-Message-State: ACrzQf0oXD5c8UPxRok8ZqRqNFT7dnc3ov5qsKPLvs5S3fiMT7Nm+WMO
        qOiY3uHdSqhgB7+8OACQl2saQBWoGvLvc+zhJm55hw==
X-Google-Smtp-Source: AMsMyM7KfumBAxq1O0Hu284/fJyh87E4kMzRSpVWatlLqnsWvCWqK/Oe0aeHJFcUG6KvsBG6hLjUYXOuJ/9EBvQNA3A=
X-Received: by 2002:a05:6402:659:b0:463:a83c:e0af with SMTP id
 u25-20020a056402065900b00463a83ce0afmr1914987edx.158.1668074536441; Thu, 10
 Nov 2022 02:02:16 -0800 (PST)
MIME-Version: 1.0
References: <20221109165331.29332-1-rf@opensource.cirrus.com> <20221109165331.29332-6-rf@opensource.cirrus.com>
In-Reply-To: <20221109165331.29332-6-rf@opensource.cirrus.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Nov 2022 11:02:05 +0100
Message-ID: <CACRpkdbY7W2rDZ4knkrRHBSTn7MKYV3LYh_r8Wkn1Hh=j+oL5A@mail.gmail.com>
Subject: Re: [PATCH 05/12] pinctrl: cirrus: Add support for CS48L31/32/33 codecs
To:     Richard Fitzgerald <rf@opensource.cirrus.com>
Cc:     lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, broonie@kernel.org,
        tglx@linutronix.de, maz@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, patches@opensource.cirrus.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 9, 2022 at 5:53 PM Richard Fitzgerald
<rf@opensource.cirrus.com> wrote:

> From: Piotr Stankiewicz <piotrs@opensource.cirrus.com>
>
> Codecs in this family have multiple digital I/O functions for audio,
> DSP subsystem, GPIO and various special functions. All muxable pins
> are selectable as either a GPIO or an alternate function.
>
> Signed-off-by: Piotr Stankiewicz <piotrs@opensource.cirrus.com>
> Signed-off-by: Qi Zhou <qi.zhou@cirrus.com>
> Signed-off-by: Stuart Henderson <stuarth@opensource.cirrus.com>
> Signed-off-by: Richard Fitzgerald <rf@opensource.cirrus.com>

This looks OK.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Does this patch have compile-time dependencies on the other
patches or is it something I can just merge separately?

Yours,
Linus Walleij
