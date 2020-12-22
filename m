Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEF942E085B
	for <lists+devicetree@lfdr.de>; Tue, 22 Dec 2020 10:56:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726289AbgLVJ4H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Dec 2020 04:56:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726263AbgLVJ4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Dec 2020 04:56:07 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1601C06179C
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 01:55:26 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id w5so13885780wrm.11
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 01:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=H+z35rTiT8LMBG/frBLrxfpbjjUOH9PhJev+n4Wms8Q=;
        b=aMyEnbMn+8VCWNQPFDSE6JZrN89hgzp75tsGrUyynWrT3j6S1PuhNGAOMrb/gCLeqn
         4rAP3YMV8iQNqckFNd1/t74vH2C+/lODBskKcGkfY5V2fyO/qnVkx673ljHKcNRPWVtW
         kAwo+oTCeSHZU5pdfGbaISPZcfMQhmjFuHq4A0nRtLm2fTy6cKg2fKtAYPqiZv/jOH9Y
         B30QpCMjoEOLXg4HX37tOZCVRJeq4fyBwi8VuPsFuIrprBZWqZeUqfb+IjG3lF+zcSBH
         VdL95GmQKl0WMsXMmO1hULAmt+kHtSAEi6AooOvEYvjctETHa4dmfurt133YeGOOD38m
         ZIbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=H+z35rTiT8LMBG/frBLrxfpbjjUOH9PhJev+n4Wms8Q=;
        b=EqIfpohX1ThO1Hx6K8aSqeuMVGJLYErKPdIUL8/Z3EhhEkoWIM+2OZ0LM0xGuYHWua
         /FA/SEUWdE9+cziYouAdnRTsxnksaGA5Wnn9gjQaGuhpF50QjSHCSkxHu2KkRqNolXz9
         h8rA1Wey9wyBoEOe9JNV+2vRcRyxKtxKKgFNxoRhO48DbedFC8MTRm8aqsUMMXe3QbHJ
         J60OqoFeVpzgB5m10QI6xKJFr3Offve4apeMyzh6kGmOYhcFMn9QkJQUhTHUHpv1CdLQ
         xx9lBJ40PiMMc9peeb5kZSma54ao/0t/Sv1xoLExTC40UZC3ZQ3elyw0tVjxzOgX/rLL
         6xiQ==
X-Gm-Message-State: AOAM532hLyViFpJw6FZwEIxkGevfHZF9HfHARVA2nFKxHbVz/QlFaLqs
        51PxeKKuwA0n6kmuXDXjxRDe3A==
X-Google-Smtp-Source: ABdhPJyQdEkR3oAhu7594tToVjHFVhiTjvNcUitYf22iGjFsC13l1RWfySnSLjYD4ZQpNL6AhOOxsg==
X-Received: by 2002:adf:828b:: with SMTP id 11mr22690551wrc.180.1608630925193;
        Tue, 22 Dec 2020 01:55:25 -0800 (PST)
Received: from dell ([91.110.221.175])
        by smtp.gmail.com with ESMTPSA id g191sm28554581wmg.39.2020.12.22.01.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Dec 2020 01:55:24 -0800 (PST)
Date:   Tue, 22 Dec 2020 09:55:22 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Timon Baetz <timon.baetz@protonmail.com>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sebastian Reichel <sre@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v3 3/7] mfd: max8997: Add of_compatible to extcon and
 charger mfd_cell
Message-ID: <20201222095522.GC53991@dell>
References: <20201222070520.710096-1-timon.baetz@protonmail.com>
 <20201222070520.710096-3-timon.baetz@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201222070520.710096-3-timon.baetz@protonmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 22 Dec 2020, Timon Baetz wrote:

> Add of_compatible ("maxim,max8997-muic") to the mfd_cell to have a
> of_node set in the extcon driver.
> 
> Add of_compatible ("maxim,max8997-battery") to the mfd_cell to configure
> the charger driver.
> 
> Signed-off-by: Timon Baetz <timon.baetz@protonmail.com>
> ---
>  drivers/mfd/max8997.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
