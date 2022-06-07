Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84C8553F634
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 08:33:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230118AbiFGGdy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 02:33:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237044AbiFGGdx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 02:33:53 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87E262983F
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 23:33:52 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id s12so25906778ejx.3
        for <devicetree@vger.kernel.org>; Mon, 06 Jun 2022 23:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MrBdSE+grn8LT47tXLayVexkMgaXUe8RtWJBxBXFaqk=;
        b=bnFho8U7nOdhZMVpWkDFScj100VJe75OnkuyHoq42OR4uIYhU90/7FN5WdL1S5BX5F
         7l+inS94sggjLvtlgi40e2NrqQTewUKWTUIrW5vxFbzfOUkllvrxaLlEFPZXsXO9KA+C
         YP1cjAT++nZIF4ixUlk9Q+wPLXj1425e2L2Gc6avVyzDZ/EAPN9gjoj/3zMMEZQZ3CFv
         /oqQYM8gNcwCd7rxbkjeMqk/nUtQnRLnQWbjBk2SjpDs/fe+8ndEbpDb+Fwp9h/h/P1s
         JzyM9Ddj2CNbjD4r8E687StGwMCNPu5p8WQ+LP9lZKSIT9nk7C3NPnGJF4wUpk7BkB7M
         +rPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MrBdSE+grn8LT47tXLayVexkMgaXUe8RtWJBxBXFaqk=;
        b=2bOyurFA3axD3jVOgYo1RB/u+y4IC1tpalb2OWaxMQVVxCPmAwybp+bio6o4TeN9ql
         LR/A/9a7fMw70y/Zb8yNm2rBd3xqSYdt4rwMNfmxlHtjd7jkp9KbvwtmLckfS43EjWG1
         5j15T7OGL2PfPu2p1FIUxRK4L8C4QIt+YLwCx5KAWfPVSxv8cZWmL5Of3oZz7gvMNGL9
         r94pFHrt+yQJtKKQ/cswuAughMH+bbazH9uegCt2plCy2pYxUzGbJjNQcwi6JpM/Ej7b
         MKERLHLYO1h0S75yYrQ+VjkM70UJYlODw5Ph+1yc4C/26zwXOSIrnBVzC3azjzytloD7
         30qA==
X-Gm-Message-State: AOAM531thn3XR2zYEWZrKgWSG9enDLdRBLasybJ9fQ4KUoqgIhV9KWbv
        N7JFo5iwCu7PCnAtorY0tZC/XA==
X-Google-Smtp-Source: ABdhPJyplNyPIe/T6bYyLSDq3aa3CWsQKbpcGxl+tx+4NoectMYlag5lodWutJKGoaF/yraYpIb5uA==
X-Received: by 2002:a17:907:3e99:b0:6fe:f823:ab96 with SMTP id hs25-20020a1709073e9900b006fef823ab96mr25335841ejc.428.1654583631036;
        Mon, 06 Jun 2022 23:33:51 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e2-20020a1709062d4200b006fec2097d53sm7160736eji.118.2022.06.06.23.33.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 23:33:50 -0700 (PDT)
Message-ID: <2fad1706-563d-72c3-eab2-5f464bf92681@linaro.org>
Date:   Tue, 7 Jun 2022 08:33:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of ufs
 nodes
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        'Kishon Vijay Abraham I' <kishon@ti.com>,
        'Vinod Koul' <vkoul@kernel.org>,
        'Alim Akhtar' <alim.akhtar@samsung.com>,
        'Rob Herring' <robh+dt@kernel.org>,
        'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a@epcas2p4.samsung.com>
 <20220602053250.62593-5-chanho61.park@samsung.com>
 <c86cb9c3-5fac-a990-f4cf-5aa8e4fe8a75@linaro.org>
 <000001d87a2e$6ed35ea0$4c7a1be0$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <000001d87a2e$6ed35ea0$4c7a1be0$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2022 07:21, Chanho Park wrote:
>> Subject: Re: [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of
>> ufs nodes
>>
>> On 02/06/2022 07:32, Chanho Park wrote:
>>> Drop "ufs0-" label name usage of ufs phy and hci nodes.
>>> Regarding the comments of reg properties, we don't need to illustrate
>>> here because we can find the description from the dt-binding doc.
>>>
>>> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>>
>> This does not apply. Can you rebase and send the DTS patches as separate
>> patchset?
> 
> I forgot to point the baseline of this patchset. I stacked this patch on top of below patch.
> If you do not apply below patch or put this separate branch, I'll rebase this patchset without below patch.
> 
> https://lore.kernel.org/linux-samsung-soc/20220526204323.832243-1-krzysztof.kozlowski@linaro.org/

Oh, thanks! Unfortunately it helped for the patch #4 (first of DTS) but
not for the next one. Maybe some other patch caused the hunks to differ.
Please rebase remaining two DTS patches.


Best regards,
Krzysztof
