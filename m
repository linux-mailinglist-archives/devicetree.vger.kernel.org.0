Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16924652E08
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 09:37:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233998AbiLUIhD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 03:37:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbiLUIgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 03:36:49 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ADBA1900A
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:36:48 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id v11so14869247ljk.12
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LyofmXTOKwDdbRL9UzliNVG3uzdMclR4aubVBBA0UwY=;
        b=lXjOzM7AS1Zu9nv9s8DA6knqvaII8fXx75K/Ao8hRGY9MZf2Q315Yoffjqs3u6wyYP
         GnFa8/Vx8bQOR4TZS/Zu0c7laSxNio7fDCcecnStA5yppCzPnvgcQrJINK+QI6z/rWtj
         YG+A4wOhP3fCJJkBD9hhCITiwJTnfEbHa88QlNnVEYPe9lrrqh/pluXUiD5IWOKM019s
         Bet9CiN88fMtwH9/hiNK6DGj++UKClqsW5Yj1QSbm+DgMrLSsagsaT9J9ElIc7nl0y4/
         irXvJrga2djDzDztjeQ5HJC9pVJ5/4J13CjSBCThsvPQfXWQBXTRHgFNvo4FHgoh6pEH
         8sOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LyofmXTOKwDdbRL9UzliNVG3uzdMclR4aubVBBA0UwY=;
        b=uBUGT3xvUPE8VWBdEHCuYA1Xa5T28SwXuEHzS3LscmTeuWzNq6mQi6F3udF0xD+OFk
         Oqk6qty8pf+SYmCW/i5WIydFxcaYc30UM7CcAqND8O2V2Wxw0KQnZ1btwWiaCfMj6/BP
         /LfhNHmuLw2r623Sbv97aE8AsWBAAcwYxkUHZ65XI+yFzGvXR2WOfy3k1ec4yF9E0SoY
         FqnKwE1i058IK+Fhdnwi7U5EyJbSOs5HFCPzk64IJqBOPCZyxvZpBBjU/j2og2Pxh1V5
         vYFC4p0DWj+fY8fOgEhZkSATenIFGFnirIKn+jcbWpbg5OMOH9iGVaQxwg+6k0+wEaQB
         Xy5w==
X-Gm-Message-State: AFqh2kp+JL2MM12VWpyG9Il0R17jclIuAOxsF9qObEZlHL5SqK27kobc
        VSfnLtADKe006vHvXHhG2ScMJeA4JEPedTXv
X-Google-Smtp-Source: AMrXdXsrrDtufzKtj0V9oO3g4eRl4so49NLVP2VaG4SUs11+cxdBGIpOxMskKGEezxX1V/xc76NwXw==
X-Received: by 2002:a2e:94cd:0:b0:26f:db35:6036 with SMTP id r13-20020a2e94cd000000b0026fdb356036mr316470ljh.1.1671611806772;
        Wed, 21 Dec 2022 00:36:46 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k10-20020a2ea26a000000b002790e941539sm1262063ljm.119.2022.12.21.00.36.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 00:36:46 -0800 (PST)
Message-ID: <a85dfba5-010b-d0f2-faa7-20965f0b2f9b@linaro.org>
Date:   Wed, 21 Dec 2022 09:36:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: Move MX8Menlo board to i.MX8M
 Mini Toradex Verdin SoM entry
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221216210244.591865-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221216210244.591865-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 22:02, Marek Vasut wrote:
> The MX8Menlo board is based on i.MX8M Mini Toradex Verdin SoM
> which results in compatible string in the form:
> "vendor,custom-board", "toradex,som-nonwifi", "toradex,som", "fsl,soc"
> Move the binding entry so this quadruplet can be matched on.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

