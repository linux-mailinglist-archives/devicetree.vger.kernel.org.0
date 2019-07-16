Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 197316B1ED
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 00:35:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728681AbfGPWfr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jul 2019 18:35:47 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:43760 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728601AbfGPWfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jul 2019 18:35:46 -0400
Received: by mail-pg1-f196.google.com with SMTP id f25so10126264pgv.10
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 15:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:subject:to:cc:from:user-agent:date;
        bh=oNKadd/WVCq81IXvSQ0j30TJwkdvFHc6RdF6/To6EAw=;
        b=PlABOLtxKdt3umkPxr+wy+2HNHScTBvq6WU86sEkXCwrWTcMh0G2g2T6kpThh1kisk
         7+nncEAlMbqlIRE+f5E+sF92Q0u5QKmJL+9gu+Yup77IlPkp5l7EGMufIUtzof7o8WDP
         mfFHDWW31G2ojtBEgGD5JV3pdae3gUzylfInc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:subject:to:cc:from
         :user-agent:date;
        bh=oNKadd/WVCq81IXvSQ0j30TJwkdvFHc6RdF6/To6EAw=;
        b=G8YGb5BbGK+x6kSB21q56frUVHQ6zguS6HbsLdjjCFkxzE2DT1t1wmsdqVBy88xGWf
         q15X/Lihs/uVLV+Y4KVHFouVQxJ3I5XwHWGqCHmo8msnGdFtQhw3bwmksYD09yd11A5/
         N/Tl7nbdH54rNPyKhXrHTK/FZ9LeUHt8EUN5MsimN5E+hsz/GFjxre/7vGsiyysoZ6qM
         g4PaZA9ffJDOyBNGCKv8wYdN6ZoASZrTmP43NR16qYXxKXWPJe8fb52Zu3R5m3fhc+eH
         LBveE2YIy1AbOBpd3CoQv6Guj2YHgyDZIYDIcCd/QahbhvKlTXzaQ8dLt6BOy72pxZrW
         isQA==
X-Gm-Message-State: APjAAAUyn+rjiNh+mPmtkC+XS6fUK1gM9cSub3/TS9Qh3W8Fa2JWgMBd
        p6GpAAYuRwEx+oJRosW2rYr7eA==
X-Google-Smtp-Source: APXvYqxyF6nAHD345G30UUWPahYhM5UqsashUW9Kco4ExdxioImxVm1Ea4YO4E3PAj4jjVj1VYJ7lw==
X-Received: by 2002:a63:f959:: with SMTP id q25mr36666426pgk.357.1563316546155;
        Tue, 16 Jul 2019 15:35:46 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id w18sm28050816pfj.37.2019.07.16.15.35.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 16 Jul 2019 15:35:45 -0700 (PDT)
Message-ID: <5d2e5141.1c69fb81.ef731.8450@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190703050827.173284-1-drinkcat@chromium.org>
References: <20190703050827.173284-1-drinkcat@chromium.org>
Subject: Re: [PATCH] of/fdt: Make sure no-map does not remove already reserved regions
To:     Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ian Campbell <ian.campbell@citrix.com>,
        Grant Likely <grant.likely@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date:   Tue, 16 Jul 2019 15:35:44 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Nicolas Boichat (2019-07-02 22:08:27)
> If the device tree is incorrectly configured, and attempts to
> define a "no-map" reserved memory that overlaps with the kernel
> data/code, the kernel would crash quickly after boot, with no
> obvious clue about the nature of the issue.
>=20
> For example, this would happen if we have the kernel mapped at
> these addresses (from /proc/iomem):
> 40000000-41ffffff : System RAM
>   40080000-40dfffff : Kernel code
>   40e00000-411fffff : reserved
>   41200000-413e0fff : Kernel data
>=20
> And we declare a no-map shared-dma-pool region at a fixed address
> within that range:
> mem_reserved: mem_region {
>         compatible =3D "shared-dma-pool";
>         reg =3D <0 0x40000000 0 0x01A00000>;
>         no-map;
> };
>=20
> To fix this, when removing memory regions at early boot (which is
> what "no-map" regions do), we need to make sure that the memory
> is not already reserved. If we do, __reserved_mem_reserve_reg
> will throw an error:
> [    0.000000] OF: fdt: Reserved memory: failed to reserve memory
>    for node 'mem_region': base 0x0000000040000000, size 26 MiB
> and the code that will try to use the region should also fail,
> later on.
>=20
> We do not do anything for non-"no-map" regions, as memblock
> explicitly allows reserved regions to overlap, and the commit
> that this fixes removed the check for that precise reason.
>=20
> Fixes: 094cb98179f19b7 ("of/fdt: memblock_reserve /memreserve/ regions in=
 the case of partial overlap")
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

