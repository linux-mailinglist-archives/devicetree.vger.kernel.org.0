Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14278654DC8
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 09:46:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236141AbiLWIqK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 03:46:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbiLWIqI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 03:46:08 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2E9D36C4B
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:46:07 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id e13so1779564ljn.0
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 00:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QE5x/YHXDWRPjvo3INvzf9eW0AqWG4KOCYcWWHFNs5c=;
        b=HfK2iqtUqLynVYeF98KolAv3uTHiyOMJJ/YXBu7eoF2bPaMHrs7xsw1qOVHtEBx34C
         oiTiNTQ6Ri11ubFhqch4tNxKg7yd1/PvT1iEeoeGrxVLCrG824uRZyhJhDdjORtqIk8G
         9wadQ2uVm7aaBvpkMhRvpxlyoHK+pn3GDc6EwjP7AQhrlnDsp0Oh+v0WxvoSbLwHEAZG
         D3tAjhWlXsV6HA7posZa5shSGNb1js/ByrlgPeqTlbzAO36fxqPFqHItc8ivbnhkchgA
         n7zI5/5h9B8NXM0MhizgVYSYxOx4ai/VAetVzoE2Ic5g6cq+xdFqSTcVlkLJ2QsxeZJG
         1Gdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QE5x/YHXDWRPjvo3INvzf9eW0AqWG4KOCYcWWHFNs5c=;
        b=tmW9aLwKtNxxwQjfqbzaybnxCBczgxPSra7MAwNjpHdGyM2+s5QhaRnZN/nqHbuGCL
         WXYyGZH0PQuDFaxMnuPBP/0dNQkHiAF7YTnpgu9WXX/pcF9oPFG/g+5Mh5OAs1ZntZi0
         xYWEQm2Nxtk6Z6kSj9vaXhK1pO5m1wks5ezI3qp/Csk3/rqYObEj18t8K76oB6z+tkHw
         1trTlUAQB+noJl9en8dnF1IJQD8CbbRrX9almSidnYzLMEHyBn/UuXvJMTR0lFwFdueW
         JccvsyFQynjt3QE4WTHoj4xMqu7fJ1HYCiRD9y4d6lgkcOAOHcEIqJDWJb9hC9zbIS8v
         P9Mg==
X-Gm-Message-State: AFqh2krHxXC1rU/7MKIkFTDtmW4opjKWtjAU37CHQscYi0/TdmnVNYLK
        6lfUEb6LKncL3lBfKYqSDOCF0w==
X-Google-Smtp-Source: AMrXdXs2CRlbCqLBwpb0LzmClNpcjd5TMplYWOYDQVh9ajQ5CIofJoWeX6+m3SQlTXSznTBsgJ4doQ==
X-Received: by 2002:a05:651c:12c1:b0:277:42bd:dfe6 with SMTP id 1-20020a05651c12c100b0027742bddfe6mr2429045lje.3.1671785165984;
        Fri, 23 Dec 2022 00:46:05 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f4-20020a05651c02c400b0026c42f67eb8sm322977ljo.7.2022.12.23.00.46.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 00:46:05 -0800 (PST)
Message-ID: <1f5ccf57-2e20-691c-eee9-3f800a93c3a3@linaro.org>
Date:   Fri, 23 Dec 2022 09:46:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: update binding for
 i.MX50 and i.MX7D
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, ulf.hansson@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
References: <20221223030347.17093-1-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221223030347.17093-1-peng.fan@oss.nxp.com>
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

On 23/12/2022 04:03, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX50 eSDHC is compatible with i.MX53. i.MX7D uSDHC is compatible with
> i.MX6SL. So update for them.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

