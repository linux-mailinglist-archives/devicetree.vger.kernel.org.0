Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B60F9597E6A
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 08:10:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243535AbiHRGIt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 02:08:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243531AbiHRGIs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 02:08:48 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4AC049B69
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 23:08:47 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id l1so330732lfk.8
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 23:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ZDNCV2Trysnx2s77dAyLYA3yQv3M+bxe028ysJe7540=;
        b=yQ5mtmhZfeImYwVLuqojrNb67vzJpfyiJgByeVeF8T5N5OYsQY+ziqwv8y0Jc/Gpyo
         NZDanPo3akgads2atYq3xsBINcdo3Fp3JIGJg9tLMaVr2b3akwx93S3T0KROflHl9VuU
         YiiBWLJSsz12TM+HNMt8gdnqAhAxKF7zunrPrs0mhQYw9hPTbzQtAPnjacIsj6Flb3Ks
         EmvJw27Aww2TSFX/CfdydiUcqaxvrL2o/QWgTnAmYWXDtyL5SXRLm985s+U7oGxkpQPM
         FgYPGy9XmEtiKb8Xe3nw73Bi18yBNiYm8qydHlJMdZpzbLQwDVcolma+bTgrhBjekDA8
         n5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ZDNCV2Trysnx2s77dAyLYA3yQv3M+bxe028ysJe7540=;
        b=M62/Gal2K0h8anHhNhxYqAbw/mghhLggiY9/AKGLiWjN8+PtNZfcXzKrv6WMfhRXOe
         Amy5UprmMAvrbMtst782Ft67tlWGOtfpSpOcOt7zqh99NlvxLQqnu1Nx/QhpSum0Kxe2
         RN1ecWi/aJnpJ8zujMZWO5itcTxfIB/OUBRWB71CcrMVD2gFsJczByHZZvFaInoyD9IK
         gHhy//i9s4CKOS6jNEwBR4ixDc1mF0x+56MdttZ1OKcbNczDBeTUcl/n6PHnUTcxFsYa
         IRXZiRncZ6TQamdyQufyO2HRnz2DbnnFGj56luHw0ly/3NyVMoU8kx8yBBUKb0pPlqR8
         pkug==
X-Gm-Message-State: ACgBeo2qReXFOI1EFjOQ95vHeBQmqjeeu9YNNgcCa07vnYo1Y6OTds/3
        zmWzqM1y+IcBCltcAGx4u1tEqg==
X-Google-Smtp-Source: AA6agR7vqtEb5aVTiSjJt2vyVAGxAmUzd4WGs055WrmALVpMcCfVvMIE9NYlWjz5UV+2eit61b0oDA==
X-Received: by 2002:a05:6512:3705:b0:48f:8702:7eda with SMTP id z5-20020a056512370500b0048f87027edamr450460lfr.95.1660802926030;
        Wed, 17 Aug 2022 23:08:46 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:671:aa32:2bd5:8994? (d15l54bxv1k5c31plwt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:671:aa32:2bd5:8994])
        by smtp.gmail.com with ESMTPSA id f17-20020a2eb5b1000000b002618022d6a7sm19309ljn.25.2022.08.17.23.08.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 23:08:45 -0700 (PDT)
Message-ID: <573e43de-8495-cf90-c1f0-cc656c2999a7@linaro.org>
Date:   Thu, 18 Aug 2022 09:08:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2] dt-bindings: memory-controllers: fsl,imx8m-ddrc:
 restrict opp-table to objects
Content-Language: en-US
To:     Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20220817071050.26149-1-krzysztof.kozlowski@linaro.org>
 <DU0PR04MB941717FFA704B46F4346B417886D9@DU0PR04MB9417.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DU0PR04MB941717FFA704B46F4346B417886D9@DU0PR04MB9417.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2022 04:29, Peng Fan wrote:
>> Subject: [PATCH v2] dt-bindings: memory-controllers: fsl,imx8m-ddrc:
>> restrict opp-table to objects
>>
>> Simple 'opp-table:true' accepts a boolean property as opp-table, so restrict
>> it to object to properly enfoerce real OPP table nodes.
> 
> enfoerce->enforce?

Thanks, indeed.


Best regards,
Krzysztof
