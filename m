Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 066105A8661
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 21:03:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231724AbiHaTDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 15:03:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232278AbiHaTCx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 15:02:53 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83F3DCAC64
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 12:02:51 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id az27so19485044wrb.6
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 12:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=JRPIjaT85DJC7KZEEFgd6/KiQ+pmuQh+h52pvw3QvGk=;
        b=3F7oQj1ysT1ftZuHEg9/L230UCHXp0uYp573bSmf6kNvsClS2TP8/JqH77ZscLb1Io
         tIggepPRHRW31oKvnRS4OrzpY6udqa5OkYUDiLkiOdAudYrrwmjoXvM+HdO0rhQqDuIG
         rirqNzwXU0w5cr+23s49UqFGUkB9PJsVwQv/OtajoBybSVR79l3bMmcu8Pb7So8xxiIF
         Fza+PohUuzMt/bkeIOLLTcBy+VmZLanCZ0RqENWQ4rt/WUs0ZgK0CA8/pA+clgtTws1K
         J2GL31emxZUflC2I1tiL8ZpDicoXKjZ4TnUHpRzDEdVE0fcuKlYn9M15tKFPTupAQPSF
         3UfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=JRPIjaT85DJC7KZEEFgd6/KiQ+pmuQh+h52pvw3QvGk=;
        b=DiMRGe3k1j4EOQTvCFt3jd9g/mTUOxtrMiZzAEq3G9tSEugzF3gB1Wz2DwSZy02iTt
         5b0FpVkw+z+pNpAs/+BwrCuRHZTXkU4NSgnA4T9yUB+M/WBUtgoD3tV4LY1rgV4xYiB+
         Tgf1nqnQTCQkZdqFkK2W6bnp9H0P+AEdZKbquU7Q8LJd4Jl2AWLvPhQ7Fcv7DN21w0d4
         PMS7y//iLoTcgXuT/XkC8JEBd9I8/El/iD48IeVTHmF10JXlmG86kZqfVzD3v4fwp5GO
         pKLgltkMz+PxIWmbOwTiZeZW4soOiiLO1C+xvl8hHCHWwH0Re6KcMsy4DMcRtnfEdvOa
         vJEA==
X-Gm-Message-State: ACgBeo1h8hWV6Hj/Er0sALAOHKCxWfJzBvGlU4xP59mtrljsadf85i+l
        EXO9iSrKqzjh977VXEGd1ohEQg==
X-Google-Smtp-Source: AA6agR5eOTF0GUQsf0rqXWtABEFOA8Ct6eF2ufSnu2R5kXkDTz3oE1KrOyPRjsQXBB/Dp+j1jG2ddA==
X-Received: by 2002:a5d:588d:0:b0:225:6e1a:8696 with SMTP id n13-20020a5d588d000000b002256e1a8696mr12449673wrf.512.1661972569710;
        Wed, 31 Aug 2022 12:02:49 -0700 (PDT)
Received: from blmsp (55d427d2.access.ecotel.net. [85.212.39.210])
        by smtp.gmail.com with ESMTPSA id q16-20020adff950000000b002251639bfd0sm12769474wrr.59.2022.08.31.12.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Aug 2022 12:02:48 -0700 (PDT)
Date:   Wed, 31 Aug 2022 21:02:47 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Lee Jones <lee@kernel.org>, Tony Lindgren <tony@atomide.com>,
        nm@ti.com, kristo@kernel.org, Jerome Neanne <jneanne@baylibre.com>,
        khilman@baylibre.com, narmstrong@baylibre.com, j-keerthy@ti.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org,
        linux-omap@vger.kernel.org
Subject: Re: [PATCH v4 4/6] mfd: drivers: Add TI TPS65219 PMIC support
Message-ID: <20220831190247.t46qdrwu4pe3woby@blmsp>
References: <20220825150224.826258-1-msp@baylibre.com>
 <20220825150224.826258-5-msp@baylibre.com>
 <b6dae743-8910-1cc2-9b3f-382c6a926b4c@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b6dae743-8910-1cc2-9b3f-382c6a926b4c@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Tue, Aug 30, 2022 at 12:46:53PM +0300, Krzysztof Kozlowski wrote:
> On 25/08/2022 18:02, Markus Schneider-Pargmann wrote:
> > From: Jerome Neanne <jneanne@baylibre.com>
> > 
> > The TPS65219 is a power management IC PMIC designed to supply a wide
> > range of SoCs in both portable and stationary applications. Any SoC can
> > control TPS65219 over a standard I2C interface.
> > 
> > It contains the following components:
> > - Regulators.
> > - Over Temperature warning and Shut down.
> > - GPIOs
> > - Multi Function Pins (MFP)
> > - power-button
> > 
> > This patch adds support for tps65219 PMIC. At this time only
> > the functionalities listed below are made available:
> > 
> > - Regulators probe and functionalities
> > - warm and cold reset support
> > - SW shutdown support
> > - Regulator warnings via IRQs
> > - Power-button via IRQ
> > 
> > Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> > 
> > Notes:
> >     Changes in v4:
> >     - Removed unused fields from struct tps65219
> >     - Added description for the fields in struct tps65219
> >     - Fixed coding style
> >     - Squash all patches into one mfd patch
> >     - Call devm_mfd_add_devices multiple times to clean up the code
> >     - Remove debug prints and fixup other messages
> >     - Use new_probe instead of probe
> > 
> >  MAINTAINERS                  |   1 +
> >  drivers/mfd/Kconfig          |  14 ++
> >  drivers/mfd/Makefile         |   1 +
> >  drivers/mfd/tps65219.c       | 357 +++++++++++++++++++++++++++++++++++
> >  include/linux/mfd/tps65219.h | 345 +++++++++++++++++++++++++++++++++
> 
> Use subject prefixes matching the subsystem (git log --oneline -- ...).

thank you for noticing, I am fixing it for the next version.

Best,
Markus
