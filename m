Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EEB3BDA671
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 09:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387570AbfJQH25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 03:28:57 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:40898 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389406AbfJQH2y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 03:28:54 -0400
Received: by mail-wr1-f66.google.com with SMTP id o28so1053559wro.7
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 00:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=lF+fgIZSn/XvW94K1ywke5vKThCmmdz9k3RaVW32JlY=;
        b=xWq5Hkde3q45K4PbAUMZnkHurefRtmRtgiCvKkBapdsqHhyI8Ee7NQgVyP0caZIy8i
         SkmQ1egZd2Ipk6BGM4y6AVJW9nvC+Xn8N8JdeokHXHBrBw4QK+COO33atNrzxg5d5lav
         nShDhgKGvxrmhHC9vz8BbXNWLBmsygaC5TapuRj9Lr9nwSYxpai6/9KlgrpXoTYA5lqH
         OEvuPup2lrG4cV2HbEGs8pg6Rhl7OlfjgoiMTd8ia7/O0zkZLEgPWYTKYVTKHGVrScGl
         6AeR9WuzrW03UrS+S7023opAzP3oRUr//UNnL+2NOnOuZLLH1pcxvM7LRDRO/YGJw6dG
         +Iqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=lF+fgIZSn/XvW94K1ywke5vKThCmmdz9k3RaVW32JlY=;
        b=CuOW2idQT1cc1o3nVe1Z/fXgHSfC8ATaOJXdxNpyKsyY3dFYdFFsYdU1QuZ/KGamZQ
         l6gdUdx5ixjxDLn3YQEog6vfZ7N1Io0be2JpcxnstNnW0eih0o8I6Wl0+dPHdhTE3AO2
         Po4irRzo4Ts7Sh31dKMhG345gYbL+e2CrE72Xi94cbJoWMcYJWBGa3EFHp3xBaeikEFs
         dLuSB7LhMvBjXctyRVxuqDmvpexL/qoQJyuiMHHoF9aAEbaNaExmKck9+0+2Yia5hH7V
         FgzvEl/TjVMMIG9LCFrkY5sxVoC+Xz5Zhaf8iFYeeEGvJMR18XXZN4Ad2s56gkZ950Pp
         a+/A==
X-Gm-Message-State: APjAAAVWi8SvbtVk9W7V6LYYjyHmnhuDIoscy2hcWaZJ/6khvXbER6PT
        7hxMvvpwxIQu9RZOp5D+/1ML3w==
X-Google-Smtp-Source: APXvYqxLpxoVGENRd1K1D0H43oFwhZes7gObxyyPv4AuhrB11kRaylbvgtEsJSg5Sud7bDf5lrdTVg==
X-Received: by 2002:a5d:6709:: with SMTP id o9mr1655680wru.116.1571297331032;
        Thu, 17 Oct 2019 00:28:51 -0700 (PDT)
Received: from dell ([95.149.164.47])
        by smtp.gmail.com with ESMTPSA id r140sm1610799wme.47.2019.10.17.00.28.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 17 Oct 2019 00:28:50 -0700 (PDT)
Date:   Thu, 17 Oct 2019 08:28:49 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Wen Su <Wen.Su@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, wsd_upstream@mediatek.com
Subject: Re: [PATCH 2/4] mfd: Add for PMIC MT6359 registers definition
Message-ID: <20191017072849.GL4365@dell>
References: <1571218786-15073-1-git-send-email-Wen.Su@mediatek.com>
 <1571218786-15073-3-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1571218786-15073-3-git-send-email-Wen.Su@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 16 Oct 2019, Wen Su wrote:

> From: "wen.su" <wen.su@mediatek.com>

Should be:

  From: Wen Su <wen.su@mediatek.com>

> This adds MediaTek PMIC MT6359 registers definition for the
> following sub modules:
> 
> - Regulator
> - RTC
> - Interrupt
> 
> Signed-off-by: wen.su <wen.su@mediatek.com>

Same here.  Please change your Git config.

> ---
>  include/linux/mfd/mt6359/registers.h | 531 +++++++++++++++++++++++++++++++++++
>  1 file changed, 531 insertions(+)
>  create mode 100644 include/linux/mfd/mt6359/registers.h

Once you've fixed the above, please add my:

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
