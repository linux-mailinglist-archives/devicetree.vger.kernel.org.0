Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6094CC17D
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 16:37:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234505AbiCCPiJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 10:38:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234574AbiCCPiB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 10:38:01 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13B55194146
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 07:37:16 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 33B343F618
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 15:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646321833;
        bh=8DezQocHOANVzIXQp7GBe2DNdvF/29uXU4JAHaGAUrE=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=oXdiC+Ppz1AORSxZe4DyD3xTLnykpMjAxbYwDJ2h1DEdYow91ghxco+Zyr7y7Y2Us
         l/JFw20oN3Sgw8J5WhiLzBMURdRLWzGocJ7NVS2qHo0sTdBRqnaab/V0pY96zxhj9o
         k91TDar7I/PU0B42NfO089JTbVIoiG1KqQHeA9TjBXZbELkDfTW0SpPzifsBczTn18
         0uDjA2SBNIiMsUxx+0l9dHFz9pEzmkJCfKoIVRqV1Hql8wOEXEe3sGZOAAguZoBv2Q
         He4Ytd5Xx7ZmxInPFDnpK/WY3vAmc8Bk/DfZaZFL7Gz+xZscGVVB4cVotY2pUJmlCn
         nDxUnSM9FyrOg==
Received: by mail-ej1-f72.google.com with SMTP id ey18-20020a1709070b9200b006da9614af58so894185ejc.10
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 07:37:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8DezQocHOANVzIXQp7GBe2DNdvF/29uXU4JAHaGAUrE=;
        b=QGG6jpmMYjpq0depkla9Eb3l1lrjYQgxOnMVtqHvVS0sHh0oEVBhRZB4C92mi7zf+x
         28uuGi2MmzOBnouBvZFeDYymvZ5DOro5UjSggHCR5tVB74ItAa24sN5sLwodhLTo+ZJB
         BfHbN/XqalUYMQIIfTMeEomdh3yirWppTOhvDLb7qwOu6jsMdw0Lqkzr4sKA7EIZGf38
         2rLq8zDJWW0QW/6qqiZNINxUELH2XXX+BBUokBOObhEJxBT/+AvAAXmmUV9jI2VZfrNR
         zyQHqCFEABYuUdQLwPzdDAAsP53n6jeXYI4KvCYMvbt5JrY/GMlBrzWfTf5RmyFyoU3o
         H/fw==
X-Gm-Message-State: AOAM530Mckz8eNVXqw3hgZm2M+F8Tx5n8l+WSRhlAOT/AIf78biF2zyn
        0wTE8m0gF6JmuQvO9w2Ol836SvoG0P3uzlleSmGTzlsmXn+rH1eHAcFoGE1ex/+A8xaux6rPRSv
        WByrjS9WTHcXKKr0/LrzPuzH38ZkOM0/NTBFd260=
X-Received: by 2002:a05:6402:5150:b0:415:de72:5384 with SMTP id n16-20020a056402515000b00415de725384mr3251283edd.273.1646321830720;
        Thu, 03 Mar 2022 07:37:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzuGas3Tunwgz5F3zcC5Firl26y2pjjUMIjqfXRcAT+U15otBYle/YgV3gbGaIkBzdsY2NVUA==
X-Received: by 2002:a05:6402:5150:b0:415:de72:5384 with SMTP id n16-20020a056402515000b00415de725384mr3251268edd.273.1646321830509;
        Thu, 03 Mar 2022 07:37:10 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id q10-20020aa7cc0a000000b0040f826f09fdsm958428edt.81.2022.03.03.07.37.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 07:37:09 -0800 (PST)
Message-ID: <58e10c95-902a-bdf3-15e6-616e4d2cda7f@canonical.com>
Date:   Thu, 3 Mar 2022 16:37:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: Convert i.MX7D to json-schema
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Agner <stefan@agner.ch>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220303150653.1903910-1-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220303150653.1903910-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2022 16:06, Alexander Stein wrote:
> Convert the i.MX7D pinctrl binding to DT schema format using json-schema
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../bindings/pinctrl/fsl,imx7d-pinctrl.txt    |  87 --------------
>  .../bindings/pinctrl/fsl,imx7d-pinctrl.yaml   | 113 ++++++++++++++++++
>  2 files changed, 113 insertions(+), 87 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx7d-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx7d-pinctrl.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
