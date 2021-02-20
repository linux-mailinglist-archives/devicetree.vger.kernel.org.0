Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB74D3206B0
	for <lists+devicetree@lfdr.de>; Sat, 20 Feb 2021 19:43:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229842AbhBTSnK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Feb 2021 13:43:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbhBTSnK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Feb 2021 13:43:10 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C909CC061574
        for <devicetree@vger.kernel.org>; Sat, 20 Feb 2021 10:42:29 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id e8so3847956ljj.5
        for <devicetree@vger.kernel.org>; Sat, 20 Feb 2021 10:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LS5gwKcMHR9sdDFFvyyOOfE/sEKmvwhv6AyHy6Ue0Eg=;
        b=CxRwsvrkffeovIBHK7QTB89JlhPdqIfqw+OlXY+dk1cV4IBWxveisxrcUXMAzaouwX
         fCV67iU6F7wX58CSAB5bIhAZryiPW4kLYNGaSHKwHyZfiC3BJaxC8F8KyC//7Sr9kedd
         k/1Z1c5M9zpDpPUVPZTbt3wjaCQILE4AU3eRYQr9gUWqgLvDhdPANHX6twqvn52BSM9d
         /XVXHjsqNzgP19683zUFeWOvXII9YAEt77lIPj9EDecTQ2EJZTbTZwboEFHJFWKYWFO2
         Yw/69e/r8XLUYqeR2buSTRgqQGY5iAHXuDqg9R3jh1hm9KKUmurs62Vy6ubPsfD2xqan
         T5fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LS5gwKcMHR9sdDFFvyyOOfE/sEKmvwhv6AyHy6Ue0Eg=;
        b=lo9wagIxEatiiJjI0lopoKnSsGgJp4ZotWsnfsJYgMY1mfo51jrw7Fa76UA+FQqjZj
         qHiC8R42pG7nq0dom3upnnY7FRsZuPoJXYSvEk9PQydDo4p1KmUg4TpF2HNQO8900h58
         gPRfih4KPinHWbf3yhDzNlKQ11H2nou23BqCY2KXimTMSVKfA37CanWpCh2qGN0I2yer
         V1fshAttqU8voo11/g5muGDPjqf959t12zzBkZW4E39bByrqdUiuz0mKzi1tzfBFiMOP
         CLdDtE8r2nWQbVR6UNVW1FFC98VGb+mbr25ZfecwhBHbBOnF8PopCeg2bojZkZYr5YVH
         zvhg==
X-Gm-Message-State: AOAM531+KISBApZZ3Cv2fvMDmYOKPV+cPuyhRf2pNK3nxBcaj0iXjHCg
        3VlEUHeUp98HruoBKoGTy6EKiA==
X-Google-Smtp-Source: ABdhPJy4Ons8DzOVQF9Alozjt1JiZgxRKMkzCccYD/nKdhBwPokycuN7WiTTNWnzO+LvOxU2rXYJ4g==
X-Received: by 2002:a2e:9707:: with SMTP id r7mr575046lji.359.1613846548141;
        Sat, 20 Feb 2021 10:42:28 -0800 (PST)
Received: from [192.168.118.216] ([85.249.43.69])
        by smtp.gmail.com with ESMTPSA id i30sm1316467lfc.154.2021.02.20.10.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 10:42:27 -0800 (PST)
Subject: Re: [PATCH v5 04/22] media: camss: Add CAMSS_845 camss version
To:     Robert Foss <robert.foss@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, todor.too@gmail.com,
        mchehab@kernel.org, robh+dt@kernel.org,
        angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Nicolas Boichat <drinkcat@chromium.org>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
References: <20210217112122.424236-1-robert.foss@linaro.org>
 <20210217112122.424236-5-robert.foss@linaro.org>
From:   Andrey Konovalov <andrey.konovalov@linaro.org>
Message-ID: <17de547b-a473-129e-62a1-f453d5f9881b@linaro.org>
Date:   Sat, 20 Feb 2021 21:42:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210217112122.424236-5-robert.foss@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Robert,

Reviewed-by: Andrey Konovalov <andrey.konovalov@linaro.org>

Thanks,
Andrey

On 17.02.2021 14:21, Robert Foss wrote:
> Add enum representing the SDM845 SOC, which incorporates version
> 170 of the Titan architecture ISP.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>   drivers/media/platform/qcom/camss/camss.h | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
> index 3a0484683cd6..46e986452824 100644
> --- a/drivers/media/platform/qcom/camss/camss.h
> +++ b/drivers/media/platform/qcom/camss/camss.h
> @@ -66,6 +66,7 @@ enum camss_version {
>   	CAMSS_8x16,
>   	CAMSS_8x96,
>   	CAMSS_660,
> +	CAMSS_845,
>   };
>   
>   struct camss {
> 
