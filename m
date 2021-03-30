Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6607C34F495
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 00:47:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233114AbhC3WrT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 18:47:19 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:33688 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232985AbhC3WrP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 18:47:15 -0400
Received: by mail-ot1-f53.google.com with SMTP id s11-20020a056830124bb029021bb3524ebeso17169164otp.0
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 15:47:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xp8v9tK7FMchdLUHp1qm1McxtDpjxe0iZcKoBEQvIVY=;
        b=QMhNI1nqrhzy45IolGaxmyuaXNYCGZZG5+ZSoVb6i9jegMJg3ZucM2PZOpmrccg8kd
         zsnYS557lBxph3pUAKZ7V0Nu/4+Rg5RLLe6LXfvE/cJvesILT95pLiPh4d/p+pSEHPm6
         Xnpmjx7ICb2Em1iOAC3aN01NPWonjH9lQUNUAfQ2hmI+0gkKtevc9/mD36XV8PC5Z/WL
         QGFWK8cJFa3Mp8N7Dfk0XEBSRvVGT87Y4Hl57GEkrVGRpAg+fkyUt3sVJkX0LbUkuCIY
         HhmRNlx9Q4zAuvas7JU0h1ieIQsZFkpEl6qvH9oz5XIW7nkmZlA0Vbaj9BZvjzVH+6Nf
         m2BQ==
X-Gm-Message-State: AOAM530BAYPD7w5j13hTj4hu5Sw3DjDnXbl4cQYP2j5Gsr/4Rjpozev3
        8Fd0IDa9awyyREz0tWLRBw==
X-Google-Smtp-Source: ABdhPJxjAU/vi+mBlEkENwxqdbFJasSATHF82kYB09FqeGnTnIZ7Xiy0yMcX3ws6gDh3GuILSRc0jg==
X-Received: by 2002:a05:6830:34a2:: with SMTP id c34mr175590otu.52.1617144435348;
        Tue, 30 Mar 2021 15:47:15 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n17sm89326oic.8.2021.03.30.15.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 15:47:14 -0700 (PDT)
Received: (nullmailer pid 852948 invoked by uid 1000);
        Tue, 30 Mar 2021 22:47:13 -0000
Date:   Tue, 30 Mar 2021 17:47:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Yunus Bas <y.bas@phytec.de>
Cc:     dri-devel@lists.freedesktop.org, thierry.reding@gmail.com,
        sam@ravnborg.org, devicetree@vger.kernel.org, airlied@linux.ie,
        daniel@ffwll.ch
Subject: Re: [PATCH 1/2] drm/panel: simple: Add support for EDT ETMV570G2DHU
 panel
Message-ID: <20210330224713.GA852261@robh.at.kernel.org>
References: <20210330070907.11587-1-y.bas@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210330070907.11587-1-y.bas@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 30, 2021 at 09:09:06AM +0200, Yunus Bas wrote:
> From: Stefan Riedmueller <s.riedmueller@phytec.de>
> 
> This patch adds support for the EDT ETMV570G2DHU 5.7" (640x480) lcd panel
> to DRM simple panel driver.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> ---
>  .../bindings/display/panel/panel-simple.yaml  |  3 ++

Bindings should be their own patch.

>  drivers/gpu/drm/panel/panel-simple.c          | 29 +++++++++++++++++++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 62b0d54d87b7..57be1fa39728 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -114,6 +114,9 @@ properties:
>        - edt,etm043080dh6gp
>          # Emerging Display Technology Corp. 480x272 TFT Display
>        - edt,etm0430g0dh6
> +        # Emerging Display Technology Corp. 5.7" VGA TFT LCD panel with
> +        # capacitive touch
> +      - edt,etmv570g2dhu
>          # Emerging Display Technology Corp. WVGA TFT Display with capacitive touch
>          # Same as ETM0700G0DH6 but with inverted pixel clock.
>        - edt,etm070080bdh6
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 4e2dad314c79..283c17a75376 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -1926,6 +1926,32 @@ static const struct panel_desc edt_et057090dhu = {
>  	.connector_type = DRM_MODE_CONNECTOR_DPI,
>  };
>  
> +static const struct drm_display_mode edt_etmv570g2dhu_mode = {
> +	.clock = 25175,
> +	.hdisplay = 640,
> +	.hsync_start = 640,
> +	.hsync_end = 640 + 16,
> +	.htotal = 640 + 16 + 30 + 114,
> +	.vdisplay = 480,
> +	.vsync_start = 480 + 10,
> +	.vsync_end = 480 + 10 + 3,
> +	.vtotal = 480 + 10 + 3 + 35,
> +	.flags = DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_PHSYNC,
> +};
> +
> +static const struct panel_desc edt_etmv570g2dhu = {
> +	.modes = &edt_etmv570g2dhu_mode,
> +	.num_modes = 1,
> +	.bpc = 6,
> +	.size = {
> +		.width = 115,
> +		.height = 86,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> +};
> +
>  static const struct drm_display_mode edt_etm0700g0dh6_mode = {
>  	.clock = 33260,
>  	.hdisplay = 800,
> @@ -4226,6 +4252,9 @@ static const struct of_device_id platform_of_match[] = {
>  	}, {
>  		.compatible = "edt,et057090dhu",
>  		.data = &edt_et057090dhu,
> +	}, {
> +		.compatible = "edt,etmv570g2dhu",
> +		.data = &edt_etmv570g2dhu,
>  	}, {
>  		.compatible = "edt,et070080dh6",
>  		.data = &edt_etm0700g0dh6,
> -- 
> 2.30.0
> 
