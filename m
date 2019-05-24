Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DFBAE29796
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 13:52:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391246AbfEXLwC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 07:52:02 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:34485 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391023AbfEXLwB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 07:52:01 -0400
Received: by mail-lf1-f66.google.com with SMTP id v18so6936389lfi.1
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 04:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6iYR7JRp1HHKG9HCoJt7Z3ej82/8WkT9mMtbM2Bxr1w=;
        b=eVJQ8nvD3hAKgGuALBDODWh58e0l1HeXP9wXW7FkvNcgnbbFuZmFeCJovVHM7dlj/m
         2EiHPDPxvbTD2brb1rT+agQlFIUawA/Dzm6nyArjH8xr3WTv2B6gMtblpROM0lb8OJrD
         VGashTDvVUiaWWxCOc5ezn4iX/aWk+8fmj6TVDLYJogUsOmKuhBtWeoUozBpCe0OX+yX
         K4swzxSB5D53DseVA278hofCrfKYTqriUqPa6ygQQHcf/KgMvQq+TRm1eSn/h/n39EzK
         LO6xBo6WWVgl1/V6k1rKddLmIA1nePqoCwSjk6sPrzwEslBhyCmRfdyKxx+qT3d8MNGO
         ZoEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6iYR7JRp1HHKG9HCoJt7Z3ej82/8WkT9mMtbM2Bxr1w=;
        b=EcMaI1NRbRZ4Z+uKZB0LD8ITQC0RwhaOip1Tm6lo7ZPV2o7jbirzV9bS1NAcgYL8z8
         YFddxj39V3p/xL/LnYTq5vMwpCnSYOOYcz8ufnDAdevC1WNZMByV/fgIeCLyXu/9dDhF
         wJ4iCJfTxK1yyjtE15LDXf8p2eBdNE7OmeqmRNuQjARgJW93bztwkkT5ceZZPt0579rX
         6VZYEtqLDHp0Q1O864aroCHicQQXtfTHjv89onednj1pU+QammYPg+TgoIEqxIZqpQXe
         Y5mGbn//nLraeiUfnuQ6Gu5g+2PLrlo28KdmTvSBpJJQdcnsGxdji9q6Qj3EpQULBt/A
         pK3w==
X-Gm-Message-State: APjAAAUA97hc4SB3mxHsLhgo8+KUGzlP9B9w0Vl4shEkKgetmSLtSasc
        JmzntlRs3ruOCYFyRuCxw1JdZrltc6hctukWC1/VRA==
X-Google-Smtp-Source: APXvYqz1+uN4e3Ih8IK72RpE7uJUloQIFTXznGy8kaAypBy8X/PEODddYscikHDcaeojiUt2pj4//IiIs7Se/lmo8RM=
X-Received: by 2002:a19:750f:: with SMTP id y15mr1121022lfe.74.1558698720606;
 Fri, 24 May 2019 04:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190520083101.10229-1-manivannan.sadhasivam@linaro.org> <20190520083101.10229-3-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190520083101.10229-3-manivannan.sadhasivam@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 24 May 2019 13:51:49 +0200
Message-ID: <CACRpkdbWCbhCdrbUueC9Jv1tJQcKiu5OaFfAqyMhKmEK+nH+xA@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: bitmain: Modify pin controller memory map
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        alec.lin@bitmain.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 20, 2019 at 10:31 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:

> Earlier, the PWM registers were included as part of the pinctrl memory
> map, but this turned to be useless as the muxing is being handled by the
> SoC pin controller itself. Hence, this commit removes the pwm register
> mapping from the pinctrl node to make it more clean.
>
> Fixes: af2ff87de413 ("arm64: dts: bitmain: Add pinctrl support for BM1880 SoC")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this through ARM SoC.

Yours,
Linus Walleij
