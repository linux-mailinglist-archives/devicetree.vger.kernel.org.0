Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32C8A4737D1
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 23:45:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243784AbhLMWpR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 17:45:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243782AbhLMWpQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 17:45:16 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A60F8C06173F
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 14:45:16 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id m6so25141966oim.2
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 14:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ZAGpupmE58tiiF1IrnuYNItgVr/me2iTuZtboJFJyj8=;
        b=ozfZXbnFnFpMaeH1yXfAvcBVuAkg94fLSzFhtWeD/Y7zPBhjx1irHgrtMkv61pS6ej
         lyGHHzB8MMAq4iZyvnMUBPyA0ZoRI/UJmwwIc3wirCywPC5QTkF7QafmspTXPDo5jGHL
         mIqAj9llTuzi2n3tPBkza+3uaegZDhqkUGBtx6VADne0o8FEOp42DKZEuy1uuQcvZdZ2
         gUrKZYtLrgDgx1ajzC5+2I5Gu8KdYr924DcyOBsQynG8mEoyePkzqIGlemuRDYt4RIRJ
         ghHvh5b8inCTmGXMQouGJTTLojltm7HZNENY7RkAioSz1ppXk8wyHZpgRQT4fnmS5P/t
         qarw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZAGpupmE58tiiF1IrnuYNItgVr/me2iTuZtboJFJyj8=;
        b=6/q8s9GdlKIEko2onDrOp4Cfq83s01DeGT0UI+2cTtOV25gsgcoY1+GaRI/TiDTlJi
         MuiQSe8Q3nUNVcHG0+UryxNZG4epWSA7kjh6sm9vCu9PokLhoAdMr1Sn8TiuK1YHlUQi
         QoE6MMfCMma5aeqI+EKJ00hszHUJjPJSspKO6Q4Of2j3kyXVo8wE6Svw3rs9fMYxR6no
         COy3M26AO4Q0ZZcM3iFkk1WYjSInflmiSZnMTDAmLoeTPMSNjB41zkstVEt4661QSJcz
         rGt3frf0CKF+nd9Yisy4QCuCzy3BmeBH369g1BoadXq0kJaRJ+5gPvUSF75D0yb80oW0
         HEKg==
X-Gm-Message-State: AOAM531XyEZgfeUm9oWOtDl1RYm3FdV0aXdtB6kGpsG7prDtiBe47dG9
        OLZvJ8KFjZqWQ5ENxc9e7nBEiw==
X-Google-Smtp-Source: ABdhPJwpK+XmytwVOGn9TpyTH03MBGU917LNMYGWdZGosJtWbvnRo2z05N8w+/p9Vis1JRwyfQJjkQ==
X-Received: by 2002:a05:6808:114:: with SMTP id b20mr1212242oie.95.1639435516005;
        Mon, 13 Dec 2021 14:45:16 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t13sm2936066oiw.30.2021.12.13.14.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 14:45:15 -0800 (PST)
Date:   Mon, 13 Dec 2021 16:45:10 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Wesley Cheng <wcheng@codeaurora.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for SM8450
Message-ID: <YbfM9uqXGDcQZ7xS@builder.lan>
References: <20211213131450.535775-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211213131450.535775-1-vkoul@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 13 Dec 07:14 CST 2021, Vinod Koul wrote:

> Document the compatible string for USB phy found in Qualcomm SM8450 SoC
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 20203a8a9e41..0dfe6914ec87 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -20,6 +20,7 @@ properties:
>        - qcom,sm8150-usb-hs-phy
>        - qcom,sm8250-usb-hs-phy
>        - qcom,sm8350-usb-hs-phy
> +      - qcom,sm8450-usb-hs-phy
>        - qcom,usb-snps-femto-v2-phy
>  
>    reg:
> -- 
> 2.31.1
> 
