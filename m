Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9057B5748D0
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:27:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237970AbiGNJ07 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:26:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237956AbiGNJ0c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:26:32 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EFAB6568
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:25:34 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id bp17so1829811lfb.3
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=G4SHg0v0UTb3/wETQ9utchWc9oSi737vagHnYZzNcEw=;
        b=UJosXSDIOCQA7CkfHPIk2bFFsaniJh806Rdc+4td/6efm/F2x6bc3R55hxcASp6xE3
         dssT7wZsAC7leRWDQccu9BJzy7qRRpTat5Yd0n57bc/IeHc2dY1eh/EYztXAyeQ4HJVb
         HG4t7yhI0gWLcZJzQf1fwWoubI+NisWFwBvJhzcdA49YL4WAN8nlqwFJftVqjrlW652O
         yovL8Bppc6/qJzzH/O6rzCntep+1VbeYhRWaKmjVWXRqLN5SjF5e/cwRMC31XZJKVWxE
         h17p0U+6GgnDHT/4EFr8TWcAu+4gFFePea91v55PVpyg0fgT95pHkUzAzQaWD8XjOLyB
         vogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=G4SHg0v0UTb3/wETQ9utchWc9oSi737vagHnYZzNcEw=;
        b=uVapOEIep6SoOf2oA5crNO34eraJUQX2qT6SGrPfUq0iNuLntfIQlhKI1byfWAdOV1
         +MEm3Hx4judVoSYatMYcm3mtBZKVlsqum0ncL625BTrFd1mryLM0zBdmbg8s+ovuW3WH
         go4bd+qdddvq1/9vwXT1ZuNa321sikmtyPosTdvhcmVIUB2JMdzqC+Aj/8ZLzJyDjcrh
         HpCwNRkeN4Y964SKU+8RuBHT20r+ZMD+iWNCdOOSpaxMrFmb2xd6mybQjojJQ+LeDbO1
         v8UNKr1pYxDYSA3sMYO3aj+BkggCW1VaGQNvvTsxa08r0AF6z9Xt7FfwE9dX9ry7yiQo
         4ZeA==
X-Gm-Message-State: AJIora+DSMxlWkNq2MHJd/GGKZrXvTnvQLOfRFdADy21poTXHBLfItrI
        dUoeJB0pLy/GY8o+UBpadzg0gg==
X-Google-Smtp-Source: AGRyM1ua6lLzYbEzTJQNV0u3KzfC8NiZH61p3CYrMfOwp61n3WD6zdS8uA7jQ6LgHPcEUmLg9bK8Bw==
X-Received: by 2002:ac2:5590:0:b0:489:f4a2:5526 with SMTP id v16-20020ac25590000000b00489f4a25526mr5095824lfg.116.1657790732574;
        Thu, 14 Jul 2022 02:25:32 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id s10-20020a2e2c0a000000b0025d70efeaaasm184639ljs.75.2022.07.14.02.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:25:32 -0700 (PDT)
Message-ID: <8e564b29-50e2-aa83-7a21-f28d37b384d3@linaro.org>
Date:   Thu, 14 Jul 2022 11:25:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 22/30] dt-bindings: phy: qcom,qmp-usb: add missing
 qcom,sc7180-qmp-usb3-phy schema
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-23-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-23-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 15:47, Johan Hovold wrote:
> The "qcom,sc7180-qmp-usb3-phy" compatible is apparently used to describe
> a combo PHY where only the USB part is used. Specifically, only a single
> reset is used.
> 
> 4ad7d7eeed3a ("dt-bindings: phy: qcom,qmp-usb3-dp: Add support for SC7180")
> 94c34600b617 ("dt-bindings: phy: qcom,qmp-usb3-dp-phy: move usb3 compatibles back to qcom,qmp-phy.yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
