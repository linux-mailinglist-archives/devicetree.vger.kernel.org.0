Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EDC107A3EC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 11:23:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730794AbfG3JX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 05:23:29 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:55001 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730614AbfG3JX3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 05:23:29 -0400
Received: by mail-wm1-f65.google.com with SMTP id p74so56391761wme.4
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 02:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=SRl6Oym7H9Un804DCDBW+OKthVL0/MehEFhPNzj7nQc=;
        b=RZP0LTltur2tXVfnLlFb3sxCk4RIrpNkY+ZMOizbAnwJOUwlbFM/ASG3OS64BMKFlO
         rX0NxhNBeUb03KCveiw7BsLtp7Y5Q7jlLF+MJPrc6wR6JeKiwfzfb3SH3DOhhHYcyd63
         CTNAKEQT3ega2bFKh9K5nEEBWiTdNbL2J4G3DgRi2DZ3Q2kUHD44S711hDAOTR6BMHzC
         VhCecUseI3CqDx7A8MhYCNskaXsOa5VkgHUca4KF/cVY1QjjKzm9gJZRdCIZ5fnmsVRN
         3qkpS/ZLgVaeJBlt/fpHL95b7iFIUqFpSkdTFMjxEJ4MUjCuhOJWM5AwygJhv+sUI8Pe
         0t+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=SRl6Oym7H9Un804DCDBW+OKthVL0/MehEFhPNzj7nQc=;
        b=FOzU17qLDF4SvjZJ5Pv/ukMBA9kVhZ7YBMlTIahS6+RxDu+lzD7SxstT2mCEp9qY2y
         n4Gz83VY066tmc8i0/dvKAawtHmayck98dn3bogLpw8MwTyIpI8gMCrTLC4rHNmGVANY
         JezOUsxK7QOwwNmfCXATnDUIRsOXj8vr9/6ahdImNhzsKInGQmw299FVIxhwMrIhlZQJ
         1x5esDXcPgsmwXqkBJGSTNH0v6pdGaFTHb23qXx/inc1Stg8A3wRMAup0nOBEEhrohgG
         d47pYXhdPuxHpY0g1uksiblLFxbkPF7Nv94F5De7W5RMjv7U4vCYR3LUGmOTwX7lw1rM
         +T+g==
X-Gm-Message-State: APjAAAXy3o+jvNdHGziRfgyx6ci6zncXsPuYPRk9Jj6iuiJJkv4VzMvN
        c0pPI2uwVxfQE74Ruph4cXRiSw==
X-Google-Smtp-Source: APXvYqw4xbTN7s8DUis/v85pKNebf3+z6Rt6gyVLssbXbjErbl2YdUrChQDcR+Zgdb5oN25HQGa8Jw==
X-Received: by 2002:a1c:e90d:: with SMTP id q13mr103347180wmc.89.1564478607335;
        Tue, 30 Jul 2019 02:23:27 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
        by smtp.gmail.com with ESMTPSA id g10sm48071944wrw.60.2019.07.30.02.23.26
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 30 Jul 2019 02:23:26 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Carlo Caione <ccaione@baylibre.com>,
        srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH 5/5] arm64: dts: meson: Link nvmem and secure-monitor nodes
In-Reply-To: <20190729183941.18164-6-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com> <20190729183941.18164-6-ccaione@baylibre.com>
Date:   Tue, 30 Jul 2019 11:23:25 +0200
Message-ID: <1jpnlr27w2.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:

> The former is going to use the latter to retrieve the efuses data.

Actually, if you really want to not break bisect, this change must be
merged before the driver change (patch 4).

I'm a bit surpised to see only the axg and g12a here ?
Doesn't it apply to gxbb/gxl as well ?

>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-axg.dtsi  | 1 +
>  arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> index 6219337033a0..b8244efb85fa 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> @@ -117,6 +117,7 @@
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  		read-only;
> +		secure-monitor = <&sm>;
>  	};
>  
>  	psci {
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
> index f8d43e3dcf20..2b07752e034f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
> @@ -100,6 +100,7 @@
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  		read-only;
> +		secure-monitor = <&sm>;
>  	};
>  
>  	psci {
> -- 
> 2.20.1
