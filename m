Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAFA5436C3D
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 22:34:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231891AbhJUUhL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 16:37:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231430AbhJUUhL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 16:37:11 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0959CC0613B9
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 13:34:55 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id x1so2606160iof.7
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 13:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Wg0Jus9TL4rCInXKPmpU7yOccL+OmPZ9RnN1FPY/86c=;
        b=C4i+PrPvs3FZzr017AwDFrkctEQ3Ggc/CFRoi6cD0Btfrhy12ZEEFURY+91vXu042f
         1bG8C/VwYKvcwN1vxWNkw/4cffIvN/AOOTxZxNFZ/piTmBmPIcdvHQ+Cyar9W+OXmFui
         w3AotlxrjuVmwYvreW1JgjKkStxz+fhZo6KGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Wg0Jus9TL4rCInXKPmpU7yOccL+OmPZ9RnN1FPY/86c=;
        b=4eR5SP5CsRGNjs8iHk85jUNm3V6FObuznqiUIkZz48v33pee90dFSQWnsRe32V0f1P
         HdSw6cTcMSZJrOslVEpkdICwHyjh7DNza8mcLN+GsngQFy3GP7CNhZTd2104ACXgSvQr
         GwzlUoyCyAk5OSEeb6xL6LIxWuNqK0X7XmmCNu2Yhv4aS3Mup3RYm2BMgWbPb2jKHmb0
         EMDx6FtVklMlsXeci79Da01dvgXcZARTzqoVoDxKmH5OOI8Rgjw/rhCdmGu9ESsqf/id
         cgY7CsZJ6Rw1j/IkPjM5Dedvtyivw6kg+SGjg3guLMsFccV8XKewnBIE1bZYJelygqeS
         TWCw==
X-Gm-Message-State: AOAM530OtD/OK6nzG3P8SyoIxP3QjAZugt1TzQY0PYMqN7kKfMhNWBSR
        uTNx3uMBcXGXvVyQFaf2R2Bh2w==
X-Google-Smtp-Source: ABdhPJzyqzFmrGAx2vXYYdoLjJNxUGrUR007nbUYsb/f4BnthTB05d3uUivNeaag/DbTwaUk3Fc3Dw==
X-Received: by 2002:a05:6602:13d3:: with SMTP id o19mr5406412iov.18.1634848494437;
        Thu, 21 Oct 2021 13:34:54 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id y1sm3261561ilp.43.2021.10.21.13.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 13:34:53 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: net: qcom,ipa: describe IPA v4.5
 interconnects
To:     David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Alex Elder <elder@kernel.org>
Cc:     ~okias/devicetree@lists.sr.ht, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20211020225435.274628-1-david@ixit.cz>
From:   Alex Elder <elder@ieee.org>
Message-ID: <d854d069-2bf0-8b21-2039-d53307aa25e3@ieee.org>
Date:   Thu, 21 Oct 2021 15:34:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20211020225435.274628-1-david@ixit.cz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/20/21 5:54 PM, David Heidelberg wrote:
> IPA v4.5 interconnects was missing from dt-schema, which was trigering
> warnings while validation.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>

Can you please tell me a command to use to trigger
the warnings you are seeing?  I don't see an error
when building "dtbs" or doing "dt_binding_check".

Thanks.

					-Alex

> ---
>   Documentation/devicetree/bindings/net/qcom,ipa.yaml | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> index b8a0b392b24e..a2835ed52076 100644
> --- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> +++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
> @@ -95,6 +95,11 @@ properties:
>             - description: Path leading to system memory
>             - description: Path leading to internal memory
>             - description: Path between the AP and IPA config space
> +      - items: # IPA v4.5
> +          - description: Path leading to system memory region A
> +          - description: Path leading to system memory region B
> +          - description: Path leading to internal memory
> +          - description: Path between the AP and IPA config space
>   
>     interconnect-names:
>       oneOf:
> @@ -105,6 +110,11 @@ properties:
>             - const: memory
>             - const: imem
>             - const: config
> +      - items: # IPA v4.5
> +          - const: memory-a
> +          - const: memory-b
> +          - const: imem
> +          - const: config
>   
>     qcom,smem-states:
>       $ref: /schemas/types.yaml#/definitions/phandle-array
> 

