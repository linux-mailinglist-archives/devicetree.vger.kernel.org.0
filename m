Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CFDA72FA84
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 12:50:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726450AbfE3KuZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 May 2019 06:50:25 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:37144 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726198AbfE3KuZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 May 2019 06:50:25 -0400
Received: by mail-lj1-f196.google.com with SMTP id h19so5587544ljj.4
        for <devicetree@vger.kernel.org>; Thu, 30 May 2019 03:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GujjVqYvghBdPSX7VxmS3hXD06wuFEV0tCXXC5n3oh4=;
        b=CN811zv1FoQncDkpdI4s24Vm513HQAcNhLAIqU7HDOaOPuJWllTxOn0Oi6d1Rjj6tY
         DVUDJveBUUWmitED4VkyHwOIjXWNOzwVDNjfLrbIchJ0azhabEyazvXu3hqS6w5GWz+h
         qVM6BU+lh+HOz1h/vWsg4SjwHfQzbkxm7B384a8peK/m0FWTquO1qRIGDLw6zaXleo3X
         +r3SViaE1FGYG6OKF3HYKIdGdA2QjzU1fNzEgnnZtQPB7jtNX2L+8OzvMLW7ygucnBJz
         0YQz1JSQ9TBcbxHU1ZtBHAxG+r+RNTeq5WvS/thKwYe3hYy2/lYjFJDm0gg9X0aPm6mG
         myXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GujjVqYvghBdPSX7VxmS3hXD06wuFEV0tCXXC5n3oh4=;
        b=jWu70RdIOsFSZw9ZOGcv20i9Iwm3WEQb99Btqona/9DTB7V8TDjgC0eV5dRLY8J2uk
         kobueCDRmY3+EwtPLXp9W7I2S76tfVH9d7SgfOeG0ZfnGn/Hj0Wn0ZDUfUXUnAB7L+4W
         sOYGOQK6h7Bq9pHpYzgGqKcoij7rfrN+VvRFv9delW6z8S3KNf1ECwanfNzFd43rPcNX
         uZdiI1MuVvtPD0MQi9waXWRkeYG0CEX9HHBbPbuHRDRRLVzWRV3sZDl00bN8r4w6xg3V
         Lwk8+kS/+1g8KS09N0KFll4Ww95ftqtOUluT8+fhdJ4h9/TE3YuT3upluzOcefowzSzd
         AZjw==
X-Gm-Message-State: APjAAAV0+VOpoHvxtLPtkuw2CqSSZeLzpZWmxDhmR06PGWgQRgoMl714
        LE8vyiZxkmMGa7g8W7v9Hakf2vD80JxHauKUb5S/8WTxL7Q=
X-Google-Smtp-Source: APXvYqyGYcwGA+tlm2mIFPQTecQ6k0i2fgItTjNXwyTFBBO6k++0mUY3y8F8YUjWgZ86rp7hRUeomyES04W9v59jRmk=
X-Received: by 2002:a2e:a0ca:: with SMTP id f10mr1730806ljm.113.1559213423052;
 Thu, 30 May 2019 03:50:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190530091139.11643-1-sudeep.holla@arm.com>
In-Reply-To: <20190530091139.11643-1-sudeep.holla@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 May 2019 12:50:12 +0200
Message-ID: <CACRpkdZZkfRPTH1h1EOC=YWt7tdqbOp3hpfFou8thsUf8_EqSA@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: vexpress-v2p-ca15_a7: disable NOR flash node by default
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 30, 2019 at 11:11 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

> Accessing the NOR flash memory from the kernel will disrupt CPU sleep/
> idles states and CPU hotplugging. We need to disable this DT node by
> default. Setups that want to access the flash can modify this entry to
> enable the flash again but also ensuring to disable CPU idle states and
> CPU hotplug.
>
> The platform firmware assumes the flash is always in read mode while
> Linux kernel driver leaves NOR flash in "read id" mode after
> initialization. If it gets used actively, it can be in some other state.
>
> So far we had not seen this issue as the NOR flash drivers in kernel
> were not enabled by default. However it was enable in multi_v7 config by
> Commit 5f068190cc10 ("ARM: multi_v7_defconfig: Enable support for CFI NOR FLASH")
>
> So, let's mark the NOR flash disabled so that the platform can boot
> again. This based on:
> Commit 980bbff018f6 ("ARM64: juno: disable NOR flash node by default")
>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

It's a bit sad that this cannot be easily fixed (I don't know if it can even
be fixed with firmware updates?), it's kind of useful to be able to
update the flash from within Linux, as that mimics what pretty much
every IoT device (such as routers) is doing and would be nince for
an OpenWrt port.

Yours,
Linus Walleij
