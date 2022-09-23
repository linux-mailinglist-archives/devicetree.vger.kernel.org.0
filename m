Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 449B45E8150
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 20:02:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231235AbiIWSCC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 14:02:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232535AbiIWSBy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 14:01:54 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E45813B029
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 11:01:50 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id c7so870511ljm.12
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 11:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=+eIR6AfSTB8DWh5+B5Z4YqWXu7teRvEJ4ZS7gggMip4=;
        b=WyGlQEwEVC+tbmNABQhslxc8Eq/t4QW6tdtnfrV0L3vKr42INmBi8oqJZp0L5EwgH4
         Dz9AeBx07zFcoHrl3Sl0fD+QOy+UqqbmdsfuzIMWruhO4/bTKq7Wy+sfBqGazpIgPYOV
         Qh5mWNZNqbfSoi2Y7IpYHO94/d6DmJVVqRa0kV8sMAZeDFst18pIaD+4t9QrduTdr6qb
         iaXKyAyKql1VcTgbimy/Vg4EEr3RjUMLtCs5IecHOURQCKG3ZpJBGTG8/SrzXIXjFnk4
         Y/iEUX05ETv8n+FJcI0bt7aF5FXx9mRBAC6uCwBomXAAkTuvznH/U42mtxzwRBy5ytzs
         GMoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=+eIR6AfSTB8DWh5+B5Z4YqWXu7teRvEJ4ZS7gggMip4=;
        b=ilvQQ1XSqYe2Idf9jtUyZB+JX1EP1EZgrHUO7tTnVZwQ1G2OrYO8zWur4aWjA1oVsU
         6oUt5zGxFkYZPXJolwQLbp0/uuqMDsYYF1vpLJzSFGzntBy7r2Z2+aydafU4jzWBgDz5
         brHLfh2ZV5FsNfW5XrLwJtTU0EGJJKTXhGNxYsVBlVSnSjFfXnOSo/Gpy2caOZIIvPNI
         z/dqCCNRaxAyoDWJF6u3v1bYWF1I4U5WEXAbXhk8laRNJh3QNEJOdY2Xk75oSDZ/p4pV
         xwmdDSubBd+vFu3rPEbQhU15v/O7n7APRXCPUEDyEwM2KsF6vaSzSUuEiGIJC0X0eJRm
         OTYQ==
X-Gm-Message-State: ACrzQf1/YKDlNFuCmSKglPCGR+rMCbPgXaGDsmO/QAZnGq8aXxMVDRzf
        EUpZ6cbtdSHRaekkGcqGxk+o9g==
X-Google-Smtp-Source: AMsMyM4XyRJvK7ry06yCnbRgnXp4sD04RCyfa2wfONI+pVCcMJ1YFcv8qzXroxpJS9nFsIjIdLvJ7g==
X-Received: by 2002:a2e:9214:0:b0:26c:5abd:93af with SMTP id k20-20020a2e9214000000b0026c5abd93afmr3308958ljg.294.1663956108255;
        Fri, 23 Sep 2022 11:01:48 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a8-20020a05651c010800b0026c3975f488sm1483521ljb.26.2022.09.23.11.01.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 11:01:47 -0700 (PDT)
Message-ID: <4e52f4ac-4073-16a1-803d-d29e1708f05e@linaro.org>
Date:   Fri, 23 Sep 2022 20:01:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v4] dt-bindings: firmware: imx: sync with SCFW kit v1.13.0
Content-Language: en-US
To:     "Viorel Suman (OSS)" <viorel.suman@oss.nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Shenwei Wang <shenwei.wang@nxp.com>,
        Viorel Suman <viorel.suman@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220921143603.175195-1-viorel.suman@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921143603.175195-1-viorel.suman@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 16:36, Viorel Suman (OSS) wrote:
> From: Viorel Suman <viorel.suman@nxp.com>
> 
> Sync defines with the latest available SCFW kit version 1.13.0,
> may be found at the address below:
> 
> https://www.nxp.com/webapp/Download?colCode=L5.15.32_2.0.0_SCFWKIT-1.13.0&appType=license


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

