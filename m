Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C49AF2C7492
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:22:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388196AbgK1Vtb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729428AbgK1S1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Nov 2020 13:27:00 -0500
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E877C02B8F8
        for <devicetree@vger.kernel.org>; Sat, 28 Nov 2020 10:26:14 -0800 (PST)
Received: by mail-oi1-x241.google.com with SMTP id a130so9566771oif.7
        for <devicetree@vger.kernel.org>; Sat, 28 Nov 2020 10:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=8RiqeUI7pxEdcbpvxfJ+9GMvAAwvki840nbCV6Q60IU=;
        b=GvjnN70kbYequ6BfcsRpypGeWaz7M4mB5QZPIeglAYUDWgjYru8CEuIHzyZIMCjLTY
         giLlIEbmGAiGvREIxH/T7ywVpFWuVDo+x011+rt59YPS3k1TmGRgE8UH2UJXgEa17r8K
         1B9f4d1IaLl9dlOtiPpUOhXFo7949yfYwUJ/1l5A3rBruzpKq1ycZHCdfEw1rx5T5C2V
         b6BsFjLMQ9/O+mhvdvxkYSkCU5lZyKJSJk2J4+ZQRpIChm1Z2FT2s2bhjFYmTwexWKlf
         bDnUvNrdgFp+AvBRPn/xgSayNjlRcpKbZ9lpg3LwNhgqKHJhK2U00l1wCzYBAiBOD7y3
         Xu9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8RiqeUI7pxEdcbpvxfJ+9GMvAAwvki840nbCV6Q60IU=;
        b=Mx/t7EN5X00V2k3m6B/bw19K8rUr103Wnwrs78lU8FOyAjjjUpdxvpNrXNZGSz3TAi
         Cg3h+MkekpYdHIhdj3Y+T2GETByebP263xEKAi3ethLWwsJ6hLoe79Arjt8ACASCwXzE
         7W31wV9hV7FeGhGAsTYzAd2BripaOi/Qgr/pyartlU8GphS8LTDJetQQYQlU75ZoMtEw
         Bb30do1DjuPB+K74nlefOEyq9eEiW8c3iSzplny7y6+Wj9hqtIadOHyr2BEvQ54edV+o
         slr40mFAZoZxC96Vk/iHThM3I6/OBL19J2igbbfwejfQjL/ccTLif3wL21KkyFBzpnwK
         HmiA==
X-Gm-Message-State: AOAM531gpg7rMT8TAAHNZsuWmTJiwklAYkTKQ9A+WGHQ5xKbhiycvg5E
        7H9SFcroOuqPI3POCU58SriDLQ==
X-Google-Smtp-Source: ABdhPJxA5zsDHDJY99I5CzvTe4pikaKPHc9b9aQ8/DcRdy5mdSZJb5QNXLp5Vm7qvIKoHo+4x7kS7g==
X-Received: by 2002:aca:1916:: with SMTP id l22mr9717479oii.79.1606587973685;
        Sat, 28 Nov 2020 10:26:13 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m81sm7411469oib.37.2020.11.28.10.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Nov 2020 10:26:12 -0800 (PST)
Date:   Sat, 28 Nov 2020 12:26:10 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>,
        Jishnu Prakash <jprakash@codeaurora.org>
Subject: Re: [PATCH 1/9] dt-bindings:iio:qcom-spmi-vadc drop incorrect
 io-channel-ranges from example
Message-ID: <X8KWQrfyRXENTxM7@builder.lan>
References: <20201115192951.1073632-1-jic23@kernel.org>
 <20201115192951.1073632-2-jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201115192951.1073632-2-jic23@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 15 Nov 13:29 CST 2020, Jonathan Cameron wrote:

> From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> 
> io-channel-ranges is a property for io-channel consumers. Here
> it is in an example of a provider of channels so doesn't do anything
> useful.
> 
> Recent additions to dt-schema check this property is only provided
> alongside io-channels which is not true here and hence an error is
> reported.
> 
> Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reported-by: Rob Herring <robh@kernel.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Jishnu Prakash <jprakash@codeaurora.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
> index 7f4f827c57a7..95cc705b961b 100644
> --- a/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
> @@ -48,8 +48,6 @@ properties:
>      description:
>        End of conversion interrupt.
>  
> -  io-channel-ranges: true
> -
>  required:
>    - compatible
>    - reg
> @@ -249,7 +247,6 @@ examples:
>          #address-cells = <1>;
>          #size-cells = <0>;
>          #io-channel-cells = <1>;
> -        io-channel-ranges;
>  
>          /* Channel node */
>          adc-chan@39 {
> -- 
> 2.28.0
> 
