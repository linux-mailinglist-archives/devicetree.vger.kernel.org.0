Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0AC76AD76C
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 07:26:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjCGG0Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 01:26:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230320AbjCGG0P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 01:26:15 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F726515C3
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 22:25:44 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id s11so48117564edy.8
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 22:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678170332;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B9Ttp5AYqxBAagANQm8pk/uQmAj597Dbj4LtTQtj+3M=;
        b=Z8gC/aNVfTPndX2F5zjXm/CRWdDC+7/0wxSEcdlq4IEaVrJYQrj5dXQ98/tPX0X+FJ
         S5chtyJjgl6yIHOpkbMDIVWJbWYKqqu3XHChFY2QhZOERF5qJvyal9q4jzWCLOmUxEfT
         cRyIn1iRcJM42FRXnKaIGLWn0HxtDfspik6NmcNNF67QgnXSYpk1QG8MvPhCbwQxDntM
         gokIFCiODB2B7D4+rs6tCWizTbXadFG+h5+NNvTGJqpeA+qMFiMfAhl0ev+P9zfdHiP+
         n/fzSBYb9FeYD6diTwMByj48aBv/5zLuWHWRzygBtCNxW7s50D13pTkcU4gK5+e7Ig6N
         CMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678170332;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B9Ttp5AYqxBAagANQm8pk/uQmAj597Dbj4LtTQtj+3M=;
        b=71T8bq3jo6i6Er0kKRPxaYiFIJHJBt0ZxM0xU03htEkaVuBSWcIVX2ejyXd2+UbhRi
         sHHm6wAC7tsMYNYdMxSbv5dNTaJ58RDM2L15p5ihvrTbkhP+t/WJZ1iQBW5LPDl4ltgr
         J/HuHfqQoGYhaff43EQiW4oXK3SNFAZQXCfhApKx4jSeFawl8EV9Iky8RJmkZGSd1fJK
         PbyBcyChKiGz5rYQk0mYuuwdB1VePgKJaI0XworBcY4b3k6Bs5Ccui0FsaQN48d+Mf+j
         6XT0OqdhEnNlWl3/e4/95yIKEAX1UOIFxxwLi2aXiRZ/1D5vHTizoZUwlN3Ppsuakz1q
         aKtQ==
X-Gm-Message-State: AO0yUKVHhL3A0HTbYnzQ3wZRRSdPFK6Bc4ssSZVM28x+PI69Z8k8TWii
        61DnbDj4tpmuOKtjmUPcFH8sRA==
X-Google-Smtp-Source: AK7set/vpPsVp5jxUKvxYF01bpwFjP8Elo72VpWrAM4q6XTrP4raC28MxWL2/UjpDthoccRiRtbP7w==
X-Received: by 2002:a17:907:3fa6:b0:877:a9d2:e5e9 with SMTP id hr38-20020a1709073fa600b00877a9d2e5e9mr16164341ejc.42.1678170332684;
        Mon, 06 Mar 2023 22:25:32 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:5310:35c7:6f9e:2cd3? ([2a02:810d:15c0:828:5310:35c7:6f9e:2cd3])
        by smtp.gmail.com with ESMTPSA id kv22-20020a17090778d600b008dceec0fd4csm5537550ejc.73.2023.03.06.22.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 22:25:32 -0800 (PST)
Message-ID: <dd84d4f3-101c-6b38-56b5-4907ba61ac6f@linaro.org>
Date:   Tue, 7 Mar 2023 07:25:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v12 1/2] arm64: dts: imx8mm-evk-revb: add support for
 i.MX8MM-EVK rev B
Content-Language: en-US
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org
References: <20230307044449.2714529-1-johannes.schneider@leica-geosystems.com>
 <20230307044449.2714529-2-johannes.schneider@leica-geosystems.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230307044449.2714529-2-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 05:44, Johannes Schneider wrote:
> Add devicetree for the revision B imx8mm-EVK, which comes with a
> different PMIC.
> 
> The regulator min/max values are taken from the evk's schematic:
> 8MMINILPD4-CPU  SPF-31399_C2.pdf
> 
> Reviewed-by: Shawn Guo <shawnguo@kernel.org>

Aren't you now adding fake tags? It's the second tag which was never
given to you on LKML.

Best regards,
Krzysztof

