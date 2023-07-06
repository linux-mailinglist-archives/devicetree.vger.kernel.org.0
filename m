Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C279F74A30D
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 19:27:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230466AbjGFR1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 13:27:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbjGFR1U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 13:27:20 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BF6619B2
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 10:27:19 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1b8033987baso15205775ad.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 10:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1688664439; x=1691256439;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jn7a2xeSOCay/dfZF7fwDabuNtAa1pZY11og1PISP7o=;
        b=iiQ+SMcyzSGrF/OXkZ0ynReYpKtMKZ0y0KTGoqTMo6wj7LWaQxw0z5jrVOvbH58TTg
         +N0U8PwreurjB5vVwFH9fXYJNWvRbmTRctfibbcyIYqbrUA4jTbc/Z3dAQ/5MprxDTGt
         7u084BXwAky1m625fwmIHNhkWTTHM8bi5k6mcNrCG+se3g8/+bm9vBberW5VtkXqIdxT
         aodLfXEGxeET0tBuCnP1803Az+pVNyKlcAyoQzVfFuzvTEGIYaJbYz1Km6QS4zFK5xD7
         9O0IZrbUp9uaCA7B3O6svuVhAsKLm33sopcJcweXt+u98ytGaP3ArwiqIPbHHzp4PvW4
         7ilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688664439; x=1691256439;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jn7a2xeSOCay/dfZF7fwDabuNtAa1pZY11og1PISP7o=;
        b=HPJuaqM+NFX7a4KN2px4tQRAQxODVIH0mG2IFFv8jC+r19ckd9AkhuNG3AlMKoz8Fn
         k2MT+iMeKtXdJQTJ2MwFdI6PAK3e8/rTODtxwMExHv1bnaFnheE3k1PZVH/5tovQUhA5
         MPcmJzCCcaJbBPmLUyCQAcm5ysu5awwt6JuvqoZ3ABMVCD86Z0/rAP2lk178CH855XYZ
         Vn9hTQD89nfS7CCRh9+G56tDECYSEWWnmucDTM7PdxRYPYarulBhBdNCwzTlsSry2fTt
         UR1uYsuKAG1JeF7INDhXFamBKWDrqkwiyZ/Il6kF177VQnAVf3ve414Op2wXRKO3kj+c
         RjaQ==
X-Gm-Message-State: ABy/qLbqwbYMBtb4YC+wyDnhqGxO8HsAUv5cdAy0bgHCr1MQxqUEK+ow
        POSFw2BUb7AaLKWnHj4uBA/TnA==
X-Google-Smtp-Source: APBJJlE3KGdR0bMX6GYwQVcPoEOOedKCRiHGchyo57OKOouToD0llxWDSI4fWwVmCNS6bQ2O3EB6tw==
X-Received: by 2002:a17:902:dac9:b0:1b8:76cb:c6a4 with SMTP id q9-20020a170902dac900b001b876cbc6a4mr8323507plx.21.1688664438768;
        Thu, 06 Jul 2023 10:27:18 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id y10-20020a17090322ca00b001b7fabe8b0asm1694210plg.2.2023.07.06.10.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 10:27:18 -0700 (PDT)
Date:   Thu, 06 Jul 2023 10:27:18 -0700 (PDT)
X-Google-Original-Date: Thu, 06 Jul 2023 10:26:32 PDT (-0700)
Subject:     Re: [PATCH 1/1] riscv: dts: Enable device-tree overlay support for starfive devices
In-Reply-To: <20230627080620.329873-1-felix.moessbauer@siemens.com>
CC:     kernel@esmil.dk, robh+dt@kernel.org,
        daniel.bovensiepen@siemens.com, jan.kiszka@siemens.com,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        felix.moessbauer@siemens.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     felix.moessbauer@siemens.com, Conor Dooley <conor@kernel.org>
Message-ID: <mhng-6b374b17-9e75-4ae5-b614-f89fcf8b64c4@palmer-ri-x1c9a>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Jun 2023 01:06:20 PDT (-0700), felix.moessbauer@siemens.com wrote:
> Add the '-@' DTC option for the starfive devices. This option
> populates the '__symbols__' node that contains all the necessary symbols
> for supporting device-tree overlays (for instance from the firmware or
> the bootloader) on these devices.
>
> The starfive devices allow various modules to be connected and this
> enables users to create out-of-tree device-tree overlays for these modules.
>
> Please note that this change does increase the size of the resulting DTB
> by ~20%. For example, with v6.4 increase in size is as follows:
>
> jh7100-beaglev-starlight.dtb 6192 -> 7339
> jh7100-starfive-visionfive-v1.dtb 6281 -> 7428
> jh7110-starfive-visionfive-2-v1.2a.dtb 11101 -> 13447
> jh7110-starfive-visionfive-2-v1.3b.dtb 11101 -> 13447
>
> Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
> ---
>  arch/riscv/boot/dts/starfive/Makefile | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/starfive/Makefile
> index 170956846d49..0141504c0f5c 100644
> --- a/arch/riscv/boot/dts/starfive/Makefile
> +++ b/arch/riscv/boot/dts/starfive/Makefile
> @@ -1,4 +1,10 @@
>  # SPDX-License-Identifier: GPL-2.0
> +# Enables support for device-tree overlays
> +DTC_FLAGS_jh7100-beaglev-starlight := -@
> +DTC_FLAGS_jh7100-starfive-visionfive-v1 := -@
> +DTC_FLAGS_jh7110-starfive-visionfive-2-v1.2a := -@
> +DTC_FLAGS_jh7110-starfive-visionfive-2-v1.3b := -@
> +
>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-beaglev-starlight.dtb
>  dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-starfive-visionfive-v1.dtb

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
