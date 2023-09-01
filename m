Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DEB6790151
	for <lists+devicetree@lfdr.de>; Fri,  1 Sep 2023 19:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350320AbjIARUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Sep 2023 13:20:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238699AbjIARUy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Sep 2023 13:20:54 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 297C110F3
        for <devicetree@vger.kernel.org>; Fri,  1 Sep 2023 10:20:51 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-31dd10c2b8bso1830554f8f.3
        for <devicetree@vger.kernel.org>; Fri, 01 Sep 2023 10:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1693588849; x=1694193649; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tDaCSxGqWC92if0Z6Klm60VC2KBJe3DiYPIYkSgGiOQ=;
        b=LV9rplRo+fdO0GuXMn79uyEwjrwKLTOJdAsTbxSXeEujgg63A2oBpjWlrJEECgU+oX
         poHoMqg6hR9pmPUhCrF0IUkLRMR1Q+LeW0t/xYPxI65nORoeYmqxdvQBkPb4QXazWFBY
         EARRtPkLu3OYze1BuHHs/OlaAxKS/5HPOwLeDtcwfiUP8JRxa0Nh6Q6Oc39oLhG5ZZQd
         9q3uMMmD0qUAYa4Buutmw/PBrUTuLi3chsKdsYTz5jvm/tc5GnXWdi90CHAjY0XzghU2
         VTQIwgCKPcB2vtisthMYxG+1mol/KVAJ5fED4eloYHEqNblNUfQkI9bOyUQeArpYPoDk
         8mnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693588849; x=1694193649;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tDaCSxGqWC92if0Z6Klm60VC2KBJe3DiYPIYkSgGiOQ=;
        b=N3PNlPwCuzLLYnuGU7RLMr4cqQoKk+E+MSe9DoDXVcdSMvriutxAu4zJJOKxddaIYx
         sdpxdIL3KQsvdRdr/lp1/i/4uq4KYAfNBaOpdfxa8jboforCv3Xaw3RP8zni9k8G3bmX
         gKIooIIVfOO4PKcGtEDlyFLrLy7vBAUk7nkKILp62WGcPYcGMBN5jKO3PXfvQ34PT6RD
         RFT11eyFQgex4rmQ+w8jhmmXTWoMYzJvWBKAnWRFld++6ANygrjVV+RCQwthSchzOBGe
         AXdfMBm5tEga457k8AqYR9hKqeGL6MR/hRbw5+lj8puRA7iuvE35uyFn5cNytWEngpbk
         vtEA==
X-Gm-Message-State: AOJu0Yz7qFs3ZNn7ARGuYZqj4dj3x9rA7au7DSMFna5GurheOasfGNDm
        +uRUl1ij+jZHaBaBGWtOvXQ8NQ==
X-Google-Smtp-Source: AGHT+IECMKtsA+xfilTzTOfsxwiwD+SvpSlL+xDbbYz66S7ZDqBzHrbSSow55DnE6Tmpy7BohAAzHQ==
X-Received: by 2002:a5d:69c5:0:b0:317:e1a2:dccf with SMTP id s5-20020a5d69c5000000b00317e1a2dccfmr2843222wrw.62.1693588849653;
        Fri, 01 Sep 2023 10:20:49 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.246])
        by smtp.gmail.com with ESMTPSA id m12-20020adff38c000000b0031ad5fb5a0fsm5780460wro.58.2023.09.01.10.20.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Sep 2023 10:20:49 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: [PATCH v1 1/3] dt-bindings: mmc: Drop unused properties
From:   Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <20230901-remold-sublease-a1ddb1fc6348@spud>
Date:   Fri, 1 Sep 2023 18:20:38 +0100
Cc:     William Qiu <william.qiu@starfivetech.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        linux-mmc@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Content-Transfer-Encoding: quoted-printable
Message-Id: <9EF26965-10E5-4BCA-AC5E-93C5AA55A0DF@jrtc27.com>
References: <20230830031846.127957-1-william.qiu@starfivetech.com>
 <20230830031846.127957-2-william.qiu@starfivetech.com>
 <20230830-commence-trickery-40eaa193cb15@wendy>
 <b375b88c-0d9c-30a9-21f6-283083cf3880@linaro.org>
 <20230830-procedure-frostbite-56c751f7c276@wendy>
 <efab6f52-4d7f-ea3c-0fc3-4e3ad03c14c7@starfivetech.com>
 <20230901-remold-sublease-a1ddb1fc6348@spud>
To:     Conor Dooley <conor@kernel.org>
X-Mailer: Apple Mail (2.3731.600.7)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1 Sep 2023, at 16:42, Conor Dooley <conor@kernel.org> wrote:
>=20
> On Fri, Sep 01, 2023 at 10:33:13AM +0800, William Qiu wrote:
>>=20
>>=20
>> On 2023/8/30 16:34, Conor Dooley wrote:
>>> On Wed, Aug 30, 2023 at 09:29:20AM +0200, Krzysztof Kozlowski wrote:
>>>> On 30/08/2023 08:50, Conor Dooley wrote:
>>>>> On Wed, Aug 30, 2023 at 11:18:44AM +0800, William Qiu wrote:
>>>>>> Due to the change of tuning implementation, it's no longer =
necessary to
>>>>>> use the "starfive,sysreg" property in dts, so drop the relevant
>>>>>> description in dt-bindings here.
>>>>>=20
>>>>> How does changing your software implantation invalidate a =
description of
>>>>> the hardware?
>>>>>=20
>>>>=20
>>>> Which is kind of proof that this syscon was just to substitute
>>>> incomplete hardware description (e.g. missing clocks and phys). We
>>>> should have rejected it. Just like we should reject them in the =
future.
>>>=20
>>> :s I dunno what to do with this... I'm inclined to say not to remove =
it
>>> from the binding or dts at all & only change the software.
>>>=20
>>>> There are just few cases where syscon is reasonable. All others is =
just
>>>> laziness. It's not only starfivetech, of course. Several other
>>>> contributors do the same.
>>>=20
>>> I'm not sure if laziness is fair, lack of understanding is usually =
more
>>> likely.
>>=20
>> For this, I tend to keep it in binding, but remove it from required. =
Because
>> we only modify the tuning implementation, it doesn't mean that this =
property
>> need to be removed, it's just no longer be the required one.
>=20
> Please only remove it from required if the current driver doesn't =
break
> if the regmap is removed.

Either way please make sure the documentation clearly states =E2=80=9Cneve=
r use
this, if you=E2=80=99re using it you=E2=80=99re doing it wrong, this =
only exists
because it was wrongly used in the past=E2=80=9D. Otherwise people =
writing
drivers for other OSes will probably use it too thinking they need to.

Jess

