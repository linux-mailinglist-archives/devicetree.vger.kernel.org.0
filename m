Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1592B56227E
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 21:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236758AbiF3TCa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 15:02:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236802AbiF3TC0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 15:02:26 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61BD33F320
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:02:25 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id pk21so40837904ejb.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Ixd94IRcNWmkrcI7JCVI0OAMPGWl8miuu6Ps54C+2g8=;
        b=idykG8TOvg1pBqYBbUECorw1f9FdQEkkxnBxGMMWoaUfgs2vbHyvwnDZHOhlcqmIV1
         PGqN4FHN+DUGgLtYL249n6LKKLQu2SpGGz3PtDmbl/TESPHukU608sUL9atc7ECYQo+I
         iRPp6E8EwTQojmhBDiPobz/bWdTB7TTmH9kv2JYLV3tPRBics9ffEdlHcKiuWF9IS2dp
         GiXvE+yqpnYEUQpfrJ0ifPWQoHrgEc8XAp+Hld88ZKZ/3wyvo8Di0Ez84WH7VLHasBXq
         qQLUeVoC2lnYv45Zlrk6dktBl38EYbRtH9GdxWEIGIf1UE8/KFrs/qDm7KTUsB+jDDCO
         PVVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Ixd94IRcNWmkrcI7JCVI0OAMPGWl8miuu6Ps54C+2g8=;
        b=GGJAUvcIv1MsdfwEKyP10D1jcYIArWnWamoo+LEq3IKoiihxRE4QBZmQUT80XCt8R1
         OKEVaBCpFZ+KCi/Mh5o/uO079I1yM6FGQQRH62Rjg0Y68wLJyGsIANVQEe+oma5hQM1/
         nwrcTMaB6s994iyVBCgzGOpVCdN+/5iD05RDj5YUK0bGWymxrk8yND9qp84d262JigZ/
         YOGyOkhmCR7V7dW1tnnIVO9IPhVY3txj6TXciYmvKvUXd7+Fa1dCrhyEi5NOgWaZuSKE
         eWqpgJP0URz06keG7+JwUO1zKKrgvLUi2AUhVfaJG3avbUolLJfmdzV3Ebtj5UawCVAh
         fL9A==
X-Gm-Message-State: AJIora8M2HTlPg0/zhUm7U/DfZ/9fXc7Pj2gpCNz3MA/aY/tIPiSzHcs
        N1Z6OluAvyOxjIbprp+oZ6OsRw==
X-Google-Smtp-Source: AGRyM1sNQbYgzNCNcBZYSUraU9r7SoPRVicUzCyAkVm+94gqR6RR/SXc2tLl3AtqayNJrd6UcQhmlg==
X-Received: by 2002:a17:906:4b0c:b0:726:41df:5580 with SMTP id y12-20020a1709064b0c00b0072641df5580mr10841935eju.263.1656615743720;
        Thu, 30 Jun 2022 12:02:23 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h10-20020a50ed8a000000b00435728cd12fsm13680849edr.18.2022.06.30.12.02.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 12:02:21 -0700 (PDT)
Message-ID: <54d564fa-3c46-78d4-59a3-4efa5a5bf319@linaro.org>
Date:   Thu, 30 Jun 2022 21:02:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 4/7] dt-bindings: msm: dsi: Add vdd* descriptions back in
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
        sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     quic_mkrishn@quicinc.com, swboyd@chromium.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
References: <20220630120845.3356144-1-bryan.odonoghue@linaro.org>
 <20220630120845.3356144-5-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630120845.3356144-5-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/06/2022 14:08, Bryan O'Donoghue wrote:
> When converting from .txt to .yaml we didn't include descriptions for the
> existing regulator supplies.
> 
> - vdd
> - vdda
> - vddio
> 
> Add those descriptions into the yaml now as they were prior to the
> conversion.
> 
> Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/display/msm/dsi-controller-main.yaml    | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> index 91324f0828448..fd9d472437853 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> @@ -125,6 +125,18 @@ properties:
>        - port@0
>        - port@1
>  
> +  vdd-supply:
> +    description:
> +      Phandle to vdd regulator device node
> +
> +  vddio-supply:
> +    description:
> +      Phandle to vdd regulator device node
> +
> +  vdda-supply:
> +    description:
> +      Phandle to vdd regulator device node
> +

They should be also added to required fields, because before they were
required.


Best regards,
Krzysztof
