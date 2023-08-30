Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D636978D96F
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:33:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231224AbjH3SdI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:33:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244666AbjH3Nme (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 09:42:34 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 660571B0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 06:42:30 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-565e395e7a6so2374010a12.0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 06:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693402950; x=1694007750; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1U//L1yYopSVR/IwO4YF9QhC/v7CgleTXf+0yUtxKuQ=;
        b=P2P40AZFLYSfxecrksKElRnWua7KkuaH/hG8erYcUzSA0xk+iKxPx/Ya6Y9xk8OSle
         2yWMnx7GhKUpmettnrT6Zs11qa+Y3ApsLAzeigfz6fAAqIHiSUAKuHUUsQRIJH7Pgf3L
         rL44J8q1QXuS7EqYtb7lsKxlHITBdLzN79VGKWOunJVI+onTv+1XCuRT5N5/D9ju+X5U
         I/n5z4IT4OJfefDUyDWARb+hov0fwl1uJMXkJTjgPWBwtdpuYkvAMJT3DDIDZ3DPz5qD
         wxuogHV77sBrSVYWtRbfdqZmyi7uRCKuqf9cSAdYCuQbGzwBQ9bIF6uN1FVzT2ftj+X8
         xDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693402950; x=1694007750;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1U//L1yYopSVR/IwO4YF9QhC/v7CgleTXf+0yUtxKuQ=;
        b=fEtiDwtVqWSz3juUkz3vakIZgu1FdYpIiSKhZa+WzhSNeunQRHhXVdIOEMDAEnArqa
         zkK3ZE5tsBogljQ6aeTD4XLr831okHsDkSFzh38wyBBdRXzxVfWES/8JjQK5ZVeQlGf/
         H1gyCmyxwGC9AgKSmuahDvllJwfaXSomMDiOUJ+twvzqc9/k2Nzn0ahwIEqXHCxqEpG7
         8spFTGkYV3A/Dv9onhlEIgnR6a7UFbvfXoNf76uHm3UnOplPdY0y1Ii3I1DnwpimdRKd
         lkYMIXcl/hxLiYegKL5cgUHAO6BWQEEVKZ2rfgs1fyPk1D/DfzS4jq/DAwfziN4wY06W
         UzHA==
X-Gm-Message-State: AOJu0Yy5Y99P62aedljPJrQQ55l2Aq0u4V9MIQbPLX8WcmmF5yxIcaVq
        ex4c6xV3I19gEa6dlP+Y4JJVC6MBPGf1J+ZUV0c=
X-Google-Smtp-Source: AGHT+IFF6qejXwMgd2lTbgaipAHhyViqoDykWLhXtm7DRuhv1hMLDpuP0VgeHD5QF8vIB7MncYW1A4D2Z9Y2Xp3z7ls=
X-Received: by 2002:a17:90b:1a85:b0:268:5575:93d9 with SMTP id
 ng5-20020a17090b1a8500b00268557593d9mr1997265pjb.10.1693402949742; Wed, 30
 Aug 2023 06:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230830114335.106344-1-eagle.alexander923@gmail.com>
 <e2dc91a9-d027-dc69-14bf-3a1184045254@linaro.org> <f40497d1-3547-9434-459f-050f592937ca@linaro.org>
In-Reply-To: <f40497d1-3547-9434-459f-050f592937ca@linaro.org>
From:   Alexander Shiyan <eagle.alexander923@gmail.com>
Date:   Wed, 30 Aug 2023 16:42:18 +0300
Message-ID: <CAP1tNvTvd5mZ1eWiMeck14b5KGyyXBNrEE=of0OKesbNKE_jqQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: stm32: Add MyirTech MYD-YA15XC-T development
 board support
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello.

The initial thought in the file name was that the modules could be
equipped with a CPU
other than STM32MP151, i.e. 153 or 157. The development board, as far
i understand,
equipped with a STM32MP151 only, so can we leave the current name for
the module (15x)
as is and change it only in the file name (and in compatible property)
for the development
board only?

Thanks!

> On 30/08/2023 14:51, Krzysztof Kozlowski wrote:
> > On 30/08/2023 13:43, Alexander Shiyan wrote:
> >> Add support for the MyirTech MYD-YA15XC-T development board.
> >>
> >> General features:
> >>  - STM32MP151
> >>  - 256MB RAM
> >>  - 2xUSB HOST
> >>  - USB-C OTG
> >>  - Gigabit ethernet
> >>  - UART
> >>  - Boot from NAND, eMMC, SD
> >>
> >> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> >> ---
> >>  arch/arm/boot/dts/st/Makefile                 |   3 +-
> >>  .../boot/dts/st/stm32mp15x-myirtech-myc.dtsi  | 351 ++++++++++++++
> >>  .../boot/dts/st/stm32mp15x-myirtech-myd.dts   | 457 ++++++++++++++++++
>
> Also naming looks wrong. This is stm32mp151, not 15x.
>
> Best regards,
> Krzysztof
>
