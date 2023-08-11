Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F3E17784A1
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 02:42:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbjHKAm5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 20:42:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbjHKAm4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 20:42:56 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E72B2D52
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 17:42:55 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fe12baec61so12779245e9.2
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 17:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1691714574; x=1692319374;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwXOkxaHdC2/UYFgX5FxwmGSKgPB6VDHzfG7eRlEWZk=;
        b=YIougJKnqME7Q+kLZ9Q2rcsF/UV3SwrVljelKqDQBd5lHV8vEzDycUTXRVLxohD4hX
         adk2BT+/NqwvD12lnBc9tLl01tf/yr/RJbi3wYweI5afJpgtBpmA9xxcQbiHVWOugI+0
         C87uwxDrNtn0+2anEQg/snWl6dY4CEeN76lG713g4Z/mwQBr4sHwsCCP94vTtTYPsQzp
         GyAMSDuzLsAFql+YCuK6N/9AMN8MCVJhdBYbKkiwjkLEbyiJ80+CuN9juNtBkzGAHeXG
         oFZlMEu3WxDeiSyQ+QSSDxMAqEmkFjzopvvQjUMbQb2QsKXjA/+w50LqrinhQIkyKjQa
         ge4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691714574; x=1692319374;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mwXOkxaHdC2/UYFgX5FxwmGSKgPB6VDHzfG7eRlEWZk=;
        b=RwiicfduGuxEarmLSB+BDFd8X4Juo5zpZBGIKqRQaz1RkqJhs6SgE4lyKt9f1/KxWE
         ZDWTBmL5Zgjviel9NStMBCpC7nrYYe/0tTdgeJc9osz+TNFj26zvrwhxR/zYnA15X4h1
         BYiAru9+9QxqajWDEw50rfvZuFz3s1cm8+9H5ETVaLt/pk5wO8dfBXWobm3F46AjoxBw
         3HPKNaIWC3JCmVSMEkdEozH51lXwUx/vEY0BUzaYG1jUePwmAjtfIEB8j0HJCUbPIz3I
         u9RIPyUmoUyJ3HQY5NxMqO+YZ917AEdIJFu0KblWSdyriQM9Oojz8OPF0tAaoZ0YGmkx
         P9qQ==
X-Gm-Message-State: AOJu0YzIkm5EV54K6vWbcwnAtuAPDNES+2xyJLJpSXiWooNCrB1h5Tnl
        wRSi6teaHEEQRfKBHtzgyL+Crw==
X-Google-Smtp-Source: AGHT+IF36U71kIO+IFogOZmwXtKLyqfOhniZv4oi3ni75BFPNs26xcH213/8Z0H9A0Q/C4aX899+cg==
X-Received: by 2002:a05:600c:11c7:b0:3fe:2c52:2b78 with SMTP id b7-20020a05600c11c700b003fe2c522b78mr285528wmi.36.1691714573555;
        Thu, 10 Aug 2023 17:42:53 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.246])
        by smtp.gmail.com with ESMTPSA id u1-20020a7bc041000000b003fd2e89620asm6386459wmc.40.2023.08.10.17.42.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Aug 2023 17:42:53 -0700 (PDT)
Content-Type: text/plain;
        charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
From:   Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <ZNURXBKkYdiWLanf@xhacker>
Date:   Fri, 11 Aug 2023 01:42:42 +0100
Cc:     Guo Ren <guoren@kernel.org>, wefu@redhat.com,
        Conor Dooley <conor@kernel.org>,
        Anup Patel <anup@brainfault.org>,
        Samuel Holland <samuel@sholland.org>, bmeng.cn@gmail.com,
        opensbi <opensbi@lists.infradead.org>,
        Guo Ren <guoren@linux.alibaba.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <0783057A-9D05-4ED9-8246-135A6641565D@jrtc27.com>
References: <20230808132958.1097873-1-guoren@kernel.org>
 <ZNURXBKkYdiWLanf@xhacker>
To:     Jisheng Zhang <jszhang@kernel.org>
X-Mailer: Apple Mail (2.3731.600.7)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10 Aug 2023, at 17:33, Jisheng Zhang <jszhang@kernel.org> wrote:
>=20
> On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
>> From: Guo Ren <guoren@linux.alibaba.com>
>>=20
>> Add detailed information about thead,reset-sample driver, and improve
>> usage documentation.
>>=20
>> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
>> Signed-off-by: Guo Ren <guoren@kernel.org>
>> ---
>> docs/platform/thead-c9xx.md | 87 =
++++++++++++++++++++++++++++---------
>> 1 file changed, 67 insertions(+), 20 deletions(-)
>>=20
>> diff --git a/docs/platform/thead-c9xx.md =
b/docs/platform/thead-c9xx.md
>> index 8bb9e91f1a9b..fe05fc5bb85a 100644
>> --- a/docs/platform/thead-c9xx.md
>> +++ b/docs/platform/thead-c9xx.md
>> @@ -1,8 +1,8 @@
>> -T-HEAD C9xx Series Processors
>> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
>> +T-HEAD Processors
>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>=20
>> -The **C9xx** series processors are high-performance RISC-V =
architecture
>> -multi-core processors with AI vector acceleration engine.
>> +T-HEAD provides high-performance RISC-V architecture multi-core
>> +processors with AI vector acceleration engine.
>>=20
>> For more details, refer [T-HEAD.CN](https://www.t-head.cn/)
>>=20
>> @@ -12,15 +12,75 @@ To build the platform-specific library and =
firmware images, provide the
>> Platform Options
>> ----------------
>>=20
>> -The *T-HEAD C9xx* does not have any platform-specific compile =
options
>> +The *T-HEAD CPU* does not have any platform-specific compile options
>> because it uses generic platform.
>>=20
>> ```
>> CROSS_COMPILE=3Driscv64-linux-gnu- PLATFORM=3Dgeneric /usr/bin/make
>> ```
>>=20
>> -The *T-HEAD C9xx* DTB provided to OpenSBI generic firmwares will =
usually have
>> -"riscv,clint0", "riscv,plic0", "thead,reset-sample" compatible =
strings.
>> +The *T-HEAD CPU* DTB provided to OpenSBI generic firmwares will =
usually have
>> +"thead,reset-sample" compatible strings. The "thead,reset-sample" is =
a T-HEAD
>> +custom driver for the SMP system bootup; the single-core system =
doesn't need
>> +it.
>> +
>> +T-HEAD Fdt Reset Driver Introduction
>> +------------------------------------
>> +
>> +Every T-HEAD CPU provides a reset control signal and reset address =
signals.
>> + - Reset address signal determines CPU where to start up.
>> + - Reset control signal releases CPU from reset state and begins to =
execute
>> +   at reset address.
>> +
>> +Many vendors would gather these signals into SoC control registers. =
These
>> +register designs are similar but with different base addresses and =
bits
>> +definitions. We only provide standard opensbi, Linux binaries, and =
jtag gdbinit
>> +script to simplify Linux booting at the FPGA stage. The fdt reset =
driver helps
>> +users bring up their SMP system quickly with the below settings:
>=20
> +DT maintainers and DT list.
>=20
> I can submit a dt-binding for this if DT maintainers agree with below
> properties. Could you please help review?

I thought this was already discussed on the OpenSBI list 2 months ago,
and received pretty negative feedback.

Jess

>> +
>> + - entry-reg:
>> + The base address to store reset address value
>> +
>> + - entry-cnt:
>> + The numbers of entry-reg, all of them set the same reset address
>> +
>> + - control-reg:
>> + The base address to reset the controller
>> +
>> + - control-val:
>> + Write which bits of control-reg for booting
>> +
>> + - csr-copy:
>> + This array determines which csrs to copy from primary hart to the
>> + secondary harts, which are set in sequence from left to right. The
>> + secondary harts should keep the same setting as the primary hart.
>> + These settings are also the first part of the bootup instructions
>> + for secondary harts.
>> +
>> + - using-csr-reset:
>> + A legacy reset controller for the SMP system, but abandoned in the
>> + latest T-HEAD processors.
>> +
>> +Here is the dts example:
>> +```
>> + reset: reset-sample {
>> + compatible =3D "thead,reset-sample";
>> + entry-reg =3D <0xff 0xff019050>;
>> + entry-cnt =3D <4>;
>> + control-reg =3D <0xff 0xff015004>;
>> + control-val =3D <0x1c>;
>> + csr-copy =3D <0x7f3 0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc>;
>> + };
>> +```
>> +
>> +Legacy dts example (Abandoned):
>> +```
>> + reset: reset-sample {
>> + compatible =3D "thead,reset-sample";
>> + using-csr-reset;
>> + csr-copy =3D <0x7f3 0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc>;
>> + };
>> +```
>>=20
>> DTS Example1: (Single core, eg: Allwinner D1 - c906)
>> ----------------------------------------------------
>> @@ -181,16 +241,3 @@ DTS Example2: (Multi cores with soc reset-regs)
>> };
>> }
>> ```
>> -
>> -DTS Example2: (Multi cores with old reset csrs)
>> ------------------------------------------------
>> -```
>> - reset: reset-sample {
>> - compatible =3D "thead,reset-sample";
>> - using-csr-reset;
>> - csr-copy =3D <0x7c0 0x7c1 0x7c2 0x7c3 0x7c5 0x7cc
>> -     0x3b0 0x3b1 0x3b2 0x3b3
>> -     0x3b4 0x3b5 0x3b6 0x3b7
>> -     0x3a0>;
>> - };
>> -```
>> --=20
>> 2.36.1


