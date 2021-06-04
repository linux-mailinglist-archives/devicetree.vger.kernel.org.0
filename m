Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 821C239BC46
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 17:52:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231315AbhFDPyA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 11:54:00 -0400
Received: from mail-pg1-f179.google.com ([209.85.215.179]:43592 "EHLO
        mail-pg1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231319AbhFDPyA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 11:54:00 -0400
Received: by mail-pg1-f179.google.com with SMTP id e22so8192005pgv.10
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 08:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=EblRfcbrw2Bfqfw9tfH547IVGROshi6ov6X25dHCJ4A=;
        b=yRJyGFcI2I1WPSrV9AuioyhAYT7ivG/QNeKzsKD+R3SWR+zmdDzvTJyQHDflLW48UZ
         ZMN9fWF22tbQszlRzxddUiBYPzPGvPeEnHGVjyZ6H7fngyTpw3uXmStjFrVkZy+OQcso
         kXMV0enVx2naw8jI3c2txamHX0gLCKYwF8ACEAmsgd2Et14JHk6UEFvFDvR1oTzWCNbc
         otX5J5MRTZSIUstEeftY1EQ0uKBkF2eZATvJBfiVw08Kk4w5bqIaaJ0MPntelkdjHTOI
         m1IhzpFWbc1BWJeMWkQZo/eHDUvPXDE1MN6zeKvq/oER5cjMWYiEQu4IxZyE8+iPMyTK
         JF2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=EblRfcbrw2Bfqfw9tfH547IVGROshi6ov6X25dHCJ4A=;
        b=iibvJ7DhxHrxmaN5gZbkPI2USsbW6m2aALk20jjSKGCZsKPypfaCcX61u3QH6kamrv
         G3Fz+tDSyrwBuCvYj4dIaGHmBS4eKoZ8tJih3l66rVGYicHJPYTYTagaiPGm/4xiLtDW
         +dmsgLDNoGNFYebMYVJoq4CgH/AwVanRH79VKnz2kOs9/ADJcqUkQl9Oc5b3lQzFhu7o
         zBIRMvdPfPRWX5JGjugIc/m0atLmoHhAAr1zCEkhCpTZCI2r+mW4i71BpRAJD0RxjGrE
         OqcvxzurFigUKehvDitR4Bc3QvhHJ8SVYXhypPkbRDy38NURYGNNGdq1IRf9VhRC88vT
         tBvA==
X-Gm-Message-State: AOAM530GyI/wI6eZpAgAKsg67e8ozZVBs7BD7sZEXPKxspJ+RsCR3Q2n
        HnX7ATM2Hfg9MuDXkjcU7kJmCA==
X-Google-Smtp-Source: ABdhPJwjL1ysqjo2D10XZSVezd+QjVVOK16oTGexVdRXBHLeQlNEuD+FadY9VPzz6KqoG35+tyVkog==
X-Received: by 2002:a62:5444:0:b029:2e9:c69d:dc64 with SMTP id i65-20020a6254440000b02902e9c69ddc64mr4996989pfb.32.1622821869389;
        Fri, 04 Jun 2021 08:51:09 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id f5sm4869053pjp.37.2021.06.04.08.51.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 08:51:08 -0700 (PDT)
Date:   Fri, 04 Jun 2021 08:51:08 -0700 (PDT)
X-Google-Original-Date: Fri, 04 Jun 2021 08:51:06 PDT (-0700)
Subject:     Re: [PATCH -fixes] riscv: Fix BUILTIN_DTB for sifive and microchip soc
In-Reply-To: <CAK8P3a1TiSNoqUEjTaqPyqnU8d0-p-yZkrsvmXt5fo4Rkfue_w@mail.gmail.com>
CC:     alex@ghiti.fr, robh+dt@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Arnd Bergmann <arnd@arndb.de>
Message-ID: <mhng-f1a76f5f-ad66-40ae-aad3-cd2f669f33bf@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 04 Jun 2021 06:08:05 PDT (-0700), Arnd Bergmann wrote:
> On Fri, Jun 4, 2021 at 2:06 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
>>
>> Fix BUILTIN_DTB config which resulted in a dtb that was actually not built
>> into the Linux image: in the same manner as Canaan soc does, create an object
>> file from the dtb file that will get linked into the Linux image.
>>
>> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
>
> Along the same lines as the comment that Jisheng Zhang made on the fixed
> address, building a dtb into the kernel itself fundamentally breaks generic
> kernel images.
>
> I can understand using it on K210, which is extremely limited and wouldn't
> run a generic kernel anyway, but for normal platforms like microchip and
> sifive, it would be better to disallow CONFIG_BUILTIN_DTB in Kconfig
> and require a non-broken boot loader.

When we first added BUILTIN_DTB we actually had a compatibility 
mechanism in there.  There isn't enough in the ISA to handle board 
compatibility, but we were hoping to get something to deal with that.  
It didn't pan out so we dropped the compatibility mechanism, which is 
how we ended up here.

Maybe the right thing to do here is to add some sort of "be compatible 
with the platform spec" Kconfig, which we could then use to disallow all 
these features that result in non-portable kernels?
