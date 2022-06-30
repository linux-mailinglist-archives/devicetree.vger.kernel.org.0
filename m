Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C121562333
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 21:32:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236355AbiF3TcB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 15:32:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236857AbiF3TcA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 15:32:00 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EAEF43AFA
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:31:58 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id cf14so177409edb.8
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WtCRasqEYNohvoAW4mnMDuOfHWPyFkMzbnF4QyLKoxY=;
        b=AcSoOn1hU9fPW9ruw9JCtqQnN59iziLKR7kiy8Ou58+lejLdunBIjqelZoL5DA5+ZB
         nc4VG3cPsXagvRD0R6VWl4rUAw937KpU1MdLm1pCYsjH30DCrqv5LnAqpVEWcMAmt6Ye
         7crk/QQzgTNOz2WKyNtz27CkRH1HR7V1T8GQpIpC08V2fayY6XMnBtQMpKnRw6btMfba
         QcmPsucEdJg0eINUD4JDABQIUhkx9HB6O2Y/46sM2Vskmn0qo2zOcaok5qAIi4LOHnAX
         Yw0b1mjIqtgOdtJGB8Xy/MlqG8sePyy2T1n8oppchFRiqsRO8SFlkzfsA+bLTUvjOGIH
         GyDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WtCRasqEYNohvoAW4mnMDuOfHWPyFkMzbnF4QyLKoxY=;
        b=5qbB/CTvrtyDw3udIlBno9XYMwopv9dAmrNuMOkJJgJvFrtNlkrubAGt0DLp2Pt7e+
         mD2dAqJPF1QJCkx77sXnSe9HVs2KyUOpvKiQgm0JP/ARsKGe7zthWMhvb09lFd67l7LD
         EHhxZ838mHu14TySLMZm/wbQ/LIlXgnjAXE9pSJeoBR7vgAkxHCOhrYt2nWS6aH1asjd
         l1xCI1Z3Px2My+JgqitLzmi0rrj+AUBfTaXXfkksLSEuq9W2Lh04z+T5tSQLIiRF2v1f
         CDcsYdzMBBWh3ncVYD8+Fwt9SnL2OtyA29d2LMZuj3d1m2FKDWvkgaMLduwlDr9qaIPo
         U3LA==
X-Gm-Message-State: AJIora8ErXA89jzUu5MxEg5OnxgHAYEOtUqHe0jpp8Qd6qPmjzKRHpnh
        SEuTQS6a5s/ToYWhAjibN5UO0w==
X-Google-Smtp-Source: AGRyM1uEul3AKPtjIP+zVc/IHmRfvHfOeUW+9OLxuSPhbYqdFOMRJRb5hWscogdarxaE8qoyDMOJkQ==
X-Received: by 2002:a05:6402:40cc:b0:435:912b:257a with SMTP id z12-20020a05640240cc00b00435912b257amr13634061edb.380.1656617516683;
        Thu, 30 Jun 2022 12:31:56 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id dx13-20020a170906a84d00b0070f7d1c5a18sm9463187ejb.55.2022.06.30.12.31.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 12:31:56 -0700 (PDT)
Message-ID: <27495fa3-b4ae-7502-45f8-5eb4c5e36640@linaro.org>
Date:   Thu, 30 Jun 2022 21:31:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT
 example
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
References: <20220630173922.92296-1-marex@denx.de>
 <f0366170-c1b6-9573-3e9c-9b1ace2dfbad@linaro.org>
 <b6badccf-8910-da26-bbcc-1302d957a2bd@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b6badccf-8910-da26-bbcc-1302d957a2bd@denx.de>
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

On 30/06/2022 21:16, Marek Vasut wrote:
> On 6/30/22 21:11, Krzysztof Kozlowski wrote:
>> On 30/06/2022 19:39, Marek Vasut wrote:
>>> Document the LDB bridge subnode and add the subnode into the example.
>>> For the subnode to work, the block control must be compatible with
>>> simple-mfd in addition to the existing compatibles.
>>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>>> Cc: Lucas Stach <l.stach@pengutronix.de>
>>> Cc: NXP Linux Team <linux-imx@nxp.com>
>>> Cc: Paul Elder <paul.elder@ideasonboard.com>
>>> Cc: Peng Fan <peng.fan@nxp.com>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: devicetree@vger.kernel.org
>>> ---
>>>   .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 54 ++++++++++++++++++-
>>>   1 file changed, 53 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>>> index b246d8386ba4a..05a19d3229830 100644
>>> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>>> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>>> @@ -18,11 +18,18 @@ properties:
>>>     compatible:
>>>       items:
>>>         - const: fsl,imx8mp-media-blk-ctrl
>>> +      - const: simple-mfd
>>
>> Not really... simple-mfd means devices is really simple and you just use
>> it to instantiate children. However this is not simple - it's a power
>> domain controller with several clocks and power domains as input.
>>
>> It's not a simple MFD, but a regular device.
> 
> I don't understand this comment. The LDB bridge is literally two 
> registers with a few bits in this media block controller register area. 
> Can you expand on why the simple-mfd is unsuitable and what should it be 
> instead ?

Looking at the bindings you have there 10 power domains, 10 input clocks
and a domain provider. The driver is also not that simple which is
another argument that this is not simple-mfd. Simply, it is not simple.

What I meant, is that probably you should populate children from the
driver instead of adding simple-mfd compatible. Once you add simple-mfd,
you cannot remove it and children cannot use anything from the parent.

Best regards,
Krzysztof
