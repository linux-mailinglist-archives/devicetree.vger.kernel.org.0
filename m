Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D7464C9975
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 00:41:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236831AbiCAXmf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 18:42:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233036AbiCAXmf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 18:42:35 -0500
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A4CC1400E
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 15:41:53 -0800 (PST)
Received: by mail-oo1-xc29.google.com with SMTP id i6-20020a4ac506000000b0031c5ac6c078so68930ooq.6
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 15:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=FB5c7fGmjY2vzPSIYKpRpN7o3fvL6nPabR7+/6/jJm4=;
        b=Uolg8BYJVwfuHgOiNxsceDGgDSsKATbYPtepoOM7JTnDPCxPMI5RGAAnretva9wYIC
         0TOSjs8/RItMx2J051qhbIGE4dWLJieNORbNWDKdVLpZjidfBdnkNAG1PyENMwAbCtiS
         hQjDqZlJaDqlnplT1nbn+R2rBNE9Uxpiroy1EMiGvvMraag+LsSaTE9kuuRH2vPmESy7
         g9RkleevVgwvpP1b0zFrW7hd78zr4REht5fmRhJQz7CDQE/i6oXvR+kRC898Bosp5ZSs
         t8DUW/ppfEjRhqJRSY7wJ49hRPDacbeu8kAyoqzutoDrAGfuhf6EKRcigmNBttLgK6Fr
         bPmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FB5c7fGmjY2vzPSIYKpRpN7o3fvL6nPabR7+/6/jJm4=;
        b=K0xA7ZsjsuPKeHnYkn3gki7KoyMtdYb4K30Gj+zdSJsSmfTKc54JNlbUxqyUsLYU0i
         2DEg905zlXGngl9mq9qcUjGAPKmKgTtZAYWXhV8Ffz/pTIrEawajtcRrMBOqJfvuW8Z7
         Jj6AVGanuZupfaMYYcFv+76VKPUL6JkW4Q0N48ZkNj7mouXNzqyVUkcnwbv2mXB5fJBP
         0tJ/l0VnaoORFbrejoo0vWgQa/irGFMyLMIpkTIwwjAw/8acJkfhJIo9QvdyO9BXMl8N
         /S+rf/hEENyFVVsKfnSOsIhZOI0rG0dAQmO4IzzobejyZGJxq9KtdDn50r8LvEAj32Fx
         TY7w==
X-Gm-Message-State: AOAM533IQ5IZ0IyxMf6J58BO0kfe+PfnVNsusG4LJ+dbmwnYIKMrheyP
        nIYbOWFtgpe0HCo2NmOu6QSTB9yEnGIpCQ==
X-Google-Smtp-Source: ABdhPJwOLx+LHzza/QTY1wZDAJCLy+G1/aPn3XmGmMMH67gZxp+p2fLhfQdVgQ39wLKg4GR4MjZY7w==
X-Received: by 2002:a05:6870:702b:b0:d7:433a:dd9 with SMTP id u43-20020a056870702b00b000d7433a0dd9mr5663415oae.97.1646178112947;
        Tue, 01 Mar 2022 15:41:52 -0800 (PST)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id k22-20020a056870959600b000d277c48d18sm7016330oao.3.2022.03.01.15.41.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 15:41:52 -0800 (PST)
Date:   Tue, 1 Mar 2022 15:43:44 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>
Subject: Re: [PATCH] dt-bindings: display/msm: add missing brace in
 dpu-qcm2290.yaml
Message-ID: <Yh6vsN6WspOR3Cdv@ripper>
References: <20220301233037.2257996-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220301233037.2257996-1-dmitry.baryshkov@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 01 Mar 15:30 PST 2022, Dmitry Baryshkov wrote:

> Add missing brace in dpu-qcm2290.yaml. While we are at it, also fix
> indentation for another brace, so it matches the corresponding line.
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Cc: Loic Poulain <loic.poulain@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
> index 8766b13f0c46..b1b4652077db 100644
> --- a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
> @@ -209,6 +209,7 @@ examples:
>                                          remote-endpoint = <&dsi0_in>;
>                                  };
>                          };
> -                 };
> +                };
>           };
> +    };
>  ...
> -- 
> 2.34.1
> 
