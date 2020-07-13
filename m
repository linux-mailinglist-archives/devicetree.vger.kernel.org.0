Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F6AD21CAAA
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2020 19:26:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729264AbgGLR0Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jul 2020 13:26:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729218AbgGLR0X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jul 2020 13:26:23 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C8AAC061794
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2020 10:26:23 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id ls15so4988632pjb.1
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2020 10:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hzeascj2XCa1OYknGvF/fsco34LrcSYuFbtvrfksp3s=;
        b=upPgI2S+ZJy/GExdD2qzp0knzt+CNMOGr8Am6fo32jENn6mYRgDBJU/RCUfm8m+R/c
         nbjwBi/1I9a533Cy6C90oBObqGSP8psl/gdmMzNTqxIqPgonalIstidUmFYn5aFN5wqt
         VT7zqOGhlu0vn+ZQFTy/rbmX91TQQpexGc5FitFu9oXzMtxalcaAI9Jp82jhtMwxtct2
         m1zSdSDhr4ejYT47G0+zEfo1kb5Hl7aiq0LMdOM1slgUwFKkH/TBFmsLZJ+Hh+jrrPlL
         M8czWUrInWSXzuqPJiufgkYG85FnpnyOzV799LYfwBuiUdmzdkUAOh2yfmLnQgGU6QZc
         waUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hzeascj2XCa1OYknGvF/fsco34LrcSYuFbtvrfksp3s=;
        b=E3JuXF8tSnclmSYgb3cVR0IJg1wx5JmO3SwIXFBhtkZDYHHiIwHTgusO2v0WGr/sYy
         XvswKdhdjiHbDNCP3hTqXjzvSyg3n7WHN+PnumYfraDZXgg1FRdyztoI4xs3eXR94J6R
         Mq3clL0MO50cA70/yStoaRCv2UGC5mK4oXYswL6Avg2JhYjrEClWYanQCnSJO9ig6MV4
         10rByRlznH7lG0YLp3xHNomD10iW0mG2ItP8MEXvIt5JsEcbhPmc0qIuYIsSjUPikE/w
         /fHRomlWpJg7xE57Z3K5q8h6/31fyvqlwaYfTlx/NgzAOttkRPqvUfJvSOT5n7YYLXC2
         h0Jg==
X-Gm-Message-State: AOAM531WYjy4gZnRLstRn3jbg5sfYlQcNZFcumjQY5+nFfOTLx3Be2wP
        1Ec8YpUlz1pdcm/z67HRz9sJ
X-Google-Smtp-Source: ABdhPJzc95iQjLKs3H3XJtLZ7plTR9MqKrwLMZRA49J5BqIWf5Tq1vBsXJS/yd71mTHJLuKVvzwvDw==
X-Received: by 2002:a17:90a:2846:: with SMTP id p6mr16022228pjf.163.1594574782931;
        Sun, 12 Jul 2020 10:26:22 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6c81:c187:70f5:3123:b5de:e77f])
        by smtp.gmail.com with ESMTPSA id az16sm11773569pjb.7.2020.07.12.10.26.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 12 Jul 2020 10:26:22 -0700 (PDT)
Date:   Sun, 12 Jul 2020 22:56:17 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Amit Singh Tomar <amittomer25@gmail.com>
Cc:     andre.przywara@arm.com, afaerber@suse.de, robh+dt@kernel.org,
        cristian.ciocaltea@gmail.com, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 08/10] dt-bindings: mmc: owl: add compatible string
 actions,s700-mmc
Message-ID: <20200712172617.GJ6110@Mani-XPS-13-9360>
References: <1593701576-28580-1-git-send-email-amittomer25@gmail.com>
 <1593701576-28580-9-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1593701576-28580-9-git-send-email-amittomer25@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 02, 2020 at 08:22:54PM +0530, Amit Singh Tomar wrote:
> The commit adds a new SoC specific compatible string "actions,s700-mmc"
> in combination with more generic string "actions,owl-mmc".
> 
> Placement order of these strings should abide by the principle of
> "from most specific to most general".
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
> Changes since v4:
> 	* No change.
> Changes since v3:
>         * No change.
> Changes since v2:
>         * Added Rob's Reviewed-by tag
> ---
>  Documentation/devicetree/bindings/mmc/owl-mmc.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
> index 1380501fb8f0..5eab25ccf7ae 100644
> --- a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
> @@ -14,7 +14,11 @@ maintainers:
>  
>  properties:
>    compatible:
> -    const: actions,owl-mmc
> +    oneOf:
> +      - const: actions,owl-mmc
> +      - items:
> +          - const: actions,s700-mmc
> +          - const: actions,owl-mmc
>  
>    reg:
>      maxItems: 1
> -- 
> 2.7.4
> 
