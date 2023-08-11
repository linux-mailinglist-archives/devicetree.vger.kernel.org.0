Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 073FD778599
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 04:46:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbjHKCqV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 22:46:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbjHKCqU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 22:46:20 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED0DC2D48
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 19:46:18 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fe1e1142caso14125845e9.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 19:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1691721977; x=1692326777;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1JNoBiG95W05mpeuGGuiCJj9aRAVgD2mjdN/brEGyNk=;
        b=Q/7h7JIsFheimWqqjGv7F3fWh5lqrHXaFMVWUvr01ZSuI94OjNRiegpXIy2dtMTOlK
         qEoRBgIfjFmbRzjcdzU4+FarZaZ6W6EaBWpq5wLv13Jayhi7LOiDoUOPpygcPgrnEikq
         m1kS/Hijagtlw9X4iDJOCj3ii9OHvCQg8SAiwecOcjXDvyWr/VPBkkIduO8wp9PPiv6B
         cc0Xxt6MufCLafe0Q4+76IwCY7S6Voh1mqU2/BWlw/Ay5KG2FdkUhSgCb6CiukH7Y8X5
         EkLHjeXEHw6MjKDmm68mZTuwNYAYCpWKk/1kONglidAIvZCE+D4gInM/Pyx81LafCiWz
         Lrzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691721977; x=1692326777;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1JNoBiG95W05mpeuGGuiCJj9aRAVgD2mjdN/brEGyNk=;
        b=YgBO3fQ+db5IzaEAMPvw7B9RLO/hbO3Rg0ShCzhA+Y5J3c9e3YVSxxgTbCYPDzWeAg
         umaZafbOYVpBz7Ijn9kwCDkvm1ys3V0h04cER7ZMvF2MRtxX9zNTibKblsQ70QRsygXV
         g1KmjhE37Df5HIqBirVew1CbUpnFIOf3AwWMr/yj52kIgRjZpBYw1hQaTCqaX2RrwH/l
         cUaZycHjZqRWLuG6CmVK8yU09y6Njq1WmPWkIoOn3DoIamzLMVKUpPU3AaUb0HhYBK0X
         yO4Ja2ii5c/bxxUbJD5VCBx6T+cbgFMrMcIz1JKJmQa8U/MBVEyd68yp98lOZSMFdUWB
         Pa2g==
X-Gm-Message-State: AOJu0Yw7b8LgkpEjqEXkUTL1yeR4g1nZQH99lSoH6IHJGfldzwJVQegg
        bW/gSTBW8NwG6OOnAM7PAdpEow==
X-Google-Smtp-Source: AGHT+IE7CUNuKARjtkfARckLuWVhvhPQjB8XPkKbbdwgm8gSJ6H3IivOGcrBZ0uOJNvcK45ph7yjlw==
X-Received: by 2002:a1c:ed15:0:b0:3fe:2120:a87a with SMTP id l21-20020a1ced15000000b003fe2120a87amr526795wmh.37.1691721976889;
        Thu, 10 Aug 2023 19:46:16 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.246])
        by smtp.gmail.com with ESMTPSA id v14-20020a1cf70e000000b003fe24441e23sm3725605wmh.24.2023.08.10.19.46.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Aug 2023 19:46:16 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
From:   Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <CAJF2gTT9eaMKjCQxAOKHDesH+QZOXY2tM9p2ECm005zePJ_sag@mail.gmail.com>
Date:   Fri, 11 Aug 2023 03:46:05 +0100
Cc:     Jisheng Zhang <jszhang@kernel.org>, wefu@redhat.com,
        Conor Dooley <conor@kernel.org>,
        Anup Patel <anup@brainfault.org>,
        Samuel Holland <samuel@sholland.org>, bmeng.cn@gmail.com,
        opensbi <opensbi@lists.infradead.org>,
        Guo Ren <guoren@linux.alibaba.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <77E6E5A6-A151-431E-A80A-20141153C9D9@jrtc27.com>
References: <20230808132958.1097873-1-guoren@kernel.org>
 <ZNURXBKkYdiWLanf@xhacker> <0783057A-9D05-4ED9-8246-135A6641565D@jrtc27.com>
 <CAJF2gTQhH2ju1kjaS5hgygQAhTFBKLFvJ1j7626hyE00HZTRow@mail.gmail.com>
 <FD240B24-B8F8-4D7B-9036-EFFE70D68BA8@jrtc27.com>
 <CAJF2gTT9eaMKjCQxAOKHDesH+QZOXY2tM9p2ECm005zePJ_sag@mail.gmail.com>
To:     Guo Ren <guoren@kernel.org>
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

On 11 Aug 2023, at 03:27, Guo Ren <guoren@kernel.org> wrote:
>=20
> On Fri, Aug 11, 2023 at 10:05=E2=80=AFAM Jessica Clarke =
<jrtc27@jrtc27.com> wrote:
>>=20
>> On 11 Aug 2023, at 03:01, Guo Ren <guoren@kernel.org> wrote:
>>>=20
>>> On Fri, Aug 11, 2023 at 8:42=E2=80=AFAM Jessica Clarke =
<jrtc27@jrtc27.com> wrote:
>>>>=20
>>>> On 10 Aug 2023, at 17:33, Jisheng Zhang <jszhang@kernel.org> wrote:
>>>>>=20
>>>>> On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
>>>>>> From: Guo Ren <guoren@linux.alibaba.com>
>>>>>>=20
>>>>>> Add detailed information about thead,reset-sample driver, and =
improve
>>>>>> usage documentation.
>>>>>>=20
>>>>>> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
>>>>>> Signed-off-by: Guo Ren <guoren@kernel.org>
>>>>>> ---
>>>>>> docs/platform/thead-c9xx.md | 87 =
++++++++++++++++++++++++++++---------
>>>>>> 1 file changed, 67 insertions(+), 20 deletions(-)
>>>>>>=20
>>>>>> diff --git a/docs/platform/thead-c9xx.md =
b/docs/platform/thead-c9xx.md
>>>>>> index 8bb9e91f1a9b..fe05fc5bb85a 100644
>>>>>> --- a/docs/platform/thead-c9xx.md
>>>>>> +++ b/docs/platform/thead-c9xx.md
>>>>>> @@ -1,8 +1,8 @@
>>>>>> -T-HEAD C9xx Series Processors
>>>>>> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>>>>>> +T-HEAD Processors
>>>>>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>>>>=20
>>>>>> -The **C9xx** series processors are high-performance RISC-V =
architecture
>>>>>> -multi-core processors with AI vector acceleration engine.
>>>>>> +T-HEAD provides high-performance RISC-V architecture multi-core
>>>>>> +processors with AI vector acceleration engine.
>>>>>>=20
>>>>>> For more details, refer [T-HEAD.CN](https://www.t-head.cn/)
>>>>>>=20
>>>>>> @@ -12,15 +12,75 @@ To build the platform-specific library and =
firmware images, provide the
>>>>>> Platform Options
>>>>>> ----------------
>>>>>>=20
>>>>>> -The *T-HEAD C9xx* does not have any platform-specific compile =
options
>>>>>> +The *T-HEAD CPU* does not have any platform-specific compile =
options
>>>>>> because it uses generic platform.
>>>>>>=20
>>>>>> ```
>>>>>> CROSS_COMPILE=3Driscv64-linux-gnu- PLATFORM=3Dgeneric =
/usr/bin/make
>>>>>> ```
>>>>>>=20
>>>>>> -The *T-HEAD C9xx* DTB provided to OpenSBI generic firmwares will =
usually have
>>>>>> -"riscv,clint0", "riscv,plic0", "thead,reset-sample" compatible =
strings.
>>>>>> +The *T-HEAD CPU* DTB provided to OpenSBI generic firmwares will =
usually have
>>>>>> +"thead,reset-sample" compatible strings. The =
"thead,reset-sample" is a T-HEAD
>>>>>> +custom driver for the SMP system bootup; the single-core system =
doesn't need
>>>>>> +it.
>>>>>> +
>>>>>> +T-HEAD Fdt Reset Driver Introduction
>>>>>> +------------------------------------
>>>>>> +
>>>>>> +Every T-HEAD CPU provides a reset control signal and reset =
address signals.
>>>>>> + - Reset address signal determines CPU where to start up.
>>>>>> + - Reset control signal releases CPU from reset state and begins =
to execute
>>>>>> +   at reset address.
>>>>>> +
>>>>>> +Many vendors would gather these signals into SoC control =
registers. These
>>>>>> +register designs are similar but with different base addresses =
and bits
>>>>>> +definitions. We only provide standard opensbi, Linux binaries, =
and jtag gdbinit
>>>>>> +script to simplify Linux booting at the FPGA stage. The fdt =
reset driver helps
>>>>>> +users bring up their SMP system quickly with the below settings:
>>>>>=20
>>>>> +DT maintainers and DT list.
>>>>>=20
>>>>> I can submit a dt-binding for this if DT maintainers agree with =
below
>>>>> properties. Could you please help review?
>>>>=20
>>>> I thought this was already discussed on the OpenSBI list 2 months =
ago,
>>>> and received pretty negative feedback.
>>> Yes, we want to correct all DT grammar & compile problems, and make =
it
>>> legal first and try again. I thought every vendor has their own =
choice
>>> of how to deliver their hardware support. The motivation of this
>>> driver is to ease the delivery of T-HEAD CPU cores on different
>>> platforms; people only need three things: jtag_init_script & opensbi =
&
>>> linux_Image, then they could boot on their own FPGA prototype
>>> platform, and they needn't prepare any software stuff, all the =
generic
>>> binaries could be directly used. The th1520 could be a good example
>>> for them. That's why we consistently push this thing.
>>=20
>> What=E2=80=99s changed to make people say yes rather than no this =
time?
>>=20
>> I for one will not give positive feedback for self-modifying code in =
my
>> firmware (outside of the necessary self-relocation at startup before
>> the PMP is enabled).
> I appreciate you pointing out that problem and that has been solved.
> So I don't see any more security problems. You agree with
> self-relocation but not self-modifying code. Is this a little
> conflict? They are all self-modifying text areas before PMP lock.

No. Self-relocation modifies data (in the absence of text relocations,
which aren=E2=80=99t supported in OpenSBI), something which happens =
during
normal execution. The instruction bytes themselves are never changing.
Self-modifying code modifies code, something which should not be done
unless you absolutely have to.

> Do you against alternative mechanisms in opensbi, which is also a
> self-modifying code?

Yes. I hate that Linux does it, but I understand why it is that way.

> We found that ticket_lock performance is lower
> than qspinlock when opensbi tlb_flush and icahe_flush on the 128 cores
> platform. We also want to introduce qspinlock into opensbi. Do you
> think it's proper?

No. If you have operations that are that performance-sensitive in
firmware then they should not be in firmware. The cost of an SBI call
will far outweigh the cost of slightly slower locking.

Jess

> I also want Anup's opinion before our work, thx.
>=20
>>=20
>> Jess
>>=20
>=20
>=20
> --=20
> Best Regards
> Guo Ren


