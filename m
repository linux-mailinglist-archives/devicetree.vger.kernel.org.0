Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5333512098A
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 16:21:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728350AbfLPPVm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 10:21:42 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:35381 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728275AbfLPPVl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 10:21:41 -0500
Received: by mail-wr1-f68.google.com with SMTP id g17so7760686wro.2
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2019 07:21:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=qLW85+iCakysrIL3d9ahlxs/+0bq3c8q3dQkkBI+mAY=;
        b=l9eRHG6cELj/1PPW5EMQL8KGSpML40lgI42oonoObgVkQJpwcUpAhOzugGJ1YzDVh/
         Xn+g5HPMl+dLsYUrlg7312P/+FNbj9QEnm2kVtOKCQdPOD447fXhj6oyX5lGi6hArYGI
         ORKa/zBvvQR/ijSqhhv+sdOOlpsJpm4PmFmwb3UgJplzSokAD8u8b9pQ7kaUsCXJ9f9m
         Lv/bhO/Swr+5cFJ21U8uk/Jd33llMPn0xeTlVRk8bVjXZJZrg3/QC8m5DHrKlgB4M0QV
         osHGkfb8Z2PSqzmCGeUX3qd3TpPIq2QDjMGPHvZoY2oInrkzLxNL6LEBL8zZzqTbZKg1
         pYfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=qLW85+iCakysrIL3d9ahlxs/+0bq3c8q3dQkkBI+mAY=;
        b=ljaic7+S8C+eHU+6CG9qXa2ZpC1jGTzCrVw+h2BPTrFzDH5U8x3lJ963EOFgenNFG5
         Vww5SP4w7mS8CZEQWoJuLw61Usymkuqr6N2Vqt/G0YmKJZmJ5VjgH7Bq/hnEabnmZmK1
         7jx8rthNhcv3tgIjDeVkf6jld5iP/NGCNcZKWBJdOXYH4gKJjvqXW6YL9IArv0ooqQyk
         L4B3RpjNyMF02eBl1JFHh4fHS+NApIszWz5WcLPYYtVe4e6xVX/nBUSYUxtbGL5p8NkA
         oEncTQ0DqlTQlDzvbCFW+A7mn30UIiL6feECDwh0LJBY9SVla7uV7bxsQL2f3hHG53VP
         UHkA==
X-Gm-Message-State: APjAAAU9UnK26HpwsYMFDhoiA0dzFiUTShdHmUJPffFM8so9T4ma/Yvd
        CVoEiIzsQIAkwxUs9xL2gomRsw==
X-Google-Smtp-Source: APXvYqweC7S5MEqLKn13rfYs2+xIpXzL1Op8mNT8o+RON6KKvlXrllfQ92Cbjp2t7tj6nFBRu6VFaw==
X-Received: by 2002:a5d:4b8f:: with SMTP id b15mr32672267wrt.100.1576509699617;
        Mon, 16 Dec 2019 07:21:39 -0800 (PST)
Received: from dell ([185.17.149.202])
        by smtp.gmail.com with ESMTPSA id x10sm22076901wrv.60.2019.12.16.07.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 07:21:39 -0800 (PST)
Date:   Mon, 16 Dec 2019 15:21:38 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@free-electrons.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Eddie Huang <eddie.huang@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Tianping Fang <tianping.fang@mediatek.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Josef Friedl <josef.friedl@speed.at>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Ran Bi <ran.bi@mediatek.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rtc@vger.kernel.org, srv_heupstream@mediatek.com
Subject: Re: [PATCH v7 6/6] rtc: Add support for the MediaTek MT6358 RTC
Message-ID: <20191216152138.GF2369@dell>
References: <1576057435-3561-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1576057435-3561-7-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1576057435-3561-7-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 11 Dec 2019, Hsin-Hsiung Wang wrote:

> From: Ran Bi <ran.bi@mediatek.com>
> 
> This add support for the MediaTek MT6358 RTC. Driver using
> compatible data to store different RTC_WRTGR address offset.
> 
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  drivers/rtc/rtc-mt6397.c       | 24 ++++++++++++++++--------

>  include/linux/mfd/mt6397/rtc.h | 16 +++++++++++++++-

Acked-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
