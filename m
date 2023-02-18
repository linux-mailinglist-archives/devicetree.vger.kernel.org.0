Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D31069A966
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 11:50:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbjBQKuT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 05:50:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229956AbjBQKuQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 05:50:16 -0500
Received: from imap4.hz.codethink.co.uk (imap4.hz.codethink.co.uk [188.40.203.114])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D9B25FEC
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 02:50:12 -0800 (PST)
Received: from [167.98.27.226] (helo=[10.35.4.184])
        by imap4.hz.codethink.co.uk with esmtpsa  (Exim 4.94.2 #2 (Debian))
        id 1pSyJc-004VYl-FE; Fri, 17 Feb 2023 10:50:08 +0000
Message-ID: <b348f0cc-4868-2924-9935-00ec18b36da9@codethink.co.uk>
Date:   Fri, 17 Feb 2023 10:50:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v4 6/8] RISC-V: Use Zicboz in clear_page when available
Content-Language: en-GB
From:   Ben Dooks <ben.dooks@codethink.co.uk>
To:     Andrew Jones <ajones@ventanamicro.com>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
 <20230209152628.129914-7-ajones@ventanamicro.com>
 <4a25cf89-bcf0-e78c-a8ab-7ba0c4f8e2bf@codethink.co.uk>
Organization: Codethink Limited.
In-Reply-To: <4a25cf89-bcf0-e78c-a8ab-7ba0c4f8e2bf@codethink.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/02/2023 10:18, Ben Dooks wrote:
> On 09/02/2023 15:26, Andrew Jones wrote:
>> Using memset() to zero a 4K page takes 563 total instructions, where
>> 20 are branches. clear_page(), with Zicboz and a 64 byte block size,
>> takes 169 total instructions, where 4 are branches and 33 are nops.
>> Even though the block size is a variable, thanks to alternatives, we
>> can still implement a Duff device without having to do any preliminary
>> calculations. This is achieved by taking advantage of 'vendor_id'
>> being used as application-specific data for alternatives, enabling us
>> to stop patching / unrolling when 4K bytes have been zeroed (we would
>> loop and continue after 4K if the page size would be larger)
>>
>> For 4K pages, unrolling 16 times allows block sizes of 64 and 128 to
>> only loop a few times and larger block sizes to not loop at all. Since
>> cbo.zero doesn't take an offset, we also need an 'add' after each
>> instruction, making the loop body 112 to 160 bytes. Hopefully this
>> is small enough to not cause icache misses.
>>
>> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>>   arch/riscv/Kconfig                | 13 ++++++
>>   arch/riscv/include/asm/insn-def.h |  4 ++
>>   arch/riscv/include/asm/page.h     |  6 ++-
>>   arch/riscv/kernel/cpufeature.c    | 11 +++++
>>   arch/riscv/lib/Makefile           |  1 +
>>   arch/riscv/lib/clear_page.S       | 71 +++++++++++++++++++++++++++++++
>>   6 files changed, 105 insertions(+), 1 deletion(-)
>>   create mode 100644 arch/riscv/lib/clear_page.S
>>
>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>> index 029d1d3b40bd..9590a1661caf 100644
>> --- a/arch/riscv/Kconfig
>> +++ b/arch/riscv/Kconfig
>> @@ -456,6 +456,19 @@ config RISCV_ISA_ZICBOM
>>          If you don't know what to do here, say Y.
>> +config RISCV_ISA_ZICBOZ
>> +    bool "Zicboz extension support for faster zeroing of memory"
>> +    depends on !XIP_KERNEL && MMU
>> +    select RISCV_ALTERNATIVE
>> +    default y
>> +    help
>> +       Enable the use of the ZICBOZ extension (cbo.zero instruction)
>> +       when available.
>> +
>> +       The Zicboz extension is used for faster zeroing of memory.
>> +
>> +       If you don't know what to do here, say Y.
>> +
>>   config TOOLCHAIN_HAS_ZIHINTPAUSE
>>       bool
>>       default y
>> diff --git a/arch/riscv/include/asm/insn-def.h 
>> b/arch/riscv/include/asm/insn-def.h
>> index e01ab51f50d2..6960beb75f32 100644
>> --- a/arch/riscv/include/asm/insn-def.h
>> +++ b/arch/riscv/include/asm/insn-def.h
>> @@ -192,4 +192,8 @@
>>       INSN_I(OPCODE_MISC_MEM, FUNC3(2), __RD(0),        \
>>              RS1(base), SIMM12(2))
>> +#define CBO_zero(base)                        \
>> +    INSN_I(OPCODE_MISC_MEM, FUNC3(2), __RD(0),        \
>> +           RS1(base), SIMM12(4))
>> +
>>   #endif /* __ASM_INSN_DEF_H */
>> diff --git a/arch/riscv/include/asm/page.h 
>> b/arch/riscv/include/asm/page.h
>> index 9f432c1b5289..ccd168fe29d2 100644
>> --- a/arch/riscv/include/asm/page.h
>> +++ b/arch/riscv/include/asm/page.h
>> @@ -49,10 +49,14 @@
>>   #ifndef __ASSEMBLY__
>> +#ifdef CONFIG_RISCV_ISA_ZICBOZ
>> +void clear_page(void *page);
>> +#else
>>   #define clear_page(pgaddr)            memset((pgaddr), 0, PAGE_SIZE)
>> +#endif
>>   #define copy_page(to, from)            memcpy((to), (from), PAGE_SIZE)
>> -#define clear_user_page(pgaddr, vaddr, page)    memset((pgaddr), 0, 
>> PAGE_SIZE)
>> +#define clear_user_page(pgaddr, vaddr, page)    clear_page(pgaddr)
>>   #define copy_user_page(vto, vfrom, vaddr, topg) \
>>               memcpy((vto), (vfrom), PAGE_SIZE)
>> diff --git a/arch/riscv/kernel/cpufeature.c 
>> b/arch/riscv/kernel/cpufeature.c
>> index 74736b4f0624..42246bbfa532 100644
>> --- a/arch/riscv/kernel/cpufeature.c
>> +++ b/arch/riscv/kernel/cpufeature.c
>> @@ -280,6 +280,17 @@ void __init riscv_fill_hwcap(void)
>>   #ifdef CONFIG_RISCV_ALTERNATIVE
>>   static bool riscv_cpufeature_application_check(u32 feature, u16 data)
>>   {
>> +    switch (feature) {
>> +    case RISCV_ISA_EXT_ZICBOZ:
>> +        /*
>> +         * Zicboz alternative applications provide the maximum
>> +         * supported block size order, or zero when it doesn't
>> +         * matter. If the current block size exceeds the maximum,
>> +         * then the alternative cannot be applied.
>> +         */
>> +        return data == 0 || riscv_cboz_block_size <= (1U << data);
>> +    }



>> +
>>       return data == 0;
>>   }
>> diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
>> index 6c74b0bedd60..26cb2502ecf8 100644
>> --- a/arch/riscv/lib/Makefile
>> +++ b/arch/riscv/lib/Makefile
>> @@ -8,5 +8,6 @@ lib-y            += strlen.o
>>   lib-y            += strncmp.o
>>   lib-$(CONFIG_MMU)    += uaccess.o
>>   lib-$(CONFIG_64BIT)    += tishift.o
>> +lib-$(CONFIG_RISCV_ISA_ZICBOZ)    += clear_page.o
>>   obj-$(CONFIG_FUNCTION_ERROR_INJECTION) += error-inject.o
>> diff --git a/arch/riscv/lib/clear_page.S b/arch/riscv/lib/clear_page.S
>> new file mode 100644
>> index 000000000000..5b851e727f7c
>> --- /dev/null
>> +++ b/arch/riscv/lib/clear_page.S
>> @@ -0,0 +1,71 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/*
>> + * Copyright (c) 2023 Ventana Micro Systems Inc.
>> + */
>> +
>> +#include <linux/linkage.h>
>> +#include <asm/asm.h>
>> +#include <asm/alternative-macros.h>
>> +#include <asm/hwcap.h>
>> +#include <asm/insn-def.h>
>> +#include <asm/page.h>
>> +
>> +#define CBOZ_ALT(order, old, new)    \
>> +    ALTERNATIVE(old, new, order, RISCV_ISA_EXT_ZICBOZ, 
>> CONFIG_RISCV_ISA_ZICBOZ)
> 
> I thought this was meant to be a CPUFEATURE_ZICBOZ thing for the
> alternatives?
> 
> I may also be missing something, but when backporting this to 5.19
> to test it on our system the "order" argument is in fact the vendor-id
> so this doesn't work as the alternatives don't get patched in at-all.

So it looks like when backporting I missed the updated in
arch/riscv/kernel/cpufeature.c for testing the block size
which explains the issues I was seeing with the assembly
code.

I'm not sure why it wouldn't assemble for me with the
RISCV_ISA_EXT_ZICBOZ being undefined.

With using vendor-id with the RISCV_ISA_EXT_ZICBOZ as the
errata-id, would the RISCV_ISA_EXT space need to be reserved
for any vendor specific IDs?


-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

