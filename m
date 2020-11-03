Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37AFF2A40D5
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 10:56:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728055AbgKCJz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 04:55:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728040AbgKCJz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Nov 2020 04:55:27 -0500
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B56B2C0613D1
        for <devicetree@vger.kernel.org>; Tue,  3 Nov 2020 01:55:26 -0800 (PST)
Received: by mail-lj1-x244.google.com with SMTP id o13so10028290ljj.11
        for <devicetree@vger.kernel.org>; Tue, 03 Nov 2020 01:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fq4LHl5XG3kdk6dhCjgR8hNmKo1bg3Z0xwsvFLhHhcQ=;
        b=yt8AMikKSv7izXfLEON0zW5bDlX90AU3hCz+osA7iv5STprotNoYQImrr34uaO4jA5
         Yz5RCuzWH5sEIjY2rWxkaAVYRXQzEugJBhzoIYotW8evGile5TJ8vREnCCpPygnFH8yX
         D9AQdr+XTjo/8jwmvjLRO3byl21ONDHBelaSewmVKvOaQ+UnyYEyrgT4Ob0r0MfZDll7
         NrirokyNLiXt4b5ANn7sQaX8v6BkYjDFgsL/G41FFYqgB8THD5Ty02c0NjkiLaGDLD6d
         RF3jWvRKc3bDO5e1gEp4Rl4BkA6UZuvlf+NZILc4TPcuTq9h2am7qlS7HXPED43e/x3R
         uCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fq4LHl5XG3kdk6dhCjgR8hNmKo1bg3Z0xwsvFLhHhcQ=;
        b=ChLarhSzrhFHrQBVie4obW5Yjn7sXjAZ13cRob+nCSE4Ao2LRztPbBJ3gx+Uw4gD0/
         G8duaIglFTvDXc7ZEQ0Vr3PxfjnEO/tJ2vExsf536DnZC+3bZP9TriGXutiBJ1uOdFdg
         7SOXm/pHT3hQY4RcqSEUnKc4O7qj4TDflgZabL1QO3144ekOqX7JKUqrITOC3W+Mo9Ot
         EGXYg5q/XcrRd1PK21QUIP2JTas0lErRltdecAquS656j3ypPzoA/28nTA8s9G3nGh3u
         7mFV5N7615+bJsiHh8g4nY/QFNCuJW/f7vfAKX+NwodKdWY/5tH7+kh1+dT4oTU0a9Xq
         jY8g==
X-Gm-Message-State: AOAM533muo3UAw0SoJ2xYQDY8zNtpryZ81hI8fr10VGCWpX7LB5BuaNN
        KR3kNXx+gKlwq2uMb2uEb3hX9LPQRZ/AQcGN4erUDQ==
X-Google-Smtp-Source: ABdhPJyD7BuxsFo88BjUVf4mMu3Zx2TAGm/nXsbevnm+YG/eagy5MPRrS/P+PI+uclv/SBErdlJoTld2ixsXUu88Lck=
X-Received: by 2002:a2e:86d4:: with SMTP id n20mr8764121ljj.293.1604397325248;
 Tue, 03 Nov 2020 01:55:25 -0800 (PST)
MIME-Version: 1.0
References: <20201031181801.742585-1-jic23@kernel.org> <20201031181801.742585-4-jic23@kernel.org>
In-Reply-To: <20201031181801.742585-4-jic23@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 3 Nov 2020 10:55:14 +0100
Message-ID: <CACRpkdZaoeKR6bzQd2jWFiXdpqJRH-Rb-_miWb8Gz5Hqj=B3HA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings:iio:gyro:invensense,mpu3050: txt to yaml
 format conversion.
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     linux-iio <linux-iio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-i2c <linux-i2c@vger.kernel.org>,
        Wolfram Sang <wsa@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 31, 2020 at 7:20 PM Jonathan Cameron <jic23@kernel.org> wrote:

> From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
>
> Very similar to the mpu6050 binding.
> Only unusual element is the i2c-gate section.
> Example tweaked a little to include a real device behind the gate.
>
> Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>

Sweet! Thanks for the help.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
