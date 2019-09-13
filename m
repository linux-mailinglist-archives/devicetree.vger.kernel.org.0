Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A5EFB2724
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2019 23:21:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731274AbfIMVUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Sep 2019 17:20:55 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:36211 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731114AbfIMVUz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Sep 2019 17:20:55 -0400
Received: by mail-pg1-f196.google.com with SMTP id j191so5354732pgd.3
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2019 14:20:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=9P/XjVbI97/jTRRG3gmFq66lGI4E5K6bWBMtKJXZDto=;
        b=m4t1U5RH22bpo7eU8KRcVF4ahy+CIlRHl9eLFHe7glHMc2S/gUsduo3zJHZtODmRzU
         NrbnsKMm3X6W91DxLLrONTsiOcnUMtaLuIsXhV0JPozZlPAXAaldzNaatnOOenelo6AB
         SyXwD8hWsH10jBBuWjrdbqOsCCaY8/pV1khQFzWHygzoOegad8tutfPyJGq1j2lxL2/a
         ntcB+IxFY6jwPugIR08EqaNW0PYtwrdNaRASArWG5AF6oUSvmuH74yNUkKMsRcj3f4wF
         18CBFoHGW24xn6Mf+dMfSKDL+Sx8srxq5NyPFtrwuZ5FkUvU/wOUSIR1TZ8sWLtTwydX
         5K4w==
X-Gm-Message-State: APjAAAWEDX4JJWCWCnouxdyt4eLYFJfUle+XbFS/Vow+hdfz7KfL3iFK
        nJgLwkfLZQXobS4eAJYYsKwiaA==
X-Google-Smtp-Source: APXvYqxGX38OpJukmSdJgfGgVppHv0oE3pZZWx0OtjxeuAEjhQlb/mU/6Zxreniznz8l4dOfPg2gHQ==
X-Received: by 2002:a17:90a:37d1:: with SMTP id v75mr7640029pjb.33.1568409654241;
        Fri, 13 Sep 2019 14:20:54 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
        by smtp.gmail.com with ESMTPSA id s73sm2940942pjb.15.2019.09.13.14.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2019 14:20:53 -0700 (PDT)
Date:   Fri, 13 Sep 2019 14:20:53 -0700 (PDT)
X-Google-Original-Date: Fri, 13 Sep 2019 14:18:36 PDT (-0700)
Subject:     Re: [PATCH] riscv: dts: Add DT support for SiFive FU540 PWM driver
In-Reply-To: <CAJ2_jOGO-isv52rnwRusV7jtyCY_JWYWAj9opN3Zg6ZbZr-8-w@mail.gmail.com>
CC:     robh+dt@kernel.org, mark.rutland@arm.com,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, bmeng.cn@gmail.com, sagar.kadam@sifive.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Sachin Ghadi <sachin.ghadi@sifive.com>
From:   Palmer Dabbelt <palmer@sifive.com>
To:     yash.shah@sifive.com
Message-ID: <mhng-c8b87e96-987e-4577-acc2-1e22c9b81b10@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 10 Sep 2019 02:52:07 PDT (-0700), yash.shah@sifive.com wrote:
> Hi,
>
> Any comments on this patch?

I don't see "sifive,pwm0" in the DT bindings documentation, and it doesn't 
match our standard way of doing these things (which would have at least 
"sifive,fu540-c000-pwm").

>
> - Yash
>
> On Wed, Aug 21, 2019 at 2:53 PM Yash Shah <yash.shah@sifive.com> wrote:
>>
>> Add the PWM DT node in SiFive FU540 soc-specific DT file.
>> Enable the PWM nodes in HiFive Unleashed board-specific DT file.
>>
>> Signed-off-by: Yash Shah <yash.shah@sifive.com>
>> ---
>>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 19 +++++++++++++++++++
>>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  8 ++++++++
>>  2 files changed, 27 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> index 42b5ec2..bb422db 100644
>> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> @@ -230,6 +230,25 @@
>>                         #size-cells = <0>;
>>                         status = "disabled";
>>                 };
>> +               pwm0: pwm@10020000 {
>> +                       compatible = "sifive,pwm0";
>> +                       reg = <0x0 0x10020000 0x0 0x1000>;
>> +                       interrupt-parent = <&plic0>;
>> +                       interrupts = <42 43 44 45>;
>> +                       clocks = <&prci PRCI_CLK_TLCLK>;
>> +                       #pwm-cells = <3>;
>> +                       status = "disabled";
>> +               };
>> +               pwm1: pwm@10021000 {
>> +                       compatible = "sifive,pwm0";
>> +                       reg = <0x0 0x10021000 0x0 0x1000>;
>> +                       interrupt-parent = <&plic0>;
>> +                       interrupts = <46 47 48 49>;
>> +                       reg-names = "control";
>> +                       clocks = <&prci PRCI_CLK_TLCLK>;
>> +                       #pwm-cells = <3>;
>> +                       status = "disabled";
>> +               };
>>
>>         };
>>  };
>> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> index 93d68cb..104d334 100644
>> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> @@ -85,3 +85,11 @@
>>                 reg = <0>;
>>         };
>>  };
>> +
>> +&pwm0 {
>> +       status = "okay";
>> +};
>> +
>> +&pwm1 {
>> +       status = "okay";
>> +};
>> --
>> 1.9.1
>>
