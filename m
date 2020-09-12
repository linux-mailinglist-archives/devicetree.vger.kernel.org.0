Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D20C267CEF
	for <lists+devicetree@lfdr.de>; Sun, 13 Sep 2020 01:22:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725921AbgILXWK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Sep 2020 19:22:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725910AbgILXWJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Sep 2020 19:22:09 -0400
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5CB0C061573
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 16:22:08 -0700 (PDT)
Received: by mail-oi1-x243.google.com with SMTP id u126so13479757oif.13
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 16:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=FWI5tB8plsBtYMxeyZ+TN8d4BsTGYJ/TwddRKid43yU=;
        b=VEf+ZebL44Ho9ZrJhtXp3LhstkMqCw8BHM4SlyBq+VluvQSKFqwEWQW4w4LqKTaT2P
         A8NoYt7r0DvQ+OGu0GEej2Li9JhVt8jbw0HbfmgOSGfEGehqzZA3oua/z4/u3E1iLUCl
         NvZarVFvT4V9ry/qaKWYro5Nvo4JIzGyw9ZXPcgXBaTPlOf+U6lhsi3Cv5hYoM+00Twz
         TtGauCwDHLUrstr6jZesZeaBMb3nIYPP6CSus75lT+/iiwp6CXsSRZacUqPgpmFpLnOE
         KT+nLw07stNdDKxCGEr1HYBwCuOtHzY2a/DCwA6UrNO2xTDr/5fT8vUbJWTsovkUXqYN
         inEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FWI5tB8plsBtYMxeyZ+TN8d4BsTGYJ/TwddRKid43yU=;
        b=M+xNgVyYCKrIEImuEVRZ0zGL2moY2Y+9ZuqmPbaNMXUCfxRawL6u9OSCrV3arrN3e6
         tiivqobke8nwvqxjWZhxHTtE+UDmbK0RInoQA1CmKNIZkT0YaR2yu5gQunu53aeMDaaA
         Qs80S+4ZaQwa7glROJi9HSoitv4B4WipCax0QDRIuHRYD5NgZFCfH3KcGKjy5kF9XbPW
         FuLudqPjFq9P4gw/rm3LvZhdSk28T2qTjn8xoGHwWYIaRm84O57Qzm4/TVwKjpSlQcJq
         H6DZqVXzToFQsiD1NmIt7sYyhYTwGYDlTydKTTtRdw00JarC+VPHeg8t5/mlLmFjW8US
         CmUg==
X-Gm-Message-State: AOAM5332FW3n+RVgtY+5RWP5M1jM7Q6AaoXBNWVEWokfastnG73eLymB
        QYGmM0LTgBGliawuo5YzAMlI3w==
X-Google-Smtp-Source: ABdhPJzBse3lngfpKYoCwhh9XI0Wx7OT1j7h5tzu1nDLnfrcVGs59wzoieuTGm3LktdBYVXrdEgM4g==
X-Received: by 2002:a05:6808:14f:: with SMTP id h15mr4678051oie.119.1599952928168;
        Sat, 12 Sep 2020 16:22:08 -0700 (PDT)
Received: from yoga ([2605:6000:e5cb:c100:8898:14ff:fe6d:34e])
        by smtp.gmail.com with ESMTPSA id w14sm1000028oie.41.2020.09.12.16.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Sep 2020 16:22:07 -0700 (PDT)
Date:   Sat, 12 Sep 2020 18:22:03 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Marc Zyngier <maz@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Frank Wunderlich <linux@fw-web.de>,
        John Stultz <john.stultz@linaro.org>,
        Saravana Kannan <saravanak@google.com>,
        Hanks Chen <hanks.chen@mediatek.com>,
        Andy Gross <agross@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>, kernel-team@android.com
Subject: Re: [PATCH 4/6] irqchip/mtk-cirq: Allow modular build
Message-ID: <20200912232203.GH3715@yoga>
References: <20200912125148.1271481-1-maz@kernel.org>
 <20200912125148.1271481-5-maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200912125148.1271481-5-maz@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 12 Sep 07:51 CDT 2020, Marc Zyngier wrote:

> Switch the driver to a "hybrid probe" model which preserves the
> built-in behaviour while allowing the driver to be optionnally
> built as a module for development purposes.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-mtk-cirq.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/irq-mtk-cirq.c b/drivers/irqchip/irq-mtk-cirq.c
> index 69ba8ce3c178..43e880b63ed2 100644
> --- a/drivers/irqchip/irq-mtk-cirq.c
> +++ b/drivers/irqchip/irq-mtk-cirq.c
> @@ -295,4 +295,6 @@ static int __init mtk_cirq_of_init(struct device_node *node,
>  	return ret;
>  }
>  
> -IRQCHIP_DECLARE(mtk_cirq, "mediatek,mtk-cirq", mtk_cirq_of_init);
> +IRQCHIP_HYBRID_DRIVER_BEGIN(mtk_cirq)
> +IRQCHIP_MATCH("mediatek,mtk-cirq", mtk_cirq_of_init)
> +IRQCHIP_HYBRID_DRIVER_END(mtk_cirq)
> -- 
> 2.28.0
> 
