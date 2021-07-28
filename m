Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 238663D9713
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 22:51:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231716AbhG1Uvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 16:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231645AbhG1Uvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 16:51:53 -0400
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BBE2C061757
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 13:51:51 -0700 (PDT)
Received: by mail-io1-xd2e.google.com with SMTP id r6so4358750ioj.8
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 13:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=lQryhZRpBDogvHVvPU/fbTSTLbqOv2BW46SJ0iT0+Kk=;
        b=QPwP35TBa172vGVYjCVnQNJ8/Z5GEw9t/L13P3rnCIQ7lIEi8iXeMT25pYXjC5Oe5p
         PrmyQJxWTQ9U5jUCesPeJwxaYFrO3o6YpXi4Wbqx3Ya88GOkWh8eLwnk7bCgUsCjIiEH
         Oimg3j91WIGh6CIMvdgu4glTEushsIQKW541kJ81GvDvtUqs/VQaansZEyVx34MUetGc
         VhZpZTa4kBtgHhPKJ1LJrDVct5/LE3lI/W5lV7PnPtBu5rIeC+/i+HdKxcGEqv1yyRzr
         Z/0NGjpYMphirTeLqDvblR3eyktG7EtlTkCwOCpSZQYAfLwLu3Efl+czsS7BdZObtRtm
         73FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=lQryhZRpBDogvHVvPU/fbTSTLbqOv2BW46SJ0iT0+Kk=;
        b=hzR0vIiIy9+Gjr49Izr3nul7aAcii43m8U3WkmGKYZSDQmzZz2BlI9Bqcz2fpTKFv4
         48iLCmqloXqfhlh2C0IhyK/hoMFGGgsggOJeL4+B2FsQTSRAqvcyXRiigavR352ZGyJb
         3skeGBlvKKygEHahpvU8UK+zL7IC4YTxAbbjC86rzJZC5Y+9/bn+9QajvioNUGugJVXj
         AKdo4e0TNh5mtor/yl74vx+5AdiWqFW3rThvPUjBHW2ztXiE4guS/9a9/JAQ+C14WmjU
         QG8GC1o2P+7xws+c5KMja9EbFysIlhgPihZtjpisVnQmvOxZ9B/QagN7djo/jdBpwMfo
         JSTQ==
X-Gm-Message-State: AOAM5317wU2WuzWWthhl03XLSPgHNXpPHOiFkYEEqq5SqE6GOEP0KXM5
        YxBEApWjnyamdbid/oEnKZ7fhjNZtVRhPIUiVHOTNw==
X-Google-Smtp-Source: ABdhPJyz3si1e6J74f54OMY+3WrZFPDX1HMkiL1piCDiYhFWrwcljdJ3zgzAj8iqLInp7qcHJsoS0s3n2RiAPeCbDB4=
X-Received: by 2002:a5e:dc0c:: with SMTP id b12mr1035138iok.141.1627505510888;
 Wed, 28 Jul 2021 13:51:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210726194603.14671-1-gerhard@engleder-embedded.com>
 <20210726194603.14671-6-gerhard@engleder-embedded.com> <CAL_JsqJC19OsTCa6T98m8bOJ3Z4jUbaVO13MwZFK78XPSpoWBg@mail.gmail.com>
 <CANr-f5yW4sob_fgxhEafHME71QML8K-+Ka5AzNm5p3A0Ktv02Q@mail.gmail.com>
 <CAL_JsqK9OvwicCbckvpk4CMWbhcP8yDBXAW_7CmLzR__-fJf0Q@mail.gmail.com>
 <CANr-f5zWdFAYAteE7tX5qTvT4XMZ+kxaHy03=BnRxFbQLt3pUg@mail.gmail.com>
 <43958f2b-6756-056a-b2fa-cb8f6d84f603@xilinx.com> <CANr-f5xu=xHn7CGve3=Msd8CEcoDujQzSYSNQ2Zbh7NOvyXFYA@mail.gmail.com>
 <839bdf26-6aef-7e05-94b9-78c0d2061bf9@xilinx.com>
In-Reply-To: <839bdf26-6aef-7e05-94b9-78c0d2061bf9@xilinx.com>
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
Date:   Wed, 28 Jul 2021 22:51:39 +0200
Message-ID: <CANr-f5xJbTYa-jPzVMPcAV2Un+POBn24gd+604rzPt36RkRcDQ@mail.gmail.com>
Subject: Re: [PATCH net-next 5/5] arm64: dts: zynqmp: Add ZCU104 based TSN endpoint
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 28, 2021 at 12:59 PM Michal Simek <michal.simek@xilinx.com> wro=
te:
> >> In past we said that we won't be accepting any FPGA description in
> >> u-boot/linux projects. I don't think anything has changed from that ti=
me
> >> and I don't want to end up in situation that we will have a lot of
> >> configurations which none else can try and use.
> You have to share to customers bitstream. Likely also boot.bin with
> PS/PL configuration and other files in it. That's why it will be quite
> simple to also share them full DT or DT overlay just for your IP in the
> same image.

That's possible of course.

> Till now I didn't hear any strong argument why this should be accepted.

I want to try a new argument:

For new bindings a schema is used. The goal is to ensure that the binding
schema and the driver fit together. The validation chain is the following:
1) The binding schema is used to validate the device tree.
2) The device tree is used to "validate" the driver by booting.

So the kernel tree needs to contain a device tree which uses the binding
to build up the complete validation chain. The validation of the driver aga=
inst
the binding is not possible without a device tree. The only option would be
to compare driver and binding manually, which is error prone.

If device trees with FPGA descriptions are not allowed in the kernel tree, =
then
the kernel tree will never contain complete validation chains f=C3=BCr FPGA=
 based
IPs. The validation of bindings for FPGA based IPs has to rely on device tr=
ees
which are maintained out of tree. It is possible/likely that schema
validation is
not done out of tree. As a result it is more likely that binding and
driver do not
fit together for FPGA based IPs. In the end the quality of the support for =
FPGA
based IPs would suffer.

I suggest allowing a single device tree with FPGA descriptions for a bindin=
g
of FPGA based IPs. This will build up the complete validation chain in the
kernel tree and ensures that binding and driver fit together. This single d=
evice
tree would form the reference platform for the FPGA based IP.

Gerhard
