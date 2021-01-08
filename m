Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D46192EF7B6
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 19:53:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728795AbhAHSwk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 13:52:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728429AbhAHSwk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 13:52:40 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA0C4C06129C
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 10:51:56 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id q205so12384566oig.13
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 10:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=r/MkUW0GRmJuadWQznL86MSa13giPqtJ7KC4WPcx3H8=;
        b=SG56FlHl9zrGZL4NLGk3Ea4wab6oxPXQUnoQlBoEgUQkHEZ0UdjLTCbjnarK1CWIiI
         5+oYaMOyd4eKHwHWxs1RKiWb/7ARF1nQ3ycUSXWWTOKD3feLcSQxn3TgaRAOWDYix2Fw
         ox0CFKO5twH2hw3bbTKfBXz4P8dQpo/vEvSlPoDGNVU2KFbsVN3rYKUOYjNwFpDUDQYC
         XMUe6xONrPgyxrH12pBtQvdaHQax9ccrbTyXVxbr4vix0887Mw97NPgOYoCCOZ8CK0Qm
         kbDZN+9jA2NvhyVKHIGOJ1VK4yxVY3wv0Mw6tjPuxvPSxQdRIeXdkChEuma3DiCgnCxw
         3BNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=r/MkUW0GRmJuadWQznL86MSa13giPqtJ7KC4WPcx3H8=;
        b=HZeh08YdBLI5v34bwZdX84flp3fRzspdKCCkuHCTDVGeAreYYE+OaKPzPPnVf/6cmJ
         qKx7YPiuGmgZlqaiZo1c5/OKE3xClkApIlqjJt8Ejec1a/iR6j2OfGZhJ5sCfDSF6KqE
         ANVM2DlpN6fB45CNsRjcJHKDu1Wht8LRkvTEJXjwJ0gNdo9ILSl9yX/kuORTZmyFNReo
         TatXvSyIVYXp9OvXa9vRHG1/+lqFCclQCSsG+oEIA23QOuc9aimIFdzx2lDuXh7tGCm4
         w15nzlK4zujjeucbWjYH7QG2KE+ZPKQXeSR0x7p+0VV3ovi5E6znhxc0ktmXx8jeLYJI
         ky6A==
X-Gm-Message-State: AOAM5335eQ5Gx1eJftbqZQw6LHv/YZUKas9pVnQTMgb8xxYV3KtbIEC9
        eaS95zd1iUBVw32srV3ypavdQw==
X-Google-Smtp-Source: ABdhPJxeR5gyMZKDUewB93nitF60K0EHeRnBK4DSVOtQgbI32pduVowsTp4hJw1NQuyPi+l0b6PjSQ==
X-Received: by 2002:aca:d406:: with SMTP id l6mr3190690oig.26.1610131916162;
        Fri, 08 Jan 2021 10:51:56 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a15sm2124904oii.50.2021.01.08.10.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 10:51:55 -0800 (PST)
Date:   Fri, 8 Jan 2021 12:51:53 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Robert Foss <robert.foss@linaro.org>
Cc:     agross@kernel.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
        shawnguo@kernel.org, leoyang.li@nxp.com, geert+renesas@glider.be,
        arnd@arndb.de, Anson.Huang@nxp.com, michael@walle.cc,
        agx@sigxcpu.org, max.oss.09@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v1 02/17] media: camss: Fix vfe_isr comment typo
Message-ID: <X/ipyY7o+Grx+lkL@builder.lan>
References: <20210108120429.895046-1-robert.foss@linaro.org>
 <20210108120429.895046-3-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210108120429.895046-3-robert.foss@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 08 Jan 06:04 CST 2021, Robert Foss wrote:

> Comment refers to ISPIF, but this is incorrect. Only
> the VFE interrupts are handled by this function.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/media/platform/qcom/camss/camss-vfe-4-1.c | 2 +-
>  drivers/media/platform/qcom/camss/camss-vfe-4-7.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe-4-1.c b/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
> index 174a36be6f5d..a1b56b89130d 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe-4-1.c
> @@ -922,7 +922,7 @@ static void vfe_violation_read(struct vfe_device *vfe)
>  }
>  
>  /*
> - * vfe_isr - ISPIF module interrupt handler
> + * vfe_isr - VFE module interrupt handler
>   * @irq: Interrupt line
>   * @dev: VFE device
>   *
> diff --git a/drivers/media/platform/qcom/camss/camss-vfe-4-7.c b/drivers/media/platform/qcom/camss/camss-vfe-4-7.c
> index b5704a2f119b..84c33b8f9fe3 100644
> --- a/drivers/media/platform/qcom/camss/camss-vfe-4-7.c
> +++ b/drivers/media/platform/qcom/camss/camss-vfe-4-7.c
> @@ -1055,7 +1055,7 @@ static void vfe_violation_read(struct vfe_device *vfe)
>  }
>  
>  /*
> - * vfe_isr - ISPIF module interrupt handler
> + * vfe_isr - VFE module interrupt handler
>   * @irq: Interrupt line
>   * @dev: VFE device
>   *
> -- 
> 2.27.0
> 
