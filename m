Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 365AE640664
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 13:08:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232922AbiLBMI1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 07:08:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233184AbiLBMIY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 07:08:24 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA4E228E0D
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 04:08:23 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id be13so7110938lfb.4
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 04:08:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aduZyZsfoBSNeS7PUzHQe3IQH2NBuBYUfQB0aJd37+E=;
        b=vZYgHHxJgzG7uGa8/l+TR4Sys+oq5ytJ9eFelFwVpL5EFD54fCjgS+0UxakUpZYF6B
         pCc6dINKs8kjbILfld67LYdMEOBWPpPXGIApYs2Mg4d+Fz22ePwuIZGZJGbx7CaFXxRK
         6I9c+omo2pVqiwKrDXkapRG46Dj3hDD0JZqur4i82ogXIT8azPVl3P/YM/E0zleJ/isw
         p9A4+OkYK6aRhb1f/C+4TP/G9eq5w9XgLJ6IEeOpRguQQ3T11G0FJcwcGTFeRDaYrG9F
         V/xgtlYGqFHWecxcqf7ovrBXi4A+hbCCi4RRZ6orbQQ3SA75AVi7OcULKH40bJB1hPr+
         RKdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aduZyZsfoBSNeS7PUzHQe3IQH2NBuBYUfQB0aJd37+E=;
        b=Sb0jH4L1rc4oOJC+OCG/eIX2L+LQlFkQRZPy+ZV3TyME/2NbpIp3KXaXqqwCUkyQT/
         kZsLEZVWjn0sh9+GF9o5E89PGJQy55w6udqXyxbm3yWi5VSP+qgtC1nHsdh/+qLeVGka
         +6C3aOWCVVU2JJ6RfRDMiElqrZ5VDvF8yT+3NMsDE9aYcdMfljghcW0kbhPmyghIS6nZ
         BHnYYpS1XB+H2q9f4dLaSzr8YVAD3IohCTFFIFJeWJM/qhVLtFo+j7tiF1Q9dSxAo9uO
         irg04YZTbDCjIFuyMuuXwrrzP7FK/VEaoxUZtEyzIYMosr9PFnrGlGZX00eFgtN5+msT
         aNHQ==
X-Gm-Message-State: ANoB5plrOIFzYiVqquxjX5+wVFL3+ZIpojUpmQQdEQa4eHfsPclFG2TW
        bXUHcJ+d49hZ3djmyPrpNaOsMQ==
X-Google-Smtp-Source: AA0mqf7zq3pmBogeq/BXvzyr/S6ku4C+ro/un1B7bvvRgBTagttqVf4EMSjp0gZD7ymuiLT4pSW4jg==
X-Received: by 2002:a05:6512:12d5:b0:4b5:f51:aa72 with SMTP id p21-20020a05651212d500b004b50f51aa72mr5518700lfg.371.1669982902095;
        Fri, 02 Dec 2022 04:08:22 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651205c600b004917a30c82bsm992831lfo.153.2022.12.02.04.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Dec 2022 04:08:21 -0800 (PST)
Message-ID: <4345f968-8c2b-6c54-7f2c-81effaba3ab2@linaro.org>
Date:   Fri, 2 Dec 2022 13:08:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 8/8] dt-bindings: soc: socionext: Add UniPhier AHCI glue
 layer
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221129103509.9958-1-hayashi.kunihiko@socionext.com>
 <20221129103509.9958-9-hayashi.kunihiko@socionext.com>
 <33ca35f4-acee-6b2b-1a73-41ed5882819e@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <33ca35f4-acee-6b2b-1a73-41ed5882819e@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/12/2022 10:30, Kunihiko Hayashi wrote:
> Hi Krzysztof,
> 
> On 2022/11/29 19:35, Kunihiko Hayashi wrote:
>> Add DT binding schema for components belonging to the platform-specific
>> AHCI glue layer implemented in UniPhier SoCs.
>>
>> This AHCI glue layer works as a sideband logic for the host controller,
>> including core reset, PHYs, and some signals to the controller.
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> 
> (snip)
> 
>> +examples:
>> +  - |
>> +    sata-controller@65700000 {
>> +        compatible = "socionext,uniphier-pxs3-ahci-glue", "simple-mfd";
>> +        reg = <0x65b00000 0x400>;
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        ranges = <0 0x65700000 0x100>;
> 
> In PATCH 7/8, you suggested that the node name of "USB glue layer" should
> changes to the generic node name "usb@...".
> 
> However, in case of this "AHCI glue layer", I can't change "sata-controller"
> to the generic node name "sata@...", because ata/sata-common.yaml has pattern
> "^sata(@.*)?$", and the changed node matches this pattern unintentionally.
> 
> This layer isn't a sata host controller, so it's hard to give a generic name
> to this node. I'd like you opinion.

Yeah, I think it's fine. We do not have good names for such nodes.

Best regards,
Krzysztof

