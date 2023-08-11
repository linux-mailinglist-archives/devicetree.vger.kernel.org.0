Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C34C7778539
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 04:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjHKCFn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 22:05:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbjHKCFm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 22:05:42 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 799EC2D55
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 19:05:41 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3fe5c0e57d2so13196405e9.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 19:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1691719540; x=1692324340;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IeMoZmyYJ0xhnIiJ4EQ1sjQ6QJfBR5vuYK+GqyiFIBE=;
        b=LpTN3GyHYzjuqKzBZFsy/WZVT75e7WCMtJFFPjKkhg/nH70X31Resnk5OeUye9/eMk
         Avc6M4idI4fNY2QejR9XtkVC39WzNx/RkzG4R1PGTHiWtq0KP1QrRffwY11y4O9Hbq++
         hxQw9N7FRmdH6t+VEeJ5K5O3i6q6BPsf+E4kiMSzgCMF27l0FAhXjgM6Lt0HNZJVdyP7
         tYr8c00ASY5oPW+5AGr8kvjtfIya0+DJ6EsBHnkY+971RhQraRPNy4EiiKG/G0jEljyZ
         fkg7sO0bvQeb1YR+CfnVhshkXlLyM4Ga1dIsibR7Odyy9Hu3nkedbiGnCV0y8eECULN4
         ERWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691719540; x=1692324340;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IeMoZmyYJ0xhnIiJ4EQ1sjQ6QJfBR5vuYK+GqyiFIBE=;
        b=FviBTDCf69jjmNNcHmpjDeQRgopabd3VChzFgoHcEBNZXVeefMKrW74x2Mf4W+Dyuy
         Tmb3PHLmj3ocp/jjZn3slzP84EWD3T+oAIhq1XvNH4A9Jt8Vb9ilemE0ethCh+x4nwhN
         aRUD/suZjDy7mKbDFsQD+2JlZqXkpkSgGbzCphLVpyls8aNqQ+LxmyJfv5JhQUodpk8n
         Kh443c2dJd1c8Nl6pqMm6lfqb4CAHTA6ifDKigKHpfb8RZ8S/NG7oqicNdkxh1gcntc8
         RMgNNc9hNU2Sa8SpI9F5KHSgr7yURBcqUULobKkFJ5E5U7KQO3tQ0vrDOqvqbru4rDwE
         KfgQ==
X-Gm-Message-State: AOJu0Yw3hDtFU3SULkEmFQteHN/B+y9MOcyQl9qF4EOh1gFnwbYnBXh/
        284tM4ikD/p/GcBuUlw+OLmN7w==
X-Google-Smtp-Source: AGHT+IHWsr8jO4sosbNQCyncYxVU+zxH4R3wi+b3Phc7AKVFrYg97zxpdR9GIaOshWgfN+mpMIDN1A==
X-Received: by 2002:adf:ce91:0:b0:316:d887:624a with SMTP id r17-20020adfce91000000b00316d887624amr266515wrn.15.1691719539830;
        Thu, 10 Aug 2023 19:05:39 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.246])
        by smtp.gmail.com with ESMTPSA id t1-20020a5d5341000000b0031763fd36c4sm3768330wrv.104.2023.08.10.19.05.39
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Aug 2023 19:05:39 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: [PATCH] docs/platform: thead-c9xx: Improve the documentation
From:   Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <CAJF2gTQhH2ju1kjaS5hgygQAhTFBKLFvJ1j7626hyE00HZTRow@mail.gmail.com>
Date:   Fri, 11 Aug 2023 03:05:28 +0100
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
Message-Id: <FD240B24-B8F8-4D7B-9036-EFFE70D68BA8@jrtc27.com>
References: <20230808132958.1097873-1-guoren@kernel.org>
 <ZNURXBKkYdiWLanf@xhacker> <0783057A-9D05-4ED9-8246-135A6641565D@jrtc27.com>
 <CAJF2gTQhH2ju1kjaS5hgygQAhTFBKLFvJ1j7626hyE00HZTRow@mail.gmail.com>
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

On 11 Aug 2023, at 03:01, Guo Ren <guoren@kernel.org> wrote:
>=20
> On Fri, Aug 11, 2023 at 8:42=E2=80=AFAM Jessica Clarke =
<jrtc27@jrtc27.com> wrote:
>>=20
>> On 10 Aug 2023, at 17:33, Jisheng Zhang <jszhang@kernel.org> wrote:
>>>=20
>>> On Tue, Aug 08, 2023 at 09:29:58AM -0400, guoren@kernel.org wrote:
>>>> From: Guo Ren <guoren@linux.alibaba.com>
>>>>=20
>>>> Add detailed information about thead,reset-sample driver, and =
improve
>>>> usage documentation.
>>>>=20
>>>> Signed-off-by: Guo Ren <guoren@linux.alibaba.com>
>>>> Signed-off-by: Guo Ren <guoren@kernel.org>
>>>> ---
>>>> docs/platform/thead-c9xx.md | 87 =
++++++++++++++++++++++++++++---------
>>>> 1 file changed, 67 insertions(+), 20 deletions(-)
>>>>=20
>>>> diff --git a/docs/platform/thead-c9xx.md =
b/docs/platform/thead-c9xx.md
>>>> index 8bb9e91f1a9b..fe05fc5bb85a 100644
>>>> --- a/docs/platform/thead-c9xx.md
>>>> +++ b/docs/platform/thead-c9xx.md
>>>> @@ -1,8 +1,8 @@
>>>> -T-HEAD C9xx Series Processors
>>>> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>>>> +T-HEAD Processors
>>>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>>=20
>>>> -The **C9xx** series processors are high-performance RISC-V =
architecture
>>>> -multi-core processors with AI vector acceleration engine.
>>>> +T-HEAD provides high-performance RISC-V architecture multi-core
>>>> +processors with AI vector acceleration engine.
>>>>=20
>>>> For more details, refer [T-HEAD.CN](https://www.t-head.cn/)
>>>>=20
>>>> @@ -12,15 +12,75 @@ To build the platform-specific library and =
firmware images, provide the
>>>> Platform Options
>>>> ----------------
>>>>=20
>>>> -The *T-HEAD C9xx* does not have any platform-specific compile =
options
>>>> +The *T-HEAD CPU* does not have any platform-specific compile =
options
>>>> because it uses generic platform.
>>>>=20
>>>> ```
>>>> CROSS_COMPILE=3Driscv64-linux-gnu- PLATFORM=3Dgeneric /usr/bin/make
>>>> ```
>>>>=20
>>>> -The *T-HEAD C9xx* DTB provided to OpenSBI generic firmwares will =
usually have
>>>> -"riscv,clint0", "riscv,plic0", "thead,reset-sample" compatible =
strings.
>>>> +The *T-HEAD CPU* DTB provided to OpenSBI generic firmwares will =
usually have
>>>> +"thead,reset-sample" compatible strings. The "thead,reset-sample" =
is a T-HEAD
>>>> +custom driver for the SMP system bootup; the single-core system =
doesn't need
>>>> +it.
>>>> +
>>>> +T-HEAD Fdt Reset Driver Introduction
>>>> +------------------------------------
>>>> +
>>>> +Every T-HEAD CPU provides a reset control signal and reset address =
signals.
>>>> + - Reset address signal determines CPU where to start up.
>>>> + - Reset control signal releases CPU from reset state and begins =
to execute
>>>> +   at reset address.
>>>> +
>>>> +Many vendors would gather these signals into SoC control =
registers. These
>>>> +register designs are similar but with different base addresses and =
bits
>>>> +definitions. We only provide standard opensbi, Linux binaries, and =
jtag gdbinit
>>>> +script to simplify Linux booting at the FPGA stage. The fdt reset =
driver helps
>>>> +users bring up their SMP system quickly with the below settings:
>>>=20
>>> +DT maintainers and DT list.
>>>=20
>>> I can submit a dt-binding for this if DT maintainers agree with =
below
>>> properties. Could you please help review?
>>=20
>> I thought this was already discussed on the OpenSBI list 2 months =
ago,
>> and received pretty negative feedback.
> Yes, we want to correct all DT grammar & compile problems, and make it
> legal first and try again. I thought every vendor has their own choice
> of how to deliver their hardware support. The motivation of this
> driver is to ease the delivery of T-HEAD CPU cores on different
> platforms; people only need three things: jtag_init_script & opensbi &
> linux_Image, then they could boot on their own FPGA prototype
> platform, and they needn't prepare any software stuff, all the generic
> binaries could be directly used. The th1520 could be a good example
> for them. That's why we consistently push this thing.

What=E2=80=99s changed to make people say yes rather than no this time?

I for one will not give positive feedback for self-modifying code in my
firmware (outside of the necessary self-relocation at startup before
the PMP is enabled).

Jess

