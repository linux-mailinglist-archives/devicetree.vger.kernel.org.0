Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCD4332AA9E
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 20:56:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350408AbhCBTxN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 14:53:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349028AbhCBCLE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 21:11:04 -0500
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D37BFC061A2B
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 18:05:26 -0800 (PST)
Received: by mail-il1-x136.google.com with SMTP id v14so5428673ilj.11
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 18:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OMAkFwrDaoBrADQrZLrO26UXj3cMyIb0sK7jmLzwxzo=;
        b=StnTdqRXXDf3QDvcgHZ4h/0Rxqz+nXZnXUArMIrKzWU/UPaIDjzUSwb3xpxDP+2j8Y
         TQBnuHu/XA1ybiR4Z+euIpM9TxwrPjz6KfVQZUIyM+8TjjHUXQIHYtQPS3s1dwlzO0DW
         iCpFxDt+al9abYIAZpmEj/fGnSNoNH66TVfsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OMAkFwrDaoBrADQrZLrO26UXj3cMyIb0sK7jmLzwxzo=;
        b=fPWEnvnVC4ElaLAgybWxt6mS93uTgFwp2NjJX6xiC1Sj5HnzUJw7sGNzO4SBBHZLeH
         EH2jl/ugYaP5uta3l1+3VJmp1YHjwEEgWDG3obAiQbbaxm6a7QOVJiMvlCCBtzuaqmQq
         BK368Cj6pWsbDhxfsZUw1dFmyjiEf5jL/Hd8w7uVRZeKBrlRbu7tBgNDPbo2qjkP7FKq
         YHH69wS7Z9EdKGcUFigTvyvzNVoLnzj95MJlAqi4hqyjbTuXIP2PwJG4zhfl2gz2DHbe
         YQZvJgm063ukw6FWUc/EThxrhSfyoDl00x6DailzU45DQH38nRHP8503O+w8AHp7/SlY
         akjQ==
X-Gm-Message-State: AOAM530Pj45T8np5e+SXGvdRhjO0u4Tcv/8YdABorCVwiwAOQu1aTkiD
        7CqXnty+qJNDx2qOjR3aeum9jw==
X-Google-Smtp-Source: ABdhPJxbVIMFCmzQHcFdmv/4+aM5pwIW9x/DqOvFiMFNODFWiLW3j/n6AhdBSgAyzQM1qbClkpu4cA==
X-Received: by 2002:a05:6e02:1a0f:: with SMTP id s15mr16360469ild.244.1614650726395;
        Mon, 01 Mar 2021 18:05:26 -0800 (PST)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id s8sm9331939ilv.76.2021.03.01.18.05.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Mar 2021 18:05:25 -0800 (PST)
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
Message-ID: <d479686e-b26b-5d59-feaa-d8cf011f5ce2@ieee.org>
Date:   Mon, 1 Mar 2021 20:05:24 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210211175015.200772-7-angelogioacchino.delregno@somainline.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/11/21 11:50 AM, AngeloGioacchino Del Regno wrote:
> The driver supports SC7180, but the binding was not documented.
> Just add it.

I hadn't noticed that!

I'm trying to get through reviewing your series
today and this will take another hour or so to
go validate to my satisfaction.

Would you be willing to submit just this patch
as a fix, and when you do I will give it a proper
review?

					-Alex

> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> ---
>  Documentation/devicetree/bindings/net/qcom,ipa.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> index 8a2d12644675..b063c6c1077a 100644
> --- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> +++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> @@ -43,7 +43,11 @@ description:
>  
>  properties:
>    compatible:
> -    const: "qcom,sdm845-ipa"
> +    oneOf:
> +      - items:
> +          - enum:
> +              - "qcom,sdm845-ipa"
> +              - "qcom,sc7180-ipa"
>  
>    reg:
>      items:
> 

