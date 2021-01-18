Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D89802F98EC
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 06:04:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726302AbhARFE0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 00:04:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726317AbhARFER (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 00:04:17 -0500
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18B41C061575
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 21:03:37 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id i30so2201426ota.6
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 21:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Z4oglCVulBWmDn0dekUWDPRQjOgo6IY9sFXRuc9dJxY=;
        b=JBTJXnEuh9FyRTOI2uyKWGdPoD4q7mkq7YxrBAKlTcMIDvenODlAOemATr3iPmRb28
         FNJFuwaw6X/eQSrWTnAd2BK898mKExMBFS0fhoGpaTscVVNOtCUgYS+zmvBL7w8//bUE
         tRoQT96/zE3GuHOl9NR6tDeg5G4WdKGX62fgHuKjSO2Pmc45FH4cRtBbxwAkC4YyKsYJ
         TSw3X4oaeddsRFs9t1ddnBFgL/Q8PlMs1DiF8nRXfPNTDwRmTa/5WdQ7jxC2ARseGrdf
         vns7YVa+fgkvP/++k4hjM/p2BzNQyWWsCNB69EhyGBv8m6dKg6lOZVv9TVaR5T7xPdGx
         qYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Z4oglCVulBWmDn0dekUWDPRQjOgo6IY9sFXRuc9dJxY=;
        b=N6Q98lVimC0/VCkwYlxMoWUbMWZSolu8Xt3m6xrfDHFiXfZ/mv8GqxqDtmDmbsHxUh
         ikv0m/599Bz7rBStsGfFxCFremC849WzBp2/Ger/Z4N6Lgzv8l8lbETgqJUQITeRbrHv
         6nEJnjjVJPEQHASEgeM9WePh7scSNRhFLJgtyY5m4B1sqPIFE7mZHOjmiVRtdAqulbLn
         TY6c7pY74kDCK2xXkVERbwwebcIKD1Sd+N3H7kLVlg3Q0MC06XcSHoe7JEQX/35bsjju
         jiCHlHWl2Md/5oE3yyTHmNEHk1Hpl/BTSUrTvMOhBSDNEfU5PKNfMmNhXrg6AMyUKGO4
         V0GA==
X-Gm-Message-State: AOAM53201wlTfv+7f0n5LIheixFQOgJICI0+dfNX+U1AcpX6dT2TwxjG
        wTkkJ7ueqEd9E2RZ/om2IxIIAg==
X-Google-Smtp-Source: ABdhPJxK0tNNlZlGHFgho/gn1Vz0CB98yT341TmVUA8SjRkg+DQ+s1p34w/MEq8yD6nV89ned1wH3g==
X-Received: by 2002:a9d:a61:: with SMTP id 88mr16383403otg.18.1610946216339;
        Sun, 17 Jan 2021 21:03:36 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o135sm3414613ooo.38.2021.01.17.21.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Jan 2021 21:03:35 -0800 (PST)
Date:   Sun, 17 Jan 2021 23:03:33 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Jack Pham <jackp@codeaurora.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Wesley Cheng <wcheng@codeaurora.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,qmp: Add SM8150, SM8250
 and SM8350 USB PHY bindings
Message-ID: <YAUWpWfdsmQTXM3s@builder.lan>
References: <20210115174723.7424-1-jackp@codeaurora.org>
 <20210115174723.7424-2-jackp@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210115174723.7424-2-jackp@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 15 Jan 11:47 CST 2021, Jack Pham wrote:

> Add the compatible strings for the USB3 PHYs found on SM8150, SM8250
> and SM8350 SoCs. These require separate subschemas due to the different
> required clock entries.
> 
> Note the SM8150 and SM8250 compatibles have already been in place in
> the dts as well as the driver implementation but were missing from
> the documentation.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Jack Pham <jackp@codeaurora.org>
> ---
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 390df23b82e7..841c72863b4f 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -30,15 +30,24 @@ properties:
>        - qcom,sdm845-qmp-ufs-phy
>        - qcom,sdm845-qmp-usb3-uni-phy
>        - qcom,sm8150-qmp-ufs-phy
> +      - qcom,sm8150-qmp-usb3-phy
> +      - qcom,sm8150-qmp-usb3-uni-phy
>        - qcom,sm8250-qmp-ufs-phy
>        - qcom,sm8250-qmp-gen3x1-pcie-phy
>        - qcom,sm8250-qmp-gen3x2-pcie-phy
>        - qcom,sm8250-qmp-modem-pcie-phy
> +      - qcom,sm8250-qmp-usb3-phy
> +      - qcom,sm8250-qmp-usb3-uni-phy
> +      - qcom,sm8350-qmp-usb3-phy
> +      - qcom,sm8350-qmp-usb3-uni-phy
>        - qcom,sdx55-qmp-usb3-uni-phy
>  
>    reg:
> +    minItems: 1
> +    maxItems: 2
>      items:
>        - description: Address and length of PHY's common serdes block.
> +      - description: Address and length of PHY's DP_COM control block.
>  
>    "#clock-cells":
>      enum: [ 1, 2 ]
> @@ -287,6 +296,64 @@ allOf:
>          reset-names:
>            items:
>              - const: phy
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm8150-qmp-usb3-phy
> +              - qcom,sm8150-qmp-usb3-uni-phy
> +              - qcom,sm8250-qmp-usb3-uni-phy
> +              - qcom,sm8350-qmp-usb3-uni-phy
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: Phy aux clock.
> +            - description: 19.2 MHz ref clk source.
> +            - description: 19.2 MHz ref clk.
> +            - description: Phy common block aux clock.
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref_clk_src
> +            - const: ref
> +            - const: com_aux
> +        resets:
> +          items:
> +            - description: reset of phy block.
> +            - description: phy common block reset.
> +        reset-names:
> +          items:
> +            - const: phy
> +            - const: common
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm8250-qmp-usb3-phy
> +              - qcom,sm8350-qmp-usb3-phy
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: Phy aux clock.
> +            - description: 19.2 MHz ref clk.
> +            - description: Phy common block aux clock.
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref_clk_src
> +            - const: com_aux
> +        resets:
> +          items:
> +            - description: reset of phy block.
> +            - description: phy common block reset.
> +        reset-names:
> +          items:
> +            - const: phy
> +            - const: common
>  
>  examples:
>    - |
> -- 
> 2.24.0
> 
