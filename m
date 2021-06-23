Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7E13B1249
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 05:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230357AbhFWDkT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Jun 2021 23:40:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbhFWDkS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Jun 2021 23:40:18 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3D71C061756
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 20:38:00 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id i12-20020a05683033ecb02903346fa0f74dso570410otu.10
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 20:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=NDeQnIVv2I2xWC2rTkdE3rAvheRucQaheIz+92aDMhg=;
        b=wqH5fv+pnNN/ZQfOLvll5P2lZRBk06ExdzIMsXlWDFQdcF/KddF0+raFxrNd7XfZ/A
         LR9DCeioQ8ZbZJmiH1ijipre5ZkLuK/ZOUkwuNGVkkjjNIa41jbrtx7bLznx0ZiAwfHI
         N1Mxzl7H2D0x+ImfaqE8qGA65/P1vcItVQrQyOQUWNTe3SYiPlThvlVpdoOgz3kdoWbg
         MwkoNMdLsQN2oWbTB8XEPDeA+jqQAO9eL/n5r/K7WMACXiODRYK0TRYV+VYMtA9ySLV8
         m+o/0wPP/CPd3/iOw3xjGgcoEGjcOHkm2mw9feKJAry3UkXDBk1N9AZbt8krRfezaTOX
         aqLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NDeQnIVv2I2xWC2rTkdE3rAvheRucQaheIz+92aDMhg=;
        b=uZNYz70DBIxALpS4nMvMTxb3H9QYdpMiI/0ABXo0kR2c8LRcBHtUko33yOfWUoMVoG
         eVXqBXn9W2X6W8pU6/pT5QqkxbRpQ/oM602SPddzNnYpUiOD+tpcuZSQS3k2NH9aK14g
         ENcpjftkjEYaVbakfjkuk/7xGRTHsNiD9seCLzeDvzYcDat4oBztLxn05VuGo31Uschz
         pkKt592YCyWViDRDOCW10wd6PQw3lyH7Sx9cR0/cFGj3Cv+c4CZvRfleYMfkmsxiQVWK
         VZRKZLEsvxkpliz38t0gJqum/4vFb82H7VotCGKEtfL1Sj9ktRNKc/hgOrR69FuXcwBq
         zHHw==
X-Gm-Message-State: AOAM530wzcTcoQTc2BoMUmLnQpSfVHHyBXptM4dsDA0ZuKCDJ52Y7r7w
        f+tAXS1GG3UkH1yIEdNc3W2D8g==
X-Google-Smtp-Source: ABdhPJzvBiULY4+NEyotaX+PAjSwSpdfraIWd59ttxXH0ID7xSAg/qWrc7Q1FPhDn+rmNIS2DMQtpA==
X-Received: by 2002:a9d:3e15:: with SMTP id a21mr5971483otd.366.1624419480109;
        Tue, 22 Jun 2021 20:38:00 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r14sm4641240oie.43.2021.06.22.20.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 20:37:59 -0700 (PDT)
Date:   Tue, 22 Jun 2021 22:37:57 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Iskren Chernev <iskren.chernev@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v1 2/3] dt-bindings: phy: qcom,qusb2: document
 sm4250/6115 compatible
Message-ID: <YNKslaqcVwSxR4/v@yoga>
References: <20210622203240.559979-1-iskren.chernev@gmail.com>
 <20210622203240.559979-3-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210622203240.559979-3-iskren.chernev@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 22 Jun 15:32 CDT 2021, Iskren Chernev wrote:

> This compatible string is for the HS USB PHY on sm4250 and sm6115
> platforms.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> index 9f9cf07b7d45..70258540676a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> @@ -23,6 +23,8 @@ properties:
>                - qcom,msm8998-qusb2-phy
>                - qcom,sdm660-qusb2-phy
>                - qcom,ipq6018-qusb2-phy
> +              - qcom,sm4250-qusb2-phy
> +              - qcom,sm6115-qusb2-phy
>        - items:
>            - enum:
>                - qcom,sc7180-qusb2-phy
> -- 
> 2.31.1
> 
