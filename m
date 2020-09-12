Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29622267CEB
	for <lists+devicetree@lfdr.de>; Sun, 13 Sep 2020 01:20:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725921AbgILXUr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Sep 2020 19:20:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725907AbgILXUo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Sep 2020 19:20:44 -0400
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 407CFC061574
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 16:20:44 -0700 (PDT)
Received: by mail-oi1-x241.google.com with SMTP id x14so13541353oic.9
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 16:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=zAdeQW/2gbCpzXPZiCJyeby+oD0DdW73pGie0DjST8w=;
        b=sPjUlD8DnmedoAPjnVvmwZWp5/Z0rhjjN3FyIKLzRDYt5hscLhRTM3FFK+h//2F2h3
         hBGMgBpKBj3/JwgoMeJKf0YEkQv2avhyFxL2gK6GMlTwHrFOAcr76ZJLzpOF3o6MMP8J
         w+Am3RHO//plo3Np1lMVfvuOxAHH6dKzoxD0Y4FmgpdNDQTCMxqQV9SQYp115VsjatMj
         Pxqfpf4JDoYRHMJfKggo80dtxxkyvp/bCDvkrTSHuNXYVDFKGZR+7yhp1PxhsP0sbGF0
         8qZwraVq7RpBfv2RDchJr8hIeOKizCWxKyDTSyGvGf1LLAST4zC9+//Ch3sLyPmaMmmK
         PwGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zAdeQW/2gbCpzXPZiCJyeby+oD0DdW73pGie0DjST8w=;
        b=uATVXjzxK5kVBGtqu9s8cwk5UboNiaKdzCf0AiTlfGetSc1Ny4EQPhIg2BvWbaGlB9
         o+yrwfw8eTt86NaleUUyFI65vzCRqc9VIGpC6+aweZnMjdwOJrHkRrzk5V0kFW34lh0K
         ME4VIqkIBBLQjvghKaVN1nXwD8ST64ZBzSKl1hSctCj87OUq0+hM4qUQ69Bf6iCnZnGA
         pvdbMlCaL5rYTQYdwJXVPC0L6U5Z4Jc4qTQvSiXQ1TOmw3/2Dv3EPkSAngKjbqymFaQG
         W7tRu/BFLPP8CcLxgaTITIQVPveXhKKBG7zlHPIZ2WKhGF8L6CR/5hBnNW9aEXaznd1x
         qVDA==
X-Gm-Message-State: AOAM530/wssov8freQZMk/qZ9sEDCp5GgQB/RrrvgGDpGUPFsMmHvq+G
        Uaw0R/HMR3ocTHxDrt0YZXr1/Q==
X-Google-Smtp-Source: ABdhPJx015wTEgTJ2uNPmsme6fUXg9bS9MuuKkiYv7l/z1OJ+gqRkxk4aMY6E/IGkGR+Y7V+gImMBw==
X-Received: by 2002:aca:f0e:: with SMTP id 14mr4937004oip.134.1599952843691;
        Sat, 12 Sep 2020 16:20:43 -0700 (PDT)
Received: from yoga ([2605:6000:e5cb:c100:8898:14ff:fe6d:34e])
        by smtp.gmail.com with ESMTPSA id l3sm1150354oom.18.2020.09.12.16.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Sep 2020 16:20:43 -0700 (PDT)
Date:   Sat, 12 Sep 2020 18:20:39 -0500
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
Subject: Re: [PATCH 2/6] irqchip: Make IRQCHIP_MATCH() type safe
Message-ID: <20200912232039.GF3715@yoga>
References: <20200912125148.1271481-1-maz@kernel.org>
 <20200912125148.1271481-3-maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200912125148.1271481-3-maz@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 12 Sep 07:51 CDT 2020, Marc Zyngier wrote:

> IRQCHIP_DECLARE() is backed by macros that perform some elementary
> type checking on the probe function. Unfortunately, IRQCHIP_MATCH()
> doesn't, risking difficult debugging sessions...
> 
> Rewrite IRQCHIP_MATCH() in terms of _OF_DECLARE_ELMT() restore
> the missing type safety.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  include/linux/irqchip.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/irqchip.h b/include/linux/irqchip.h
> index 67351aac65ef..f8f25e9f8200 100644
> --- a/include/linux/irqchip.h
> +++ b/include/linux/irqchip.h
> @@ -33,7 +33,7 @@ extern int platform_irqchip_probe(struct platform_device *pdev);
>  #define IRQCHIP_PLATFORM_DRIVER_BEGIN(drv_name) \
>  static const struct of_device_id drv_name##_irqchip_match_table[] = {
>  
> -#define IRQCHIP_MATCH(compat, fn) { .compatible = compat, .data = fn },
> +#define IRQCHIP_MATCH(compat, fn) _OF_DECLARE_ELMT(compat, fn, of_init_fn_2)
>  
>  #define IRQCHIP_PLATFORM_DRIVER_END(drv_name)				\
>  	{},								\
> -- 
> 2.28.0
> 
