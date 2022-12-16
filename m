Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 677F164EA62
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:28:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbiLPL2M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:28:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230223AbiLPL2L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:28:11 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC20B5C0D5
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:28:09 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id n1so1834871ljg.3
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aGH6+F9O7uBEz2h2PIJZL5PeQLlAWWMTj8Ixxlb2gUc=;
        b=nK4ix90llx6YXroJleIhXpI9o2KhMc+a466pSC5x7FWFxvvQtpE6lGkdeZqjmAwEFY
         WOD7hcw7kiJXegl511EdvNz7rv+ftccwoGyGUALv8+Y4Gton1WHO9AYfI7GgIqcoKsrL
         zWnJzNReS4YdVKHr5UKmQXGspUOPRK1tsxSEwvTkQLZHZ7f37nraG5lNVK/SeROj5WdG
         fg5/FHBc/WN7Q+OiDCTjsAJnyFlLW77Tsvbw90hICqQ56ugU44yXTfCY+WGbpeJ8f4Nc
         Zs6DefBtHeIB8cZkz8AujIabk4aY406Do+kjJPmL432JRa5MXp/Op/x2ouPPBbxlJ/Ym
         e8NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aGH6+F9O7uBEz2h2PIJZL5PeQLlAWWMTj8Ixxlb2gUc=;
        b=DkpslsaxylU7GApaI0kUNlgcJ5jy02nCofm2f6+oYXZ1JE0JIfEGzOWPbfFf4xYY5S
         RC8IvWqf/E0WlmsGIuKZ8YVb2iylsaihqlTrZfmYPObto5EMdTrjlYin9oWcWcz1f62q
         iDnPwku6rI7b9BescdarlAbQ8v+K9Tz4hUFNzK0aKXvjZcoAviRCeTPj4l9Abg2CInC5
         mRAn7TbBemHM+oYxblzS5KvcXsETkgCV1W18jS3pG4fPoXiOo7vsiqSE+2EG52FIzZzz
         pP7PREA6JEr90jx+jOF4LJLiK6WJQagleTtMCAibQ30PIUWypU3oG8bHveWa1Jab3pKQ
         Pi1Q==
X-Gm-Message-State: ANoB5pmbTj9oFxScwdXvZQKmZJCoqR7/iwPVDxwSyLWJcEZKzthdDwmb
        LR5L204ZOYHUKotBMUP5Imx2mA==
X-Google-Smtp-Source: AA0mqf5o5XIUjEFeZN28K2hBI3RIcGWfR6ANop2GfBcuTVdvNP0QqlNSYkRBIdHc792ptchHRrSwhA==
X-Received: by 2002:a2e:bf1e:0:b0:279:9954:f675 with SMTP id c30-20020a2ebf1e000000b002799954f675mr10270474ljr.21.1671190088229;
        Fri, 16 Dec 2022 03:28:08 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p20-20020a2eb994000000b00277041268absm128668ljp.78.2022.12.16.03.28.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:28:07 -0800 (PST)
Message-ID: <f6890aca-26f5-d6c1-574c-a79e7e772a00@linaro.org>
Date:   Fri, 16 Dec 2022 12:28:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 2/4] dt-bindings: arm: Split i.MX8M Mini NITROGEN SoM
 based boards
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <dev@lynxeye.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20221215232137.144256-1-marex@denx.de>
 <20221215232137.144256-2-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221215232137.144256-2-marex@denx.de>
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

On 16/12/2022 00:21, Marek Vasut wrote:
> The NITROGEN SoM based boards have compatible string in the form:
> "vendor,custom-board", "boundary,som", "fsl,soc"
> Split the binding entry so this triplet can be matched on.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

