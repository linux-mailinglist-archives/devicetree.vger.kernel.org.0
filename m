Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CF4A1E092B
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2020 10:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389233AbgEYInt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 May 2020 04:43:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389197AbgEYIns (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 May 2020 04:43:48 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED7ACC061A0E
        for <devicetree@vger.kernel.org>; Mon, 25 May 2020 01:43:47 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id a25so8222172ljp.3
        for <devicetree@vger.kernel.org>; Mon, 25 May 2020 01:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c9oiGHt9PBJoqyCwwv33bq3uxWQdSndxMSFHyZz70QE=;
        b=BuX4Q2f/lzQJvGFKiZIlqhWhogs8lr3fcw+sZpc6G0plTK1oabro108MGvtaiMSvta
         IzZFgH3+6dAj+mW+ilQ7e/Xl3qGFGW6UnRz++vvMtNvH1Iydo2gAxmFleD0bCTlU4OGC
         WwXgktHERh4xL568BMwGrFum1lfAr0lvZvkgIMvJ/l3p37faF/Pd/c+DTzCgHDQx5ziE
         3q80wbIKz14cHdt0Vuc82XCE2gQN0QuoZWse6gN5xqWX6Gj/Ry9TO1bXYOtWeC4TKK6p
         mXvZxZy6QaF74rDikcFGZuln8XZAp3CRQDDJsLVCEudq94+aVsntxbcgyavrHWMaSvVP
         WM1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c9oiGHt9PBJoqyCwwv33bq3uxWQdSndxMSFHyZz70QE=;
        b=r+EbZsvEMUAp6D6Ybb8rKAD2zXQlFkFaMXVJ7+PVO+pG/goEV0pjQymha8jRAx6jrj
         +kADAIgjBdYJRo98U1WdDEmvWi07qf/YbB6EFuzZyepipJU4GzXn3WkQnBx2/7VBpLH9
         9ijrMWjUkx12jvNezFgnCeQmCq6NRbGIApVwOz+4AlpfrHPvCV7wZa6GCxFQukFYs3Lx
         6dKdS0mHwzobKbHa2Kek8Jk0mtJcwZAn7DnV+yyYRjkzU3e3fKB2pmHK8ivPuLypMdtR
         GQD+FxNnwSSaNzQBbIygK2y6eThefcul/FSfurEVZbiiIkTAqZVvH5luNcFOH4q6IP/y
         YJJg==
X-Gm-Message-State: AOAM530ggnK+5MN/cULm4zJC7Ycppa4ek+vm+zNZUT6KXVpxYYdM7KpA
        EIFXTUif6iY/IwwPqrTNw1ZQSr4djKQ6FAUeVOXAGQ==
X-Google-Smtp-Source: ABdhPJzJzDb/nbfb/AfHIt2PD8Hlir7+oQAowRn9WMca5ooAz57VzWQdZv5VnV8f24g2bCjQh6/IWZyE5mAFUZu4TZE=
X-Received: by 2002:a2e:3818:: with SMTP id f24mr10278752lja.338.1590396226463;
 Mon, 25 May 2020 01:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200518133645.19127-1-jonathan.albrieux@gmail.com> <20200518133645.19127-3-jonathan.albrieux@gmail.com>
In-Reply-To: <20200518133645.19127-3-jonathan.albrieux@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 25 May 2020 10:43:35 +0200
Message-ID: <CACRpkdZrcie3Op2aLoTQgwT-2so+s2FqKn0R4B8VQ7qcxz2oCg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: iio: magnetometer: ak8975: add gpio
 reset support
To:     Jonathan Albrieux <jonathan.albrieux@gmail.com>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Steve Winslow <swinslow@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 18, 2020 at 3:37 PM Jonathan Albrieux
<jonathan.albrieux@gmail.com> wrote:

> +  reset-gpio:
> +    description: an optional pin needed for AK09911 to set the reset state

This kind of properties should always be plural, so
reset-gpios please.

Yours,
Linus Walleij
