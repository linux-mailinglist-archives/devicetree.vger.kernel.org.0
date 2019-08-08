Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 499C18659E
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 17:23:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732577AbfHHPXh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 11:23:37 -0400
Received: from mail-vk1-f193.google.com ([209.85.221.193]:42322 "EHLO
        mail-vk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732662AbfHHPXh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 11:23:37 -0400
Received: by mail-vk1-f193.google.com with SMTP id 130so18860331vkn.9
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 08:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QNB3Zm9MMvwDRnXaJ2FS/3pgiFUqCEAjWklwwyvURzI=;
        b=QW+HXSNaJIeMSgjFtPBC8shR+iNt9+afsMRJmza60ge+Uo5qwyV5gFbqtGRm1umBx/
         OS2BYWlgkFU1xeCsJn+PyYOqe6JQKr3WdGoL/qGN1mXfmapaYVh+6T5MOBlg1ISWAkSx
         cHZgDJM37VcRbC+RBdKUFsjAtywZh4EA+OSAy1mLa6+fg4luQnJR8jUCGj7gY2sdEOXZ
         2qTK2rkaNWXhAd8gK6sItZ+AZ8oCKSdzfhIkgxsZMzSnMk6r/fkT6T/uRmIujgVbrLAo
         NRsj1iJiOiwLaAxgR1PGDzGNdTQSIofv43CI6Swq2iZJsoV5g/3Il2jpP/j03FmsExZu
         sY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QNB3Zm9MMvwDRnXaJ2FS/3pgiFUqCEAjWklwwyvURzI=;
        b=gM9FcV/zU0XRaNYJSSy4epQHN3CLh5Z8UHp8OWyqyQZH+RGpciwRVKckHphbllvWof
         BmktJ3jqDEMnYpv8UukUibUSL+Uge+t7ptcpujsz6N3xi2MGCLjOTY0J87Pc0SRWtX4Y
         6UuWPq/93i4k2s+L5J2m8BV+7hIAXLe2tCrmZKbtBSlliP6TmBA9t+AYhpMaR8JLv6Gv
         ksMoYHnXPjAlZimtfBCwtPvBXY1p9uACRbMlnJXXuI26AORR91zK9wqEcpb8+bdFEJbR
         aD+QVztz60YHdUrAXLSdwzODpccEuBWPM2vTjsyaZZJymmqed9bz28yFqdJa1814raPc
         vsrA==
X-Gm-Message-State: APjAAAXAgrg4IMRxCLNvYToLQ5wV57z4bQRPuBfjL+ae2s4ZA/J+fNm4
        n4KnIvOrxlxewOtN62SX3RBzRj9PBDUGwvqlesj7OQ==
X-Google-Smtp-Source: APXvYqy4vBIhIEDkHZGbjPTFMN0MG3rSPoqUvYTRP/e/2YG84U7QfZw+MjtJ98ys313+siGvTnSpq6E/mbY+mp2X4wk=
X-Received: by 2002:a1f:3f45:: with SMTP id m66mr6091559vka.17.1565277816177;
 Thu, 08 Aug 2019 08:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1565252928-28994-1-git-send-email-eugen.hristev@microchip.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 8 Aug 2019 17:23:00 +0200
Message-ID: <CAPDyKFrUr8_VP1JLRk48zR8_p1Y62wKLBnS0iTgdhUSArwD49Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: sdhci-of-at91: add quirk for broken HS200
To:     Eugen.Hristev@microchip.com
Cc:     Nicolas Ferre <Nicolas.Ferre@microchip.com>,
        Ludovic Desroches <Ludovic.Desroches@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 8 Aug 2019 at 10:35, <Eugen.Hristev@microchip.com> wrote:
>
> From: Eugen Hristev <eugen.hristev@microchip.com>
>
> HS200 is not implemented in the driver, but the controller claims it
> through caps.
> Remove it via quirk.
> Without this quirk, the mmc core will try to enable hs200, which will fail,
> and the eMMC initialization will fail.
>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Should this be applied as a fix and possibly tagged for stable?

In such case, do you have a specific commit that it fixes?

Kind regards
Uffe

> ---
>  drivers/mmc/host/sdhci-of-at91.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index 57fe3b2..3a8c6d8 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -370,6 +370,9 @@ static int sdhci_at91_probe(struct platform_device *pdev)
>         pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
>         pm_runtime_use_autosuspend(&pdev->dev);
>
> +       /* HS200 is broken at this moment */
> +       host->quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
> +
>         ret = sdhci_add_host(host);
>         if (ret)
>                 goto pm_runtime_disable;
> --
> 2.7.4
>
