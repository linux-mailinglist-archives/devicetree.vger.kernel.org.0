Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB7E5374B79
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 00:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234476AbhEEWop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 18:44:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234522AbhEEWoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 18:44:03 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7758EC061343
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 15:43:06 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id z24so3141765ioi.3
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 15:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nC/IBifenONsVc9vMeQOv6acWNUTyGTY5GW7BiFudVU=;
        b=QTwl5lIsbomJ7O6sqqW0XuKaC294FKigV2q180wT8/EpZDQ5rcIHSvzKvJJ9pvv5uh
         z8U5ct8yLB3R1M0OSRpsKqceu4rkPpNu8pjcNWalCJJ+3ywEvO2XJWdSn8JGrlAPU0AZ
         0BR31oMd95JeJU0S52yIM+0UDTJLR3SW6tLKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nC/IBifenONsVc9vMeQOv6acWNUTyGTY5GW7BiFudVU=;
        b=fw3qMxPYioxR+R3eDJRll1xgcP4Au6UiL1VGSIDyrV7cI3dZAgR8ZdB+E4WAAQFx2f
         Rr16a0fYJJznRMrTDO8YM+Tn/tjJSBuK3H1o8DbELSrEJQFrvbZ/T4RLX7TnN7OQU7+U
         5UppSyRqTHOsr3nMYYPqFuuQYnw7f+dcW2dn/VPraDs8OGk6zQIbOk6+qjbRGM0qi1YI
         y/+gphjcQyJpj5r8Ha7i7ozJD1piHh0w5WaVuX7tq8H+hv80cd89rOFBlCn6M7R7XF7E
         abzxEXdyKsTlMA7TqkAcCUAherprlkP8DlMKU/ltBGfuA20C7Zhc3CFjc84lU+a4teLY
         gFkQ==
X-Gm-Message-State: AOAM531QF6hxGzAymz7pr2UdzfAyAc3wKRC2SxakzVhDBAf7PmcmiJP3
        CBSICtTjQnAwiND91cbxzUosYoulWOvRaHqq
X-Google-Smtp-Source: ABdhPJwH1Saq8jX1rR1EHdxjdr3/FrPENkPRN4qLVDh1v0pgfyJvQqISlSS9gdsIEnnh9Nv1VLrBPw==
X-Received: by 2002:a05:6638:1390:: with SMTP id w16mr865314jad.83.1620254586009;
        Wed, 05 May 2021 15:43:06 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id k13sm256084iop.24.2021.05.05.15.43.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 15:43:05 -0700 (PDT)
Subject: Re: [PATCH v1 6/7] dt-bindings: net: qcom-ipa: Document
 qcom,sc7180-ipa compatible
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>, elder@kernel.org
Cc:     bjorn.andersson@linaro.org, agross@kernel.org, davem@davemloft.net,
        kuba@kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, konrad.dybcio@somainline.org,
        marijn.suijten@somainline.org, phone-devel@vger.kernel.org
References: <20210211175015.200772-1-angelogioacchino.delregno@somainline.org>
 <20210211175015.200772-7-angelogioacchino.delregno@somainline.org>
From:   Alex Elder <elder@ieee.org>
Message-ID: <19151b65-5600-df8a-c25f-d46a096f068e@ieee.org>
Date:   Wed, 5 May 2021 17:43:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210211175015.200772-7-angelogioacchino.delregno@somainline.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/11/21 11:50 AM, AngeloGioacchino Del Regno wrote:
> The driver supports SC7180, but the binding was not documented.
> Just add it.

This has been fixed upstream now.
   c3264fee72e7 dt-bindings: net: qcom,ipa: add some compatible strings

					-Alex

> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> ---
>   Documentation/devicetree/bindings/net/qcom,ipa.yaml | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> index 8a2d12644675..b063c6c1077a 100644
> --- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> +++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> @@ -43,7 +43,11 @@ description:
>   
>   properties:
>     compatible:
> -    const: "qcom,sdm845-ipa"
> +    oneOf:
> +      - items:
> +          - enum:
> +              - "qcom,sdm845-ipa"
> +              - "qcom,sc7180-ipa"
>   
>     reg:
>       items:
> 

