Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C533640C9E
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 18:54:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234006AbiLBRyv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 12:54:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234106AbiLBRyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 12:54:49 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C277CDEA4D
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 09:54:48 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id q15so4578934pja.0
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 09:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p1XzRn925Fp44O0w9G4cuwC3UNLrpIUG0nEwGRZQ/YU=;
        b=ERYRng/+2McDbTloeXnaVcbmZ19evhdUD98unc3RFkNiKkugoSGQlyyxPeMsjND8ub
         HeSzwVpd082dYV2tWVPad7nLVJrWTpkJw+g+McKgDwhlq78ELe3ui38zomaQNEDcWKv4
         qOTVAdq9+zlgKtcPcSMzJwLMLquS0wSSdMIgTjaI53pwm4n0LJ5zv4DhvQ8wYz0K0fDJ
         FuHKr6n6Pq0WuqSfPFxMuJSkj+zYEYiGAQy1tQNsOcxvib/qcjMMNoUDFJ/oKSDIaWdQ
         HMRfIzWSRnOLJvV1f4Iug0xOWkHS5yVc2HLbdvwHQVzsF2JYX8DGEgYZXWKQvj4zGhy/
         xlfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p1XzRn925Fp44O0w9G4cuwC3UNLrpIUG0nEwGRZQ/YU=;
        b=f9NXfMAE8VNWj7hTsq4e+ZPm50wgzqOAWHzYEpDODdDngne2p4hPZdbZ/GwT/3KfIO
         PrM8+HKTErp2b/kAAygIFMxeKMymSdVIhx8iY9FfsVvQ2BBCnBHEb9+jBy4AfJhSOCLU
         CyAUELM3DYO7QR8cDl2SIdJcwKiHRSCNU0wjY2vBMyAq6ePLPnTge2cQyxwWhBVbJo9i
         2tCrykr/y9q+0UKc96mJUBHh6d793GE/9z4lmYnNFezcauF6ak1hf729x5r10l8NeaKn
         iMUvGyXnEsEkZYPFzUwNFbm16uGoJx4PJy0Y4m2HPbsuM/sqeq80ZZ/kdf0L9POZCVux
         7ymA==
X-Gm-Message-State: ANoB5pmg2VxQhgKr1SBj7o1Y90GSLvk2vX23FOB4NzcuU1i3Y1vqa7Ss
        vaXCa45Q7OGvZLRGt4IASwY9Sw==
X-Google-Smtp-Source: AA0mqf76Z+L8vqIbTmVFjgnSj6R8n7eFo6mnFYtbdrFJbnUCXUjtrZiNr2NDlKMaN48VVG2YVV9Pyw==
X-Received: by 2002:a17:90a:3d41:b0:213:d34:a80b with SMTP id o1-20020a17090a3d4100b002130d34a80bmr77669655pjf.74.1670003688186;
        Fri, 02 Dec 2022 09:54:48 -0800 (PST)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id i8-20020a170902c94800b00172fad607b3sm5864137pla.207.2022.12.02.09.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Dec 2022 09:54:47 -0800 (PST)
Date:   Fri, 02 Dec 2022 09:54:47 -0800 (PST)
X-Google-Original-Date: Fri, 02 Dec 2022 09:54:38 PST (-0800)
Subject:     Re: [PATCH v2 0/9] riscv: add Bouffalolab bl808 support
In-Reply-To: <20221127132448.4034-1-jszhang@kernel.org>
CC:     robh+dt@kernel.org, Conor Dooley <conor@kernel.org>,
        krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, Greg KH <gregkh@linuxfoundation.org>,
        jirislaby@kernel.org, ilpo.jarvinen@linux.intel.com,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     jszhang@kernel.org
Message-ID: <mhng-0a879461-fb57-4547-887f-35ac0dc0ea1a@palmer-ri-x1c9a>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 27 Nov 2022 05:24:39 PST (-0800), jszhang@kernel.org wrote:
> This series adds Bouffalolab uart driver and basic devicetrees for
> Bouffalolab bl808 SoC and Sipeed M1s dock board.
>
> It's too late for v6.2-rc1, but I hope I can catch up the v6.3-rc1
> window.
>
> I think I have addressed all review comments to v1, correct me if I
> missed anything.
>
> PS: this series assumes the "thead,c906" riscv cpu binding patch is
> merged(I see Conor has picked up it).
>
> Since v1:
>   - use FIELD_PREP and FIELD_GET macro
>   - rewrite bflb_uart_tx_chars()
>   - add vendor prefix for bouffalolab
>   - add dt binding for bl808 compatibles
>   - enable SOC_BOUFFALOLAB in defconfig
>   - collect Reviewed-by tag
>   - modify commit-msg as suggested
>
> Jisheng Zhang (9):
>   dt-bindings: serial: add documentation for Bouffalolab UART Driver
>   serial: bflb_uart: add Bouffalolab UART Driver
>   riscv: add the Bouffalolab SoC family Kconfig option
>   dt-bindings: vendor-prefixes: add bouffalolab
>   dt-bindings: riscv: Add bouffalolab bl808 board compatibles
>   riscv: dts: bouffalolab: add the bl808 SoC base device tree
>   riscv: dts: bouffalolab: add Sipeed M1s SoM and Dock devicetree
>   MAINTAINERS: riscv: add entry for Bouffalolab SoC
>   riscv: defconfig: enable BOUFFALOLAB SoC
>
>  .../bindings/riscv/bouffalolab.yaml           |  34 +
>  .../bindings/serial/bouffalolab,uart.yaml     |  47 ++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  MAINTAINERS                                   |   9 +
>  arch/riscv/Kconfig.socs                       |   6 +
>  arch/riscv/boot/dts/Makefile                  |   1 +
>  arch/riscv/boot/dts/bouffalolab/Makefile      |   2 +
>  .../dts/bouffalolab/bl808-sipeed-m1s-dock.dts |  25 +
>  .../dts/bouffalolab/bl808-sipeed-m1s.dtsi     |  21 +
>  arch/riscv/boot/dts/bouffalolab/bl808.dtsi    |  74 +++
>  arch/riscv/configs/defconfig                  |   1 +
>  drivers/tty/serial/Kconfig                    |  18 +
>  drivers/tty/serial/Makefile                   |   1 +
>  drivers/tty/serial/bflb_uart.c                | 610 ++++++++++++++++++
>  include/uapi/linux/serial_core.h              |   3 +
>  15 files changed, 854 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/bouffalolab.yaml
>  create mode 100644 Documentation/devicetree/bindings/serial/bouffalolab,uart.yaml
>  create mode 100644 arch/riscv/boot/dts/bouffalolab/Makefile
>  create mode 100644 arch/riscv/boot/dts/bouffalolab/bl808-sipeed-m1s-dock.dts
>  create mode 100644 arch/riscv/boot/dts/bouffalolab/bl808-sipeed-m1s.dtsi
>  create mode 100644 arch/riscv/boot/dts/bouffalolab/bl808.dtsi
>  create mode 100644 drivers/tty/serial/bflb_uart.c

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
