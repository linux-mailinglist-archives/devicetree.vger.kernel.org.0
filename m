Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEF0574489C
	for <lists+devicetree@lfdr.de>; Sat,  1 Jul 2023 13:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjGALBs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Jul 2023 07:01:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229961AbjGALBp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Jul 2023 07:01:45 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C16443C18
        for <devicetree@vger.kernel.org>; Sat,  1 Jul 2023 04:01:43 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-992ca792065so242125866b.2
        for <devicetree@vger.kernel.org>; Sat, 01 Jul 2023 04:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1688209302; x=1690801302;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iUgkxYj4hDdaeULOykMIAMiTYI4q7YAWRcLFU1vSbps=;
        b=Hl6PE+6tbQAK3mCvx+YO6XTFLzapBMm8lxpT/1mcQfSusfpxU8+WUET6DNyDlb9gG8
         tYNvNPt8I+LTE58jZu3BrFuSpW3vvVraNpSu+Jpl4S4ELRffi/YrwE/3b5LQSXuJjdyW
         ifHY4vY7etvbXXNEgHbvmWOL368iaR8tvZdn0DDuHJ338jSWzHaq2TX53R4OexKYDUoK
         10Qj/oj/1RBrC9bj45Lv8C1pWw05ejDbivtz8ZP/8XqTrjYHN98NiWBFHG+4fMjX3Mon
         TE0gKszRbjVhL0hqjesgen/EEUGk2UkdcGfZTNBbNiXC4qV1UuUpe9tEEln2IWWcvu+Y
         KcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688209302; x=1690801302;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iUgkxYj4hDdaeULOykMIAMiTYI4q7YAWRcLFU1vSbps=;
        b=IYtQAWk0dRAu6j3D5hLkFA2jOVtLFPWqfCMx+F0NpgaZN3gqUHFdYYiC6+OEbvQ/h+
         9dnl4ssKFur13aGy2UhjRDtWez7Wk7uEQsNVbQDQc9mLjqwf8H02ewKdokVHtT+MR+F9
         uNzOAj55eUKgCgbYUX5dgGTYZZ9WRNYndzuBdhLKOkkOVAXNgUxdtSbyZpvipP5ryztJ
         T9VvCSMw7dl2xlRyq+qS0J7j2sE/sfX1IRsri2mqvUDMUSc82kOfElZSBzOAmeaLBo1y
         KfppmE2+R1icAVvTKGa7dcY17ATX8vJ1Bvf992STssfd4m6BedcdHjymf0BZOlTTTZZB
         DQQQ==
X-Gm-Message-State: ABy/qLZ2pu/cKqv03KgNsUJus19ewur7qEJNtiXO57q3vQHsm9snU3Qu
        r0Md9CSUQ0hgLrNfIiBw/GbBAA==
X-Google-Smtp-Source: APBJJlFkK8StAK5YsG+2ZcpOu+kBMm85tO+8fKQBITtMoynDzvNSvGndfZtNLBSou1PvXBWQdFIuWw==
X-Received: by 2002:a17:906:7a0b:b0:98d:cd3e:c18f with SMTP id d11-20020a1709067a0b00b0098dcd3ec18fmr4312746ejo.72.1688209302131;
        Sat, 01 Jul 2023 04:01:42 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id x6-20020a170906710600b0098e48ad11f2sm7705332ejj.93.2023.07.01.04.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Jul 2023 04:01:41 -0700 (PDT)
Date:   Sat, 1 Jul 2023 13:01:40 +0200
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     palmer@dabbelt.com, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alistair Francis <alistair.francis@wdc.com>,
        Anup Patel <apatel@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Jessica Clarke <jrtc27@jrtc27.com>,
        Rick Chen <rick@andestech.com>, Leo <ycliang@andestech.com>,
        Oleksii <oleksii.kurochko@gmail.com>,
        linux-riscv@lists.infradead.org, qemu-riscv@nongnu.org,
        u-boot@lists.denx.de, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4] dt-bindings: riscv: deprecate riscv,isa
Message-ID: <20230701-b348653e432924f090c513db@orel>
References: <20230630-very-greedless-16522d7b7830@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230630-very-greedless-16522d7b7830@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 30, 2023 at 07:04:04PM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
...
> +oneOf:
> +  - required:
> +      - riscv,isa
> +  - required:
> +      - riscv,isa-base
> +

I guess this means a DT must have either isa or isa-base, but not both.
What should QEMU and other platforms which want to provide DTs that work
for older kernels, but also start using the new schema do? I'd guess
they'd like to provide both, where they'd expect isa-base to be used by
newer kernels and isa by the old.

Thanks,
drew
