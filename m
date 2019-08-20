Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2338D95CFC
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 13:14:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728503AbfHTLOb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 07:14:31 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:40420 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728409AbfHTLOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 07:14:31 -0400
Received: by mail-wr1-f67.google.com with SMTP id c3so11970819wrd.7
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 04:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MRQJ+YcRBrLZ+LgU7cW1tMLpibGXEBh4atKjQOVEfXU=;
        b=N602lxG8vpSrmGWjvR1XljSyBYd0DjQUFLh4T8umT44074G3gYOo2sAREhNXeKGjtC
         jok8+4nz/M5e0aqh4mVhyNDDl+VUtWzJbRwRMwElirMWXzdGd08AIV8OqpDvv5jFPCBj
         JT9dVUenhoIHZGReBwimvlJk90Jtavzdv1ZReDeBq0nUnBDzJe/UP+VycMympEueswZ8
         MJSTs+OmnRr9xv/BAKM2AHO3vUV8aNrvgtiPvahi8uO97PYc5uJvNtVCdj4XSeFsulav
         sfG/VeYfKvWV9HPPJRG6p2/3mX7K8IC2O+g99vHpaQNx+5D1jXqfg4s9CXe2i5Bwl2Ay
         9lww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MRQJ+YcRBrLZ+LgU7cW1tMLpibGXEBh4atKjQOVEfXU=;
        b=NEjuuydlc3c/GeU2BdEDT0LzFZatmwaHtncjTBOMSQ1iXqsIi7hh1AqQjtxuGnYgvJ
         RKndowjae200BFePTblyaEt9ki5+GTrQwoMcj1Oob1wHa+qa3xqfhW5N5inKjkZNj2Iq
         m3mA3rdupcM89ILF+MUrPxAqBbduKarz2PyF4Yi8KSg+9970CgO3Hmt53wDfFB+LpqRm
         Jw1JsipixN5N6FSr2DAK0H28WjoKNuQCqxouM2Zlr8AqG7hC1ZT3zL9x5KKUb0e9TSkv
         kBvVW/MnEIUAXvWmFGdJajj+R7ignl/7icKO7F0+rSpTL4NhStTLDeSZlinG/yaCbzjc
         vtSQ==
X-Gm-Message-State: APjAAAVMWOu2Yri5XXM/KBLNem2Wa/74TMAAE6StPWT6cPGVvfX19ztz
        9vVdCNyD6yAFAAL6SD5IZ/VGnV1Yn4inMjp/acUp1w==
X-Google-Smtp-Source: APXvYqwersajj8U78aWRH4Pqq7XyMqeU8A2Xgf8/IDh3Q7bnOUdoJ9c+hs7rviwoyYqWqYB/ydO/OpoIVygIgkEn+wI=
X-Received: by 2002:a05:6000:128d:: with SMTP id f13mr1035997wrx.241.1566299669401;
 Tue, 20 Aug 2019 04:14:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190819071602.139014-1-hsinyi@chromium.org> <20190819071602.139014-3-hsinyi@chromium.org>
 <20190819181349.GE10349@mit.edu> <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
In-Reply-To: <CAJMQK-ghQ8weMerXW7t0DFZTAg_c5M80Yp5DTAtyY2LA7YpS1A@mail.gmail.com>
From:   Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date:   Tue, 20 Aug 2019 14:14:18 +0300
Message-ID: <CAKv+Gu_qJUU2hRujjv6e5yPqPQXRXokBU_2mSGD3civ2d2+xhw@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] fdt: add support for rng-seed
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     "Theodore Y. Ts'o" <tytso@mit.edu>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
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

On Tue, 20 Aug 2019 at 10:43, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Hi Ted,
>
> Thanks for raising this question.
>
> For UEFI based system, they have a config table that carries rng seed
> and can be passed to device randomness. However, they also use
> add_device_randomness (not sure if it's the same reason that they
> can't guarantee _all_ bootloader can be trusted)

The config table is actually a Linux invention: it is populated by the
EFI stub code (which is part of the kernel) based on the output of a
call into the EFI_RNG_PROTOCOL, which is defined in the UEFI spec, but
optional and not widely available.

I have opted for add_device_randomness() since there is no way to
establish the quality level of the output of EFI_RNG_PROTOCOL, and so
it is currently only used to prevent the bootup state of the entropy
pool to be too predictable, and the output does not contribute to the
entropy estimate kept by the RNG core.


> This patch is to let DT based system also have similar features, which
> can make initial random number stronger. (We only care initial
> situation here, since more entropy would be added to kernel as time
> goes on )
>
> Conservatively, we can use add_device_randomness() as well, which
> would pass buffer to crng_slow_load() instead of crng_fast_load().
> But I think we should trust bootloader here. Whoever wants to use this
> feature should make sure their bootloader can pass valid (random
> enough) seeds. If they are not sure, they can just don't add the
> property to DT.

It is the firmware that adds the property to the DT, not the user.
