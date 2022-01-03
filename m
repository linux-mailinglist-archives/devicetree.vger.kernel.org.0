Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52E34483092
	for <lists+devicetree@lfdr.de>; Mon,  3 Jan 2022 12:33:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231716AbiACLdE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jan 2022 06:33:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230417AbiACLdD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jan 2022 06:33:03 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 342BDC061761
        for <devicetree@vger.kernel.org>; Mon,  3 Jan 2022 03:33:02 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id v10-20020a05600c214a00b00345e59928eeso14413076wml.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jan 2022 03:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N0OzaQNNJIq+kyud4Uc895pmB53bHPkNVDy1dZpq2BY=;
        b=S5YV6oLGkx9HLLn70EWetLIwKIpMhDDka9K6iTjBuiDp8tiI06mPD4nLh1AV6Cksig
         CyMwr/DzsD22E8GBRkQV9ACd9bjHjW0A+i2EHupKlg0C67AO+Bhhh+H7Ggq+qAeBKrOz
         Bz0lqvAaylJ2VItFZhZhiZUlpmNWXf5DePp89VDsNGOSYIELJLFDWx91LPCDOQZHeyVh
         1oqWxUB6gj009b8u4h49jD9C4+zGrnhK1uIQw0N7GoWElVhIH1XIK7m/6Vf5cKcpW0O+
         zT1+1zMDjfT2lNb/oks7qViaeU+gSNPdc44J/SEjm2Sxz3uku+bZMXtsLbN1jBI1k4sq
         dBAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=N0OzaQNNJIq+kyud4Uc895pmB53bHPkNVDy1dZpq2BY=;
        b=zHyps/4dRh5HP5W6s9ErA33Ny6l/VmZUHk5Ah3K7CGdvrHXjLHxf8S7nDO3/OMaL+K
         xFt3NCHagBy/kd9MR7W+l5n80dIXRHen+/ZzSaHlCWr35MXCX61HAfNtnO8R4lPUzTpm
         d3Pl4VhwlYwFJTsZ3PBVTHd2H0dsl0EVpTARkJ9WMG9xTVcufc0tqIghEweiPf+xPqbn
         Z+yzTGaUFD3ZZKR6uR+bdZfQsexGEwvFrTRguBQJMGk/YqOaN23ZwbMernFsRVTcuCKP
         S2x1jQWNShgeZqNER3SyFrft1xdq6X13dnJwJBsCqDT7ArgTZ0bxNAa/P4gD/xgk7SF+
         Kr2w==
X-Gm-Message-State: AOAM530ieioDrcI2j54S4r8ef+rhA/fOInzvNDDVl+zGQQMjNPHhRdfV
        +tqVVjitHkDQ2KWB6ElrEAipaQ==
X-Google-Smtp-Source: ABdhPJxaKxKULNBrd2g60r7nvvEmGuq97mfXP3cU7zsuBf7u0Tovr+OYsByszfTTH5I8CBn4x3gaXw==
X-Received: by 2002:a05:600c:19ce:: with SMTP id u14mr34813970wmq.49.1641209580705;
        Mon, 03 Jan 2022 03:33:00 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:7c9d:a967:38e2:5220? ([2001:861:44c0:66c0:7c9d:a967:38e2:5220])
        by smtp.gmail.com with ESMTPSA id p18sm47514860wmq.0.2022.01.03.03.32.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 03:33:00 -0800 (PST)
Subject: Re: [PATCH 1/3] dt-bindings: display: meson-dw-hdmi: add missing
 sound-name-prefix property
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
References: <20211223122434.39378-1-alexander.stein@mailbox.org>
 <20211223122434.39378-2-alexander.stein@mailbox.org>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <c4d5d774-6d9a-410d-b651-e452894e99eb@baylibre.com>
Date:   Mon, 3 Jan 2022 12:32:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211223122434.39378-2-alexander.stein@mailbox.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/12/2021 13:24, Alexander Stein wrote:
> This is used in meson-gx and meson-g12. Add the property to the binding.
> This fixes the dtschema warning:
> hdmi-tx@c883a000: 'sound-name-prefix' does not match any of the
> regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
>  .../devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml   | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> index cf5a208f2f10..343598c9f473 100644
> --- a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> @@ -10,6 +10,9 @@ title: Amlogic specific extensions to the Synopsys Designware HDMI Controller
>  maintainers:
>    - Neil Armstrong <narmstrong@baylibre.com>
>  
> +allOf:
> +  - $ref: /schemas/sound/name-prefix.yaml#
> +
>  description: |
>    The Amlogic Meson Synopsys Designware Integration is composed of
>    - A Synopsys DesignWare HDMI Controller IP
> @@ -99,6 +102,8 @@ properties:
>    "#sound-dai-cells":
>      const: 0
>  
> +  sound-name-prefix: true
> +
>  required:
>    - compatible
>    - reg
> 

Fixes: 376bf52deef5 ("dt-bindings: display: amlogic, meson-dw-hdmi: convert to yaml")

Acked-by: Neil Armstrong <narmstrong@baylibre.com>
