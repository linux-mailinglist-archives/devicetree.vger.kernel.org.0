Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9713C145999
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2020 17:16:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725943AbgAVQQz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jan 2020 11:16:55 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:43383 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725928AbgAVQQy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jan 2020 11:16:54 -0500
Received: by mail-oi1-f196.google.com with SMTP id p125so6547811oif.10
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2020 08:16:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bCC1zL+bogHN+rvx2h4DBHY3FQpA25WkiSVB3OHN7QI=;
        b=eYFgTCtMEA9v4yYyPCiIDFKlFOa2UIo/TM7lJr27d6V8KOynEc/8dLLai+DH72kQ+Z
         U/hMeHjsOJMaq51S0VG0gsRo8oOQhgGq5oJSoa7xxVNaSaKMW4vWLnbH2o2IVD0WXkvJ
         jDTFbyD+D3m3HlmZp4gd0bMd79i1oPjmbeEne1AjuaRSZWi1Qoyb+hTcVdtQ3jqYaVv9
         uKN21Z+AX8LidwNAiNn2JtW1Jc4SknqGuXzByv6n4rMEPRLokXt08igRvysMlMV96Sa/
         dXQ/hgdfeeJQEbI2k49NNIjKG3azgRQDSmpDo3oVnky+WtIGFSb6iOVhUutbZ8gTlDhd
         lE7Q==
X-Gm-Message-State: APjAAAUiJ1NmN8moilTh4CTvlTQu9SpVU7gd3xvm2saBQW8XHsMt3g0t
        dU+ArEnkrnNNYxxAMRGNvl2vits=
X-Google-Smtp-Source: APXvYqzJLf4ha9VMs8gUwksdHQoOLiYqJXljySLI5noCnRg3vlHKhEjuUKcqoyYlRmCl/CuSuO5PMQ==
X-Received: by 2002:a05:6808:53:: with SMTP id v19mr7638184oic.18.1579709814275;
        Wed, 22 Jan 2020 08:16:54 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 69sm14826246oth.17.2020.01.22.08.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2020 08:16:53 -0800 (PST)
Received: (nullmailer pid 29608 invoked by uid 1000);
        Wed, 22 Jan 2020 16:16:53 -0000
Date:   Wed, 22 Jan 2020 10:16:53 -0600
From:   Rob Herring <robh@kernel.org>
To:     Charles-Antoine Couret <charles-antoine.couret@essensium.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] ASoC: tas5756m: Add DT binding document
Message-ID: <20200122161653.GA28469@bogus>
References: <20200118092315.10384-1-charles-antoine.couret@essensium.com>
 <20200118092315.10384-2-charles-antoine.couret@essensium.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200118092315.10384-2-charles-antoine.couret@essensium.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 18, 2020 at 10:23:15AM +0100, Charles-Antoine Couret wrote:
> Document the bindings for the tas5756m driver.

Also, checkpatch.pl reports your S-o-b is missing.

> ---
>  .../devicetree/bindings/sound/tas5756m.txt    | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/tas5756m.txt
> 
> diff --git a/Documentation/devicetree/bindings/sound/tas5756m.txt b/Documentation/devicetree/bindings/sound/tas5756m.txt
> new file mode 100644
> index 000000000000..293eaf20d008
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/tas5756m.txt
> @@ -0,0 +1,25 @@
> +TAS5756M audio CODEC
> +
> +Required properties:
> +
> +  - compatible: should be one of the following:
> +    - "ti,tas5756m"
> +    - "ti,tas5754m"
> +  - reg: the I2C address of the device for I2C.
> +
> +Optional properties:
> +
> +  - mute-gpio : GPIO wired to the mute pin.
> +  - hybridflow : an integer between 1 and 9 to select the HybridFlow program.
> +      if not supplied default DSP program is used.
> +
> +Example:
> +
> +	tas5756m: tas5756m@4c {
> +		compatible = "ti,tas5756m";
> +		reg = <0x4c>;
> +		#sound-dai-cells = <0>;
> +
> +		hybridflow = <6>;
> +		mute-gpio = <&gpio1 11 GPIO_ACTIVE_LOW>;
> +	};
> -- 
> 2.24.1
> 
