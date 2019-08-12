Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41A8289C24
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 13:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728002AbfHLLAB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 07:00:01 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:32818 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728167AbfHLLAB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 07:00:01 -0400
Received: by mail-wr1-f68.google.com with SMTP id n9so104283959wru.0
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 04:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Se9XSbsfGDt4BhyzlQIMi1S9/MkvfhBPx11WicajSSg=;
        b=yaHiSpqBDdc2sT6zI2Dw8zIEtpSIuQSkOCCSmj9RJNlb1WEg3hBK3DieiAioZ8alKu
         AhP6xz8HC1xq2zeOzZD/CESJhRrdOgr9LS9ALNZnKZ7qQmpeLUV9bDwnT3EpLlwruIiP
         qw6Wfo9LBJzqQuQkLSFwdLolV8LwmnGKEdztwiHvhxo4Su+Amv+FnsR+5zM2D+cajBpc
         ylXscLIIU6eUjTydGSw0LQX8ETWkvZ56eeYt1TiS0+Pe7xUOVQiHuRDq1jqfF+s8ugmx
         Yb3gupA+zwYIsrVaxjBkVmzYbfHGadHGrRwNto9vTAoF1Gi8UzYRJPde3HbA0jbocbzQ
         ck9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Se9XSbsfGDt4BhyzlQIMi1S9/MkvfhBPx11WicajSSg=;
        b=Pz0fTQh2V1Ic+QtnZ9II6YV6Rv2Rh/4U7cfRSHBRcKN7d6lRb4ENcezllVQDDzfRZ5
         thaNwfOPr3QfpgZFh1TD4NAIksE0xErV6nKvf8MwQ/x1M+4oP8WaXZmdxshgopGQXcDU
         wSWHNFsXypmu9cXd7Y28IaeXH9wXdb0EAJBH75NoUuqgobfZJ1p2P2NGHHXVLutt41hH
         pPQwaFihpsq/ezTA2lLXJ6Ckbcb+aD59x+JpyssAcjE777GmIIj9rghaQL1GzGgPRHy+
         cyyoW3uEsXOUHvDqwnJJD0zyWdRVqtM057n1VJu6RBKpBnMjfHOUH2OfdI8cT209FU5d
         VIvA==
X-Gm-Message-State: APjAAAVhCvZcz/Uihuo7+syzfYJK7W/HX8GHmrLPJEM0xt3fLsjPBPhr
        +t82104LAHdoVLwTimWQu+8zLw==
X-Google-Smtp-Source: APXvYqz8c1NJgqCLXi1ZOgbjqMY0Kt0jc3i39Y6I1YxE2q8hdoWNcdXIgZA0cAg94/5QZFrH+80nhg==
X-Received: by 2002:adf:dc51:: with SMTP id m17mr41748135wrj.256.1565607599334;
        Mon, 12 Aug 2019 03:59:59 -0700 (PDT)
Received: from dell ([2.27.35.255])
        by smtp.gmail.com with ESMTPSA id a81sm5608087wma.3.2019.08.12.03.59.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 03:59:58 -0700 (PDT)
Date:   Mon, 12 Aug 2019 11:59:57 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Eddie Huang <eddie.huang@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Richard Fontana <rfontana@redhat.com>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Allison Randal <allison@lohutok.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rtc@vger.kernel.org, srv_heupstream@mediatek.com
Subject: Re: [PATCH v4 02/10] mfd: mt6397: extract irq related code from core
 driver
Message-ID: <20190812105957.GP26727@dell>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-3-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1564982518-32163-3-git-send-email-hsin-hsiung.wang@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 05 Aug 2019, Hsin-Hsiung Wang wrote:

> In order to support different types of irq design, we decide to add
> separate irq drivers for different design and keep mt6397 mfd core
> simple and reusable to all generations of PMICs so far.
> 
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/mfd/Makefile            |   3 +-
>  drivers/mfd/mt6397-core.c       | 146 --------------------------------
>  drivers/mfd/mt6397-irq.c        | 181 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/mfd/mt6397/core.h |   9 ++
>  4 files changed, 192 insertions(+), 147 deletions(-)
>  create mode 100644 drivers/mfd/mt6397-irq.c

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
