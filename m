Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A201A434A16
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 13:32:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbhJTLe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 07:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229864AbhJTLe6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Oct 2021 07:34:58 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E852C061746
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 04:32:44 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 67-20020a1c1946000000b0030d4c90fa87so9437154wmz.2
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 04:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=MjxIrvk/Yl7FyJdOEiFsoFMK0aeLC3D9xFTesUWCWms=;
        b=hwzCcURg7S6VuyAzMWLwMKCv9uspNgKKOXKaDuTuCmIyG/RQHWiwLX2sOcIc+FZLsG
         9Fm+uGNvZmpe26dXP/LgJj4+1HHFDA7veVvODmyw9FkQ9AichvEEseWdVSBJ+Epw98L9
         auvzP4R6xpae5qlkv9IktPQ+8i9neJakL1W09TexqYHAM+/MXJPzAOsWHuO/8kxdPcdP
         Kvv1eBH+zrO59Mkp6/yidKfVsL2cccdYBNJBpB4en4EOjMzBXD+EMX8NHYwn3UTTvqlu
         vcD/ubbYMrkkzAbM53lH1xMdJMOpd69VBiWI9j4EKV2ztjsYD8QTlWu3hghKAId+Whom
         PYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=MjxIrvk/Yl7FyJdOEiFsoFMK0aeLC3D9xFTesUWCWms=;
        b=X2DNpHNsSU/rng9syT1+HzHiJpE+q+/0uI2c7TrpDYT1dvbXdX/73n/L+CYqB46yMN
         QeYWwUCFToLwibvvQpuTqwipg/6rdjsgIyFnKOdly/MR5DAHfddcs1BnlBj4eKzIoBoF
         tU9wth+RScbYaI7uWWxRbtUFJS9M6GYi5CPj15cdUPP0a9F8F62h34EhWZjQoCntvpPW
         9st//e6eOaZL22geEN9AjMsD9L3c5WwsXbIqTa8l5rK3QmBmqniHVvngOR+SFICpG3Ln
         AJ7ntJ2rTXYjWIyG8EAeqmVcER0y1QJeBc5WZnJ689ndXVcvPcjP6MCDuD+rlx0KfTJF
         mAPg==
X-Gm-Message-State: AOAM532c9+226mf9LDDJb0c5TBlypyPAiqZa2n2BR2TO43MskGZNrwkJ
        ltBvg+AmiQ3FRubqwLnHjccCvw==
X-Google-Smtp-Source: ABdhPJzFd3L7Um3YxbVsrTjbc10dqj8xy+EEfvMzQoNet50seHE/J51qfmW5hbzj1kiXtQq19BtXHA==
X-Received: by 2002:a05:600c:3b99:: with SMTP id n25mr12984380wms.50.1634729562680;
        Wed, 20 Oct 2021 04:32:42 -0700 (PDT)
Received: from smtpclient.apple (global-5-141.nat-2.net.cam.ac.uk. [131.111.5.141])
        by smtp.gmail.com with ESMTPSA id c132sm4843902wma.22.2021.10.20.04.32.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 04:32:42 -0700 (PDT)
Content-Type: text/plain;
        charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 1/1] dt-bindings: T-HEAD CLINT
From:   Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <CAAhSdy22y3gWM0Y9x7m84CdmtHKo7VsDC4+ZDY7+mhkJ9HcYyA@mail.gmail.com>
Date:   Wed, 20 Oct 2021 12:32:40 +0100
Cc:     Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Guo Ren <guoren@linux.alibaba.com>,
        Bin Meng <bmeng.cn@gmail.com>, Xiang W <wxjstz@126.com>,
        Samuel Holland <samuel@sholland.org>,
        Atish Patra <atish.patra@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Anup Patel <anup.patel@wdc.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        OpenSBI <opensbi@lists.infradead.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <D1622375-A6BE-4B45-AD99-E4476D603E96@jrtc27.com>
References: <20211020093603.28653-1-heinrich.schuchardt@canonical.com>
 <CAAhSdy22y3gWM0Y9x7m84CdmtHKo7VsDC4+ZDY7+mhkJ9HcYyA@mail.gmail.com>
To:     Anup Patel <anup@brainfault.org>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20 Oct 2021, at 12:27, Anup Patel <anup@brainfault.org> wrote:
>=20
> On Wed, Oct 20, 2021 at 3:06 PM Heinrich Schuchardt
> <heinrich.schuchardt@canonical.com> wrote:
>>=20
>> The CLINT in the T-HEAD 9xx CPUs is similar to the SiFive CLINT but =
does
>> not support 64bit mmio access to the MTIMER device.
>>=20
>> OpenSBI currently uses a property 'clint,has-no-64bit-mmio' to =
indicate the
>> restriction and the "sifive,cling0" compatible string. An OpenSBI
>> patch suggested to use "reg-io-width =3D <4>;" as the reg-io-width =
property
>> is generally used in the devicetree schema for such a condition.
>>=20
>> As the design is not SiFive based it is preferable to apply a =
compatible
>> string identifying T-HEAD instead.
>>=20
>> Add a new yaml file describing the T-HEAD CLINT.
>>=20
>> Signed-off-by: Heinrich Schuchardt =
<heinrich.schuchardt@canonical.com>
>> ---
>> @Palmer, @Anup
>> I copied you as maintainers from sifive,clint.yaml. Please, indicate =
if
>> this should be changed.
>>=20
>> For the prior discussion see:
>> =
https://lore.kernel.org/all/20211015100941.17621-1-heinrich.schuchardt@can=
onical.com/
>> =
https://lore.kernel.org/all/20211015120735.27972-1-heinrich.schuchardt@can=
onical.com/
>>=20
>> A release candidate of the ACLINT specification is available at
>> https://github.com/riscv/riscv-aclint/releases
>=20
> T-HEAD supporting only 32bit accesses to MTIME and MTIMECMP
> registers are totally allowed. The RISC-V privileged specification =
does
> not enforce RV64 platforms to support 64bit accesses to MTIME and
> MTIMECMP registers

It does. See [1].

Jess

[1] =
https://github.com/riscv/riscv-isa-manual/commit/50694a2c0d5393690a9e0c8d3=
09cf064f6c8c0e4

