Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 069DD3A2E5B
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 16:36:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230406AbhFJOiI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 10:38:08 -0400
Received: from mail-pl1-f171.google.com ([209.85.214.171]:45943 "EHLO
        mail-pl1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbhFJOiI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 10:38:08 -0400
Received: by mail-pl1-f171.google.com with SMTP id 11so1113473plk.12
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 07:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oyVrFSGAL08XcdlFRxTSklLBcj59OiHskRNYyLrSzHI=;
        b=IYdWGjr7YsprNy0kFSPHQp45XjPXYP9w1MjsSZnyDJ/QqgCHI5PZ1g4Czgp8/tJNOq
         TsrqukcnZr1Gu6bQPqsqYdbg8XO66Jd9PDiZq2cTJ2RsL5StT2NZMFxfrUyfaFSZjhmG
         mzDGPDqNjBK5JrWQaoSAwlM3tPcCQJPKRaPtj7faLOm9Iw1332YBtKCl4F8NQ8ZaS3Pz
         A60rGBXGHC4i8NMtQ+IjIT/ztt8uMZXtN387TZYu5B34ckqTE3qa0fKRPNF/hrAEgimq
         C6gFHeiOKl2dFdIInnUGLGPgQER4rQLaZy4BUHcJ1W2L/hguSlupFIG3WAie9MUc8Lw7
         2bdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oyVrFSGAL08XcdlFRxTSklLBcj59OiHskRNYyLrSzHI=;
        b=VegtXEXdJglbOD5IgDYHtzcHxO7YVBjnAQpOvx4Ve0LKQ4BAiy9KRAIk01Kaui+F1L
         618TGdwxGq2XmwT3kFqVFq1947vxI3pIPv3X8JxozWh9yXTvnr9gBeyTkGgOhWpR9eKX
         ig/LCf8mtWOcJcO9jxXni4tkKAxo1JaQvmEthNSYVtaNjVURNgwnxEco7iQLlEvFQK95
         EAoO3Hdyqw+Ipa+CZPM7GfBEmmHkca4PTRXZrmAX2JMhKd4QF6Urq3vVFVW1Ddc6VWXu
         ve5CF6dxGUIdi4t2xj7a26BMIQ1zIuJfCHCP6PznjeJksTHRJKg1fjTl2K3KNobtITQs
         MTPg==
X-Gm-Message-State: AOAM532OP28wfQkdvz1C1XVd8fclWxddx+1qmoU1zk70IBfelJKl4nlY
        m2YUGMd5Yrl3Zxa79TrWtkAW
X-Google-Smtp-Source: ABdhPJzKI+jvaJVvJEwfwIekR4AVEZldcSpdOKNVfGi25TP+AmnN7uPnu1m/tzX0u7skxjpZL4Gtow==
X-Received: by 2002:a17:90a:1541:: with SMTP id y1mr3680576pja.74.1623335699620;
        Thu, 10 Jun 2021 07:34:59 -0700 (PDT)
Received: from thinkpad ([2409:4072:6d9e:80ad:d341:9a16:2c5c:2249])
        by smtp.gmail.com with ESMTPSA id j12sm2481637pfj.60.2021.06.10.07.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 07:34:59 -0700 (PDT)
Date:   Thu, 10 Jun 2021 20:04:51 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Michael Turquette <mturquette@baylibre.com>,
        Edgar Bernardi Righi <edgar.righi@lsitec.org.br>,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 5/6] dt-bindings: clock: Add NIC and ETHERNET bindings
 for Actions S500 SoC
Message-ID: <20210610143451.GD315240@thinkpad>
References: <cover.1622119892.git.cristian.ciocaltea@gmail.com>
 <b76ceb8849370943e675e5ea1a34a25cb513faec.1622119892.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b76ceb8849370943e675e5ea1a34a25cb513faec.1622119892.git.cristian.ciocaltea@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 04:16:43PM +0300, Cristian Ciocaltea wrote:
> Add the missing NIC and ETHERNET clock bindings constants for Actions
> Semi Owl S500 SoC.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
> Changes in v2:
>  - Added Acked-by from Rob
> 
>  include/dt-bindings/clock/actions,s500-cmu.h | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/actions,s500-cmu.h b/include/dt-bindings/clock/actions,s500-cmu.h
> index a250a52a6192..a237eb26accb 100644
> --- a/include/dt-bindings/clock/actions,s500-cmu.h
> +++ b/include/dt-bindings/clock/actions,s500-cmu.h
> @@ -74,10 +74,12 @@
>  #define CLK_RMII_REF		54
>  #define CLK_GPIO		55
>  
> -/* system clock (part 2) */
> +/* additional clocks */
>  #define CLK_APB			56
>  #define CLK_DMAC		57
> +#define CLK_NIC			58
> +#define CLK_ETHERNET		59
>  
> -#define CLK_NR_CLKS		(CLK_DMAC + 1)
> +#define CLK_NR_CLKS		(CLK_ETHERNET + 1)
>  
>  #endif /* __DT_BINDINGS_CLOCK_S500_CMU_H */
> -- 
> 2.31.1
> 
