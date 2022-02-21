Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A0654BE585
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 19:00:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344717AbiBUIs2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 03:48:28 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344712AbiBUIs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 03:48:27 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 628652ADD
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:48:04 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id m27so13921797wrb.4
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=wByXpFHcY828yEK0Dp3D79lhT0Mw7H4yz4zgZkFlSyk=;
        b=y4TWg7PuSmRDeC+5vYasXzH736kKvAUZMgKQoejcgTHMIedb7tmlAOcEYkzx550LYs
         lLzQK18Xvv6vHQSq0HCQCUha3XMpeCx6ugSm7mt1f/ikFxnGvg7kikjRAEOlxq6rziEY
         w4SrR5qegL9K/JELtYBjCN18PIV7lCx/7DVfiwAWf5CBkWOyAINfmzvPzcIGRUGRtzVf
         N/nkUNrT9j33mD74eCSOwEtQmoekcEJfaGvF7qaFG25G+HiHLJXrrBF4pzlK+UGTJyG9
         IebfoMQL0GKa7le1WqVZp7llE/73UCA/RFWCwGXjJHSwJzCbbvoR+nbfwJCc6cxvEoFc
         5GUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=wByXpFHcY828yEK0Dp3D79lhT0Mw7H4yz4zgZkFlSyk=;
        b=1gdf6TIeYkK8byfGQ0zuHALQTpl9v9c5onb7QCu5Eb0wiSbKJn7c/YEOrBvr4vbyOs
         4IIPZxjy1hpDS9vfkRkQMdAJMQ9qyRTF62md+vuvvXfCc8h5XZEY0FIjPvcTZZAnZv7y
         NnLl0F+RA8tPNd9eP7qKNgMvp1vS4BCm/cZ1qkexWvusUramUIP9aH7BCW3pXtxcav24
         prKG7w4bNRcgwFQr/U55Sd5fpoqLDZu+DRqYuVVKodtLgeCh935ak5GsgwsI0FaKjPDq
         8n8jFtUlnh1EGE1mfqiMUhBdBu7KuSCtmyE4fEri+AR9QIWK0KzADhnDud8TsfmumCJ3
         bPKw==
X-Gm-Message-State: AOAM531/ZyianLyOWo+RSgwKLpgePJp9+2OdbcmGQuvIvGy8jy2M1lvI
        YTCOYeXRUsPK3/HgEbi9EzIZdg==
X-Google-Smtp-Source: ABdhPJyZ7nP3mDgn/E3K+0vAzO2zqpef4L+DFdCQ3+B1Y3Zr7WMetU+au+cM0/NZO8oaSOyImF66uQ==
X-Received: by 2002:a05:6000:18ad:b0:1e8:cbe1:afd with SMTP id b13-20020a05600018ad00b001e8cbe10afdmr14545370wri.352.1645433282965;
        Mon, 21 Feb 2022 00:48:02 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id a8sm11138231wra.0.2022.02.21.00.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 00:48:02 -0800 (PST)
Date:   Mon, 21 Feb 2022 08:48:01 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Luca Weiss <luca@z3ntu.xyz>
Cc:     linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 01/10] dt-bindings: mfd: qcom,tcsr: Document msm8953
 compatible
Message-ID: <YhNRweYMmkaSKJX7@google.com>
References: <20220220201909.445468-1-luca@z3ntu.xyz>
 <20220220201909.445468-2-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220220201909.445468-2-luca@z3ntu.xyz>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 20 Feb 2022, Luca Weiss wrote:

> Document the compatible for tcsr found in msm8953.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> Acked-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
> Changes in v2:
> - no changes
> 
>  Documentation/devicetree/bindings/mfd/qcom,tcsr.txt | 1 +
>  1 file changed, 1 insertion(+)

This is already applied.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
