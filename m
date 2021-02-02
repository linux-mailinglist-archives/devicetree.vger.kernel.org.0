Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA88130B441
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 01:43:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231380AbhBBAmn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 19:42:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbhBBAmm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 19:42:42 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AC15C06174A
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 16:42:02 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id z9so1223486pjl.5
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 16:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=r9Kg/gf6E4HWfjM0umPzsi5Eq8z2VKtkBzcF9+Dc93w=;
        b=X7hzWRxLsDVvI9aTtpXS3+RoX3xXcmt8pX+BQUFi0OwKFeWKrsuuKstUzc6WzJUqez
         PH8ltZKUVYRfGmg533ddSsLLx6WYWe3LR/xr6yNcP6urOWMKMWn0fRYjzyenxqPVPa8C
         9bxJvh8KZ/ciGjakxcAdPLwrT6JXA4X/8tHRfTt+hWBXaPEHrW50WijvCh2z931B662P
         XcIalQmKW90qt0Ro6b3M/FYYdiGjo35Guv7Qer5i6Q0nZil1htc59xG2tZtAxgBeOEsS
         jsq1oIB4wnChyWFvw9m/R2dD8GR/EX+8Rz23LCrIcZyE0yKD8uvqQToWX8tc69+C3RfT
         VCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=r9Kg/gf6E4HWfjM0umPzsi5Eq8z2VKtkBzcF9+Dc93w=;
        b=EAiLFnR5bFFsok8L+JUy17Neyedm/LCSDm1eunLzclCs0U90SD8xMqJYdWRffIYUPp
         SxbZfRVraDADkzEEW3Gx+aIS1ybRYyW5yPH5zzLGol8pU+6lx7bRnAFb2GjLyv6RUb6l
         N9B3rrJIOsm9gFwQgOPhLXdgWz76Ay1b3yiaqAbMzd5BYLPn7DJKGGZ70gSnvywI1zHJ
         fjItphQQeuNwbvI+KxiOR9QfiH+rT4xuxqsd7srKcbWDQS0xY1FnLDCbi9CVF34BVjlX
         UKMrmR4XGjvT7tZ8F4nbNh5u7kZCzzybA3vS1ACoDzwRSQRNxSfZadk6Kgr9Injabf25
         +9og==
X-Gm-Message-State: AOAM531yVAUh+8V9D+9ouz0PpxQhGq72D7Bsm/43Z2mJ5wkjzLTL8j6g
        5PBxtZL32e7H+1fp2gO241E8zQ==
X-Google-Smtp-Source: ABdhPJzD0q+nzsD62zpnYipUPZDwrw468Av/Fbt+gUMrc5zo9WnDW65ogFssHkKfRnLSmaRxv3Jq5g==
X-Received: by 2002:a17:902:b716:b029:e1:575a:139d with SMTP id d22-20020a170902b716b02900e1575a139dmr7890707pls.78.1612226521938;
        Mon, 01 Feb 2021 16:42:01 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id t129sm20509673pfc.16.2021.02.01.16.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Feb 2021 16:42:01 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>,
        Dongjin Kim <tobetter@gmail.com>
Subject: Re: [PATCH v2 0/5] arm64: dts: meson: add support for ODROID-HC4
In-Reply-To: <20210131055358.21293-1-christianshewitt@gmail.com>
References: <20210131055358.21293-1-christianshewitt@gmail.com>
Date:   Mon, 01 Feb 2021 16:42:00 -0800
Message-ID: <7h5z3bi9lz.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Christian,

Christian Hewitt <christianshewitt@gmail.com> writes:

> This series fixes minor sort-order issues in the Amlogic bindings yaml and
> dtb Makefile, then converts the existing ODROID-C2 dts into dtsi so we can
> support its new sister product the ODROID-HC4.
>
> I've also given the devices different audio card names. This is partly
> cosmetic, but also because HC4 is HDMI-only while C4 can be used with
> other i2c audio devices via an expansion connector so users may want to
> use different alsa configs.
>
> Patches to support the spifc chip are still being upstreamed [0] so this
> will be addressed in a follow up. A WIP patch for the dts change can be
> found in my amlogic-5.11.y dev branch [1].
>
> For reference, here's dmesg from LibreELEC on 5.11-rc5 [2].
>
> Changes since v1:
> - fix ODRIOD typo in patch 3
> - fix SPI-NOT size in patch 5
> - add Neil's Acks/Reviews

Could you please rebase this on top of my v5.12/dt64 branch[1]?  This
has conflicts with some stuff already queued up there.

Thanks,

Kevin

[1] https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git/log/?h=v5.12/dt64
