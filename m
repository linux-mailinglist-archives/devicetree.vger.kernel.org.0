Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE03267CF3
	for <lists+devicetree@lfdr.de>; Sun, 13 Sep 2020 01:22:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725955AbgILXW5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Sep 2020 19:22:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725918AbgILXWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Sep 2020 19:22:53 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A11B0C061574
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 16:22:53 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id h17so11615855otr.1
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 16:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=osd8I7hdde8heZXl3WWO/H1aoD+1+kR4aDmtd6xQvok=;
        b=o+DrkrHoteVVyf7EkGmBjipx3a3G/a689fMk+zQ3vV5X6fXH2r1kmJtSpF1jJWTxet
         YmKWkBTOTI5Mq+lL1LHSauIEKZYzdrlZ0umoSZP/6TbL+G23XON6P2nKBvKUjJGmNlnN
         +pF7wzR7S8nxilNV8VJMpP1ZUvIj2R+vnbyRpy3ptG0CGb+J4kynULEdpqhyDbxTcRD9
         busEicUEH2/MAZBY3FKjr+dsay1PUC16IAAlR6fYZxfvBB6d4mV1k+GJCq18Ux5mKyYL
         kGNHoNuK+7oK6lGWY4yPWvF+Rzb7mHavsNJhp6Brp/P8XjQTcl5Fn6gvohdHH/l14ibH
         H3zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=osd8I7hdde8heZXl3WWO/H1aoD+1+kR4aDmtd6xQvok=;
        b=GLCuxs+xO8KcGbuqC3+vfAYWbS7St0B3+u2kSzwAxDu8HFR7Df7SgGjaxcwvf2VfOL
         BwTqNGAXwu5D7kuVFBb4qLZvmBgFmYk5O1aPkMjOC7u/i/pnAPHu3pMhczdJcabO+0mY
         nR9EEeL7i8r/cKqV8UyoKHAysL3qCLvFdpG/v/zJT8Iqf3FkdQWPppr6skoh+UqzxtV+
         F5YOw/9i16GciinOkAxI3leBI752N5oc/No2eVXonRS6ZmgCIA6iDHIYuEjxfHcIpmw8
         j+eiPMkn6CdwZWZW5AuQdr0Amrj7BwhuK1hYTFAwdQVABYjtbCyoOAs9ScEB+ujgPiv3
         dmmw==
X-Gm-Message-State: AOAM531jnDYWVU0XCec8gwf3bGlUAnlQlFWB5JQZbBfsO+X1sl03AQH2
        4cyByH52xCKc7RLZgefvcyQNHQ==
X-Google-Smtp-Source: ABdhPJy2f3YqvHeUh4Bg/tv4W7nDYTq3KPa+OA7g8i8mW4YnAFIQ6ImAStIIV/638LBlchaPqWXxVQ==
X-Received: by 2002:a9d:785a:: with SMTP id c26mr5290023otm.180.1599952973015;
        Sat, 12 Sep 2020 16:22:53 -0700 (PDT)
Received: from yoga ([2605:6000:e5cb:c100:8898:14ff:fe6d:34e])
        by smtp.gmail.com with ESMTPSA id g23sm1147920ooh.45.2020.09.12.16.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Sep 2020 16:22:52 -0700 (PDT)
Date:   Sat, 12 Sep 2020 18:22:49 -0500
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
Subject: Re: [PATCH 6/6] irqchip/qcom-pdc: Allow modular build
Message-ID: <20200912232249.GJ3715@yoga>
References: <20200912125148.1271481-1-maz@kernel.org>
 <20200912125148.1271481-7-maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200912125148.1271481-7-maz@kernel.org>
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
>  drivers/irqchip/qcom-pdc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/qcom-pdc.c b/drivers/irqchip/qcom-pdc.c
> index 6ae9e1f0819d..8543fa23da10 100644
> --- a/drivers/irqchip/qcom-pdc.c
> +++ b/drivers/irqchip/qcom-pdc.c
> @@ -430,4 +430,6 @@ static int qcom_pdc_init(struct device_node *node, struct device_node *parent)
>  	return ret;
>  }
>  
> -IRQCHIP_DECLARE(qcom_pdc, "qcom,pdc", qcom_pdc_init);
> +IRQCHIP_HYBRID_DRIVER_BEGIN(qcom_pdc)
> +IRQCHIP_MATCH("qcom,pdc", qcom_pdc_init)
> +IRQCHIP_HYBRID_DRIVER_END(qcom_pdc)
> -- 
> 2.28.0
> 
