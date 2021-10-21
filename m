Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A77C443636F
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 15:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231379AbhJUNx1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 09:53:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231408AbhJUNx0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 09:53:26 -0400
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0820C061243
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 06:51:10 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id m20so1048618iol.4
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 06:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mZ6f66NX0UsycGjWXczZLCtk7FyG6D46mxZapKtt/dY=;
        b=W48LVNPTKUhObiQbdvl110IGZntU9+KymKiTruJC40lHm7dGdkNsNRs2GQgRC0UW/n
         wLhCd1u/DfSQAHcZ2sbpzR33BdYBLGvQ5Y/J79yxbRi5o7iIegPxMO866nywrupL3Aur
         6qVN2LL0sCF8xsYGch2N96I0xh2gldJ4l3vv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mZ6f66NX0UsycGjWXczZLCtk7FyG6D46mxZapKtt/dY=;
        b=LUxuZ+R6IuwsuL1xtL7onkSGm1U3gdGha2qzWfEZZFtR/pbs2ZqefywOUmanxhEfkl
         9C1nW5Y0OVPycrHZV0gW7Vxi1Y/KLecS/PP4oumve10UWsIKpD4Ut7VoxGZOxQ8G5bMQ
         AedIG2gQjECJm7ImqcHJlIqGa3xZfW6b3JrLyJPgAsXXH+sw/tw+lpa86zqzyOCGOEvB
         7k3M6w/JCyCP145Y2fpdb9xIl3IDL9kihZmUHZdmUe7yhYdPlgpSl+P7rBpAmvCMfJnT
         vuRLYSC1rTUjYR831uRk9TT9xoBJU1QxOAZ7KEuTA6tJozj/T27kH4g6gdLBVfKFhz32
         wuMA==
X-Gm-Message-State: AOAM530OXE4qNBt69uqQQgIxCps+Sotnn0N0Dr3gIl/7gykAKn3Vt98W
        G+pVq494tY+ZC/71WFUVZyUwtQ==
X-Google-Smtp-Source: ABdhPJxQxeB3XfovTDQe7gY8kZQ5+ab5WjKnwJYHyGX4L+YuHKFmBsuiIl5zDaY7lik2jhekroUpZQ==
X-Received: by 2002:a05:6638:23a:: with SMTP id f26mr4098325jaq.2.1634824270136;
        Thu, 21 Oct 2021 06:51:10 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.googlemail.com with ESMTPSA id e14sm2827506ioe.37.2021.10.21.06.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 06:51:09 -0700 (PDT)
Subject: Re: [PATCH 1/2] dt-bindings: net: qcom,ipa: describe IPA v4.5
 interconnects
To:     David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Alex Elder <elder@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, ~okias/devicetree@lists.sr.ht,
        linux-kernel@vger.kernel.org
References: <20211020225435.274628-1-david@ixit.cz>
From:   Alex Elder <elder@ieee.org>
Message-ID: <8b425afc-55ec-e1d1-4a09-31e7aa216c58@ieee.org>
Date:   Thu, 21 Oct 2021 08:51:08 -0500
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

Sorry about that.  This is actually not correct, because
the DTS file is not correct.  I've been meaning to fix it
but didn't want to commit the change until I had actually
tested it.

The DTS file was sent out before I had a better understanding
of what it was supposed to represent.

I will put a priority on fixing the DTS file soon.

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

