Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2BD43394AE
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 18:28:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231597AbhCLR2T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 12:28:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232518AbhCLR2R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 12:28:17 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52703C061574
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 09:28:17 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id y131so24722731oia.8
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 09:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ZTq3YjvMCHu+pe/PF/X4oZj4DMDAfauh/757RvN40NY=;
        b=B40LAkjI7eK5CUvcFzT9uak0yUmvROiXpFtyIFUItIUKuHvshhHfNTpDz8T5Z+DTww
         HZypnR7cD7GFqYbkKBw+IxaYXHQqN4fDz8lGa4O+DEswivqAXLmpuk+jCKYxF5v2wKre
         zZDKo0FRpctJ4Kgi2cXRUSlJbWIyww2NWVoyEHpiflrU8YOhuH1VJjgrtziu7iTFpq+B
         WSBOG4Qx0bJKtAFiMf3lH76+7XXWZXD4kGhMyGPHRGL36HNZpq6vUZF7weeMpCdBnaKw
         172PG4zY3aHy3Pvfzll9349+wg2/UHf4qMFWpj7LNBkJXpVMahv9CdYjCHYE+oKTNbMX
         nn4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZTq3YjvMCHu+pe/PF/X4oZj4DMDAfauh/757RvN40NY=;
        b=kyZRxfBl9uKpX1RCV6Sd0Mb24G9gB6iiT+CIcTfAbsWPRk3VJZcuyxZNoUyadYAyZH
         uOQ8qN72FrvAmzZQgwEPMIP7o/t71pLAvoMqJJCYl5TrNaN34sp9RAb0bUIuFDIlpRNL
         ARD6izG/ZX5rSlO05kTi4MsB5dyjaZ6aZnMIhGf0mmodgpcth6l3xuu8M8H3ILrkjIdf
         tu704lfC1Xze7Jy2Wiw/Pw7hf8qxpYeEnqucO2ZmEksFb8TeOHvLpmVwRW/hz8XpScwF
         kAg91F3BquLT3fBkVH3FEAb3oZwtCDc+9GOxsnPZpyBfwQ0iuTKV22NNHGRcH1uKzWyB
         ohrQ==
X-Gm-Message-State: AOAM532I/XU60zhfImDg9o2T1SroQ1xHhzrNITcvOci9/PNnvCyZ90RH
        yvathlh8tRaq+vpRAJTHYNVlkQ==
X-Google-Smtp-Source: ABdhPJxag8I5N9nM/nLr36jeB9NWNHxpQ9QklYbeGOmw/Ly85vSsEJ1TGdsa7PJle4NW9h78QqopzQ==
X-Received: by 2002:a05:6808:216:: with SMTP id l22mr3313269oie.125.1615570096786;
        Fri, 12 Mar 2021 09:28:16 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id u194sm1452340oia.27.2021.03.12.09.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 09:28:16 -0800 (PST)
Date:   Fri, 12 Mar 2021 11:28:14 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mailbox: Add compatible for SM8350 IPCC
Message-ID: <YEukrpG06PBdgGAF@builder.lan>
References: <20210312051203.3555751-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210312051203.3555751-1-vkoul@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 11 Mar 23:12 CST 2021, Vinod Koul wrote:

Adding Jassi as recipient. Please let Vinod know if you want him to
resend this patch to you. (I send a patch for MAINTAINERS yesterday)

> Add the compatible string for SM8350 IPCC block on this SoC
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> index 168beeb7e9f7..fe17ba9b84f2 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> @@ -25,6 +25,7 @@ properties:
>      items:
>        - enum:
>            - qcom,sm8250-ipcc
> +          - qcom,sm8350-ipcc
>        - const: qcom,ipcc
>  
>    reg:
> -- 
> 2.26.2
> 
