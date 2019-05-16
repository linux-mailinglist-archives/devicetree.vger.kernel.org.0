Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 508962074F
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 14:52:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727181AbfEPMwR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 08:52:17 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:44496 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726503AbfEPMwR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 08:52:17 -0400
Received: by mail-lj1-f194.google.com with SMTP id e13so2951730ljl.11
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 05:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M8dIMMLTGG86thIxs/mRUU5bsghAX7RRvWXWnrAvMAs=;
        b=iC9xJc/LqP5wzVxXoivXXOnuzTrrgFiN2GtZrWRT5bsmasTGCrg1mUFbsRM8/yJ8lE
         Chia4VkQR8GHzZ1wp3SftBAPhcf0/0id8JlaHJajgdxXO4Fo/NfHfxfwZJhaYduFdKPz
         oX39O8pOX2C1YCZdt6Z1yL8eTySL64PduJAGls98JcKwJ8XtPpYNUuaPXVGg3C+bqQ0v
         G+dFQh2qz/jUZKW5/q6RWlhrG4KOpDKiBtPFLz8HkLYufM8kTyzHmC0u8Gzu6hbq2W2n
         RnAB8XpXl17EpT/Wkex+RjpHiNP90Y5JpsNjFtK5hVwJ2oSDKVetXxS0UvIQ5qd2tovw
         qhiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M8dIMMLTGG86thIxs/mRUU5bsghAX7RRvWXWnrAvMAs=;
        b=lCucDZ7+XFKIGxuvHGdpKGCFKR3lGNYb7hAmnLqeFH/FSdQiTru0+NUdpq5OCObpJ7
         89Feqo0dWtRNjfRz1kUxRF2Um/9AV6hLQMVKl8r6SRQVLO98TZc89hV5+EWjV3ccc3Go
         Zi33w1op2GmxVY3TsxBOZKHlO+5O6UDPYrmDPN5t0U2HhukJc7WYtj7sm49+cMbc+RL3
         MTIdavN5/y1uKR3PcsjVpwPqhP7e1ip3+PhhxRmdBYMDlb3Vngm1hj5ln+68+l7d+qFS
         xO56yaUVzZoG+/SjihfA6IcJ3CLgJKwFdiw84yQoyKV71CK1wiYj7X7BYvvllpI5fwMz
         Z84Q==
X-Gm-Message-State: APjAAAV42xRT34D/4qlwkqGAtBg7RNcgURgp/N9qKZVbgDAshwwk4KOY
        pwaabGy4PtZX+Pyxn0SVCQafCc3qE/964r9iojsdUA==
X-Google-Smtp-Source: APXvYqyKQvo32z2nDVQNlGDeWm4ClSjw2DAn7P89XY+RzmdqMHft5SDvxQb/j4IO5PU3+gOiYdzXt4I8x6QxAuXOZMU=
X-Received: by 2002:a2e:731a:: with SMTP id o26mr21431284ljc.105.1558011134949;
 Thu, 16 May 2019 05:52:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190514082652.20686-1-glaroque@baylibre.com>
In-Reply-To: <20190514082652.20686-1-glaroque@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 May 2019 14:52:03 +0200
Message-ID: <CACRpkdZ+p-J5Em3rzZcUwpA-a+CVOY91CgLqoRm_QVZP6E4Osw@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] Add drive-strength in Meson pinctrl driver
To:     Guillaume La Roque <glaroque@baylibre.com>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 14, 2019 at 10:26 AM Guillaume La Roque
<glaroque@baylibre.com> wrote:

> The purpose of this patchset is to add drive-strength support in meson pinconf
> driver. This is a new feature that was added on the g12a. It is critical for us
> to support this since many functions are failing with default pad drive-strength.
>
> The value achievable by the SoC are 0.5mA, 2.5mA, 3mA and 4mA and the DT property
> 'drive-strength' is expressed in mA.
> So this patch add another generic property "drive-strength-microamp". The change to do so
> would be minimal and could be benefit to other platforms later on.
>
> Cheers
> Guillaume
>
> Changes since v5:
> - restore Tested-by/Reviewed-by/Ack-by tags

All 6 patches applied for v5.3.

They will appear in the tree once v5.2-rc1 is out.

Yours,
Linus Walleij
