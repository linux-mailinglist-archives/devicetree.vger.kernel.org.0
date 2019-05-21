Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AE52A2468E
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 06:10:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725768AbfEUEKG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 00:10:06 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:39506 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725765AbfEUEKG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 00:10:06 -0400
Received: by mail-qk1-f195.google.com with SMTP id z128so10242982qkb.6
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 21:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3c0mICKtbz9dmZs4lKO7VlxYBdZCjLhKgi8dII9aBDM=;
        b=fga00DVFQ2rLWeSRJzJKwLNxC0I6eXztpercaXApCXecXBaXVYRj/ffbIXLN7qkcUm
         z0QED+pOSGl4rtpJhkCuOdCL4ERfaM98h+1igjL6yi39+MS6XW6CJoQDoTYD+5NXaJq5
         y4Nv018qVocLknq+UU5q4SAxHg2HvqQ43q/OM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3c0mICKtbz9dmZs4lKO7VlxYBdZCjLhKgi8dII9aBDM=;
        b=f3IcwCMEV2yOzt2Hb8zMZnHl2sCLr5rihUA7XeowBVqzjSRlWV7AaUkDzewUYapOMo
         iha1uP/RgkXDrADP7piixOaU/zzA3DMlPRKvOG/G+w75PVOZ1PkQew3TkveS9iz3PQd0
         yCt87WISr3SPWp7ZW6l4M4YOiG4guPkaRaHplbtujfVGPE34+UC3gxzJFoZzDPrNU4aV
         R6nPCEp2XjEPjw/pr9bDfmd0zxgtFHSl+iStM9sIrcWcNtWKiluHZ6RKxXWBHgfv4Uss
         C93PqtwZ86tGV/UQ2qUs3Ai2d0tEVgXVPjI77s6cDVfaGEETE7yxMTcmQKtP803bjzJx
         rpWw==
X-Gm-Message-State: APjAAAWgg1LhbYrs+BGR97oM9DKA89LKpOyuzn9qrC7rkzVqalpYrMY1
        2fdRqYZ2PqCWc200hnUpktXFNPxJ3Yu2oci3+JSqwA==
X-Google-Smtp-Source: APXvYqza/UClcXjYIWYoBB8uNlk4hI6crkUxv0oq3+toM0hl9yBc/8eEZE9CMyiwgn5NUtkwXeONUDDNEx/tvWkBtqE=
X-Received: by 2002:a37:6044:: with SMTP id u65mr3960843qkb.146.1558411805476;
 Mon, 20 May 2019 21:10:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190519160446.320-1-hsinyi@chromium.org> <20190519160446.320-2-hsinyi@chromium.org>
 <CANMq1KB7sh=UXaM4sMm_THjZ_wV3Thgr6_ona-TJFqA2QQHALA@mail.gmail.com>
In-Reply-To: <CANMq1KB7sh=UXaM4sMm_THjZ_wV3Thgr6_ona-TJFqA2QQHALA@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 21 May 2019 12:09:39 +0800
Message-ID: <CAJMQK-iZRHO6HBkycPt0yz_vndmmmqFL0duHOcQ8EFSdhhFZcQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] fdt: add support for rng-seed
To:     Nicolas Boichat <drinkcat@chromium.org>
Cc:     linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 20, 2019 at 7:54 AM Nicolas Boichat <drinkcat@chromium.org> wrote:

> Alphabetical order.
Original headers are not sorted, should I sort them here?
>

>
> I'm a little bit concerned about this, as we really want the rng-seed
> value to be wiped, and not kept in memory (even if it's hard to
> access).
>
> IIUC, fdt_delprop splices the device tree, so it'll override
> "rng-seed" property with whatever device tree entries follow it.
> However, if rng-seed is the last property (or if the entries that
> follow are smaller than rng-seed), the seed will stay in memory (or
> part of it).
>
> fdt_nop_property in v2 would erase it for sure. I don't know if there
> is a way to make sure that rng-seed is removed for good while still
> deleting the property (maybe modify fdt_splice_ to do a memset(.., 0)
> of the moved chunk?).
>
So maybe we can use fdt_nop_property() back?
