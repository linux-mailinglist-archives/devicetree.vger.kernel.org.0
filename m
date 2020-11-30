Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 247B62C894B
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 17:21:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728798AbgK3QUy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 11:20:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728727AbgK3QUy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 11:20:54 -0500
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com [IPv6:2607:f8b0:4864:20::c44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AF19C0613D2
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 08:20:08 -0800 (PST)
Received: by mail-oo1-xc44.google.com with SMTP id l20so2805973oot.3
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 08:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=6/QqV+qScQf8yEBLm8QpRM5cOd3tOhhuftKHu6gt0Mc=;
        b=epdxklrskndzynEMVnfBtQ7G27/Zg2uCPbt0eg7pGzm8qithnD0hASriqjoj3En26t
         Hf1C3ELHlCvVxdpar+YEIAY1fznKutR0una6jjGvj+ZI8i+WslUEtiX6hXFPOAzEaeAE
         xAw+1nX1BwwZmUfUvZvDruE5DTnd6PBx1SD+Mc3nf4pOq7PDNRGEFaq7r++TO5TPZPn/
         RAuj2QQ3fjhHJh1X/tCv3Wh3+uHEjjfTu6eEvPqPOhASZmrFANHRA1uyLeAxsY9+2E8s
         BjUYwQZz3KCiEKTTbgtCoFFi1rcsZcXPyOPOlrrbhdxcG/EMP0JZuZAy1eUYgI5BaCQE
         1+gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=6/QqV+qScQf8yEBLm8QpRM5cOd3tOhhuftKHu6gt0Mc=;
        b=T9l1kawOQ8k+kMdzzQte2oeXPoTISTXZtJj+/bo6m8jXDCzNoBax01fHIKKIaMb4aZ
         aMWc0NYh24ocUNMWx66iIk2g6itbCznKchQdktSpfeHeQp2xBgxiZokUJ7FeYsJMV+za
         5YH0PQPgKoCzvyl/HgEQ2EYOUzSa4MBSKND7ABE5Cd2y6WAknR7RDd/OwHexJZFXf9f9
         MmaGZ/GlBk7uLPJA6sD0QnH+hpt2TZ8hJgn2clCa6s1roacSjMdRA/JVLrW+zqTSOKDz
         d+WXTzkglZ4hP4atBUsHzapxy1N3RKhh1jq52g3Ii0rMNykYydqdklOW6xaDnPBD0bK0
         Lb5A==
X-Gm-Message-State: AOAM5327yHfxvKx/D3h8pQzf9YD+zXpFLQiofUv161cqbh3Gg6IoXvgy
        KbmhVHXw3EFfHoilbTpSKUDqzw==
X-Google-Smtp-Source: ABdhPJx6oWZ0BY+u313rmb902xBs+1rUMx0SZL9sCGjki3dkplfDjrNjB8VOJyOddXdhZgJY7aNE9g==
X-Received: by 2002:a4a:7b4b:: with SMTP id l72mr15716715ooc.45.1606753207698;
        Mon, 30 Nov 2020 08:20:07 -0800 (PST)
Received: from Steevs-MBP.hackershack.net (cpe-173-175-113-3.satx.res.rr.com. [173.175.113.3])
        by smtp.gmail.com with ESMTPSA id w21sm9977846ooj.32.2020.11.30.08.20.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 08:20:07 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: qcom: c630: Re-enable apps_smmu
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawn.guo@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20201124184414.380796-1-bjorn.andersson@linaro.org>
From:   Steev Klimaszewski <steev@kali.org>
Message-ID: <9363e9ca-3b20-5b4b-a7cc-7c45a58faf20@kali.org>
Date:   Mon, 30 Nov 2020 10:20:06 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201124184414.380796-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 11/24/20 12:44 PM, Bjorn Andersson wrote:
> Re-enable the apps_smmu now that the arm-smmu driver supports stream
> mapping handoff from firmware.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index d03ca3190746..f5b98845fa90 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -232,11 +232,6 @@ vreg_lvs2a_1p8: lvs2 {
>  	};
>  };
>  
> -&apps_smmu {
> -	/* TODO: Figure out how to survive booting with this enabled */
> -	status = "disabled";
> -};
> -
>  &cdsp_pas {
>  	firmware-name = "qcom/LENOVO/81JL/qccdsp850.mbn";
>  	status = "okay";

Tested-by: Steev Klimaszewski <steev@kali.org>


