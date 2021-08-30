Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C9533FB1FF
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 09:38:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233820AbhH3HjZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 03:39:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230285AbhH3HjY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Aug 2021 03:39:24 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1351C061575
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 00:38:30 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id t15so14828446wrg.7
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 00:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IIuK5AN6rOwHRqOQzWHnDlaxFuAjSCvnIBuo4tIPMrU=;
        b=jhRqDVp3+k5FEhVJRrRo+oAR/cou8qtONW4IOSXc6judwU9QvNR5axI8vubenCFBTU
         ZzEK92yT/QWIOuhLZ1gFgdgwjYS4Y7hRQzmt1KkXhgc1UbxxS9eoCKy+v61gpd4Gc2De
         u2HHNy9hAQrPvcqag6kotRyM53TJYLnd34TfPyzw5yoKZY9gPSWsK112u4QsLZKm/ToT
         ayImL8el8JLkmT+mdqJ/KEXy9E1iy1QmVAZradJm4jp3Cur/a2JqCxhu3huJmEsMM+xj
         2XMswL7KrhHmCFm4ctXLFaNFVubXOvF8LZoSkX3GoUrFe2H/Sw/Lis7zsYhfbLPsLLwI
         Wm1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=IIuK5AN6rOwHRqOQzWHnDlaxFuAjSCvnIBuo4tIPMrU=;
        b=Sv6IHIkPa/ioQFjpNKClI5PgvGatcuG9lZa6a3GXMAbn6oHID4oKT8PWBc/XQ1WHv/
         7FQXI2rpkNHREGp7eJ8Yjc5ft0GjiAvICsXltXF05x1sJL4XK9PxqvhhkNqUDtUzxj4N
         YPhEV4oif8ofRRmPsQo1GgbxQCq+7JoOUSu5iKMVwPDslHPGITMy622lLWwjItPqjZsE
         MEA1EqQ1N037ci3n6j5bOrVfMxf745skJZLfYob0jdm7WgMEzJRF+9XInc0qEeL782+x
         t0pMqDrD9GBVOdNISvh+YohLJ5xQIzEWrPRhCS/Ng3UJiN0Y8kgPzKoTKyACLWMqImwR
         zH/g==
X-Gm-Message-State: AOAM532Ig/ScwoIXEqr5wnJ5TkfFRLQaQ98HnmHa5j31BOSAlXOp69mY
        tSJm953+m/JmFOnWyhEdozJniA==
X-Google-Smtp-Source: ABdhPJxBPl8zzAjs0+dT++iiMSPD5GqlY4dKaWCEO3TCnsNKykPaH2AOIyinee4ViDNYdQ7yiWIh8w==
X-Received: by 2002:adf:9d4c:: with SMTP id o12mr9756319wre.187.1630309109214;
        Mon, 30 Aug 2021 00:38:29 -0700 (PDT)
Received: from ?IPv6:2001:861:44c0:66c0:2ecd:4eac:486d:7a1? ([2001:861:44c0:66c0:2ecd:4eac:486d:7a1])
        by smtp.gmail.com with ESMTPSA id k16sm14929504wrx.87.2021.08.30.00.38.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 00:38:28 -0700 (PDT)
Subject: Re: [PATCH] soc: amlogic: meson-gx-socinfo: Add S905Y2 ID for Radxa
 Zero
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210820012718.10761-1-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <2fa65900-ece6-fa13-4bfb-dcc95c56e6ef@baylibre.com>
Date:   Mon, 30 Aug 2021 09:38:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210820012718.10761-1-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2021 03:27, Christian Hewitt wrote:
> Add the SOC ID for the S905Y2 used in the Radxa Zero. Before/After:
> 
> [    0.321650] soc soc0: Amlogic Meson G12A (Unknown) Revision 28:b (30:2) Detected
> [    0.318533] soc soc0: Amlogic Meson G12A (S905Y2) Revision 28:b (30:2) Detected
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  drivers/soc/amlogic/meson-gx-socinfo.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
> index 6f54bd832c8b..165f7548401b 100644
> --- a/drivers/soc/amlogic/meson-gx-socinfo.c
> +++ b/drivers/soc/amlogic/meson-gx-socinfo.c
> @@ -65,6 +65,7 @@ static const struct meson_gx_package_id {
>  	{ "A113X", 0x25, 0x37, 0xff },
>  	{ "A113D", 0x25, 0x22, 0xff },
>  	{ "S905D2", 0x28, 0x10, 0xf0 },
> +	{ "S905Y2", 0x28, 0x30, 0xf0 },
>  	{ "S905X2", 0x28, 0x40, 0xf0 },
>  	{ "A311D", 0x29, 0x10, 0xf0 },
>  	{ "S922X", 0x29, 0x40, 0xf0 },
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
