Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC0BE439EF9
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 21:09:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233011AbhJYTLV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 15:11:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231801AbhJYTLU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 15:11:20 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45286C061243
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 12:08:58 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id e59-20020a9d01c1000000b00552c91a99f7so16353516ote.6
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 12:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ZE0JjpM0Q0zc0juqFDJv2RQLlUG83Wb6ZoaI1HZesAo=;
        b=Wq5mVuShBIeBPE2dq1ZkvKSVLHMCfkf57+Einu/HhZmxCD936+t5cWrh/KjN8u8u0K
         P48MOo/AkfEKnUdQUQJwgpFMauNviKDltHCXjuOO5dB7SO4htW0KPOhnnyzWGlNpAqgv
         aw+6DDXpW7BFazuGsDdVTHA86MtUipaL/GF2XHzdCUvjJHQ/msCHiyA32AfNAGY8uDxG
         MtRoWsylBI8WXkOm1fyBw5l5tSh2aWMtaOjQ+8o/J5eiJuPKj5s+KH5eZF0qUGS+3zbn
         DBhWsQRKfF8xm5rcFoEMa+26LBBrHYLN7jj+RfqVJAuqE3d9wf3Drr3d+rvKXQd8PH4c
         uSqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZE0JjpM0Q0zc0juqFDJv2RQLlUG83Wb6ZoaI1HZesAo=;
        b=a17EotpZCAIFo0eP72rON6vvBYJsYK3QX/h7bC34h3Utj98DyxAl+kZx6ynHhy7R4Z
         nGqNB4noQG/Ot8Xrvnnk4DwuAX2iBZBnk7PdxkbWKroA3hJMZvj/1oRYkmXSmqHxwQwz
         cJ/sCwBrUOUiHgJH18N4/axlS+6PN7ghAeiwvgPM+wR0dS9OuvGqqAfLAFG/4PA0JdmC
         X09WdzTDYcBO28m9NgHniz1ENoppVtseZpTO0iu7hU2ARP5ATM/83qF/5Jacp5uRbWV5
         QoCtOKfJ4088oQLpPg4A2Bn8XFRTC3zL7Pu8RpsCkYIxvlnw8i1XWbulZX8IdzWPXovW
         63lA==
X-Gm-Message-State: AOAM533VfPIP/+gGQel2UzAMMBDEAGLfdjCBZ7iLaZqY2IQbv7xtRTZe
        bFC3XuucOcerk9wPNZxLNx6f+g==
X-Google-Smtp-Source: ABdhPJxlyTnzcofbiP1oX8Ba0MWnwWVwrptFxsPu2kUurL3/DE7+Q/biKrqFKURTKRYPGhkSoHLIwQ==
X-Received: by 2002:a05:6830:1ad5:: with SMTP id r21mr14695613otc.98.1635188937533;
        Mon, 25 Oct 2021 12:08:57 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id k7sm1539121oiw.58.2021.10.25.12.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 12:08:57 -0700 (PDT)
Date:   Mon, 25 Oct 2021 12:10:35 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com
Subject: Re: [PATCH v2 1/3] dt-bindings: usb: qcom,dwc3: Add multi-pd
 bindings for dwc3 qcom
Message-ID: <YXcBK7zqny0s4gd4@ripper>
References: <1635152851-23660-1-git-send-email-quic_c_sanm@quicinc.com>
 <1635152851-23660-2-git-send-email-quic_c_sanm@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1635152851-23660-2-git-send-email-quic_c_sanm@quicinc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 25 Oct 02:07 PDT 2021, Sandeep Maheswaram wrote:

> Add multi pd bindings to set performance state for cx domain
> to maintain minimum corner voltage for USB clocks.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> ---
> v2:
> Make cx domain mandatory.
> 
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index 2bdaba0..fd595a8 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -42,7 +42,13 @@ properties:
>  
>    power-domains:
>      description: specifies a phandle to PM domain provider node
> -    maxItems: 1
> +    minItems: 2
> +    items:
> +      - description: cx power domain
> +      - description: USB gdsc power domain
> +
> +  required-opps:
> +    description: specifies the performance state to power domain

I'm still worried about the fact that we can't just rely on the USB GDSC
being a subdomin of CX in order to just "turn on" CX.

Afaict accepting this path forward means that for any device that sits
in a GDSC power domain we will have to replicate this series for the
related driver.

I mentioned this in v1, but I don't think we reached a conclusion.

Regards,
Bjorn

>  
>    clocks:
>      description:
> -- 
> 2.7.4
> 
