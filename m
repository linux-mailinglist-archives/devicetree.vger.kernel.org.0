Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C0DD51F7B7
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 11:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238274AbiEIJNv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 05:13:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236311AbiEIImd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 04:42:33 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1DEA14A245
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 01:38:40 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id gh6so25418450ejb.0
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 01:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rntni4SQyiBF3kclcH/uwuYNMjc+0Gav6ahcVT8jLWA=;
        b=bk1/jNFbKZ6drKaeIveJ1CWelZ1cpTEL75vlQwdj0IW7KioIx5N2FF24J+6CabFZBY
         9NdXBECWmNbxBwTqEsM1kj8T3e9YtCVZgXvnEZb3hZQFdTBLszNu62WRo52m1w71bXR1
         vk3KLowS2Qo7EgsaCjkpnFpzkSQvQzSW1BdBhcBvCJICOKhOAPs5UFK7EX01pcQat99Z
         dyJgo7BYeFTdiqRdcfwC0/H4SpgNIg9gONcl/WW4TxzYaxqVuzHT+/ZrNkCiabCxqRJ8
         ncmwUOB7q4OexlrPbVI9z5H5BFXuzT02OwX8ptniWXjnyiwxT1ZcfTO/bB/feE8FIc/1
         pO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rntni4SQyiBF3kclcH/uwuYNMjc+0Gav6ahcVT8jLWA=;
        b=ndfRF2TZDIVHGbM47ZaRkrKDO1nZQE7jo684y4plPCkalegH1YTHCYlyYppry0T7DN
         CcyPV3yx06EAKE3asj3XxjbY/lIjhNULPB0+s2MuhlWtNktKWvGQ0+4ytxao5YBsd3jw
         z+gZozSOHtox17gjIRy/Oj9a0wYmU4NiellQADtIGSA4Q17QSP39mbbawKop9g+3LmNS
         5kdb3w24WScboOptdKhbDyJ2huvs9DCSlJrj9OfteKpgCfL+L7wWYX1UloAHK7WvtuLt
         /x8UBlrKwkwCnfFokvKNl3Qz0PpFs84zDqbiQCV3uQdVyzH7fwVPDzzR8MZZBm6bg25C
         xgPg==
X-Gm-Message-State: AOAM531eULW/4t6O5ganPGYpE0ZkE+pZOouDeNErGSEdXa9/PVHDkbWg
        peBAHyJjCMhW0wgITutTqS1wKw==
X-Google-Smtp-Source: ABdhPJwv83eNKe0k4LJHVdnwRwqZaK6uzaa5/2ImTxiD3IfkbrSYsnyFetysu+O+gxXXo2FrjJVEtQ==
X-Received: by 2002:a17:906:a05a:b0:6ef:a44d:2f46 with SMTP id bg26-20020a170906a05a00b006efa44d2f46mr13457193ejb.192.1652085519443;
        Mon, 09 May 2022 01:38:39 -0700 (PDT)
Received: from [192.168.0.243] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p9-20020a170906140900b006f3ef214dcdsm4840869ejc.51.2022.05.09.01.38.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 01:38:38 -0700 (PDT)
Message-ID: <bef4922d-4a32-f184-44a1-8f5430190938@linaro.org>
Date:   Mon, 9 May 2022 10:38:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2] dt-bindings: qcom,pdc: convert to YAML
Content-Language: en-US
To:     Luca Weiss <luca.weiss@fairphone.com>,
        linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220103074348.6039-1-luca.weiss@fairphone.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220103074348.6039-1-luca.weiss@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/01/2022 08:43, Luca Weiss wrote:
> Convert the PDC interrupt controller bindings to YAML.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes since v1:
> * Adjust description of second reg-name as suggested by Maulik Shah
> 
> @Rob Herring: Hope it's ok to keep your R-b given the above changes
> 
> This patch depends on the following patch, which fixed sm8250 & sm8350
> compatibles and adds sm6350.
> https://lore.kernel.org/linux-arm-msm/20211213082614.22651-4-luca.weiss@fairphone.com/

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Luca,
I think this needs resending as dependency was merged. Alternatively,
maybe Bjorn could pick it up through QCom SoC?

Best regards,
Krzysztof
