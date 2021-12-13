Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A9A34730C3
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 16:45:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237919AbhLMPpZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 10:45:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237744AbhLMPpZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 10:45:25 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03421C061748
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 07:45:25 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id u18-20020a9d7212000000b00560cb1dc10bso17802903otj.11
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 07:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dQ0iYUP0JWxWxyVvkeGeGLlGPIXkHbinLcx5o3bfw2o=;
        b=GT2LUf8AZMMbJBvm19dhzHYN+vNChABVOEFBTkozsYpZC7hM/deocMT5X5GMYIDOek
         5LBXg6Ot9xO7cq/Jk7zgArH4zvnKvrbCFxFNX8dsF13FJEKUga57PYX+I8Hi1ZfJAIK/
         lbC6PuujBugYWprOiaNoUFWcBjLuSQX8QIWYLTNOIErrR3PFA/R/NZ5OZ1BQe0cyH2u0
         nAxuEZuXTWTPI8uD3iiMIhXC+C6hwff7Bfdc2WEeE81/t/APcJ7o3YcoRbMbC+3Gxrb6
         F71aYRG/1GESx3DTZCuueBZ/iX706Ujvo4hj5uB/ty469INRnDEZrTlkBjMLNWhE+0OQ
         nJPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dQ0iYUP0JWxWxyVvkeGeGLlGPIXkHbinLcx5o3bfw2o=;
        b=5NtQqWwh+QsaU/LAMs5rKOHpzsw1aajmBiHALpRHKESb3uQpW02NwGxg2uFAC8y0Q6
         EFiAQhuAPJ/IyZWXgVIAR0EVuZf7Xce2uTBu3ZmKDXGyk/n7/UImmMthTvwgjraKkKPr
         M+M7hKWghOWZ08YHt1yYedcKdyB+I6bxuE9zg8qATZiztcTJJhRQegE9xlxR5p6IXqmK
         oi9uHwtaXUnGCXjGQcLJeKrdpWgBYT6GifhX88UFyOZM6lLzBIvEGMYzO2kh+fBCj8V1
         l1CYFYn9RtCoEZ1Hhi2p3i8wSrhPV8MnPHae3xMwHsOf68TgavyQGPhLvgR2zvLDjV0S
         3u3g==
X-Gm-Message-State: AOAM532TXXmKDOd0XhaJjK/ClwrWt2QrGAMM9JiEkReX7Q9kgDCv/hoH
        ts70YkKaQlLtSvmHcNn9c/l0ow==
X-Google-Smtp-Source: ABdhPJzNsAq/rJmgcNdCPksFNXX6L/lDEXt5jzOfIQryTdTz3diL0hIrAXJ+3WKe0bwcch9hGMFEwQ==
X-Received: by 2002:a9d:6f13:: with SMTP id n19mr24707012otq.317.1639410324291;
        Mon, 13 Dec 2021 07:45:24 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id c8sm2281168otk.40.2021.12.13.07.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 07:45:23 -0800 (PST)
Date:   Mon, 13 Dec 2021 07:46:42 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     robh+dt@kernel.org, gregkh@linuxfoundation.org,
        devicetree@vger.kernel.org, ekangupt@qti.qualcomm.com,
        jeyr@codeaurora.org, bkumar@qti.qualcomm.com,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 5/8] dt-bindings: misc: add property to support
 non-secure DSP
Message-ID: <Ybdq4qAeqK8C8Yvc@ripper>
References: <20211209120626.26373-1-srinivas.kandagatla@linaro.org>
 <20211209120626.26373-6-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209120626.26373-6-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 09 Dec 04:06 PST 2021, Srinivas Kandagatla wrote:

> From: Jeya R <jeyr@codeaurora.org>
> 
> Add property to set DSP domain as non-secure.
> 
> ADSP/MDSP/SDSP are by default secured, where as CDSP can be either be
> secured/unsecured.
> non-secured Compute DSP would allow users to load unsigned process
> and run hexagon instructions, but limiting access to secured hardware
> within the DSP.
> 
> Based on this flag device nodes for secured and unsecured are created.
> 
> Signed-off-by: Jeya R <jeyr@codeaurora.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
> 
> This patch has dependency this yaml conversion patch:
> https://lore.kernel.org/lkml/20211208101508.24582-1-david@ixit.cz/T/
> 
>  Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> index f42ab208a7fc..f0df0a3bf69f 100644
> --- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> +++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> @@ -29,6 +29,11 @@ properties:
>          - sdsp
>          - cdsp
>  
> +  qcom,non-secure-domain:
> +    type: boolean
> +    description: >
> +      Property to specify that dsp domain is non-secure.

"non-secure" feels vague, how about expressing it as "Specifies that the
domains of this DSP instance may run unsigned programs."

Perhaps even go so far to name the property
qcom,allow-unsigned-programs? (Or some other word for "program"?)

Regards,
Bjorn

> +
>    '#address-cells':
>      const: 1
>  
> -- 
> 2.21.0
> 
