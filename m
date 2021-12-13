Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC58C4737D4
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 23:45:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240747AbhLMWpx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 17:45:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243616AbhLMWpt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 17:45:49 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20A02C061748
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 14:45:49 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id bf8so25131537oib.6
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 14:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=4oGFXYmh6Jbw90ZFgNxjbZIzzl0iLtM+OcafP4Vavxg=;
        b=SCDDmx9l2S444HDT3R6mPqIk37JUT6G/MATUDMNWhJhAOijEK/TShP2dx2iTfwl9Lx
         FrxR+abiZUQAVcnDLKAmwqk8Y4Uh3OULV+g4wUgbe4SW7trpGGsT+4VfvNEmYOtpEilf
         nop+CO9uopWFeOr5A+gz4hOKwoREyqqK+01Zvws8PwNeyuXRnV9S9TAXSBbGIl1E7aGG
         y6phbKTAtu7VSW5VzKCPCuVkWjPsevck9OE+OgB8R4LRE5CeEE2Rrr4od5zuGPbaAFV3
         1sYHkVzYtuO/8OeQzZUz0WKyd9affKRtCEtVxIVS3xZCcJm3BpGBL76IgW/DZqVhrUpk
         sVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4oGFXYmh6Jbw90ZFgNxjbZIzzl0iLtM+OcafP4Vavxg=;
        b=lNY0IYNmsZFFHVyyuV33cF0ZTBspJovAbXEcR71JOwG5b21r7Uz2VngqgyL+sLocAp
         X7BoJnv90r5u4XPxAbNg4iTfMrH1J1VLc8xSclallO9dbpk5rT5N9PI/1sLfjo3A3fOM
         9EFMRtn3Nvee6sp9TycXNTMe8Ov7KUFL++NDxFhSwFhq7kjr/E1TN3rfClYDF2Ip0JS/
         0EFsnu5u7GeQYIfRFUw71qPMe/fR3dl0mdz9YL9wedap3hbgBcHWIJl2Y1uom/39VbBc
         WN+AImmz4TBu6fdySnnomzvl31MLvyjg41pekhDRqhGfjYzNRaxFhHWMHVNPsA70gnU1
         J+pQ==
X-Gm-Message-State: AOAM530bwHIP4FCXjhXsJZLAg+shnsV7Z9TZC8Va8NVrZ6N3LXPHBcLq
        a7R6JHvpb1WOXnXoLBJm7evgmA==
X-Google-Smtp-Source: ABdhPJyyHrUjlJku2arlsBiiTSFRGXNctI86S7Qx4Y5Xbi6fuOvx6TZHmxRTkflT5OmWmBe6kNIalA==
X-Received: by 2002:aca:ab86:: with SMTP id u128mr1301830oie.41.1639435548463;
        Mon, 13 Dec 2021 14:45:48 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r3sm2394109oti.51.2021.12.13.14.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 14:45:48 -0800 (PST)
Date:   Mon, 13 Dec 2021 16:45:43 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Wesley Cheng <wcheng@codeaurora.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: phy: qcom,qmp: Add SM8450 USB3 PHY
Message-ID: <YbfNF+CtucLaYnDT@builder.lan>
References: <20211213131450.535775-1-vkoul@kernel.org>
 <20211213131450.535775-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211213131450.535775-2-vkoul@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 13 Dec 07:14 CST 2021, Vinod Koul wrote:

> Add compatible string for USB QMP phy in Qualcomm SM8450 SoC
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index c59bbca9a900..d625a6fe0205 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -51,6 +51,7 @@ properties:
>        - qcom,sm8350-qmp-usb3-phy
>        - qcom,sm8350-qmp-usb3-uni-phy
>        - qcom,sm8450-qmp-ufs-phy
> +      - qcom,sm8450-qmp-usb3-phy
>        - qcom,sdx55-qmp-pcie-phy
>        - qcom,sdx55-qmp-usb3-uni-phy
>  
> -- 
> 2.31.1
> 
