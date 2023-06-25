Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9015B73D538
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 01:18:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbjFYXSu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jun 2023 19:18:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbjFYXSs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jun 2023 19:18:48 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10D2AE43
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 16:18:48 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-5440e98616cso2433820a12.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 16:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1687735127; x=1690327127;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UpIMN4XpQeJ4YS60z1+uA00mzggF5bwaAByLir7yAT8=;
        b=FCItIZREMzNmf0+O2gHgbjDSS/tvGoIqGJfdbKC5Jj7SJzvu3lioxezMtC1HDhl5So
         98XVfsCcuuHTo6GvyDFmxNiWrvGk9Uqxxs5PIaNPkb/uMUx97RpUv6jNjeY9iXLaaFmu
         GYvTRnzfdwo5C6WP/HCCboNbc2qshMW1zswM15zWqIvnTEsa28hJLEFEngHCqxlF3fVU
         Rs685KTXsXsBn2oorAGb+5xB9XBOwtNngb71o2I1c5sAxIVGeNfcpa1hAS7CRapAJvVV
         tGLfO4525A9ZllTrsJQt/ETb2wjz2EJ4rw+xpnNsxf2Sw9oz1+ktcM7xE1JIIb/1FlFY
         Z6Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687735127; x=1690327127;
        h=to:from:cc:content-transfer-encoding:mime-version:date:message-id
         :subject:references:in-reply-to:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UpIMN4XpQeJ4YS60z1+uA00mzggF5bwaAByLir7yAT8=;
        b=HodxYdE3TdXCM/PyNaGcT4Wb5kAle9Decl3CjMLjFpKUpOLmPj75pTzwsai+xlZbpk
         wthg4OsJyBriTzG9GPkmIx9N4A5P26k6jPHFlDztf18LH2EGJMSCsprpuijULrsWJ5P0
         hLIDj5u8A9EH0BmXNcFBdkwgac7GNWwFVbFCGUr4ra8/Br7QnPDlzlCVQG5VTxPYefsX
         a0f4Wo9iBv3Yy/Cx7UlpEyMioAX5dFVk4/ZQJskrAqCT2EzTuR7d7UTC+1JGUr8ZaW0d
         YSuVkoiA5C1QMK4os+b+lYVnFtnldJpcs5iCXt9cwzrxeSTWagcLbSyQ2yshZgogoOfh
         dUtA==
X-Gm-Message-State: AC+VfDwhjdY25M7t3HVnw4ADK0KwGncU1gANm8Ckrl1c8wp0jxDFw7qY
        AdmGtf3dcJjWP3NdO+ioSc2EhA==
X-Google-Smtp-Source: ACHHUZ7nbVKHfGLropxdF66iIyVMQTIOdVAZVedhoQaFHgz2eoQki5gZUqcULorkUCI0XuWh97Aq/w==
X-Received: by 2002:a17:90a:ac16:b0:262:e589:678f with SMTP id o22-20020a17090aac1600b00262e589678fmr3363933pjq.10.1687735127392;
        Sun, 25 Jun 2023 16:18:47 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id n19-20020a17090a929300b0023d386e4806sm3033535pjo.57.2023.06.25.16.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 16:18:47 -0700 (PDT)
In-Reply-To: <20230607-audacity-overhaul-82bb867a825f@spud>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
Subject: Re: [PATCH v3 0/7] ISA string parser cleanups
Message-Id: <168773507356.1389.13419277183239266395.b4-ty@rivosinc.com>
Date:   Sun, 25 Jun 2023 16:17:53 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-901c5
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@rivosinc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Conor Dooley <conor@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 07 Jun 2023 21:28:24 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> With that out of the way, here are some cleanups for our riscv,isa
> handling.
> 
> Here are some bits that were discussed with Drew on the "should we
> allow caps" threads that I have now created patches for:
> - splitting of riscv_of_processor_hartid() into two distinct functions,
>   one for use purely during early boot, prior to the establishment of
>   the possible-cpus mask & another to fit the other current use-cases
> - that then allows us to then completely skip some validation of the
>   hartid in the parser
> - the biggest diff in the series is a rework of the comments in the
>   parser, as I have mostly found the existing (sparse) ones to not be
>   all that helpful whenever I have to go back and look at it
> - from writing the comments, I found a conditional doing a bit of a
>   dance that I found counter-intuitive, so I've had a go at making that
>   match what I would expect a little better
> - `i` implies 4 other extensions, so add them as extensions and set
>   them for the craic. Sure why not like...
> 
> [...]

Applied, thanks!

[1/7] RISC-V: simplify register width check in ISA string parsing
      https://git.kernel.org/palmer/c/fed14be476f0
[2/7] RISC-V: split early & late of_node to hartid mapping
      https://git.kernel.org/palmer/c/2ac874343749
[3/7] RISC-V: validate riscv,isa at boot, not during ISA string parsing
      https://git.kernel.org/palmer/c/069b0d517077
[4/7] RISC-V: rework comments in ISA string parser
      https://git.kernel.org/palmer/c/6b913e3da87d
[5/7] RISC-V: remove decrement/increment dance in ISA string parser
      https://git.kernel.org/palmer/c/7816ebc1ddd1
[6/7] dt-bindings: riscv: explicitly mention assumption of Zicntr & Zihpm support
      https://git.kernel.org/palmer/c/1e5cae98e46d
[7/7] RISC-V: always report presence of extensions formerly part of the base ISA
      https://git.kernel.org/palmer/c/07edc32779e3

Best regards,
-- 
Palmer Dabbelt <palmer@rivosinc.com>

