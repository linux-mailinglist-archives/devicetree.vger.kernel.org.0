Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CA60575F9E
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 13:00:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230158AbiGOLAE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 07:00:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231807AbiGOLAE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 07:00:04 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DEA485FA0
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 04:00:02 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id m9so2648649ljp.9
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 04:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=U5txt9x8smZ4IgvZ38RCN+7duAG7WAB4MIMi6JGkO7E=;
        b=Zxa8hnVdjM3b2P7SQfbBDFiyWJhbsVXr0oL+nJ3+VODTbw+EbOci/mjLObJo7GzRLd
         n8jfDHo7gFC8r9sod5rQu08aKXCl0O8mmQeLKEJNWYGARGCZOmrkaMaUiny8D7i2VhcQ
         /F3o4AoQB1iFHXazdTMDAJsgEpnRBFwdDxhCWXhy0urHoyi9WMEjmXoCBkItGkDCRgQ1
         8oBunZQvO0Ln/v1I1v0kx5o8J4U64imlkrCDIgzJDqEcsRgMl+si7Kkt5hz/ppVUEj6A
         JCphB1gdf3jNbtqNU5z+49ROdWu34YLjigyoeM9YHXz+HICZOFM/We/UxQlBu4eJL3ay
         GJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=U5txt9x8smZ4IgvZ38RCN+7duAG7WAB4MIMi6JGkO7E=;
        b=vkPJxhyoTRRD2UqUbZgkFWybD+sr7taBccGCZ5i6cDcFZ0x1//SopsG60C7rx6x2/S
         HT1T9wt0myuQHo6rw3lky0IMNJGibGOGeMb8ulmsVzaqP2C+0L/torkiuOzlbBSijQrn
         tLE/9EhtvsLQlV1KcpKjo0NlYQUqcm0yfEfHdFlXFxh84E+If3geyMdoo2x4Zij0N2HT
         KrrUXobuCFRjAi55es1fcNjl6/JL8DGSfpko9URy8nIrKUzw0H8rALh9DYx9jKbUk83s
         IAVtxvgy+5JVN54GWk5oFvZPYOujL8Tg+WOgJA7kj9Q/hNyZXW2GaVAbzLl/a0upVz8l
         LOpg==
X-Gm-Message-State: AJIora97ziQ+pWsrswNwkgQB4XhP4IiZcbQhF+3T0fge6aakk1TzVEjy
        dog6pQOJbJ/agdwYgtHt46kxUQ==
X-Google-Smtp-Source: AGRyM1v/7yZGnzFbovHNbDm2E9e1PbOnLXdS6g8Wg4xHL8k5cLWS6ABI6D4WdmUBNys4yKRH90m2ag==
X-Received: by 2002:a05:651c:4c9:b0:25d:8599:5637 with SMTP id e9-20020a05651c04c900b0025d85995637mr6796910lji.163.1657882800496;
        Fri, 15 Jul 2022 04:00:00 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a12-20020a056512200c00b00489e38c4fc4sm847270lfb.276.2022.07.15.03.59.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 04:00:00 -0700 (PDT)
Message-ID: <be956a4a-4a7a-e2cb-47c0-cc28eb7debe4@linaro.org>
Date:   Fri, 15 Jul 2022 13:59:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 25/30] phy: qcom-qmp-pcie: drop pipe clock lane suffix
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <20220714124333.27643-26-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220714124333.27643-26-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2022 15:43, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)

-- 
With best wishes
Dmitry
