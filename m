Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64DDD5747B5
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:07:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237547AbiGNJH3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:07:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbiGNJH2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:07:28 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EB3210FEE
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:07:27 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id u15so1386276lji.10
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IFDdRvC9ZQ77e13XEaQ5abctlA6xZYx1dQc3x9ug9p0=;
        b=Z4qi8sR/JKAHbfgzIpvlLsBmokZm90HVdCB480lzZJKqZH847+f6bGs4IArLGPAL7N
         dqunROMcAAWtAXK9lo4mwI0NyeZ+JDW6P2GYea61r9+CHK83pv8LkDSzcyS5iDpNpXPC
         fFPnCjOtz9fy9wSTb+Jet0jOoXTSGpZIsYVbY33tHSMwiETZ95hZB901UfoXcqnN9kzt
         gqPLFVBN8jSiKd+7W/W6pzQb1fZ+Gn1JS9VAGymaqDr1CVR9lo2qmX3XjpCMb37TCa1f
         yuwXdIswQOlpEmhFtjpDTERFFJKgISh/E+xRFkQy08i6RPnbI18pANxdqws0P4/ATy7o
         3Obg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IFDdRvC9ZQ77e13XEaQ5abctlA6xZYx1dQc3x9ug9p0=;
        b=evkVsQyR/jbDrwZsRMI41qF6GcAqAvJFM7UB7Lbxo1TowysV83lz4xd/GbbDCFV2sH
         rV1fJg7cEvKdpUhB2ICrdc9kYSqzbfhEFgKj25j4F/62mJdA4Z4tkt1+dEsSeIkS5b9z
         7nv23ut2Y0+vuz2Gf8r13BdaH/519e96t+je0znWHPNSe7D8WBe1nyFbazaDYzPYgGk2
         9z5lHpH9wAmgilYHIZhbr3LEm06NE59N0YCskHQsOz2wQpXTT8xjDfbDN99uOv2z3v8z
         AAdeYhWqlcp8J7IPZJnd8GjHDyg09JUpgQi/fx2XwTnOEJJGqGdTWLZyQS7cSDHDuz+K
         TStw==
X-Gm-Message-State: AJIora/fkrMgRR9AkCR/0pytuGt5mHTfl4pKOmtfq4k62ODqqv3jo0a/
        kofBLl4cmT7j3Mk68pDvDCdbZuKIIBIufg==
X-Google-Smtp-Source: AGRyM1tzaFWQc48vaEzE2Yomk3B1qT9dVcVRjRU8KCSVyQXEIxRn20YoW0SyKHg5PQMsK8j6Ii7kmQ==
X-Received: by 2002:a2e:994d:0:b0:25d:8554:6c3f with SMTP id r13-20020a2e994d000000b0025d85546c3fmr4153887ljj.471.1657789645970;
        Thu, 14 Jul 2022 02:07:25 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id p18-20020a2e9a92000000b0025d7517edd2sm180506lji.11.2022.07.14.02.07.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:07:25 -0700 (PDT)
Message-ID: <26916d41-f398-8527-96f4-9a28f4f4e789@linaro.org>
Date:   Thu, 14 Jul 2022 11:07:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 03/30] dt-bindings: phy: qcom,qmp: drop redundant
 descriptions
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
 <20220707134725.3512-4-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-4-johan+linaro@kernel.org>
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

On 07/07/2022 15:46, Johan Hovold wrote:
> Drop the redundant supply and clock descriptions which did not add much
> information beyond what can be inferred from the corresponding resource
> names.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


(...)

>              - const: ref
>              - const: refgen
>          resets:
> -          items:
> -            - description: reset of phy block.
> +          maxItems: 1
>          reset-names:
>            items:
>              - const: phy
> @@ -376,11 +334,7 @@ allOf:
>      then:
>        properties:
>          clocks:
> -          items:
> -            - description: Phy aux clock.
> -            - description: 19.2 MHz ref clk source.
> -            - description: 19.2 MHz ref clk.

Here and in other places - I think you loose information, because the
frequency is not mentioned in clock name.


Best regards,
Krzysztof
