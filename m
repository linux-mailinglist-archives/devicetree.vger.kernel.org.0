Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02BE9554DC9
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 16:48:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233196AbiFVOsq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 10:48:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232464AbiFVOsp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 10:48:45 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B66AA3B3EE
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 07:48:44 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id lw20so12430650ejb.4
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 07:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HH079LRyJTHmM+5gTDBKSJiZpHcFCkFjE8Gfy06llCc=;
        b=H9tP4SI9QupeqEThyhbGj6fshmasD8PmJFGVHL7k7YByj2aMUy03B5eYGHNd2eMY74
         XR6LRJmw/8PPwjk6xlbKZhXYFTke5A70dFaOHoRFyi0lz2OaJ7M18rhdJCLCZ0/wxbGk
         2nmdaSa2GBf+qpEuUSSz22bLq6H++ga00KwHWt6bSRuUt+Uza96Cg/wz38LJt466nUXu
         1WZtDG0wVI91nnt2oYicf3RRPGWW6/XnAQr/KP0pwHh9GHJjMdsk1dztKssfodFT/Mmk
         N+y7mt5XpoPQirdnyo6H5Wf8MZCeuhId3dHCXz6A3f2jGvvj4/MzDkYCRFZR8WXm30GN
         SPuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HH079LRyJTHmM+5gTDBKSJiZpHcFCkFjE8Gfy06llCc=;
        b=zZA3v35zLfw0elaUji/xeFqttdY2/RJKYz+8mbMgJGnUyL2Qc1iJiXIfU2Ef54G0n+
         3VPZ/Zxj2tX3SDb4Odr002IUXi2lguQuiRMOA8IuS0CRw/JC2QuP4biJ61vmVX0eEkpW
         JfrBdzC0SZkPP0Mhyy34vuoaKUq96nvWP2mawd1nKqeHdNNNDGdPHlNOirztl8vw30Hm
         PDoYRvDIE2l/bbIrCg6M9/GCZDAXNaa4IRmF57WN+AprLZRy/gqIwUzD+OfaxRTHSgJQ
         2lomPmNX0+FUTTBDrX+9giuCQ/ZqPUw+mze0ibO4q8daW9rZYbu+L0bejYwiCjfdahVc
         JwGQ==
X-Gm-Message-State: AJIora9xdNYD12F8n9RniuiPx0PM8KFyFNYS7OFBkKEU7g9q2ViUNUQJ
        p7bJQdS5u3IDdZgyRD4WBJrapA==
X-Google-Smtp-Source: AGRyM1tTU8sGWhE5uoJlmgoqQlCvu0Bo0iKSowkNVd8F9534/qg8dpEzj0RucSD0a2PdldIeeIU+3g==
X-Received: by 2002:a17:907:a427:b0:71b:6f0b:8beb with SMTP id sg39-20020a170907a42700b0071b6f0b8bebmr3434300ejc.496.1655909323287;
        Wed, 22 Jun 2022 07:48:43 -0700 (PDT)
Received: from [192.168.0.226] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gg19-20020a170906899300b00715705dd23asm9286292ejc.89.2022.06.22.07.48.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 07:48:42 -0700 (PDT)
Message-ID: <fbf2251a-8df7-7bb3-bfda-8359b6d151be@linaro.org>
Date:   Wed, 22 Jun 2022 16:48:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/4] dt-binding: mfd: Add Richtek RT5120 PMIC support
Content-Language: en-US
To:     cy_huang <u0084500@gmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee.jones@linaro.org,
        broonie@kernel.org, dmitry.torokhov@gmail.com
Cc:     lgirdwood@gmail.com, cy_huang@richtek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-input@vger.kernel.org
References: <1655892104-10874-1-git-send-email-u0084500@gmail.com>
 <1655892104-10874-2-git-send-email-u0084500@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1655892104-10874-2-git-send-email-u0084500@gmail.com>
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

On 22/06/2022 12:01, cy_huang wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Add Richtek RT5120 PMIC devicetree document.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
