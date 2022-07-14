Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F5265748E9
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238270AbiGNJ3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:29:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236010AbiGNJ2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:28:48 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA9A910DC
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:28:46 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id r9so1810774lfp.10
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qLoqEanmHmcOVGRPRRT+aRCQvQ8+n03ZqH5LbbY6VbQ=;
        b=MfaebuyV5vYu410V6OGgUu+pkpTyIAIoQgwqR/osYj9jXc5FjthQ5403nRIKo3lz1e
         X4jqlvRUNsnm4yjrijpaqjcPHcdUKkQ5f31kenhpjwRRC6d24WnItCmVOP4/neSXdzdf
         WNPxb0gXKNNTKnNBkDvrVL75XMeuMEn2M1d72R3K62Bu3JVPPyOvwt5xMDJ+twlpW2+g
         tkQ22/ErloE48NPDosl/YAZ743/xFeTaeJ6bZO8f5gKAcm8kEiBI/mrmegGMj/c8NL9X
         umn6uBCkex8XawnIhlgAwZyQ+VMbZ142e/p7Kgpq2CpLeroCngkKkBECen6feKfGQ2Rc
         Xpgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qLoqEanmHmcOVGRPRRT+aRCQvQ8+n03ZqH5LbbY6VbQ=;
        b=036JdC+ZzDv290UHsVjh7HrLI6UTlgU1Whmg49toief/v4WvGCGSf0r7KffAYvFaB1
         9JZt6y8Gu0WI2pPWhS8iAWGD2WY8N4RY65evxpXTSb5uHtT3nJNRbkpMZPDAtp8gVcfh
         6kSoA8XQ9Js5WGCmZAomDVV0YL8TKtp6ykOd/75+GAYabcs0lHF9ekxzR8qMEFcjsvtg
         hXT+Dr8NQ7PJKXDKBBmg8nuQrCI9PkEk0r29NG/wwCBNTQWXdHUjpEuaZldshRHWwshE
         OPs0txsGmnRLFwI/TB79tkr3vj4V+iHeK8CDwPKusm6t2aSDwXPAmTFJJ+hLKEazA7Ov
         //Ow==
X-Gm-Message-State: AJIora+CS9li8L2FicfdO6htRP6JoKgL7POISgK8AKIQJXEyrPaLKj2I
        ugUjBswSi4ORpCkCVLFC5vcA8Q==
X-Google-Smtp-Source: AGRyM1ue0q5+XuXiTzfYSUiX449xIjFdhkSs2tKAL4E+660PlYeAIswdiWE96dhZt93N9/mQvs0IjA==
X-Received: by 2002:a05:6512:31cf:b0:489:da0d:df52 with SMTP id j15-20020a05651231cf00b00489da0ddf52mr4646024lfe.221.1657790925082;
        Thu, 14 Jul 2022 02:28:45 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id y13-20020a19640d000000b00489ed49d243sm255490lfb.260.2022.07.14.02.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:28:44 -0700 (PDT)
Message-ID: <cc5245a7-f1d8-c465-4dce-fd21aca27000@linaro.org>
Date:   Thu, 14 Jul 2022 11:28:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 25/30] phy: qcom-qmp-pcie: drop pipe clock lane suffix
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
 <20220707134725.3512-26-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-26-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 15:47, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
