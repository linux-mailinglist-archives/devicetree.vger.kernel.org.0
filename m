Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E03E450149
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 10:25:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237576AbhKOJ2n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 04:28:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237699AbhKOJ2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 04:28:09 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23D20C061206
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:25:00 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id w29so29211295wra.12
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 01:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iOTvirEH5cWSGGyEM/qyXakAhUbFgxeoREUjQ8w+UuA=;
        b=wVqrmsD6t948l6IGEEtAO02uAqL81mLJSJhjRpjSK7XHnfgo9ifDxBIDsGXbzCkuap
         OJn9BkiCwkbB/w3nIZkFvLn+rbw52o3qpSRjnoqA5VqrHAwl+SQufGrEfbeZqO81J8p5
         TMnO5fyKKvwdknkJTfjDuh9XOE5v76mtoJr8QbTNVYIvz6A4LljnCYfnVxcu7MsLaot3
         onHJE0O5VrwDmV00M0X151qC5AOyTj2XDOXGmnHoNOF1HbUKmwXIkeGI330LX6RbwXzA
         rS52IPTd/vfuQu1+A6UmEItrjD9FlCSmOCDUAsA+ZcLKxRNB7s9QSkiPk9pNSXA3l9+9
         ScYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=iOTvirEH5cWSGGyEM/qyXakAhUbFgxeoREUjQ8w+UuA=;
        b=E3H7aA6HNRUAUiSg3UOiILPVGwKtR+/P0yo5+OO2cT6wibgK+Lfux5NS4+PNKsUsSl
         2N/eGG6Ehkdqtuk2Ku+NkdkIE3YYRlBR2Pf5sQSnXyjctQgCa2JmWDWzcTKq7oXBtOYG
         7MLBqWfQyhySrSeHEnkrO0rrP0fb4CVLCCtYpTkow92Weyv2IFPg2r440mdhbPqR5jTQ
         RRwZzG0T7Ypmkla3D/e3CaPyg61lSzqeellxWhsUNU9Y+86i7MnAaeWKIzYldqn1ZxIP
         LAE/AAc96F8BS3oaT0tt9yQReKpkVN6v1y/1mU8Fsa1qBxpI0ztxnb/LmioaUzZCBgTS
         +NxA==
X-Gm-Message-State: AOAM531EjEZNtOjUDcHPArAn+PcKpwiAt7saKX9Wnlxl69MmxOhPSLhs
        9UMRAJkvHWVsPxvqrUNCDH0mpw==
X-Google-Smtp-Source: ABdhPJzoV9mrpXPO3RmdyVIOrtl3aGecz13V5aMKjHCuh6HjkJjuGmkcOUFfyDiIVg1QVOsiKVwMOg==
X-Received: by 2002:a5d:6d84:: with SMTP id l4mr46501820wrs.266.1636968298616;
        Mon, 15 Nov 2021 01:24:58 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:f56f:2409:301:93ad? ([2001:861:44c0:66c0:f56f:2409:301:93ad])
        by smtp.gmail.com with ESMTPSA id z5sm24768710wmp.26.2021.11.15.01.24.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Nov 2021 01:24:58 -0800 (PST)
Subject: Re: [PATCH 2/3] arm64: dts: meson-gxbb-wetek: fix missing GPIO
 binding
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20211012052522.30873-1-christianshewitt@gmail.com>
 <20211012052522.30873-3-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <850f8f23-e5c2-5b60-d696-5036efe7b644@baylibre.com>
Date:   Mon, 15 Nov 2021 10:24:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211012052522.30873-3-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/2021 07:25, Christian Hewitt wrote:
> The absence of this binding appears to be harmless in Linux but it breaks
> Ethernet support in mainline u-boot. So add the binding (which is present
> in all other u-boot supported GXBB device-trees).
> 
> Fixes: fb72c03e0e32 ("ARM64: dts: meson-gxbb-wetek: add a wetek specific dtsi to cleanup hub and play2")
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
> index 8e2af986ceba..a4d34398da35 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek.dtsi
> @@ -6,6 +6,7 @@
>   */
>  
>  #include "meson-gxbb.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
>  
>  / {
>  	aliases {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
