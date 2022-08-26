Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C12395A1DA5
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 02:16:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229462AbiHZAPy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 20:15:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239761AbiHZAPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 20:15:40 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFBFC275C7
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 17:15:36 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id f12so44096plb.11
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 17:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:to:from:cc:in-reply-to:subject:date:from:to:cc;
        bh=nC2tg0emIzyQ6j7+Pili4KJidqGPH8PH55AhgBkY/FA=;
        b=M+CckdCklD6yjY0v7efK+WsWpGf9w/E/Q5cg7pw0xwEU/hCwcWtKeNb5OS2y9JM/Jl
         RSRS6Wh6W1BYofO43BbuBBqnZqCmyjx740wWDvfArbBM9VaI0X9w1T44rrX1LokKQviF
         c8XvlFXfnf7KxBbhy3Bql+ojwci6kFMMv3Yc9NwgpVgOlxT3+Pti+kRO9npKJRdnsKUs
         B8KtQ54rYbS6Oxif4vj5sL0bl/d1puynyKcWPcJJvTCUhIMsD8ft7hPS6Kj+3FnySFhF
         aLlORF9pdVPeVZK1FOjGiWhDZvQQfaMR98tajHTXjTYcDmwdhJGueQCgLlfue53AoHhb
         /YYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:to:from:cc:in-reply-to:subject:date:x-gm-message-state
         :from:to:cc;
        bh=nC2tg0emIzyQ6j7+Pili4KJidqGPH8PH55AhgBkY/FA=;
        b=PzMcE8R4ngEYR19AF/nEM3jasmGAtGK2JKH2FX+Vfi4U+1mJpNGuoYAScQVe8ATJj+
         QFiRYDa9S3ijME/3bQYMAtk76mC9lVORSb2zR4jhLwhs3LMRkfEZvcvIq2+1DbU22Rfg
         nP91vGRp4LlbBZrFQF4HBTCfAR9e0CxXzx5JFFuhS78a37BSf7Um4VyS5M0kWM73Nb7O
         ZY2Z4R2icSblaLU29tJa+SSdbKetpxJhWa1UP1NBvFQ1SQBQJg7xu6mJilPTykDvd4C/
         3EEcUETZn4k8oht355P2XMFJmlsS3dt+6tzCxOEtZqE2x8pkt5ahna3X6zUHPwOEn4iV
         Idwg==
X-Gm-Message-State: ACgBeo0bvy/UZ0533Xw3DIJ2CshX5n/z27v/7Fb3S5EVHwWtuCfrsSlW
        nu7hjAYgVziVjwcAk73Z3pMFcQ==
X-Google-Smtp-Source: AA6agR5DmVcNrt1Ba1Wa44I7a7PSdKiS4h2VM9U5UvcW94BYWPNSRTvF3TTwSht20a22gL3iZRxeYQ==
X-Received: by 2002:a17:90b:4d12:b0:1f5:59e1:994f with SMTP id mw18-20020a17090b4d1200b001f559e1994fmr1496973pjb.217.1661472936347;
        Thu, 25 Aug 2022 17:15:36 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id d2-20020a170902654200b001725d542190sm141317pln.181.2022.08.25.17.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 17:15:35 -0700 (PDT)
Date:   Thu, 25 Aug 2022 17:15:35 -0700 (PDT)
X-Google-Original-Date: Thu, 25 Aug 2022 16:48:09 PDT (-0700)
Subject:     Re: [RESEND PATCH 1/2] MAINTAINERS: add PolarFire SoC dt bindings
In-Reply-To: <20220810171124.74ew3yz5dtkz6v2s@pengutronix.de>
CC:     conor.dooley@microchip.com, soc@kernel.org,
        daire.mcnamara@microchip.com, broonie@kernel.org, wsa@kernel.org,
        thierry.reding@gmail.com, jassisinghbrar@gmail.com,
        linus.walleij@linaro.org, brgl@bgdev.pl,
        Greg KH <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        mturquette@baylibre.com, sboyd@kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        mkl@pengutronix.de
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     u.kleine-koenig@pengutronix.de
Message-ID: <mhng-7c3ab2fe-b9da-47ce-8a00-4eb0979183c8@palmer-mbp2014>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,PP_MIME_FAKE_ASCII_TEXT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 10 Aug 2022 10:11:24 PDT (-0700), u.kleine-koenig@pengutronix.de wrote:
> On Wed, Aug 10, 2022 at 03:02:43PM +0100, Conor Dooley wrote:
>> So far when I added bindings for the platform I never added them to
>> our MAINTAINERS entry. No time like the present to improve the coverage.
>> 
>> CC: Mark Brown <broonie@kernel.org>
>> CC: Wolfram Sang <wsa@kernel.org>
>> CC: Thierry Reding <thierry.reding@gmail.com>
>> CC: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
>
> Acked-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

Looks like git-am isn't handling the UTF here, not sure what's up but 
it's probably just something broken with my email setup.  I fixed it up 
manually, but apologies if I've missed one in the past.

>> CC: Jassi Brar <jassisinghbrar@gmail.com>
>> CC: Linus Walleij <linus.walleij@linaro.org>
>> CC: Bartosz Golaszewski <brgl@bgdev.pl>
>> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> CC: Arnd Bergmann <arnd@arndb.de>
>> CC: Olof Johansson <olof@lixom.net>
>> CC: Michael Turquette <mturquette@baylibre.com>
>> CC: Stephen Boyd <sboyd@kernel.org>
>> Suggested-by: Mark Brown <broonie@kernel.org>
>> Acked-by: Marc Kleine-Budde <mkl@pengutronix.de> # for can
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>>  MAINTAINERS | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>> 
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 868bbf31603d..fd0f10a110e7 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -17512,6 +17512,15 @@ M:	Conor Dooley <conor.dooley@microchip.com>
>>  M:	Daire McNamara <daire.mcnamara@microchip.com>
>>  L:	linux-riscv@lists.infradead.org
>>  S:	Supported
>> +F:	Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
>> +F:	Documentation/devicetree/bindings/gpio/microchip,mpfs-gpio.yaml
>> +F:	Documentation/devicetree/bindings/i2c/microchip,corei2c.yaml
>> +F:	Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
>> +F:	Documentation/devicetree/bindings/net/can/microchip,mpfs-can.yaml
>> +F:	Documentation/devicetree/bindings/pwm/microchip,corepwm.yaml
>> +F:	Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml
>> +F:	Documentation/devicetree/bindings/spi/microchip,mpfs-spi.yaml
>> +F:	Documentation/devicetree/bindings/usb/microchip,mpfs-musb.yaml
>>  F:	arch/riscv/boot/dts/microchip/
>>  F:	drivers/char/hw_random/mpfs-rng.c
>>  F:	drivers/clk/microchip/clk-mpfs.c
>> -- 
>> 2.36.1
>> 
>> 
>
> -- 
> Pengutronix e.K.                           | Uwe Kleine-König            |
> Industrial Linux Solutions                 | https://www.pengutronix.de/ |
