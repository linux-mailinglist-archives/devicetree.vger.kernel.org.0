Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B082585013
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 17:39:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388692AbfHGPhu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 11:37:50 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:32895 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388412AbfHGPhu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 11:37:50 -0400
Received: by mail-pl1-f196.google.com with SMTP id c14so41296113plo.0
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 08:37:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=SbXighRqPCoPZWVDEmqUD9WiXHWD2WoHQaBKm2NnUQ0=;
        b=t43gWqeGEinaaCf0nzIKTVqq8enn9lGmcuEdRI1D1UDjhv9/XWiwfNBMBei4zH/FAM
         IiRuYP0eBUGHZrZWWuRiwp2rDAp9YsnUwD2+hI1bpRWWk3y9ib33wYL6EqvyNSBLl2/N
         /C9sdktLeuloahOnEj9kAjtCAyjl06sEJrpjBdS84EE128b632SaqGOSVyJ7zEyPvUqf
         ebd0WxWX4kAg3e8sQCHfF1SkJDO3L0qk8jLLZZvcsaJ2cijs/pHac+7qXck5Bdz1B6xt
         kFcRvi8yjkuK8BY3vNQo/n/bxUlxJYvm2jPwHtTWbNvSwMbgx7DAF5YDrX6FX8gIbqBy
         UhQQ==
X-Gm-Message-State: APjAAAUuMVtoY61OI4J4zsIn6JCrfIm23JL+wTRpqtTYPdSEqf2P7ZGm
        j5aZ+4QeKbXbsdyYt//pTjz7wg==
X-Google-Smtp-Source: APXvYqwOxmLrwq/hmTiDm7ZkSCDmAQCrO2shh8IxFFNkXHW4/5EiApdsriHIksWl6eUkZz6HIzP15g==
X-Received: by 2002:a17:90a:5288:: with SMTP id w8mr512178pjh.61.1565192269545;
        Wed, 07 Aug 2019 08:37:49 -0700 (PDT)
Received: from localhost ([12.206.222.5])
        by smtp.gmail.com with ESMTPSA id 125sm127468985pfg.23.2019.08.07.08.37.48
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 08:37:48 -0700 (PDT)
Date:   Wed, 07 Aug 2019 08:37:48 -0700 (PDT)
X-Google-Original-Date: Wed, 07 Aug 2019 08:21:35 PDT (-0700)
Subject:     Re: [PATCH v3 3/5] RISC-V: Fix unsupported isa string info.
In-Reply-To: <alpine.DEB.2.21.9999.1908061818360.13971@viisi.sifive.com>
CC:     Atish Patra <Atish.Patra@wdc.com>, info@metux.net,
        allison@lohutok.net, aou@eecs.berkeley.edu,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        tglx@linutronix.de, daniel.lezcano@linaro.org,
        Anup Patel <Anup.Patel@wdc.com>, mark.rutland@arm.com,
        robh+dt@kernel.org, johan@kernel.org, tiny.windzz@gmail.com,
        Greg KH <gregkh@linuxfoundation.org>, gary@garyguo.net,
        linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@sifive.com>
To:     Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-6a70927a-4b6a-452f-910c-0639d5f47dff@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 06 Aug 2019 18:26:08 PDT (-0700), Paul Walmsley wrote:
> On Wed, 7 Aug 2019, Atish Patra wrote:
>
>> On Tue, 2019-08-06 at 16:27 -0700, Paul Walmsley wrote:
>>
>> > Seems like the "su" should be dropped from mandatory_ext.  What do you
>> > think?
>> >
>>
>> Yup. As DT binding only mention imafdc, mandatory extensions should
>> contain only that and just consider "su" extensions are considered as
>> implicit as we are running Linux.
>
> Discussing this with Andrew and Palmer, it looks like "su" is currently
> non-compliant.  Section 22.6 of the user-level specification states that
> the "s" character indicates that a longer standard supervisor extension
> name will follow.  So far I don't think any of these have been defined.
>
>> Do you think QEMU DT should be updated to reflect that ?
>
> Yes.

https://lists.nongnu.org/archive/html/qemu-riscv/2019-08/msg00141.html

>
>> > There's no Kconfig option by this name, and we're requiring
>> > compressed
>>
>> Sorry. This was a typo. It should have been CONFIG_RISCV_ISA_C.
>>
>> > instruction support as part of the RISC-V Linux baseline.  Could you
>> > share the rationale behind this?
>>
>> I think I added this check at the config file. Looking at the Kconfig,
>> RISCV_ISA_C is always enabled. So we can drop this.
>
> OK great.  Do you want to resend an updated patch, or would you like me to
> fix it up here?
>
> I'll also send a patch to drop CONFIG_RISCV_ISA_C.
>
>
> - Paul
