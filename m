Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C4D070B7BC
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 10:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232304AbjEVIf0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 04:35:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbjEVIfU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 04:35:20 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88D67F4
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 01:35:16 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f42c865535so58231125e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 01:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684744515; x=1687336515;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=e3tVOFl92w/Aats7SUyqS11ecUZr32zKmXoR5aDU0FQ=;
        b=LcCTXXQT6z7OaTVvtdcWd+gdStz/McjofcWAae7bXagbzGa3mK588td7XZSooWk+Ky
         UL6sMrvgLyKZv9Lgt+2/9DJMf+VVcRRnSoIWDNN2O6aL4Asgz20FFWTcPFgl+i1yTn2m
         BpdSt7o4rwM+9OX7XiJF28arZSrcN5qivZkITDHAW69yTazpw/QaLqFCKB45I1rxJwbM
         MOSXCwd5aZBuP/J6mtmKK44nEXkAFm12RMOe+ylVzGCSyH5wl9LY9PdLx4SGLWqY3Km3
         fxx4R0dZaXOxh3M1Pi/wl2dnHDSEVV3wMlIcNbKv186yeocSerUcYqne0yl6rvfZpjpb
         YWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684744515; x=1687336515;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e3tVOFl92w/Aats7SUyqS11ecUZr32zKmXoR5aDU0FQ=;
        b=lG5yjCFXTwESm5ujDDthoKIo4zoSp8KzhRFrpYU8j0pxA5abk7e6tTSE6mptnLBcHG
         bhAAhQahplwPLK9c6K5Y7g1JHeM9oh5vmUoV02ezQW6eeTX0bHvrSZUueouE+H0T0yZ3
         H3Q5ZcA/kXelNDTH49aUIEtSrTlW0NHGY1v2g2AE9q4N2yFqdIx/eOrw3OE9Dbnf6GKG
         vqaiAH8MRnuErIAlJDZvUdMXLABwppJtny/et2lWjQr2FE9ZBFkdXsvjeF3Wzu3fWx9/
         WYom1BkS4eh+XhmCxrD1AMKcooHwraU0k4HZbq86jtFrCPPP69JQikm419EdlmK4S9le
         f7hA==
X-Gm-Message-State: AC+VfDzByt58UiS8Xsst6toHxlaazh4hldvY3JxYsygM6DIC74jAGxY/
        RppPVpMm7Llf5kq53oTgXXnDpQ==
X-Google-Smtp-Source: ACHHUZ55BP+E57nsrIAO7O5I8JSLhwoBLbZLECluHO0SzLv1LozWrfuMfgkyET3w+FSHt26IgvMr/g==
X-Received: by 2002:a1c:7415:0:b0:3f6:244:55df with SMTP id p21-20020a1c7415000000b003f6024455dfmr2723806wmc.29.1684744514921;
        Mon, 22 May 2023 01:35:14 -0700 (PDT)
Received: from [192.168.27.65] (home.beaume.starnux.net. [82.66.176.246])
        by smtp.gmail.com with ESMTPSA id j5-20020adfea45000000b0030629536e64sm6949188wrn.30.2023.05.22.01.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 01:35:14 -0700 (PDT)
Message-ID: <a16f99b2-15dc-81ad-fc9c-d919689dce30@linaro.org>
Date:   Mon, 22 May 2023 10:35:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 3/3] MAINTAINERS: Add entry for Samsung S6D7AA0 LCD
 panel controller driver
Content-Language: en-US
To:     Artur Weber <aweber.kernel@gmail.com>, thierry.reding@gmail.com
Cc:     Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Nikita Travkin <nikita@trvn.ru>
References: <20230519170354.29610-1-aweber.kernel@gmail.com>
 <20230519170354.29610-4-aweber.kernel@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <20230519170354.29610-4-aweber.kernel@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/05/2023 19:03, Artur Weber wrote:
> Add myself as maintainer of the Samsung S6D7AA0 panel driver.
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> ---
>   MAINTAINERS | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 402e26d0cdbc..7cc2bfa4af6f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6663,6 +6663,12 @@ S:	Maintained
>   F:	Documentation/devicetree/bindings/display/panel/samsung,s6d27a1.yaml
>   F:	drivers/gpu/drm/panel/panel-samsung-s6d27a1.c
>   
> +DRM DRIVER FOR SAMSUNG S6D7AA0 PANELS
> +M:	Artur Weber <aweber.kernel@gmail.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/display/panel/samsung,s6d7aa0.yaml
> +F:	drivers/gpu/drm/panel/panel-samsung-s6d7aa0.c
> +
>   DRM DRIVER FOR SITRONIX ST7703 PANELS
>   M:	Guido Günther <agx@sigxcpu.org>
>   R:	Purism Kernel Team <kernel@puri.sm>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
