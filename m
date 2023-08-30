Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC46978D8DF
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:32:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235919AbjH3Sb3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:31:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242806AbjH3Jpf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 05:45:35 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA9641A4
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 02:45:31 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99de884ad25so723989066b.3
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 02:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693388730; x=1693993530; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=suKY6OufGdFjOXeITy2SI/gqtW5sC+Q15RnB0RhvKmQ=;
        b=zgg+hP8+5RbKE+9C/OljN/XYSwKfsRkAj6TBuk/ypTZFbdtSDWwnYCXbVrOyK6gTRI
         gTVWQpC3EXgIZ9XfUTAP/HdePubMG3xS+zPhefaJ1y+g+hwxRbP/ckaHpT0OUI1Tdm2S
         kFcP7rwkDazuoPrjLilxBk2W5q5gVbxc7Wmn8uao7rOBzwqzPihGJR+madM2DYl3qZGm
         Wn2QcygdXb8cfPaTFFA4wPdmTdMk7zJomeZVibhPe2lP7LRDyPZP05uUl8VJhwgKyneK
         /Zx86VIpR+VIqsPXrWNaFtjTf9f4XwaOcYIqoFs6YWLQwSkfTSzRz6BqjVvInYgg1pPl
         4wEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693388730; x=1693993530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=suKY6OufGdFjOXeITy2SI/gqtW5sC+Q15RnB0RhvKmQ=;
        b=kU7ehMCeZMlNADyZCTVqdWA22hyMzfw6tSUqmLNv1G6ljPROFfqJ3j3sPjhWuUdEMV
         XZPm5n25fjhlXcRK6vdskQusDMu8/MlbU14GABdPf+vAvHKw90nAfY6PYl+pCzgottRR
         vobsp0Z9DTRBC7Im9IrGyFrM0IFt7m1dfxsKRL5xEf2MgeO2EJzXH8zuwlX+osSO3FAW
         8EL9kZqqvRs8hlUV67W8NDOkj5mWQ7yLCJ6AEX3RtbdNEydPk9oGzWzs1/FCjedCN92m
         ipxxs4uxiXntAQE3qXrp/MSO7GOeV26oUnlTlYF2gqerMrU0ftIHETRWt3H9JCuQv3yp
         vOvw==
X-Gm-Message-State: AOJu0YyFl/n1juUp6uDHgs0p0d9xQzKAECPNkpxuU1df8t6WJRI6jCju
        e+wTGZK4fPdYm4FDFKwN66aNxQ==
X-Google-Smtp-Source: AGHT+IEJc1E1Orxis2sVRcoNfH2DjYDXEvgRu8kKboCKIIWJBA0TxFoly1iyx8MPZDRkDacSyA528g==
X-Received: by 2002:a17:906:3d22:b0:9a1:bb8f:17de with SMTP id l2-20020a1709063d2200b009a1bb8f17demr1526973ejf.35.1693388730278;
        Wed, 30 Aug 2023 02:45:30 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id w24-20020a17090649d800b009930308425csm6973974ejv.31.2023.08.30.02.45.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 02:45:29 -0700 (PDT)
Message-ID: <1d531692-5455-fbfd-0775-50856bf0fbc7@linaro.org>
Date:   Wed, 30 Aug 2023 11:45:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v4 2/2] dt-bindings: arm: aspeed: add Meta Minerva board
Content-Language: en-US
To:     peteryin <peteryin.openbmc@gmail.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     cosmo.chou@quantatw.com, potin.lai@quantatw.com,
        daniel-hsu@quantatw.com
References: <20230830090212.3880559-1-peteryin.openbmc@gmail.com>
 <20230830090212.3880559-3-peteryin.openbmc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230830090212.3880559-3-peteryin.openbmc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2023 11:02, peteryin wrote:
> Document the new compatibles used on Meta Minerva.
> 
> Signed-off-by: peteryin <peteryin.openbmc@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> index 6b0a6683ccae..b681bbf960d1 100644
> --- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> @@ -80,6 +80,7 @@ properties:
>                - facebook,fuji-bmc
>                - facebook,greatlakes-bmc
>                - facebook,yosemite4-bmc
> +              - facebook,minerva-bmc

m is not after y. Keep things sorted, I already wrote this in your v2.

Best regards,
Krzysztof

