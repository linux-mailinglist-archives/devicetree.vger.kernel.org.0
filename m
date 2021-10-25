Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74A8343910D
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 10:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230189AbhJYIWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 04:22:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbhJYIWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 04:22:38 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27C20C061745
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 01:20:16 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id d10so7197624wrb.1
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 01:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DpzfhI/j3zqaTQcOhewRwr4Gp6d4cS64SYZM6pOH8CE=;
        b=ONjYluoLo8bgvprrfkaaljtGInB2/3TGrQIjiORR0Ta9e0T0iNGwVMEEmz5MrMqQMV
         nELP5s+TKRU5/fmCEnaz9QGH51aOzQ6KOQ2t4J+1mQTjXFNzKXzYGSogrzZN8DPjGuln
         0IIKxQjbnFer+7R4Jd8VLAB7MGdkPVQOKyTyNSpfHNW2TLRtdcqWjL2DqXM13+mYlMQ3
         J371uWhQ2pfVS5TDSc/KT12H+wpB72aEvFD6MBWarIijGcEWQ2lSauwPmc4pXUaFBhEb
         dLD5CC+YrmHysW1VdnXKgJb46XU0f5zY5gU4tX8UH+Ym6l42iTffA/mohVK8/pigbrEM
         DV8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=DpzfhI/j3zqaTQcOhewRwr4Gp6d4cS64SYZM6pOH8CE=;
        b=bZQSYbnAtyOeGujC+nD8dcBrz3MvMsFutNdN7L6818cQT/efPCkFcvWxv13cb3nc4/
         cNPsZqK7XeiR3zrAdefGQ8rPaCeC8BzPP5L23JxTxGkJkHvl+xKJuoHBU6U9w6LueZDd
         ws6aLiHirjIyoNXjI4GdAde3Ud8bPM6583RR3tTosyyPNWnr4+4p8aLIeJS+wbCxIHuL
         jo3/8PKS+aYgR5dVFh9GurV0pdZiUzyAS0g8BS5PghUIEs7WY/TqD6MwFgZzGhsfnNxA
         Nv4E1IunZnzMrVU6VCtoRFPpbnk/roG/O+zfFlbz0zmVdWhQRnuQlmYrYIDHqnpHsrUG
         3IgA==
X-Gm-Message-State: AOAM531IHCw7shYNjcxUf0zkfTfHG45+VXTmJ+HDdwyGW5B8q4Q3H2cH
        9MNKbJ6OXnMGn8FLHZg79lfaKw==
X-Google-Smtp-Source: ABdhPJy6ftEbBTrigJ+pyDmAGsisen0l6yyYf/oHEiFpvHOcv3+KBPYN1jfEvPPMUkyeRE8ilsxuOw==
X-Received: by 2002:adf:bd8a:: with SMTP id l10mr21692841wrh.159.1635150014595;
        Mon, 25 Oct 2021 01:20:14 -0700 (PDT)
Received: from [172.20.10.7] ([37.166.214.228])
        by smtp.gmail.com with ESMTPSA id o40sm9906207wms.10.2021.10.25.01.20.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 01:20:14 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64: dts: amlogic: Fix SPI NOR flash node name for
 ODROID N2/N2+
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20211023214856.30097-1-alexander.stein@mailbox.org>
 <20211023214856.30097-4-alexander.stein@mailbox.org>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <3937f51e-6750-1462-efe5-f5bdbfee8a4d@baylibre.com>
Date:   Mon, 25 Oct 2021 10:20:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211023214856.30097-4-alexander.stein@mailbox.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/10/2021 23:48, Alexander Stein wrote:
> Fix the schema warning: "spi-flash@0: $nodename:0: 'spi-flash@0' does
>  not match '^flash(@.*)?$'" from jedec,spi-nor.yaml
> 
> Fixes: a084eaf3096c ("arm64: dts: meson-g12b-odroid-n2: add SPIFC controller node")
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 6e9ff5076b38..9c05c83453f5 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -611,7 +611,7 @@ &spifc {
>  	pinctrl-0 = <&nor_pins>;
>  	pinctrl-names = "default";
>  
> -	mx25u64: spi-flash@0 {
> +	mx25u64: flash@0 {
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  		compatible = "mxicy,mx25u6435f", "jedec,spi-nor";
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
