Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31F20679DC9
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 16:43:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234735AbjAXPnZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 10:43:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234093AbjAXPnY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 10:43:24 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E96A74C0E3
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 07:43:08 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so13116787wma.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 07:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N/a+6+PTNK+EgdrHpwsWimSpIXxnD79ClgSYevcrnuE=;
        b=yf89n9wHbV/XnkigjdbRLaTnDYXsvazoQNIyN4X9VfmFm/yRnOxKuD2VSDfh5nnAp6
         j4iTCxnMuig5YSDyZo8Erw2bTT2twrR2zWWFhJy6JFPsnAcAcdTGVctCKCp9UWLgE4+m
         3Zi1q2MGqqELl250sQRxjmNJ0u7dcRA6gGRtqvEmswNkmgTPhecSFQp0Il/496oc8U0/
         YdfTzSMYOXEck4uhxPAIyQRXI+zoKOVzm9a5QSHHp61yj+d8NPyK6ZRiRzTixITkkm6w
         gciX8E0C3kDc17akCA4xh1Di4UAEoZQsJSGgqIo/e9jYsdup1v6zagNvDeIvivrAfAuw
         HUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N/a+6+PTNK+EgdrHpwsWimSpIXxnD79ClgSYevcrnuE=;
        b=LU8lrntdRT6IFHB8lsXFtZfWn1d7v3p53wsBsnbenhAuaS7Z3qFkgf9AKBpvgt3wmv
         TZfy8g/K7rJA9oNR7qW3C74EbRQEE9UV+PFEPaDdnCJo9Xr+f70kDZgKnMXA74trSPKR
         2PFQ16KmT+MtGiUwt62mF0Gq7IjSGCUFyDaDAAczrfB3XBquXeVMA3VwigYqqgsU6Flm
         tEc7GxaQESRENkcotvOoeYZNK5lkIk5/oq+bOKqYyUhvi+m4fqNMGfAuYlDjh7tqzBES
         UY4PMdvWbYV1B77JqX4Y6ulBAQgmwOJo4rkVFhjAlkxXKqRdg/1cSL8SPwlYFSTPSPcV
         lp5A==
X-Gm-Message-State: AFqh2kp4CqqOtWpZFN4fOslX+rPilVnN+j5TuhmjoIQ2xCDDwvItuGaL
        bv/zllcN7vE3Ag6S4AjI7DfvtQ==
X-Google-Smtp-Source: AMrXdXuYOE3dT+VE3oSwdKK67My+x+RmBaEi/JYTrdmPi+C9tVhvtgV7Z5YjOeHbO2Ewx7v3D/2lrg==
X-Received: by 2002:a05:600c:1d12:b0:3da:ff82:f627 with SMTP id l18-20020a05600c1d1200b003daff82f627mr29438313wms.25.1674574987235;
        Tue, 24 Jan 2023 07:43:07 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t16-20020a5d49d0000000b002bfb0c5527esm1611046wrs.109.2023.01.24.07.43.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 07:43:06 -0800 (PST)
Message-ID: <e34dd560-1fb5-bd27-a659-eec465fe584a@linaro.org>
Date:   Tue, 24 Jan 2023 16:43:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v3 05/10] dt-bindings: soc: fsl: cpm_qe: Add QMC
 controller
Content-Language: en-US
To:     Herve Codina <herve.codina@bootlin.com>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        Qiang Zhao <qiang.zhao@nxp.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        linuxppc-dev@lists.ozlabs.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230113103759.327698-1-herve.codina@bootlin.com>
 <20230113103759.327698-6-herve.codina@bootlin.com>
 <316ddb81-8d13-71dd-3396-412e31cfb880@linaro.org>
 <20230124104232.183cc9ff@bootlin.com>
 <37a95380-ee68-5c3a-3b96-48cc8b525f19@linaro.org>
 <20230124122347.1a531d0f@bootlin.com>
 <81f80190-a05c-5d0d-11b2-a80573b86e1c@linaro.org>
 <20230124151514.58d77765@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230124151514.58d77765@bootlin.com>
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

On 24/01/2023 15:15, Herve Codina wrote:
>>> Is that what you were thinking about ?  
>>
>> Yes, except again, so third time, why calling this "cell"? Move it to
>> fsl,tsa.
>>
> 
> Why calling this "cell" ? Just because we reference a "cell" using the TSA
> cell ID inside TSA and not the TSA itself.
> 
> Maybe the problem is the term "cell" as it is not the DT definition of
> "cell" but the source/destination of the TSA routing.
> 
> TSA can route data from/to some "serial controller".
> These serial controllers are :
> - SCC (Serial Communication Controller)
> - SMC (Serial Management Controller)
> - UCC (Unified Communication Controller)
> 
> Only SCCs are handled here.
> 
> Maybe the term "serial" makes more sense which will lead to
>   fsl,tsa-serial = <&tsa, SCC4>;

Yes, that's better. Thanks.

Best regards,
Krzysztof

