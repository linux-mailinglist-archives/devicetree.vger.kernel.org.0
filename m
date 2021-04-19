Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B3A43649EA
	for <lists+devicetree@lfdr.de>; Mon, 19 Apr 2021 20:38:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231493AbhDSSid (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Apr 2021 14:38:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232800AbhDSSic (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Apr 2021 14:38:32 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88FD2C06174A
        for <devicetree@vger.kernel.org>; Mon, 19 Apr 2021 11:38:02 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id j12so16915949edy.3
        for <devicetree@vger.kernel.org>; Mon, 19 Apr 2021 11:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Jrs+XBm6ggvtJYv1/c5X0qFwYhKg9w9qG3XK2lChT6Q=;
        b=b0NwK4xLCTp2I4QI7ahsuHGRcGm/SVXCLrAbkmSB6F84muMtpFMtGDl6ttK8FagNsR
         Ipy5GlyFjEo0z44+b372t2vEQC8/tYBMpbuGg7pAEA9ESCdqThDH5bm8EbeD12YHq1Aa
         8Fw8X5ZtSx9r6rS9epPF4QlnfKp5qiSNUJJt+BkQiRVmCr6J2+SEVid/THQslkL8zQwD
         Mgr+c8uXTIXZAJXWlekOw22OSXuwY2AmXiyyerd20Uo+YF5x75JDP3sPNVsWXCjlc0a6
         4PK8OyIOEa5X7vD0nk9Vn3xwWlEiyVT59TpU/u/FS8OKkJEQWhCMmuejzLOP/AsOo+Cm
         2bHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Jrs+XBm6ggvtJYv1/c5X0qFwYhKg9w9qG3XK2lChT6Q=;
        b=Re1DaisBpOrm5j1hsoIkCQqZGw33ZVSVHrusro7vDFnYd66Hhyiz8RH9mzopBFr8na
         7tu+8gjwjmqtQ/iQKPZt5VaFhOOxhSmWLy24nlE5KIgvFPqcJCwZN85BGbxPlyrCgZKE
         0XWvMWjD+3p+A5n85+C09VTvMaK982RcR9ky7jvf1olSuCt0D5oQCTqgnOW/P+T0PV5d
         kxuPaDmMF97KFI47i+TOkt9tSg0LKvUrVoU3BFP7AkxUDY7MgFdMK7yCa6J743bC1snQ
         l5kjrx6kVRXFUiqpTt5pGGo6AEawaKBE+cv8x996A1dsqJm0uk57+GCS55IaDfRU9MRp
         bV7w==
X-Gm-Message-State: AOAM531qZFtMs+l4h44RxQ2F63ObaInoKvRiJmW32UDcZYE01diI75bm
        7iJfVb9U4I9rv8UA46bmjyo=
X-Google-Smtp-Source: ABdhPJxegTgbTkCeYJYJ5bYMyVBkLvV3cvuTH8TQ2bDbAkBKMQEDJfOeiLYdm/o2SyuqCssTvOmXWQ==
X-Received: by 2002:aa7:da15:: with SMTP id r21mr26937828eds.253.1618857480677;
        Mon, 19 Apr 2021 11:38:00 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id bw26sm8704212ejb.119.2021.04.19.11.37.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 11:38:00 -0700 (PDT)
Subject: Re: [v6 3/3] dt-bindings: Add Rockchip rk817 audio CODEC support
To:     Chris Morgan <macromorgan@hotmail.com>, alsa-devel@alsa-project.org
Cc:     pierre-louis.bossart@linux.intel.com, heiko@sntech.de,
        devicetree@vger.kernel.org, tiwai@suse.com, robh+dt@kernel.org,
        lgirdwood@gmail.com, linux-rockchip@lists.infradead.org,
        broonie@kernel.org, lee.jones@linaro.org
References: <20210419155718.17348-1-macromorgan@hotmail.com>
 <SN6PR06MB53420A0E831C17342A73188BA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
From:   Johan Jonker <jbx6244@gmail.com>
Message-ID: <5cad7e70-89ca-6e4c-47cc-1248250108c7@gmail.com>
Date:   Mon, 19 Apr 2021 20:37:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <SN6PR06MB53420A0E831C17342A73188BA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chris,

Never use hotmail.com for sending patches.
They corrupt Message-ID, so use for example Gmail.

X-Microsoft-Original-Message-ID:
 <20210419155718.17348-3-macromorgan@hotmail.com>

Message-ID:
<SN6PR06MB53420A0E831C17342A73188BA5499@SN6PR06MB5342.namprd06.prod.outlook.com>

====

If you like rk817.txt should be converted to YAML, which is beyond your
serie, so move these changes to rk817.txt instead for now if rob+dt
agrees. ;)

====

Include the dts patch back in, so we can compare it with the
documentation changes.

On 4/19/21 5:57 PM, Chris Morgan wrote:
> Create dt-binding documentation to document rk817 codec.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
> Changes in v6:
>  - Included additional project maintainers for correct subsystems.
>  - Removed unneeded compatible from DT documentation.
>  - Removed binding update for Odroid Go Advance (will do in seperate series).
> Changes in v5:
>  - Move register definitions from rk817_codec.h to main rk808.h register
>    definitions.
>  - Add volatile register for codec bits.
>  - Add default values for codec bits.
>  - Removed of_compatible from mtd driver (not necessary).
>  - Switched to using parent regmap instead of private regmap for codec.
> Changes in v4:
>  - Created set_pll() call.
>  - Created user visible gain control in mic.
>  - Check for return value of clk_prepare_enable().
>  - Removed duplicate clk_prepare_enable().
>  - Split DT documentation to separate commit.
> Changes in v3:
>  - Use DAPM macros to set audio path.
>  - Updated devicetree binding (as every rk817 has this codec chip).
>  - Changed documentation to yaml format.
>  - Split MFD changes to separate commit.
> Changes in v2:
>  - Fixed audio path registers to solve some bugs.
> 
>  .../bindings/sound/rockchip,rk817-codec.yaml  | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml
> new file mode 100644
> index 000000000000..0059ef54d6b5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/rockchip-rk817.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip rk817 audio codec
> +
> +description:
> +  The rk817 codec is an I2C codec integrated with every Rockchip
> +  rk817 PMIC MFD.

If you want to convert rk817.txt to rockchip,rk817.yaml then add

maintainers:
  - Heiko Stuebner <heiko@sntech.de>

> +
> +properties:
> +

> +  "#sound-dai-cells":
> +    const: 1

Move things with "#" below as much as possible.

> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: "mclk"
> +

> +  mic-in-differential:
> +    description: the microphone is in differential mode.
> +    $ref: /schemas/types.yaml#/definitions/flag

This is part of a sub node now.

> +
> +required:

> +  - compatible

Add compatible "rockchip,rk817" to properties

> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +rk817: pmic@20 {

> +	compatible = "rockchip,rk817";

Without rockchip,rk817.yaml this example will generate notifications.

> +	reg = <0x20>;
> +	interrupt-parent = <&gpio0>;

> +	interrupts = <7 IRQ_TYPE_LEVEL_LOW>;

add include for IRQ_TYPE_LEVEL_LOW

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pmic_int>, <&i2s_8ch_mclk>;

> +	#sound-dai-cells = <0>;

Move things with "#" down below the list in possible.

> +	clocks = <&cru SCLK_I2S_8CH_OUT>;

add include for SCLK_I2S_8CH_OUT

> +	clock-names = "mclk";

----
Heiko's sort rules:

compatible
reg
interrupts
[alphabetical]
status [if needed]

----


> +

> +	........

remove

> +

> +	rk817_codec: codec {


Move to rk817.txt example.

> +			mic-in-differential;

> +			status = "okay";

Never use status in examples.

> +	};
> +

> +	........

remove

> +
> +};
> 

