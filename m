Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25192529AD6
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 09:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241015AbiEQHcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 03:32:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236081AbiEQHcq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 03:32:46 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BD1C25586
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 00:32:45 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id i40so6229803eda.7
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 00:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6+PM+IzbMhfXslyjFiVRohLtTwAYLD/wNY5LYHLjz2E=;
        b=kcPFtNO6HjpPS2YFgXfW1xd43vq158WrRQFhegs5i8ItjE6arwKhjtBg2Q+OQf8rJ5
         dfhJOyns7c3cx/mvCmMOdKWWmDz4ShVB+UGbOVHkRKOUQ1TtmcSHquKqkYt7E0iZ1HMQ
         6CLzqPnnGMWOkj3gkhcTfiyWw6RBGpDNlpdnLpkIpBZ7wOpqbCA5hSU5I6UBMg+Erv9P
         C15CIzqCLjyWwmAXjLhTSmAf79X/g+BjXSq7wuYXfo569wSPkEi5VIH5BX1KWUngjD5r
         GE2ysgs5aBZp6g61OHqYuy9Ztl9e4I3aRhPZacsJhx38hKB8elWX5ptnhxIGMquaLSma
         ogaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6+PM+IzbMhfXslyjFiVRohLtTwAYLD/wNY5LYHLjz2E=;
        b=rfs7UUSmbjciVv8kYz93KigqkgrRXK6qDOD0EJww0tYB4lyB4O62np2IV5hzr50ehA
         9/8aQt0aCIFqxXcgDvEAwd7yJSX1i0JlZTNRlvytzrukCc3MUHoHTDpVBS284KTTBs/V
         iG8sU7tHXwG1vD4Wv98u8vUyt0RbFwWh1mjlAppEAPvzvDoQNAAWJietVz7MekaNvexg
         wXJUKBhi4HvIlIsqZi9hsQTwW7frBa0v9wcFuSAUvoTFi9yNxWtKyDGiLSdzEPVqkELb
         Pm9xMXidcBblLvLqfa9JSFfoPts86m6+2cEpTI45NAuUPBcBHu1yVmROLS3nToBn7E5W
         XKJQ==
X-Gm-Message-State: AOAM530tkAU+v+FrhI/Jd5Dj6/UoFHx5clq06lH8S/f4DPYeD9XexCCs
        W3Ia4OPMWIcVAkWgVB6Jd2hKbA==
X-Google-Smtp-Source: ABdhPJxYChotr5WqwFSmgPy49KOJnMiwVkU4JDEcWzo3NznHVFYDP8xEpw0QRHtt/Q1eDLjDqqYaAQ==
X-Received: by 2002:a05:6402:2948:b0:42a:ae0c:2f26 with SMTP id ed8-20020a056402294800b0042aae0c2f26mr10624192edb.425.1652772763727;
        Tue, 17 May 2022 00:32:43 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id ci18-20020a170907267200b006f3ef214e6dsm672543ejc.211.2022.05.17.00.32.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 00:32:43 -0700 (PDT)
Message-ID: <94cceaf9-57ab-e7e7-9cc3-627013467768@linaro.org>
Date:   Tue, 17 May 2022 09:32:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/3] dt-bindings: display: simple: add support for Samsung
 LTL101AL01
Content-Language: en-US
To:     =?UTF-8?Q?Martin_J=c3=bccker?= <martin.juecker@gmail.com>,
        linux-samsung-soc@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
References: <20220516193709.10037-1-martin.juecker@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220516193709.10037-1-martin.juecker@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2022 21:37, Martin Jücker wrote:
> Add the Samsung LTL101AL01 WXGA LCD panel to the list.
> 
> Signed-off-by: Martin Jücker <martin.juecker@gmail.com>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
