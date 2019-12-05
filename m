Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1888B11464F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2019 18:54:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730241AbfLERyG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Dec 2019 12:54:06 -0500
Received: from mail-lf1-f65.google.com ([209.85.167.65]:37536 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730189AbfLERyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Dec 2019 12:54:06 -0500
Received: by mail-lf1-f65.google.com with SMTP id b15so3172079lfc.4
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2019 09:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=GnbFNkIxR70lINeEkzf0C3CsMt6KmAk3DjiL3dWVia0=;
        b=x7B43v547TpkGTqUj3h8zeo/B9Bjnb+92D+QLeC+pC6P4dk4g8ebQhtLZ01CcxeBgj
         CUlGwXhLCWx67s6JL4JdBYqG7SWs5LBLlr/XRfxPaIwEu00aFLJ8MX9ZlOfZRgbI5bLi
         LnhQcVheY3UM4QE9d9tzRnMPP92gLFvvglCFQQjvTpji4e2HcE1qPICM8AIFKmfJ4lRM
         OYleq3CZPjm4s9hZNc4GiffE89hAdBqbnDi0437X4Pcx9Wk0tO00c1OA5/R4m1l9xhxx
         ULJss/MOv9k6m945eL6103HVRD3ivr8NoL9+E6HHmlP4ingNq4j7Zi6sFIcR93cBqoVa
         EnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=GnbFNkIxR70lINeEkzf0C3CsMt6KmAk3DjiL3dWVia0=;
        b=sjFpttg4zK0D4YGIExVRyel0D3D/iyzXetifYzGUwNCUsbBzqR+21MXj4HwIWS/1gI
         6G2+Z4g3yZ6EnKH59bG4gwZG9PE4K6VxALS4DoS89yTgnQoXJTN7X6w5BTAJvA3e1K29
         K4tHrLQio0VKHS8vrjyttLVmaIz4eZcSg+W7kjPLt+pnUvF9X6tAwaX9bTMZ/itNwlSP
         IoyCajonS080N1QH2LmkEUFGR8i6qpGHXXP4e8e2HfHqY7nC5VuJlbcHmmXhmqRIhBye
         66WJqiI223hmTOzWkZbci5v+FWChLZHwhMBvotphKUNKM/IcCC5Rw0FxV9uoDmH9RG9C
         tBMg==
X-Gm-Message-State: APjAAAVj7UZOSDKYqNjwpyjwdDskAjzjGMScXYd/Kqw38l0aPPBOimD6
        iLx/8d2suZXeI/MKsTYgeWaE+Q==
X-Google-Smtp-Source: APXvYqyTE1dL3L8Ty1iYjitUq6l5M5ez66of3MWw+FEAf4W+55UiFfu7DXDVJtdeyEM8EMSiAs+ZqA==
X-Received: by 2002:ac2:43af:: with SMTP id t15mr6008348lfl.154.1575568443854;
        Thu, 05 Dec 2019 09:54:03 -0800 (PST)
Received: from localhost (h-93-159.A463.priv.bahnhof.se. [46.59.93.159])
        by smtp.gmail.com with ESMTPSA id y14sm5395473ljk.46.2019.12.05.09.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2019 09:54:03 -0800 (PST)
Date:   Thu, 5 Dec 2019 18:54:02 +0100
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund@ragnatech.se>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 0/2] mmc: renesas_sdhi: Add r8a77961 support
Message-ID: <20191205175402.GF28879@bigcity.dyn.berto.se>
References: <20191205134349.6410-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191205134349.6410-1-geert+renesas@glider.be>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

Thanks for your series.

On 2019-12-05 14:43:47 +0100, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> This patch series documents DT bindings for the SDHI controller in the
> Renesas R-Car M3-W+ (R8A77961) SoC, and adds support for it to the
> driver.
> 
> The second patch may be dropped, once "[PATCH] mmc: renesas_sdhi: remove
> whitelist for internal DMAC"[1] has been accepted.
> 
> Thanks!
> 
> [1] https://lore.kernel.org/linux-mmc/20191203194859.917-1-wsa@the-dreams.de/

For the whole series,

Reviewed-by: Niklas S�derlund <niklas.soderlund+renesas@ragnatech.se>
 
> Geert Uytterhoeven (2):
>   dt-bindings: mmc: renesas_sdhi: Document r8a77961 support
>   mmc: renesas_sdhi_internal_dmac: Add r8a77961 support
> 
>  Documentation/devicetree/bindings/mmc/renesas,sdhi.txt | 3 ++-
>  drivers/mmc/host/renesas_sdhi_internal_dmac.c          | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> -- 
> 2.17.1
> 
> Gr{oetje,eeting}s,
> 
> 						Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
> 							    -- Linus Torvalds

-- 
Regards,
Niklas S�derlund
