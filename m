Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E1B549DFA6
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 11:46:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233409AbiA0KqM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 05:46:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiA0KqM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 05:46:12 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3203C061714
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 02:46:11 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id o1-20020a1c4d01000000b0034d95625e1fso5580197wmh.4
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 02:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NkxIb+P+5+H76bh6f83+7pLlqmMSsgvAiVmWl5dkrqY=;
        b=SpMp+sRuCSmEpu3Ipx2TZyuKCfwRyDnM/JK0kN2/kolIcyDpWYisP4jcbMe3oTJ34x
         OMXSgxwl59uvQ3b7OZEuEyRoCLuzXgSocMh90+5l0n5qYXWoVyHmCEoGJ8f0PO+/lxiQ
         io7Bh4UdHajE07PIICHF6qzncOBVQkLtU3F/8ktxIQMcS6fFRNJKiOjjcllp4i/6a8RX
         WNK6m5kFgD54MFHenOjsN8D9NdNA+sumDh5KPA0nbZuH966z2PXseDdu+5d3Bx8rPD2w
         irZA1W9TSnO7N2z0TXS7jQV9RgLTK6HG/qfAFqOwzL+78w4ZLbP3twGCgJqgqqaIL4h5
         x3nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=NkxIb+P+5+H76bh6f83+7pLlqmMSsgvAiVmWl5dkrqY=;
        b=ib5ggZzZIvwu/0H0AsHq/d52bo3UDpR9okwJvhnjWnCfrgTNWLMj1C7MCgVNeujWQp
         /PWHPL+PbxAam9NhyiHSqTMhU5d6Rh1CGLJnFFubThIGACbEp+eZNoBxluk9MGRv4zIY
         IVAb6K5zbQfs1FomHg30TQQsoYuhwuNb0XI6LCkjwVPRDillVyaT5qL4vM9rFC+zPc55
         fno9/uh7VzsnjH3KTFUula6K5MpNQgBS4xc0oCqNrdxoevjBChHFEuBQbN8hf8uCljSc
         8ocJvQbfYcZzr6M2PkacyIisqBTZ2e+v4nscVtompestzJrVRBbWgneSJtnzsuBSi/nG
         Ycfw==
X-Gm-Message-State: AOAM530bfKO4hBuqR0+vD7Rrwbmltxrc3paXl9dPfOT+CJi7zLluyDK5
        qFTsiGLScujPEj6sZg5RbSiopQ==
X-Google-Smtp-Source: ABdhPJzo3DHV622CAx9cYAdqcbvj9NzeXAZjWl1L9efjh/UkXJP6ZQ+49u/zGuYitMDsi0zubeKw4Q==
X-Received: by 2002:a05:600c:4e0d:: with SMTP id b13mr11204582wmq.99.1643280370135;
        Thu, 27 Jan 2022 02:46:10 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:bd6:ac2b:1e48:f2ff? ([2001:861:44c0:66c0:bd6:ac2b:1e48:f2ff])
        by smtp.gmail.com with ESMTPSA id o27sm5651453wms.4.2022.01.27.02.46.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jan 2022 02:46:09 -0800 (PST)
Subject: Re: [PATCH 1/3] arm64: dts: meson-gx: add ATF BL32 reserved-memory
 region
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220126044954.19069-1-christianshewitt@gmail.com>
 <20220126044954.19069-2-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <517ef196-e622-7ed5-c3be-55ac3f054b74@baylibre.com>
Date:   Thu, 27 Jan 2022 11:46:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220126044954.19069-2-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/01/2022 05:49, Christian Hewitt wrote:
> Add an additional reserved memory region for the BL32 trusted firmware
> present in many devices that boot from Amlogic vendor u-boot.
> 
> Suggested-by: Mateusz Krzak <kszaquitto@gmail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> index 6b457b2c30a4..aa14ea017a61 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
> @@ -49,6 +49,12 @@
>  			no-map;
>  		};
>  
> +		/* 32 MiB reserved for ARM Trusted Firmware (BL32) */
> +		secmon_reserved_bl32: secmon@5300000 {
> +			reg = <0x0 0x05300000 0x0 0x2000000>;
> +			no-map;
> +		};
> +
>  		linux,cma {
>  			compatible = "shared-dma-pool";
>  			reusable;
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
