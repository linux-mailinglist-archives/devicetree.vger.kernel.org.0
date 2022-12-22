Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC7636540C4
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 13:12:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235540AbiLVMMO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 07:12:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235567AbiLVMLr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 07:11:47 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA709218C
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 04:03:58 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id s25so1693961lji.2
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 04:03:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pv6qX3My3iKgcKC8fPRcBAdihPFD1OTlyTjs81HEvPg=;
        b=iSvMnFwRprHPbsiw/+zJY7fRsKjPP39B4vJ1CWjNOtgZXsGZINTugC1mS4nTX3NItT
         CyOmkAaudh4K3XTCSUR4POKmQAfAPwFw8A+/JYNsMfWwMZJdw+ak+LkKybk5a64X8C2q
         sQXuxwC5Y0TpZKkN9Irtj4FZv+V1lBthzlUopFMsoLU914ISCQ9ticD1YqELYen4pDGp
         d5hIQs9ow1An/h7tzAjm5ok8Z2DTtjQ9TeQVQz/AzES/ThNrh7SqfmLHxd5rsPzUJfAi
         S8+SIIhDZ5BXTKr4p6bERM+16BC1yKCS90OaUWggM72x7kN1FB9q5ZTHx5nc040e28Ng
         1wKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pv6qX3My3iKgcKC8fPRcBAdihPFD1OTlyTjs81HEvPg=;
        b=4zCohwuemHCZmXx10KpF8/X5Efr7W5d0yh+/9AZnZkY0GxLIqURRzKZ7FUJiMjTQRs
         GGtKwV/pqGrssANeKWdyJXNpDWkIGIXGF+eN2pgR9oEQekvnI2vJatg+hT0VF0VIXNfT
         5QzNUD7aOUAZ6wCGrK8yZQ9GiDq6YMWS6CcX5b6dojuKBFV8a1+cq3sZ9BvCnfEn2F9s
         +lbwaeHLt7MjZR40VcX/GIJSyrhMRiXHn6X2160zjJtjb0jbaMTGEv7P48OUrs/8pVfv
         3y8F1BA0fxzp7DKAU5p2wbiT8fX2E34xQpB52lO3Ve8jmhv0NhzOslLLC8zbK4foS3Sn
         D8ZA==
X-Gm-Message-State: AFqh2krlw0jrcXUJ5pXy1DVMMCdUdiTAQLLJslKokkufUxP9ZDNb5Bbz
        byv+2DAuyyjBGkV5chfAwSpZYg==
X-Google-Smtp-Source: AMrXdXu24YdIUD1vSYqT1ow8qSxi/9t+oQUU4FKC7B9OlC6lUR2ntlD5a51LMAcbwZ2kQTKs1mwtNQ==
X-Received: by 2002:a05:651c:2321:b0:279:c27a:1335 with SMTP id bi33-20020a05651c232100b00279c27a1335mr1503443ljb.33.1671710637125;
        Thu, 22 Dec 2022 04:03:57 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a1-20020a2e88c1000000b0027f93fd606esm28977ljk.58.2022.12.22.04.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 04:03:56 -0800 (PST)
Message-ID: <e039f89c-41ca-8c7e-b755-9701a4571c39@linaro.org>
Date:   Thu, 22 Dec 2022 13:03:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: fsl,xcvr: Add compatible string
 for i.MX93 platform
Content-Language: en-US
To:     Chancel Liu <chancel.liu@nxp.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shengjiu.wang@gmail.com,
        Xiubo.Lee@gmail.com, festevam@gmail.com, nicoleotsuka@gmail.com,
        perex@perex.cz, tiwai@suse.com, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
References: <20221222073618.1064415-1-chancel.liu@nxp.com>
 <20221222073618.1064415-2-chancel.liu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221222073618.1064415-2-chancel.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/12/2022 08:36, Chancel Liu wrote:
> Add compatible string "fsl,imx93-xcvr" for i.MX93 platform.
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

