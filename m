Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F91C58945F
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 00:28:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236511AbiHCW2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 18:28:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbiHCW2Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 18:28:16 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF7495A88C
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 15:28:14 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id l4so23126793wrm.13
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 15:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:in-reply-to:cc:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=zEkoao7zYU+WcR7kSm6nBvQaMYVp8naAyd32jCLqH0E=;
        b=OY37iNsm9roYuI5Moxof5r+o8pf2Q1qn+8QLwRr4MTgwsttoZDEkjnOSv8j/NYJIeG
         KxKOLZM8GT/VyFVqo0/v8dO4twI9bFmgrawsf4B5eXGxPSzsINYXoq4ZI5o/43WOm4Sk
         cPQQ47hJjjnf17PAsWD6DCZ54oQO5dbtWWFU8G8u7IVeHiLaaLavZ9vPIsmrJ9XH+OBe
         TXg5jdSbGGlTFzywMkudScDF6wWaKbmq4/G1GveRbxLw89wibZae5O4TlfptnKxyJC+y
         A8eJDknbu2XM+gW8bHpVmb9hFOAdSharsg/+faTM0+tGZDmqR8y+XWYo0FJGUTZMt8T9
         zvqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:cc:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=zEkoao7zYU+WcR7kSm6nBvQaMYVp8naAyd32jCLqH0E=;
        b=DmEMvJLdMp34w+zVI8GHLyK6vT+aG/JLFYGoLGgtZO6C39uZqQ3SAD3ryuj0+W9aFW
         hkZ1joqIgJtwiNVGCc2cLOQUVfpKsW+B+FkpC/LomD/nzqyqbS3RDuUUiD2HoCguCAc2
         fmG6zxR8cwVpKhm580+tB2KRxEZXacejJnyG5dWcxYaTTdCila9yTqsruca+y35HHK6z
         wOFipsZYK4zrSNIqhRZwmqb9ncbCXNYANMr5wcnvtXjiWFxBDm+l3qJ6DtH/vLuLyzsr
         SYH8YWbAHw9DP0NF5QrfYBK7efeEEAL65f/XH1arUGGkHL9Z4ZRSgNBJyLuOlqDgEVDS
         tKNg==
X-Gm-Message-State: ACgBeo0TOSWII8wvMKtTIHoJQb9nO6Bb8OW3MCVdwAAQlXLCdtFbyouy
        dShCNCp2IF5WjzY+hyYH4I/ghA==
X-Google-Smtp-Source: AA6agR7PNg/Odstt713wfGffYsv2eg5MMIZWjFU6weO1GXug4XZYRpKQy1TDxMimIbF9Ge9HuXobpA==
X-Received: by 2002:adf:de05:0:b0:220:6c9e:5fd9 with SMTP id b5-20020adfde05000000b002206c9e5fd9mr7382563wrm.260.1659565693477;
        Wed, 03 Aug 2022 15:28:13 -0700 (PDT)
Received: from [192.168.2.222] ([93.107.66.220])
        by smtp.gmail.com with ESMTPSA id u10-20020a05600c19ca00b003a3187a2d4csm3980993wmq.22.2022.08.03.15.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 15:28:13 -0700 (PDT)
Message-ID: <1a9c0ecb-f841-e73e-1c43-eb4e262b9f4a@conchuod.ie>
Date:   Wed, 3 Aug 2022 23:27:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: DT schema warnings on Risc-V virt machine
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>
References: <20220803170552.GA2250266-robh@kernel.org>
From:   Conor Dooley <mail@conchuod.ie>
Cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        qemu-riscv@nongnu.org
In-Reply-To: <20220803170552.GA2250266-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/08/2022 18:05, Rob Herring wrote:
> Hey folks,
> 
> FYI, I ran DT validation on the Risc-V 'virt' machine and these are the 
> warnings:
> 
> /home/rob/riscv-virt.dtb: cpu@0: riscv,isa:0: 'rv64imafdcsuh' is not one of ['rv64imac', 'rv64imafdc']
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/riscv/cpus.yaml

This one is party a QEMU problem & should've been fixed - but the fix
was never applied:
https://lore.kernel.org/qemu-devel/20190813225307.5792-1-palmer@sifive.com/
I think this just needs a rebase & a resend which I can do.
I think kernel-side we need to add a new string riscv,isa string but it
is not the one in your error message - it's either "rv64imafdch" or
"rv64imafdch_zicsr_zifencei_zba_zbb_zbc_zbs". Palmer, what is your
take on that? Is only the short misa meant to go into the dt?

For the plic/clint related warnings, documenting the
"riscv,{plic,clint}0" variants seems to be to be the right thing to do
as they're already in the kernel in drivers. I'll send patches for
these.

BTW Rob, what version of qemu were you using? I saw more errors on
QEMU's master branch - like the following from a dump of the virt
machine:
/stuff/qemu/qemu.dtb: platform@4000000: $nodename:0: 'platform@4000000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
        From schema: /home/conor/.local/lib/python3.9/site-packages/dtschema/schemas/simple-bus.yaml

Using a platform bus seems to be a core QEMU feature, used on multiple
archs in hw/core/sysbus-fdt.c - but that violates the schema. Not sure
what to do there.

/stuff/qemu/qemu.dtb: soc: poweroff: {'value': [[21845]], 'offset': [[0]], 'regmap': [[4]], 'compatible': ['syscon-poweroff']} should not be valid under {'type': 'object'}
        From schema: /home/conor/.local/lib/python3.9/site-packages/dtschema/schemas/simple-bus.yaml
/stuff/qemu/qemu.dtb: soc: reboot: {'value': [[30583]], 'offset': [[0]], 'regmap': [[4]], 'compatible': ['syscon-reboot']} should not be valid under {'type': 'object'}
        From schema: /home/conor/.local/lib/python3.9/site-packages/dtschema/schemas/simple-bus.yaml

These two seem to be that the creation script adds them as subnodes of
the soc bus not subnodes of the syscon. A QEMU problem rather than a dt
bindings problem.

The rest seem to be a variety of incorrect names being used in riscv's
virt.c in QEMU. I guess I'll send fixes for those too..

Thanks,
Conor
