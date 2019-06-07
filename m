Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 784A93986C
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2019 00:18:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729511AbfFGWSa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 18:18:30 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:40404 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729291AbfFGWSa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 18:18:30 -0400
Received: by mail-lj1-f195.google.com with SMTP id a21so3019747ljh.7
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 15:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gldb3yKNAdLFuCuMW3i8lSkcWD9AeAuQqWMCJcjMt1w=;
        b=G9jAqm4GrJw44aseApNTMp1ZjQ/aMJNeUyiv8kQagv/gNhX33BEX/CzFFfoO08fSPB
         FIRt58LdAq424pNBetPm0eg6QkNKMjoFW09a34suTKYEqckDAocINkl4cJNxDodCE96C
         HhxaX0N2dtDsMgQTRenOa3Zz57TDPLOznIac0ahpARr0gBzRph6O+fMw7xfyM5gNCyc4
         ZEwFIOTj8bRtPvpJ/TJwP+iooxqBStOJPX265Lu/PgJ4qiYq+EqEOfo3dHGcStjFlqV7
         i7GxnfE3GpXg8kAr9/410RMqCH8UFTsX34P3RGCzpBMeWL/RtxobGuc1DPYjYqXccE1K
         XzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gldb3yKNAdLFuCuMW3i8lSkcWD9AeAuQqWMCJcjMt1w=;
        b=SAskVZMjV4DVtDlRKq5yI24Swd1mWDL6ZpftuYt1HSYDs7+MoADJEXx3mJlbV93V7W
         75JhQFCqIHzFzqVfA57Wveok3lR9+kzOxW06rULz/wia4/bQZ8vHynch8XCdD4btUnUa
         glInX8YOi3qUBaqY0tOkKxOp32Kvth9b5h5zrQwcYtfrC4z9rRSb8XimHfOIZvySq7p0
         IaMEkOnvW9YUmCa8SrCI9AX5FT4Xt9Ze6M08d3QI8w1hczKXeaqa6k9fP/yQ76EwXjNv
         OkNBCWzVmnBwHGt2X5Pnx0OgE0DWMzd9xzjV9n/lyEGWg6KGfG9eNTi5h2A0kSMFaG2h
         kxAQ==
X-Gm-Message-State: APjAAAXoUQKswDqt27BNlXZPk9iDxUko9mauL5ZwU1YQfPK40TKqKXnE
        e1Ij0HbjBqwkEyCcPCNACwiFpq2QEYL2R7xCqwLNog==
X-Google-Smtp-Source: APXvYqxOTBAeYX+u/Eh9xZoqx5z1jjeiP4aVzSBSOMzDg0FyT03H0TfU69azZbe7G7oS0gd/G5TcR0QxubMS3IbiYDI=
X-Received: by 2002:a2e:5dc4:: with SMTP id v65mr20370501lje.138.1559945908563;
 Fri, 07 Jun 2019 15:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190604165802.7338-1-daniel.lezcano@linaro.org> <20190604165802.7338-2-daniel.lezcano@linaro.org>
In-Reply-To: <20190604165802.7338-2-daniel.lezcano@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 8 Jun 2019 00:18:20 +0200
Message-ID: <CACRpkdazSvjt0G58dQOr=cw6mJTptNd3ZmEXduXVh4=01YHNvQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Define values for the IPA
 governor for rock960
To:     Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Eduardo Valentin <edubezval@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Rockchip SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC support" 
        <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 4, 2019 at 6:58 PM Daniel Lezcano <daniel.lezcano@linaro.org> wrote:

> The intelligent power allocator PID coefficient to be set in sysfs
> are:
>
>     k_d: 0
>     k_po: 79
>     k_i: 10
>     k_pu: 50

With all the other interesting parametrization in the device tree
I kind of wonder why the PID regulator constants defaults are
not set up from device tree?

Any specific reason?

To me it seems like the kind of stuff userpace will invariably just
get wrong or forget about (somebody just runs a different
distribution without the extra magic to set sysfs right) unless
we supply good defaults.

Yours,
Linus Walleij
