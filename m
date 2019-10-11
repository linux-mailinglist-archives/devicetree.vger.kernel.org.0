Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E586ED4408
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 17:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726521AbfJKPUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 11:20:34 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:46642 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726328AbfJKPUd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 11:20:33 -0400
Received: by mail-oi1-f193.google.com with SMTP id k25so8272482oiw.13
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 08:20:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zwS8rnb6Pul2Tj4IPe9QhJRNl+DNx3RdlplLF9pczuk=;
        b=qHmXhgJfuv4dxrSs8NXywIv+S3qF9NNzslAuW83yAdCvpZEvc55V9AQdjgqZoTCRmz
         SjmU1XW5U/lJXZXFBdPaBLTekDq782ASHLqMmUTU1rhf1Xl9UI0UgArJPwhjKkjpnCQi
         yaaJpUtsAHOME1gAOLcg+ZenQJ4EFM0WUfe+0mz0MMMhl+G8jazu9pKANCFMBFiJ+UQy
         aWabppuZmLZtdNQcWPv8VvLYcaWhXUREjeWWC+VNEuCFpuEz+z/oKDtsMCi/ncL/3vSJ
         ff619JK1KymdJ0NN4OF/Ke29GQvna4YZkt988aZTFZLjD9mMW1sGG7XurRsRhde1Y3vH
         kBBQ==
X-Gm-Message-State: APjAAAWUtZdOB+fbRZJRrK0p3wwuGmLNDLw0o44lwZ7JtpMeeVKUM8hn
        SOFq1VaZCFGct6xjyoJH+Q==
X-Google-Smtp-Source: APXvYqxeMfb0jpX/cZhqRDivEunM6dWUjFbeka9g66lQDFOgGGwSJoMxBm/KHFglSYdf+wWw96sJEQ==
X-Received: by 2002:a54:4481:: with SMTP id v1mr12176488oiv.152.1570807231287;
        Fri, 11 Oct 2019 08:20:31 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i5sm2638917otk.10.2019.10.11.08.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 08:20:30 -0700 (PDT)
Date:   Fri, 11 Oct 2019 10:20:29 -0500
From:   Rob Herring <robh@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com
Subject: Re: [PATCH v2 09/10] ASoC: dt-bindings: mt8183: add ec-codec
Message-ID: <20191011152029.GA18877@bogus>
References: <20191005085509.187179-1-tzungbi@google.com>
 <20191005164320.09.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191005164320.09.Iec97a3f137148cdf316056612590b3e0b302f5f3@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 05, 2019 at 04:55:08PM +0800, Tzung-Bi Shih wrote:
> Add an optional property "ec-codec".  If specified, mt8183 could use the
> "wake on voice" feature offered by EC codec.
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
>  .../bindings/sound/mt8183-mt6358-ts3a227-max98357.txt          | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
> index 17ff3892f439..decaa013a07e 100644
> --- a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
> +++ b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
> @@ -6,12 +6,15 @@ Required properties:
>  
>  Optional properties:
>  - mediatek,headset-codec: the phandles of ts3a227 codecs
> +- mediatek,ec-codec: the phandle of EC codecs.
> +                     See google,cros-ec-codec.txt for more details.

Not the best designed audio binding here. We really should just have 
links to codecs and then you can look at the codec nodes to determine 
the type.

>  
>  Example:
>  
>  	sound {
>  		compatible = "mediatek,mt8183_mt6358_ts3a227_max98357";

Don't you need to add EC codec to this? Just kidding. Just highlighting 
the weirdness of this binding.

>  		mediatek,headset-codec = <&ts3a227>;
> +		mediatek,ec-codec = <&ec_codec>;
>  		mediatek,platform = <&afe>;
>  	};
>  
> -- 
> 2.23.0.581.g78d2f28ef7-goog
> 
