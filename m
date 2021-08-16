Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79F763ED42C
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 14:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235346AbhHPMnC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 08:43:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235719AbhHPMm2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 08:42:28 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31101C0612AB
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 05:41:10 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id v4so16274722wro.12
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 05:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Dd2RvTZ8gfpygtsaCzyWPhxOJ3nDcTnkRmNkdPIycPE=;
        b=MN80BPlTMUSdGRt9o4zUkk6ciSKkUoDM5z8fqGbgjtuUeHQHeJtWULk47nDTEuSH4X
         kclPHJ6EZWwlXgJ83NzAwgzt8phoVAnrObLpRRTCzL1MCfCGS7qw6DMFr5CPiAu0zwJE
         dt59c0quohqlXl5X71m1sFXf92Juklkr3eL/YKdOFP1ACi/7H9JyFG/8WiysxvhymUXT
         Am4QMChg5zWcjLAmop9ZTTGwJa+g17/5svJEkfNkx25JzJPeJeZBJlKxXAZEkh36O9I/
         iugcvle5bfF0zkQSyYQwqDYpQ5CFMHfskAO3A9fhWx9FjxFZPmBYwKqJ4slIdTYqoZd0
         85Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Dd2RvTZ8gfpygtsaCzyWPhxOJ3nDcTnkRmNkdPIycPE=;
        b=ZaMcJd8m1/NWIxHEcl/cpEojV253kn6PngaPOKAkFdy5CV11etUeKcu9SzuvJOiHlc
         AMJL7NXo5YKBzBtRXO3duW4Uqnig2tKkAqqKMHru2Kh1AlsBy27TE5/+4jV0ja4BZEP1
         hi5Ym9ESOQ4UcLBOfoUInzPmdN5LIjUezW5EzTA3TB8VsNpmg68r6HpbetrsRG6t6NGz
         kM5bEI/8GBKs3uGICIpmohuuj2BkMjG1FEwxtOWtmcKqVL3zgovfyA9eK4K1GjAaOdyH
         xdZQdDF9SgV7yZwoGFKNya1IkHWtVBMhTPBL8LTzQwPlre1HBXEO8NODITq/t/Kc7fnH
         741w==
X-Gm-Message-State: AOAM531LPPxv6QBSjcRLCIUDlVFDJNYyxUtZYevxg5+2WP5QD/7nv0OE
        t1tAeNVq63BDx134BlkVBj4ncQ==
X-Google-Smtp-Source: ABdhPJzCaVGtA83Fws9GgfQkHtlFDfu5aVDPplXc1yQxTUf27mK6sgXSIb97EvM/JH/WIE9f8DpE2A==
X-Received: by 2002:a5d:6d82:: with SMTP id l2mr18369118wrs.225.1629117668801;
        Mon, 16 Aug 2021 05:41:08 -0700 (PDT)
Received: from google.com ([2.31.167.59])
        by smtp.gmail.com with ESMTPSA id i10sm10195719wmq.21.2021.08.16.05.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 05:41:08 -0700 (PDT)
Date:   Mon, 16 Aug 2021 13:41:06 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Emil Renner Berthing <kernel@esmil.dk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] mfd: tps65086: Add cell entry for reset driver
Message-ID: <YRpc4jajnsEaGbeW@google.com>
References: <20210727092554.1059305-1-kernel@esmil.dk>
 <20210727092554.1059305-5-kernel@esmil.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210727092554.1059305-5-kernel@esmil.dk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Jul 2021, Emil Renner Berthing wrote:

> The only way to reset the BeagleV Starlight v0.9 board[1] properly is to
> tell the PMIC to reset itself which will then assert the external reset
> lines of the SoC, USB hub and ethernet phy.
> 
> This adds an mfd cell entry for the reset driver doing just that.
> 
> [1] https://github.com/beagleboard/beaglev-starlight
> 
> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> ---
>  drivers/mfd/tps65086.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
