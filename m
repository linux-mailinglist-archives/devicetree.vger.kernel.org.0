Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 279CC34EC39
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 17:24:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232362AbhC3PYP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 11:24:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232390AbhC3PYB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 11:24:01 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91CD8C061762
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 08:24:00 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so10545253wml.2
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 08:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NNUxPqkNr1lmvxqyx0hs3F7FCLgkigSCCO4LVWgev/Q=;
        b=Y7Uf5Fqg9/E30OhPZdjsxlEKO6CN4AgTZGfDF2oSiEb7ByYXyLsVE86CWSji0tgdDH
         gYBhPv8DtqlHgpext9peWvQn+7EBcgpn4CQ7zUm81c6letBVNOlY6wkuBkRLcGwDYNcG
         ibiC/d3uF0p9mT6LONuK+MaPp2o02mta2aKDDEjfyvzbe9JpRcI6G3J3uobEP0SEaIsy
         EDXs1goiATvQnaYwAeRqe2uBqxSGlNIK+tB/GE1ywn9KQCW1vsbhC1kZBgTZL7IHN7tV
         r+WEze5O2YQ/rXrpyhIi8Te0cqrYrnIepWEsj0ziQ9yAYeKFDSippsbJ/0NiYeAQaEfT
         I8CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=NNUxPqkNr1lmvxqyx0hs3F7FCLgkigSCCO4LVWgev/Q=;
        b=VDmWU+Z3xJA+g/tRWEZMOGB6vVBy4+JYjJwT+XAm4TL1MVDWCu1SczRv7T10/Qxk9s
         74gkRw0DCl7AxY5ll+Ftl6lVsLxYFihGgjC/2NYsie5c4xPek+y+vKf9sAxkQ2gUTbOI
         XGCh3cqymIxm2xDGZO3wUlpqiCytxhnRl11Etxl8c2SwkD3+5eCGsjvlC0bTOIWl0AWF
         JAWCZjTjbbbcBW6BQ8y2XjNg//DeJXJTM22K8m+tJMDHzxRepMCemGTvsHrYqPDavU5c
         fJFE9LBpHXC6AYyaYJr38yOqNjloBQ7jZ1yvbPz70i2DsYfYBXGuaINhFCZfUbgzmF4q
         2P1w==
X-Gm-Message-State: AOAM532sB8SdyR7Qp1U6VXeuPvBW57qwYhmqIBJxYxq+5/RXB1xUxSEj
        d4LJgAp2EdMKbS19QrxGvMHenA==
X-Google-Smtp-Source: ABdhPJyijPfFnAIu2qD1IBDT+fbzIySc6SKDY4no3zWzEiXjmsQVOKwN/jMPzugjHbOFRlWYWEnThA==
X-Received: by 2002:a05:600c:210a:: with SMTP id u10mr4656647wml.147.1617117839225;
        Tue, 30 Mar 2021 08:23:59 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:90c:e290:2d11:7929:c1dd:292? ([2a01:e0a:90c:e290:2d11:7929:c1dd:292])
        by smtp.gmail.com with ESMTPSA id o8sm4151578wmr.28.2021.03.30.08.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 08:23:58 -0700 (PDT)
Subject: Re: [PATCH 3/3] arm64: dts: meson: add GPIO line names to ODROID
 N2/N2+
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Hyeonki Hong <hhk7734@gmail.com>
References: <20210329161256.31171-1-christianshewitt@gmail.com>
 <20210329161256.31171-4-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <9ebc18d0-247d-ff54-5045-8df382620181@baylibre.com>
Date:   Tue, 30 Mar 2021 17:23:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210329161256.31171-4-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2021 18:12, Christian Hewitt wrote:
> From: Hyeonki Hong <hhk7734@gmail.com>
> 
> Add GPIO line-name identifiers to the ODROID N2/N2+ common dtsi.
> 
> Signed-off-by: Hyeonki Hong <hhk7734@gmail.com>
> ---
>  .../dts/amlogic/meson-g12b-odroid-n2.dtsi     | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 139c12cf9f66..4489715fc4f3 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -446,6 +446,51 @@
>  };
>  
>  &gpio {
> +	gpio-line-names =
> +		/* GPIOZ */
> +		"", "", "", "", "", "", "", "",
> +		"", "", "", "", "", "", "", "",
> +		/* GPIOH */
> +		"", "", "", "", "", "", "", "",
> +		"",
> +		/* BOOT */
> +		"", "", "", "", "", "", "", "",
> +		"", "", "", "", "", "", "", "",
> +		/* GPIOC */
> +		"", "", "", "", "", "", "", "",
> +		/* GPIOA */
> +		"PIN_44", /* GPIOA_0 */
> +		"PIN_46", /* GPIOA_1 */
> +		"PIN_45", /* GPIOA_2 */
> +		"PIN_47", /* GPIOA_3 */
> +		"PIN_26", /* GPIOA_4 */
> +		"", "", "", "", "", "",
> +		"PIN_42", /* GPIOA_11 */
> +		"PIN_32", /* GPIOA_12 */
> +		"PIN_7",  /* GPIOA_13 */
> +		"PIN_27", /* GPIOA_14 */
> +		"PIN_28", /* GPIOA_15 */
> +		/* GPIOX */
> +		"PIN_16", /* GPIOX_0 */
> +		"PIN_18", /* GPIOX_1 */
> +		"PIN_22", /* GPIOX_2 */
> +		"PIN_11", /* GPIOX_3 */
> +		"PIN_13", /* GPIOX_4 */
> +		"PIN_33", /* GPIOX_5 */
> +		"PIN_35", /* GPIOX_6 */
> +		"PIN_15", /* GPIOX_7 */
> +		"PIN_19", /* GPIOX_8 */
> +		"PIN_21", /* GPIOX_9 */
> +		"PIN_24", /* GPIOX_10 */
> +		"PIN_23", /* GPIOX_11 */
> +		"PIN_8",  /* GPIOX_12 */
> +		"PIN_10", /* GPIOX_13 */
> +		"PIN_29", /* GPIOX_14 */
> +		"PIN_31", /* GPIOX_15 */
> +		"PIN_12", /* GPIOX_16 */
> +		"PIN_3",  /* GPIOX_17 */
> +		"PIN_5",  /* GPIOX_18 */
> +		"PIN_36"; /* GPIOX_19 */
>  	/*
>  	 * WARNING: The USB Hub on the Odroid-N2 needs a reset signal
>  	 * to be turned high in order to be detected by the USB Controller
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
