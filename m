Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4925C537597
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 09:40:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233664AbiE3Hkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 03:40:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233661AbiE3Hko (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 03:40:44 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E856212AD8
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 00:40:41 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id r123-20020a1c2b81000000b0039c1439c33cso370440wmr.5
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 00:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=yJvJHo6WigzGU+Bo8i27kFyA2o+86owNrCMmWJXdlE8=;
        b=W4BYSpqDTbHV+hbVi3/CpOCs7LKmmS1CEMqy5HUoFQCOguVArLULseXhFL/JULV4Vd
         Eo4VFd7b4x+y2HN+FG9NkKGbKnnzYv9OIxXTL73azJ7lf89e94vesObKZKJ6SiG28DiK
         yX+4TIXLGGNm4CbOsTeKyIh47cM0N9CAap+ck58AvLb4fOle8nYEtBohBK/A1//lcRCg
         j95vXrzs4gziXs4px9y4DJmEmCUvdTKEtn5YAjT5DF0RGNJdwZdXKibwfo3O9KTu/GT5
         F4vQzdeZy57g3bAEEENQ6e+tuf51A/HCUSKII8ir1NYFCbgLQPvxpmiXfZQFoTkLpec7
         8hMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yJvJHo6WigzGU+Bo8i27kFyA2o+86owNrCMmWJXdlE8=;
        b=jhxLxiRkxTAuMaToZMwBu7CSG3jgh1XnCuZmfYeROisSI68nSqLJnB3cWDqo2uA+vt
         EUPTTQFZfcqcqgeRuKL4Qcw0d2hXrhdfeB7VALoucoa/cqOVD3k97Mfj88H3k54lmxcT
         bsWXEmenc2yCe54hEhXz/day8zSEZ5zhYQKdNjVvIv4lAEU0oKUJ38NqThVMj7pjhed2
         vjtYL0cT5UTMcQZJcKYGxURpnIBZplFY/wyI4PgFtCpzYbKJ7WT+/mHE7K9+Fac+kvFY
         iQwFH2G4LVPgXtVPpZ28r19T1Up5JR2lXqiQbVs6xqmezRlRTDRAhWKDP8Fx4a4YKx84
         NMFg==
X-Gm-Message-State: AOAM5303uOVNRLFAfIS33OpZDLZPOqHIgt/vPafCzUsYLZgLHQgE/gMB
        uiPplOUEJTiec2K3We/9vIB/5A==
X-Google-Smtp-Source: ABdhPJzWZl/XXPcljunVWHqjNPh9NxSE5LyrBrelvogQHAI/oaz8TISreCp2+FfVSpBlEvS/xcf15Q==
X-Received: by 2002:a05:600c:6015:b0:397:54e1:8279 with SMTP id az21-20020a05600c601500b0039754e18279mr17451068wmb.100.1653896440461;
        Mon, 30 May 2022 00:40:40 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g13-20020a5d64ed000000b002100e86319asm8647487wri.78.2022.05.30.00.40.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 00:40:39 -0700 (PDT)
Message-ID: <9f40d587-bfaa-a3cd-d261-a10d1740610d@linaro.org>
Date:   Mon, 30 May 2022 09:40:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH V2 1/7] dt-bindings: soc: add i.MX93 SRC
Content-Language: en-US
To:     Peng Fan <peng.fan@nxp.com>,
        "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "mturquette@baylibre.com" <mturquette@baylibre.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc:     Aisheng Dong <aisheng.dong@nxp.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20220526123411.270083-1-peng.fan@oss.nxp.com>
 <20220526123411.270083-2-peng.fan@oss.nxp.com>
 <2e6c2995-9204-61fa-0aee-f4ea4cce084c@linaro.org>
 <DU0PR04MB9417353FE7BA649887E7C5B188DD9@DU0PR04MB9417.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DU0PR04MB9417353FE7BA649887E7C5B188DD9@DU0PR04MB9417.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2022 08:57, Peng Fan wrote:
>> Subject: Re: [PATCH V2 1/7] dt-bindings: soc: add i.MX93 SRC
>>
>> On 26/05/2022 14:34, Peng Fan (OSS) wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> Add bindings for i.MX93 System Reset Controller(SRC). SRC supports
>>> resets and power gating for mixes.
>>>
>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>> ---
>>>  .../bindings/soc/imx/fsl,imx93-src.yaml       | 96
>> +++++++++++++++++++
>>
>> Still wrong location of bindings.
> 
> Although it is called SRC(system reset controller), but actually
> it not functions only as reset controller, it also supports power
> gating of each slice including slice's memory low power control.
> It also includes some system general configuration.
> 
> So follow your suggestion in V1, I rename it as system-controller,
> but I not find a directory for system-controller.

Therefore I propose "power". 2 out of 3 functions (reset controller,
power domain controller) are related to power.

Best regards,
Krzysztof
