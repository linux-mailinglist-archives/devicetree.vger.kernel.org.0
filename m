Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4C42575E7B
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 11:28:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231463AbiGOJZy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 05:25:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232856AbiGOJZh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 05:25:37 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 309FB7AC26
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 02:25:36 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id t1so6895721lft.8
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 02:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NSyMHFJARERFCcKjM4R5CufZfp8FiFsyanBzz8tEjsE=;
        b=VLZO7Om7Rdpt6ojMJmgtnqYyljvC5RebcigbNHjcN8mWlHnkHVEo0wr8oVr1Ku0ptZ
         UF4QObnw9KMGOe8/y9Tdr6qfhsyp/0Lo+MjHj42jveD9tJk0KkIthwErT2K7PYamIQPI
         8i/VkSkuO0EsZbENclLDsiwZE+0hAzFtaasiEq07aJ9iUbkk3R366ii63afBfP8Dh54i
         aVVomNlVdC87K8aTlx4s0ZnVGPscfLUjG6jJFAsjvrMY/Yy3NiTtEe0oSEIU3KBeQovv
         tm3TldVoKl0CfysKYMOQsBqtOqAd9O7shsIY8laZN8XvMYAFEgxa25AZ2Z09jNLw2Ndb
         p3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NSyMHFJARERFCcKjM4R5CufZfp8FiFsyanBzz8tEjsE=;
        b=WZ+CrfCgRriZ7JWA9Yp4novMXwwoTx9+5j/d0FKzlDm2OeceRQgrZoffJzwpmOPpFE
         sUKFXDIR2L5y4L3h6hxH/7dt3KfNlEBmMQKVfxkhk5Pi8jZVpFAGACQ+WiT4alMrJDHx
         DBkTHcczB1kfnEp/Ht3E5e5701i83khn9A3Y67Um8mclfkXkCnMtGMfvoX5Vn4Kh9E+5
         UA8oOuYJLDXckCi+EZphxU+vH+R2+9ncZzP8KOtCF3LuVHVWlvibu4hBvGlTShb1G+Wq
         BsePuZI7NOwVy8EJDY0KU1/WdDLGk6339Qz46KMVyGxI23yoSeMoHRc9yC5Dksd0NeP8
         4y6Q==
X-Gm-Message-State: AJIora+/SFC1oOWNmUpVWl4xngCq1p+EBdU4Ut5/L+OhvkO6Z4alia7p
        NUzivvx3TDWwvOoCDhsrntH6+g==
X-Google-Smtp-Source: AGRyM1u/SOMrRTU8N+Qlx/8H6RzEGmxHgkFOKJQMmi5dsAroBkh264d6ZKlLPFuLhOo8/qhec3mXpA==
X-Received: by 2002:a05:6512:3b0a:b0:489:da13:180a with SMTP id f10-20020a0565123b0a00b00489da13180amr7665794lfv.489.1657877134569;
        Fri, 15 Jul 2022 02:25:34 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id q2-20020a056512210200b0047f6c7542f6sm811410lfr.279.2022.07.15.02.25.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 02:25:33 -0700 (PDT)
Message-ID: <46944fe7-a4f1-409e-2d53-2ba3923a720a@linaro.org>
Date:   Fri, 15 Jul 2022 11:25:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: sc8280xp: fix USB clock order
 and naming
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andrew Halaney <ahalaney@redhat.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220715070248.19078-1-johan+linaro@kernel.org>
 <20220715070248.19078-2-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220715070248.19078-2-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/07/2022 09:02, Johan Hovold wrote:
> Fix the USB controller clock order and naming so that they match the
> devicetree binding.
> 
> Note that the driver currently simply enables all clocks in the order
> that they are specified in the devicetree. Reordering the clocks as per
> the binding means that the only explicit ordering constraint found in
> the vendor driver, that cfg_noc should be enabled before the core_clk,
> is now honoured.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
