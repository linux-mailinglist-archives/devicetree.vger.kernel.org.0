Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1DAAC3303C
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 14:51:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726713AbfFCMvH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 08:51:07 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:41434 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726635AbfFCMvH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 08:51:07 -0400
Received: by mail-wr1-f65.google.com with SMTP id c2so11937312wrm.8
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 05:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Gu01FJdT8iHjfGbObjNMXaKdqJRnjnPuDUOlDA7g+Ho=;
        b=hz76u68QnLVZg+MUvRgCUMQpgCR8bfyTUAn5wmEPbdTZMqiwYz3puAXYDEnF15Qb99
         DJP8N6x1peCWy+3dOp5y1NUS1WpGvfzMptIwPsMTVxToWg/A/NM4NlH7/lgZRXtyjrHB
         YWey/x7suDa1RNfv5CjD2ORJWwuGYI61lP8+6PrPR2BpOoIEJv31tHoTqivOI+1dQqSg
         E9S/FayYRVyThI2Pmos4V1gErrZrW8Va2piLUIQSmAHsbazRfmvrMJkP5gqJU4ldNyic
         uZdNAdjyCEyk36K0hdyTy+FsgLRKw5ysBExFFeldg0efSdLOoNf6BHoBg5E2/jTveksa
         3NpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Gu01FJdT8iHjfGbObjNMXaKdqJRnjnPuDUOlDA7g+Ho=;
        b=EPj1dWl1hpjOTbWpR5uBxf5lNJEU5NwPiNaagYwjZD50p1x442KiNXCgQ0mSDFTd8d
         OC6dylXWkKRuNJfOsGMltEATLoIRCSTBBSy4lRPfe7iDbzJAYKcsi4CH3FnfydvXIC0K
         7gp9RhRrDngsb96oyJmyGo4IikVLQsczQh/CpwvRM8Exwsdp5VydN5W+vU+8m/UoIZdl
         AAw8OxYhse2mmgAvFdyzD2MLlLeZ/fvhSWzeeEmgqd+ISO+AO+MEWuRlfPsuMRkXbe8Q
         p/cEGdmgqkeL/USM/fD+CymQr6Km69qyn46fDBtNDUJfXTEyFIrIqDh9HRAXLINn3frf
         pRWQ==
X-Gm-Message-State: APjAAAV/cnEJ1B7+h5sgfO0EVhWT2JX4P/D5EDUVj63r/j5LW1TvgQAv
        7tvSDNc4b6xASja1Du2x0vG5ORu4JNU=
X-Google-Smtp-Source: APXvYqwEIRRQJ9W1Ubou1DKURwu6qEQwwCM/2Rt45+myG58VdTRRxGh5qC8RATz4uz1ZY6bqXtzc6g==
X-Received: by 2002:adf:e60f:: with SMTP id p15mr5370165wrm.332.1559566265093;
        Mon, 03 Jun 2019 05:51:05 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id y17sm34175499wrg.18.2019.06.03.05.51.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 03 Jun 2019 05:51:04 -0700 (PDT)
Date:   Mon, 3 Jun 2019 13:51:02 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Leonard Crestez <leonard.crestez@nxp.com>
Cc:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Mark Brown <broonie@kernel.org>,
        Robin Gong <yibin.gong@nxp.com>,
        Angus Ainslie <angus@akkea.ca>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 1/3] mfd: bd718x7: Remove hardcoded config for button
 press duration
Message-ID: <20190603125102.GQ4797@dell>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
 <3afb20a0e4b14588d9fc6af7bd86920127feeba2.1558471150.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3afb20a0e4b14588d9fc6af7bd86920127feeba2.1558471150.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 May 2019, Leonard Crestez wrote:

> The reset button on imx8mm-evk is tied to PWRON_B pin of bd71847 and the
> long press duration is set to zero from OTP. The linux driver overrides
> those values and breaks reset from button.
> 
> Overwriting OTP or bootloader configuration with some hardcoded defaults
> is not desirable, keep already programmed values instead.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  drivers/mfd/rohm-bd718x7.c | 23 -----------------------
>  1 file changed, 23 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
