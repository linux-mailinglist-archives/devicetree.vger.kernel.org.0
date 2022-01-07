Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EADEC487EAF
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 22:58:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230269AbiAGV6N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 16:58:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230224AbiAGV6N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 16:58:13 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3DE0C061574
        for <devicetree@vger.kernel.org>; Fri,  7 Jan 2022 13:58:12 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id p14so5916188plf.3
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 13:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=YwXvl9LyxPLT5KXmkZnhb1YhT1RhoPjqa4mfsaDtNLk=;
        b=vCOx5mxoPf5yDaezl0FLUSox3TvjNiTFVaS3YESthdUcIUX2XkP1LEQJz3KCfNEu4/
         dr5dFPmSJwo6+a60TPNeMwGKmfG7+V/ijQpoV2zFmRm0wjKZZQeE1wzBcPTixDmEUqxK
         M3ypkkcyHDB1SjRF+HkryUIKAQgySodaHoKr9XKCrzpAhx541sqP5yAtg/aMBhjtZnXV
         xG5GcMJEBdig7xMx6p8UF2xXquE5hd0GemBXAylcSEmp8+UsAeVGCmK2HRmUEHMa1UnB
         QBxfIj9gqYF22D5wyzqcSBBOQ3MZ/yxtk6O7W3G2Q4NsA1GN9MduSokiAeTfowGE15Pf
         SXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=YwXvl9LyxPLT5KXmkZnhb1YhT1RhoPjqa4mfsaDtNLk=;
        b=rpojopFqXhtREkMxLRUofpnwCNESilfbqKMCmcYNCPes6X46xtXTH/jYN6DsOj5H87
         CzimSJNmFJ6I326I2zvGNCtXct4CKok7KnFiXU4zJLiMwlOMQcyv8QX1QyQSsowhatKA
         QJi7/Z9YEap0zLAHkPO/E63nwTV4yL05T4UeAhMcrKmRgocA+cV3K83OPxyTQRUyUs7K
         oZCYPS6ffF1k9NusXKAWzXZ54/k0ouipQXhaMP0DZMzGmzsQ0NWfsDK1eFS96ZjcPfb+
         Jyysapo6M/Zh5sDhtp8rNFb6hBq7g+pHs1L2S685OhLdfRvgVI9IcbmgkADQDbkrOiJc
         UFhg==
X-Gm-Message-State: AOAM532qW/NQgTGh+YQkKSkI9Oauz3lLpYy7ivoY2l2/YsqukShvY3a1
        A7Xa2mpK7IGYy7zEUOMUCCl5YA==
X-Google-Smtp-Source: ABdhPJwjdYvL9KC4dQqmY1X2DJSMm1IhfC/WV0RmK9svOcjiOdVLZeVIvOciLmiFA1ZiydXONVBgwA==
X-Received: by 2002:a17:902:a589:b0:149:dc8c:76ad with SMTP id az9-20020a170902a58900b00149dc8c76admr13027341plb.94.1641592692055;
        Fri, 07 Jan 2022 13:58:12 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id p32sm5500061pgb.49.2022.01.07.13.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jan 2022 13:58:11 -0800 (PST)
Date:   Fri, 07 Jan 2022 13:58:11 -0800 (PST)
X-Google-Original-Date: Fri, 07 Jan 2022 13:57:44 PST (-0800)
Subject:     Re: [PATCH v1 0/2] Provide a fraemework for RISC-V ISA extensions 
In-Reply-To: <20211224211632.1698523-1-atishp@rivosinc.com>
CC:     linux-kernel@vger.kernel.org, Atish Patra <atishp@rivosinc.com>,
        aou@eecs.berkeley.edu, atishp@atishpatra.org, anup@brainfault.org,
        damien.lemoal@wdc.com, devicetree@vger.kernel.org,
        jszhang@kernel.org, krzysztof.kozlowski@canonical.com,
        linux-riscv@lists.infradead.org,
        Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     atishp@atishpatra.org
Message-ID: <mhng-791652b4-53f0-48e4-a640-f4c418c9926b@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Dec 2021 13:16:30 PST (-0800), atishp@atishpatra.org wrote:
> This series implements a generic framework to parse multi-letter ISA
> extensions. It introduces a new DT node that can be under /cpus or
> individual cpu depends on the platforms with homogeneous or heterogeneous
> harts. This version of the series only allows adds support for homogeneous
> harts as there are no platforms with heterogeneous harts yet. However,
> the DT binding allows both.
>
> The patch also indicates the user space about the available ISA extensions
> via /proc/cpuinfo.
>
> Here is the example output of /proc/cpuinfo:
> (with debug patches in Qemu and Linux kernel)
>
> / # cat /proc/cpuinfo
> processor	: 0
> hart		: 0
> isa		: rv64imafdcsu
> isa-ext		: sstc,sscofpmf
> mmu		: sv48

IMO this is the wrong way to go.  I get that the ISA string is very 
complicated to parse, but we've tried to come up with other 
representations of this we've ended up having that interface break when 
the ISA string rules eventually change.  We should just stick to the ISA 
string for these interfaces, as that's at least something everyone can 
agree on because they're defined by the spec.

That said, we should add the spec versions into this interface.  At 
least the user spec version is relevant here, but given that we're 
passing through some other priv-level details we might as well pass that 
though too.

> processor	: 1
> hart		: 1
> isa		: rv64imafdcsu
> isa-ext		: sstc,sscofpmf
> mmu		: sv48
>
> processor	: 2
> hart		: 2
> isa		: rv64imafdcsu
> isa-ext		: sstc,sscofpmf
> mmu		: sv48
>
> processor	: 3
> hart		: 3
> isa		: rv64imafdcsu
> isa-ext		: sstc,sscofpmf
> mmu		: sv48
>
> Anybody adding support for any new multi-letter extensions should add an
> entry to the riscv_isa_ext_id and the isa extension array.
> E.g. The patch[1] adds the support for sscofpmf extension.
>
> [1] https://github.com/atishp04/linux/commit/a23157264118d6fd905fd08d8717c7df03078bb1
>
> Atish Patra (2):
> RISC-V: Provide a framework for parsing multi-letter ISA extensions
> dt-bindings: riscv: Add DT binding for RISC-V ISA extensions
>
> .../devicetree/bindings/riscv/cpus.yaml       |  9 +++
> arch/riscv/include/asm/hwcap.h                | 31 ++++++++++
> arch/riscv/kernel/cpu.c                       | 16 +++++
> arch/riscv/kernel/cpufeature.c                | 58 ++++++++++++++++++-
> 4 files changed, 113 insertions(+), 1 deletion(-)
