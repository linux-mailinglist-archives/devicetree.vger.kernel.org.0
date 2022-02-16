Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B7DC4B8564
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 11:19:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232787AbiBPKTS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 05:19:18 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:45516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232784AbiBPKTR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 05:19:17 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8840CC330A
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:19:05 -0800 (PST)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 57F773F1B1
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 10:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645006744;
        bh=8OOLa17szhk6+Vg3+wnuFFLqwR9SvrL1rcWwTRV4DbU=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=htIqduRfNPLGakhWqjq+bjoNyrWsFizYekim73QO3lxdeOTN6BgQeSImCJTWx6q7B
         tTXwcTDO2ba2u2sTpESCJ5CToMOcph4g5MqYsyguuz2pTF8mColQbMQy/1bIqmeeEX
         Xiay8AWBi4cVKVRGXCyOhqQSb8eQWXdXjsq1oNA6JVadErIOUocx0VX6715gH4HzNJ
         mUI95nqcwTZG7NGFjsdJmp0x2joRpDp1LJjHa10gbm4rtwu3G+B6JZHUkYfWwv9P9A
         ZlfrkeB6t4uEpyq+QrNnHOH5WumViIoBBXTDqHOHXuCL+k6h7lMSRyiMdRVM9gV4Rk
         Q/wkHhGDdUayA==
Received: by mail-wm1-f72.google.com with SMTP id bg23-20020a05600c3c9700b0034bb19dfdc0so119903wmb.1
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:19:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8OOLa17szhk6+Vg3+wnuFFLqwR9SvrL1rcWwTRV4DbU=;
        b=i9aYmXyiZ49oD2VSjqrP9kwHw1VMpYnakdmTbfL3Ez050R5k6a1H6KCTYJN/qLQgqY
         pSt3tKj9vxfHQCZjtS6crBptUdrYeC/5JDyLsBok1vnrjysaUCRGBxofq+jy6IorB8J5
         tgFb3aQEAt40FNEeJZXo+7nl58SbjIm0q56rc4nwYDcU/NW49R1yZ7LBtikyHA7BnzCm
         lM8X83f7sXdnSOoiSp97tijMstTi4GjZ/qiK29qN5Hyxx2etob7UTtfw4xjKXLGgXJ/u
         7YNtSVocyLl61x7yk0ARw2zmMoE7O8NHsLy4Q065QsNEYcTAo++TMV/P7XqKKFFPAjTn
         Zd9A==
X-Gm-Message-State: AOAM533dRHEGZrw0MYdGhxXRt4QLwEIhXJQLFnkcH88hwAGM8zfzz/Dy
        md1/qPBm+SnIVyMEg3SuP3dYkjJjakDtVhZFEDBNnH0hykJQuN0SamiLQR04cxYfVFx+rloh+nZ
        iJsP1h6sZatm8Tdo9j8qJ8EVxoUpMuHi++yiQXao=
X-Received: by 2002:a05:600c:3b21:b0:37b:c3e4:2118 with SMTP id m33-20020a05600c3b2100b0037bc3e42118mr881914wms.66.1645006744059;
        Wed, 16 Feb 2022 02:19:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyf3UFTJ+JYq+/ZRJoOM/VuEU5pVmkXnms6laAM61/FvU71Sbs3F8qYgMoSzDOxd4nUeQxZAg==
X-Received: by 2002:a05:600c:3b21:b0:37b:c3e4:2118 with SMTP id m33-20020a05600c3b2100b0037bc3e42118mr881894wms.66.1645006743894;
        Wed, 16 Feb 2022 02:19:03 -0800 (PST)
Received: from [192.168.0.110] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id n6sm17765250wru.114.2022.02.16.02.19.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Feb 2022 02:19:03 -0800 (PST)
Message-ID: <06c1d3f1-3c12-815d-27d1-7ef3efb22877@canonical.com>
Date:   Wed, 16 Feb 2022 11:19:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [v2,0/4] Convert pwm-mtk-disp.txt to mediatek,pwm-disp.yaml
 format
Content-Language: en-US
To:     Macpaul Lin <macpaul.lin@mediatek.com>, xinlei.lee@mediatek.com,
        thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
        lee.jones@linaro.org, robh+dt@kernel.org, matthias.bgg@gmail.com,
        jitao.shi@mediatek.com
Cc:     allen-kh.cheng@mediatek.com, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
References: <1645003971-16908-1-git-send-email-xinlei.lee@mediatek.com>
 <7d54ecb2-bb7a-ab3d-9e29-fa2541ec549d@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <7d54ecb2-bb7a-ab3d-9e29-fa2541ec549d@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2022 10:47, Macpaul Lin wrote:
> 
> 
> On 2/16/22 5:32 PM, xinlei.lee@mediatek.com wrote:
>> From: Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
>>
>> Changes since v1:
>> 1. Fixed formatting issues mentioned in the v1.
>> 2. Delete pwm-mtk-disp.txt.
>> 3. Add mtk_pwm dt_maintainers.
>> 4. Add "#pwm-cells" & power-domains properties.
>> 5. Make dt_checking successful.
>>
>> Xinlei Lee (4):
>>    dt-bindings: pwm: Convert pwm-mtk-disp.txt to mediatek,pwm-disp.yaml
>>      format
>>    dt-bindings: pwm: Add compatible for MediaTek MT8192
>>    dt-bindings: pwm: Add compatible for MediaTek MT8195
>>    dt-bindings: pwm: Add compatible for MediaTek MT8186
>>
>>   .../bindings/pwm/mediatek,pwm-disp.yaml       | 74 +++++++++++++++++++
>>   .../devicetree/bindings/pwm/pwm-mtk-disp.txt  | 44 -----------
>>   2 files changed, 74 insertions(+), 44 deletions(-)
>>   create mode 100755 Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
>>   delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-mtk-disp.txt
>>
> 
> Why did you drop [PATCH] tag in the subject of your patch series?
> Please keep it for distinguishing it from RFC/RESEND and other 
> meaningful tags next time.


I also asked for this in v1 patchset, so it's a pity my suggestion was
not listened to.

Best regards,
Krzysztof
