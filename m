Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F020132F476
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 21:09:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbhCEUJ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 15:09:27 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:42355 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229749AbhCEUJ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 15:09:26 -0500
Received: by mail-oi1-f175.google.com with SMTP id l64so3810692oig.9
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 12:09:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ss792e9AzN8pjeKvrYSJl54ETIcPVmGeIfafQZbwyRs=;
        b=cuTAoNsOkr6G5U0twahzoL3Ep35oDnZx1Nn+jqc/j5ye0PekCjVUzjTJZFJBX8bv/L
         fipTRmnIWwhe1VkPU3yRcdhxM2gpvnjaCrQSsGdiXSX4SbcWvXagqjSGya0ICGFJXcYP
         EnvUVtenXZgF/19r/NTQDW4eORr0FR6MIqE/aRCfSf7q7R5MMFminFVST4KkbABwWGC8
         v2SFbS3pfBe8K0hk8Yq/ElHgFUFcxA5A9T8oNHwXQMDTSh9erX3E5zfZbn3rl3QapriS
         24hW9o0kxpdCZ5M2I/jPtuBXggjW9w+NoJlMS53nYRNLDpW2eg+WX3opbi3tT/h4iSwH
         hTpg==
X-Gm-Message-State: AOAM531xmhv/8SAhyYKEk2eKs88PnwNkuP/aUWwCCYxx1kCLK8PfSyJh
        ibZRewiXKxrNaCKdD/dk+Q==
X-Google-Smtp-Source: ABdhPJyWzH5vssnBk81mBIlieZqf96YvWnGr6QQXuZ9SWUS5ishKqyWBA+wIeKLkC43T5cLuSXWafA==
X-Received: by 2002:aca:de82:: with SMTP id v124mr8418177oig.125.1614974965977;
        Fri, 05 Mar 2021 12:09:25 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u19sm795835ote.15.2021.03.05.12.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 12:09:25 -0800 (PST)
Received: (nullmailer pid 567755 invoked by uid 1000);
        Fri, 05 Mar 2021 20:09:23 -0000
Date:   Fri, 5 Mar 2021 14:09:23 -0600
From:   Rob Herring <robh@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     airlied@linux.ie, daniel@ffwll.ch, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: add bindings for
 newhaven,1.8-128160EF
Message-ID: <20210305200923.GA566941@robh.at.kernel.org>
References: <20210212095336.635701-1-daniel@zonque.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210212095336.635701-1-daniel@zonque.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 12, 2021 at 10:53:35AM +0100, Daniel Mack wrote:
> This adds documentation for a new ILI9163 based, SPI connected display.
> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
>  .../bindings/display/ilitek,ili9163.txt       | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9163.txt

Bindings are in schema format now.

> 
> diff --git a/Documentation/devicetree/bindings/display/ilitek,ili9163.txt b/Documentation/devicetree/bindings/display/ilitek,ili9163.txt
> new file mode 100644
> index 0000000000000..fee119991c14e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/ilitek,ili9163.txt
> @@ -0,0 +1,27 @@
> +Ilitek ILI9163 display panels
> +
> +This binding is for display panels using an Ilitek ILI9163 controller in SPI
> +mode.
> +
> +Required properties:
> +- compatible:	"newhaven,1.8-128160EF", "ilitek,ili9163"
> +- dc-gpios:	D/C pin
> +- reset-gpios:	Reset pin
> +
> +The node for this driver must be a child node of a SPI controller, hence
> +all mandatory properties described in ../spi/spi-bus.txt must be specified.
> +
> +Optional properties:
> +- rotation:	panel rotation in degrees counter clockwise (0,90,180,270)
> +- backlight:	phandle of the backlight device attached to the panel
> +
> +Example:
> +	display@0{
> +		compatible = "newhaven,1.8-128160EF", "ilitek,ili9163"
> +		reg = <0>;
> +		spi-max-frequency = <32000000>;
> +		dc-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
> +		rotation = <270>;
> +		backlight = <&backlight>;
> +	};
> -- 
> 2.29.2
> 
