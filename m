Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 116BB57CC70
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 15:45:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbiGUNpg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 09:45:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229703AbiGUNos (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 09:44:48 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9509A85FA1
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 06:43:17 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id k19so1856044lji.10
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 06:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Ugu9+BQebh8oUbesVLf90yINOUSbCYM1Wph6Cxi19ho=;
        b=hXxAmCBBdRcBuuUkQLQSHKPd2ik/hT1YZYCeZmSJk9huBTf3a0arBXeFb7bF9Rn7VF
         VrjIii7a8o32Dq2yKaDvkYj9KnRI0RD19vZeFvwWTQzF/HOomGFPZJoAGmXeju6DLfL/
         WfQia+PqLMj0RaxGoDlWsQLm+b5sTBLKDmQK991mcjTMi7/tsRSjKsiNuVeitNaYOObe
         Buyb+plCaEy46IjVmktGsm6cj6WflDn6xHbMD43Qxl2UsUhF630e7GhjhKtxil2BLMb1
         rJgP0d95lcJI76Fwo831+3CzFQXiSfcdajFnGz4N/f1KLDTk1fmfgXxrIdeXrluvc27R
         lk+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Ugu9+BQebh8oUbesVLf90yINOUSbCYM1Wph6Cxi19ho=;
        b=0m4LytMUjeZJNkNxOfqT7FKJylcwq0RsSyTUhhTtgrjYaBXFv+GOg+qCakXh6+SIxK
         KNzoQYXHckbsYRcU9oH5OPeDulqoA7P0Gqwf8SfIPHm77NIq8rZYiZLskFVwJXtPOPpT
         8eWW5s2H6E3e+3ntW17uH/+EKmJSy6wP/rXJKUUC0hgKU8tJgzXpBQhau9pLKd/ctq4u
         A7qdaSG3OasqIMIe+dNJLKbY9VJ1Od7xhYFXW0c0LCdBVgxp+RzJW5PLAuzZsCe6ACwh
         lvt0nLvapV+vk50xy8oKnG4pEHGlHe+l16FRiUO0wOAoHmu5tMGEquxQlkQARQb29T9x
         wF2Q==
X-Gm-Message-State: AJIora/0ivli+SQViynDCJkpBdy6TSOfNlnLsyyxdOeCpprUctHN6TBY
        GBpDHeQVx0az6dHeQG81rzby6A==
X-Google-Smtp-Source: AGRyM1sk6Lk3HTpTVzJJhaufs5oRoDVVpjxoq9YhDCd6efuK2WP78J5IE1t7GiZ0he9gOf6PkljFhg==
X-Received: by 2002:a2e:b74e:0:b0:25d:d62a:9033 with SMTP id k14-20020a2eb74e000000b0025dd62a9033mr3370071ljo.105.1658410996048;
        Thu, 21 Jul 2022 06:43:16 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25e75000000b0048a6fba9d77sm443202lfr.177.2022.07.21.06.43.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 06:43:15 -0700 (PDT)
Message-ID: <5c90ef96-969c-728a-3987-5793956c5224@linaro.org>
Date:   Thu, 21 Jul 2022 15:43:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/1] dt-bindings: rtc: nxp,pcf85063: Convert to DT
 schema
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org
References: <20220721133303.1998356-1-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220721133303.1998356-1-alexander.stein@ew.tq-group.com>
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

On 21/07/2022 15:33, Alexander Stein wrote:
> Convert the NXP PCF85063 RTC binding to DT schema format.
> 
> Add 'interrupts' and 'wakeup-source' as this device has an interrupt
> which was not documented, but is in use.
> 'clock-output-names' and '#clock-cells' are added as well, those were
> probably missed when adding clkout support in commit 8c229ab6048b
> ("rtc: pcf85063: Add pcf85063 clkout control to common clock framework")

Thanks for adding it here, this sounds fine but brought my attention to
interrupts and quartz-load. It seems that only rv8263 supports
interrupts. In the same time rv8263 work only with 7000
quartz-load-femtofarads.

If that's correct, you need to put "allOf" after "required" and inside
"if:then:" restricting it. For rv8263 interrupts:true and quartz as
const 7000, for else: interrupts:false.

> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Krzysztof, thanks for your review.
> 
> Changes in v2:
> * Sorted compatible list
> * Mentioned new #clock-cells and clock-output-names properties in commit message
> * Removed 'interrupt-names', not needed/used anyway
> * Fixed quartz-load-femtofarads defintion/description
> 
>  .../devicetree/bindings/rtc/nxp,pcf85063.txt  | 32 --------
>  .../devicetree/bindings/rtc/nxp,pcf85063.yaml | 73 +++++++++++++++++++
>  2 files changed, 73 insertions(+), 32 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/nxp,pcf85063.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/nxp,pcf85063.yaml
> 

Best regards,
Krzysztof
