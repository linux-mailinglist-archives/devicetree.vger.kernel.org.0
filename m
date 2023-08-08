Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06D2C773BC5
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 17:55:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229947AbjHHPzX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 11:55:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229934AbjHHPxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 11:53:32 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38A8C55A9
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:43:19 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3fe1e1142caso56156465e9.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691509372; x=1692114172;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g0VsB+3QcpVhSzXsrcJCWQORogKC8v/3XnAGMVr+XVo=;
        b=pmDFCFjEee6XPW/0kxOY7YODHKSvujft+AZYJEwWGZCsIbC5/sjSaqDpGrRy+0sNz4
         8bUhqcAe0SXi6R9QmmE1R7k3mzj2S15Hk3tm2xp1Lf2L1cqhHMuT6ievhhpmj5bSyZcJ
         cge59R0yBzjLl0/EiKI4t/2LJmRZ57Be4UDBDpkRVVIb2LugRzRvO8UWMjjH7cVvRpZE
         scjs6YfimXaw2dils+hW7m+RrCrrnac4JkzIvJW+0t74Hn5QbuxgB1ecgHf3ge89wAX8
         T5OwjUvSgisysMg12padDVCGTwrgMYGDGkaUH99zKmQ+jMdsE0irj49vbueVMEnDIKyf
         R89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509372; x=1692114172;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g0VsB+3QcpVhSzXsrcJCWQORogKC8v/3XnAGMVr+XVo=;
        b=UOoDWqWE3A8cFZQmNJ5wOGR7yphoHzVx9dkq/PHj6eU9vpvVZZYm6+kK2TmofuorvS
         rQoKUsl+JuRAQv0q6z6xuEcxpVeBbLr1/Mg8+alRioaDNV5RZtFZdiZKZGTSWqYBWD+3
         +8i4Ed64BE804RjzQdLHDdk6fkkFHN+t+88lsMYMdxr3Lqk/ohhun7G9RFPKZ1q7ftq0
         e8gFBTqok5QTlW0nMbHf5Pvppk2y9l7KzNRk2VXYAEWW//fHkL/43I2wLRwdpJrmIxxn
         /0mdLrg6K+DyfDzyrhElN+u7F6Pf/P7MW1GpFBFZlmGvhBPPmliutrELlqiWc95OcDqP
         Q3zg==
X-Gm-Message-State: AOJu0YxwKw6Hh6GDygUydDTCNQWciOe9bCC+xOlSeFA7/Dtyfs0YAb73
        tDNNpHRzR/mAo9qypFOt2OGbLnT9TEVxUDz3I3I=
X-Google-Smtp-Source: AGHT+IGZyMVu45JR/04bE0n1F2vFeCDrbv7qqr++NR+xxeRIqEcFbGzKT0+3PpQKpAcf10kY0QPC8w==
X-Received: by 2002:a17:906:8a51:b0:99b:d075:18ba with SMTP id gx17-20020a1709068a5100b0099bd07518bamr8071366ejc.56.1691484813775;
        Tue, 08 Aug 2023 01:53:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id r22-20020a17090638d600b00985ed2f1584sm6290546ejd.187.2023.08.08.01.53.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 01:53:33 -0700 (PDT)
Message-ID: <9a9a073b-91d8-08f3-c738-38171a9e8640@linaro.org>
Date:   Tue, 8 Aug 2023 10:53:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v7 1/2] dt-bindings: arm: aspeed: add Facebook Yosemite 4
 board
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20230808084248.1415678-1-Delphine_CC_Chiu@wiwynn.com>
 <20230808084248.1415678-2-Delphine_CC_Chiu@wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808084248.1415678-2-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 10:42, Delphine CC Chiu wrote:
> Document the new compatibles used on Facebook Yosemite 4.
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

