Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B18239B7EE
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 22:55:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392900AbfHWUzY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 16:55:24 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:42450 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392875AbfHWUzY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 16:55:24 -0400
Received: by mail-pf1-f194.google.com with SMTP id i30so7231223pfk.9
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 13:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=DOMSbUFejjbvhh3syNx2mPd1ccD1hkCqGREmnUI4Bh4=;
        b=Z8fHU3xaHyWUdk8aM+/Zr1k32eHFHXEUQIEGhm0QTklwjF6o2yeRak8xLVTnReEHws
         mnfMwuQHrRUYoES3KexwZ32OsGrcnrb1s9qJzgF9ziCfP9tYYhWZXUSlT/TmnyHCQoSD
         EH2wLU7ldNI647pM/cNY8j+L2MWrI3yOfrObg6w/dFr02If3S0v5jO00vVaybZ04gUw6
         SZaeYbscZ35Rk1qZJNQq70E3JvuhKldBFpRGdwFURY39FdTznEdVQq7XzppcqHi7VNkr
         hf3Uysejz+aJrF8U3J3YFeAoa5fEXvw8IQqJjVHzxN+LCfK73FdybzahiiwbNaM6mbwE
         JLmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=DOMSbUFejjbvhh3syNx2mPd1ccD1hkCqGREmnUI4Bh4=;
        b=oPTxg2Xx50ST+gko5fuX0PG8C6LknbRsSShh5YVRhMvruOhIN0orVssysJvl42wZh6
         Wa/ntX0xhvLwH+u0V4db93sQhwg6hkat0SfQ1ARizBE9y+SGzelqHCzYfhQY5TVR4N00
         h2CYbedkhdP8u6eccHyAtudYtRiAP9iyUuwNV08KTOMV8Zvd3YjoxXNDMfM7tDifRG46
         muqAbvsK0eXOS5eBscYtJfvqVp57nla4EbR5z5OOJ2oGsGiz5jsNdY12tsi/TgPO/uir
         m+ngwY/O6KVb+ngn74Mgqwior9oKhnMPp+ZUb11JG6LB6JS11o1Hsm0OwxKVYfZVP7D1
         QhUw==
X-Gm-Message-State: APjAAAWBexxtNgyrmw7Q/vQMkUYbzRLmiMA11Hf4kDG0IceIMPl6j2JF
        5NQXgSyljuFTraJYCBamyklQnw==
X-Google-Smtp-Source: APXvYqwWqXwZanA/RIBsBivTmQ7OMMhM9wxbpGObupZqpUyHXrFJ3OB2nqQJqczKD3p98hiZv47Gzg==
X-Received: by 2002:a17:90a:f995:: with SMTP id cq21mr5481913pjb.27.1566593723715;
        Fri, 23 Aug 2019 13:55:23 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:89d4:68d1:fc04:721])
        by smtp.gmail.com with ESMTPSA id w10sm3132874pjv.23.2019.08.23.13.55.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 23 Aug 2019 13:55:23 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Chrisitian Hewitt <christianshewitt@gmail.com>,
        Oleg Ivanov <balbes-150@yandex.ru>
Subject: Re: [PATCH 3/3] arm64: dts: meson-g12b-ugoos-am6: add initial device-tree
In-Reply-To: <1566565717-5182-4-git-send-email-christianshewitt@gmail.com>
References: <1566565717-5182-1-git-send-email-christianshewitt@gmail.com> <1566565717-5182-4-git-send-email-christianshewitt@gmail.com>
Date:   Fri, 23 Aug 2019 13:55:22 -0700
Message-ID: <7hv9uny539.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> Tested-by: Oleg Ivanov <balbes-150@yandex.ru>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

nit: empty changelog.  I'd rather see the changelog from patch2 here.

> ---
>  arch/arm64/boot/dts/amlogic/Makefile               |   1 +
>  .../boot/dts/amlogic/meson-g12b-ugoos-am6.dts      | 567 +++++++++++++++++++++
>  2 files changed, 568 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
>
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index 07b861f..21e2810 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-ugoos-am6.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nanopi-k2.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nexbox-a95x.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-odroidc2.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
> new file mode 100644
> index 0000000..27d1d62
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
> @@ -0,0 +1,567 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 BayLibre, SAS
> + * Author: Neil Armstrong <narmstrong@baylibre.com>
> + * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>

This is a bit confusing.

I'm assuming you kept Neil's authorship because you copied from another
g12b board.  If so, it would be helpful in the changelog to describe the
origins of this file.  I'm assuming it was copied from odroid-n2 and
then tweaked.  That's fine, just note that as "originally based on
meson-g12b-odroid-c2".

Other than that, thanks a lot for your work on adding these new boards!

Neil, I'm starting to see a lot of duplication in the g12b .dtb files.
Should we start thinking about factoring out some of the common stuff
that's standard across all these boards?

Kevin
