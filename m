Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F96A53A5D2
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 15:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241521AbiFANUM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 09:20:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351730AbiFANUL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 09:20:11 -0400
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1FF817AB1
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 06:20:10 -0700 (PDT)
Received: by mail-vs1-xe2b.google.com with SMTP id 67so1662771vsh.2
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 06:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DgZG2k5iY1QuPAn8pQG0mjtLHqDtKgm2bTT3/22Hr9w=;
        b=TK/G4g6VZGZfTt+W/STmfWepHfUaE0pPunwMEOfelrqYKqjBFqCaNXNEBNKoKYXjmi
         1e1EQuUv+ZRG8GlQxrvadscTBDPW6nVDI1USK2HSDJ+u1oEmiRYCdtktI0Ce0CY7K4i7
         9f4aie61EQgEkzuEyDSMEjUOXUHXNqg7ZDLYVwncnBr7XzAvsakwqgKwWILNIC4fW27n
         ee5/U+d63h/AXhPRKRTdeFY46yGRoo+Y+KWEI+nksIIJ582FUnG01yqzxduxQH73frPd
         gczUlkDK7xuGtp/aqGZjtAdspvXzYk8bzQFEbtAv5mjWB8jpzm1mq0ppDf9QBpPi1Rh3
         YNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DgZG2k5iY1QuPAn8pQG0mjtLHqDtKgm2bTT3/22Hr9w=;
        b=a0PMqI+MO0IUz/5G/shhvGHFaxRU83SNEK7rTSYgv3iR0SoYEGbYQUYa4dNoOTIP4O
         Q8G+/K5BJF3dsISWFtfDmHabr0uv7I+KgClO/1OJABVUTfyMNKvNOcwYSNsEDCsSWO2s
         EQPZ3f/R2fshBaB+NOcDob6KgxA6QFHwfap7lJzCs2LQnqYr7bKwpyG/vNLnWyqzEauM
         /w7ZOZA5X0Ukud6rCc2txxAzWbzYx/oRw66du/OX2nAQSEMMMG6WRFp5z0dzBPNTJn5b
         Go90SnO1DjtjKI+7kBtFFzPx6cCxg5mcJ4PlDN700pCAcn3DEcuruW15kaaRdzaEgpFz
         SINg==
X-Gm-Message-State: AOAM530Fy8kYst1pQAN5OL/KcUjt4qf3AzSaBoJDhK4Wk5Ulau2+e8Vf
        k6Q9FtqN1m51C/2fgYy3FubazegViTg9aFHUehg=
X-Google-Smtp-Source: ABdhPJwXlJ2uSb2hauzCWZHhSZEaaP+75rcco5P113Wytg+sF5xLuBA8ITljvQ5bPChTxCrkL/eP288M7z5EY+vlj4o=
X-Received: by 2002:a05:6102:3753:b0:337:8f39:f642 with SMTP id
 u19-20020a056102375300b003378f39f642mr22740375vst.52.1654089609807; Wed, 01
 Jun 2022 06:20:09 -0700 (PDT)
MIME-Version: 1.0
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
In-Reply-To: <20220601125344.60602-1-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Wed, 1 Jun 2022 14:19:58 +0100
Message-ID: <CALeDE9PSC+qanWqpaRAmdT82jdU3RR-PamsxAtSR8Dutrgcvng@mail.gmail.com>
Subject: Re: [PATCH V2 00/11] soc: bcm2835-power: Prepare BCM2711 V3D support
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefan,

So I've done some basic boot testing on a rpi4b, rpi4b 8gb, rpi400,
rpi3b+ and rpi zero2w but all headless/remote, overall it looks good.
I'm back home tomorrow when I can test the rpi4 series with the GPU
patches on top with full desktop/display but overall this looks fab!

Peter

> This series is a split out of version 4 - Raspberry PI 4 V3D enablement send
> by Peter Robinson [1]. It attemps to enable BCM2711 V3D support for the
> power management driver. It's a rework of the less controversial changes
> (excluding V3D GPU driver changes) so this can be reviewed and applied faster.
>
> Changes in V2:
> - add Peter's Reviewed-by
> - simplify schema for rpivid_asb as suggested by Rob
> - fix reference and clarify fallback & error handling in patch #7
> - drop unnecessary newline in patch #9
> - improve log messages as noticed by Peter
>
> Changes since the mention series:
> - fix DT schema errors
> - make rpivid_asb register optional in DT schema
> - avoid code duplication in BCM2835 ASB enable/disable
> - rework ASB V3D handling so we don't need the V3D flag
> - avoid log errors for optional register
> - use a define for expected ASB_AXI_BRDG_ID result
> - fix copy & paste issues in bcm2835-pm changes
>
> [1] - https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220213225646.67761-1-pbrobinson@gmail.com/
>
> Nicolas Saenz Julienne (6):
>   dt-bindings: soc: bcm: bcm2835-pm: Convert bindings to DT schema
>   dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
>   ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
>   ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
>   mfd: bcm2835-pm: Use 'reg-names' to get resources
>   soc: bcm: bcm2835-power: Bypass power_on/off() calls
>
> Stefan Wahren (5):
>   dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
>   mfd: bcm2835-pm: Add support for BCM2711
>   soc: bcm: bcm2835-power: Refactor ASB control
>   soc: bcm: bcm2835-power: Resolve ASB register macros
>   soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
>
>  .../bindings/soc/bcm/brcm,bcm2835-pm.txt      | 46 ----------
>  .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 86 +++++++++++++++++++
>  arch/arm/boot/dts/bcm2711.dtsi                |  3 +-
>  arch/arm/boot/dts/bcm2835-common.dtsi         |  1 +
>  drivers/mfd/bcm2835-pm.c                      | 80 +++++++++++++----
>  drivers/soc/bcm/bcm2835-power.c               | 72 ++++++++++------
>  include/linux/mfd/bcm2835-pm.h                |  1 +
>  7 files changed, 199 insertions(+), 90 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
>
> --
> 2.25.1
>
