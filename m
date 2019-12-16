Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D843612097D
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 16:20:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728063AbfLPPUY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 10:20:24 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:44259 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728202AbfLPPUX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 10:20:23 -0500
Received: by mail-wr1-f66.google.com with SMTP id q10so7715024wrm.11
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2019 07:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=yKFHERdNdPN6Ex8JOu2in3qBAjlasmuEZDq7sRDudK0=;
        b=GW+qXcq4BZ5dkIThObt2lOqawmLIk3OWXTb/8HhvjYhT072tqZEPE5CZw2zJVCuca6
         97PO7Bucb15eOo9VR5dF8osj4RSOlIeLX8dELi2xEhj+uiMZIrr8ldSDwNd26lrbapFG
         U1/x43PLG29ouKCNZ63dCgsxfaGOPqSYNesWjbPMg/tsXCHHgFF/MvK7b8gFdVfJK0T6
         qT3lq19j8new3QRUhZc03HP3qQq3iq4uRkcCSV+0ZY0/4+lYd+tXPuRysNY3gX2QKAG/
         WVORCiSTVnvWKKlgh3q6OmERq1GOtnmorsvYfRGuN6kVfxIsC+TiIb91EkGIxzLdXHTM
         aIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=yKFHERdNdPN6Ex8JOu2in3qBAjlasmuEZDq7sRDudK0=;
        b=bOAdTAuN/yXA3MDEmmXcJcuSl5wIb63RswRCENkK1RwBUb8fQrB2zWp1gZFzGF7pn6
         +Jja1luYwgCfF7yvTVfCXFamMY5nwQRRzyTjg3xdAZ2IRyr0XG4hCVPnylh+8bDTqFdT
         CCCXccy8lnHMJwwS23IxjmAzIXYsScfjiyA4Pks9UIXiV7G/yjBf8/aKrZl3Q+a70LtM
         9XKZSdXBU2UO7H9HgdqSecuEpRRzrBZfSOJR/2lZhOJLZ4IPReOSl9SRL3B7vJZov8e5
         YrRxYntqtQA6YKiSB+WwluaUvWCR6r++y3ZFNKEFsWoH/IEtN/Soi3xXSND4CL/c3oQp
         IQGA==
X-Gm-Message-State: APjAAAVD29M1Dk4ObWxntZBJ+UiaojGQ8xq8qLtHgPtkUrdbY+46JD6s
        XcPzyxfg0tHxJv3tUUkcdyfguA==
X-Google-Smtp-Source: APXvYqy1jbVR7FkN0kaR1W+4ZJ9ENvko5dMwnYV5wp0d91OQNJTU1+OxRy+dD9MAF1z6WCEDFVuptw==
X-Received: by 2002:a5d:6390:: with SMTP id p16mr31600584wru.170.1576509621307;
        Mon, 16 Dec 2019 07:20:21 -0800 (PST)
Received: from dell ([185.17.149.202])
        by smtp.gmail.com with ESMTPSA id l2sm20713536wmi.5.2019.12.16.07.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 07:20:20 -0800 (PST)
Date:   Mon, 16 Dec 2019 15:20:19 +0000
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
Subject: Re: [PATCH v7 1/6] mfd: mt6397: modify suspend/resume behavior
Message-ID: <20191216152019.GE2369@dell>
References: <1576057435-3561-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1576057435-3561-2-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1576057435-3561-2-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 11 Dec 2019, Hsin-Hsiung Wang wrote:

> Some pmics don't need backup interrupt settings, so we change to use
> pm notifier for the pmics which are necessary to store settings.
> 
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/mfd/mt6397-core.c       | 30 ------------------------------
>  drivers/mfd/mt6397-irq.c        | 33 +++++++++++++++++++++++++++++++++
>  include/linux/mfd/mt6397/core.h |  2 ++
>  3 files changed, 35 insertions(+), 30 deletions(-)

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
