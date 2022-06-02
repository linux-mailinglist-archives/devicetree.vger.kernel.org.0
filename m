Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22ACD53B47B
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 09:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231892AbiFBHk3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 03:40:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231877AbiFBHkY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 03:40:24 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E02D7DCA
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 00:40:20 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id fu3so6819103ejc.7
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 00:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HFO/87aGbgtk33I/L3fMAte270UwuSA7why2H6PNvOA=;
        b=mN+9jqmfWnKT/Fy45KzmqTXK61LpYwelBn53fMaaCN3lzzj6Wk1I4DwXrQcGQv7Om0
         ZW/yKEF02ARPnGCLi0JYn6G8+2Euzm7zo937S/x3Kgdw7mFKrMWdzzDkUE39OmVwdAyl
         jdxTGxalpwlo6x4nn9ZTVZnMMa0IpX40CBniWDnDJOm19W39m8EKqnw34gSjpMgWghAP
         +js28jW5WuMytQUUDrU2MCk1Q9su+9FAjejSbzfhKgITz/KdTDmLhWmgJtAJN4id/IAu
         VN6OjcyLJX3mTS6A3VZosYlgLj+Yy/ahQAmK2C+U+BBo0ArlPkSvc7gpdSBpjiKL0uJv
         GhvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HFO/87aGbgtk33I/L3fMAte270UwuSA7why2H6PNvOA=;
        b=fKZfNnRMJfr8tGLyOz64W7ZTePs2ezcH1mYDJVfi4ZHsLZE8+/Lp0ctMq2KK2IfpZy
         4qAMK+hw+14dwg0cIeeLAPZGnq/lnoeo/p+RAEuXS46DSh7J4+zWwOcHrDWn/y/08WJo
         K7LFRbEn9HgsLq6sj8g9Q/itjG/nZBDJwYbt3lY/5Sl7TM4IUFzgwoFvDg71sB4LubDu
         nf85C1mpsCBBqgAqELKxWkMYgYtlRVW5a8WfpZDaBh7Ww1Vy3ctUJE9fmi4viNOVtyuZ
         Y31ErEMhDLDh3iiywkMOXbqezMw3grEdPflwWh1CJlJKfhJ2gu5YVn9SW6Y1f3vo5akj
         ELSw==
X-Gm-Message-State: AOAM5330p75fKFZL8GT0qdcQm3DorFeCmtivaVTrpKNcAT+mw8B+LnG8
        awREnMDl5D+hcmdYUs5ao3O2+55FDmWRVm8G
X-Google-Smtp-Source: ABdhPJy700q4fNsXKgsESmT7E5pefeLTeGNQEt9yQudDkNdyZe3ocIfN2I7Ewpexw384BVFeCMpDrg==
X-Received: by 2002:a17:906:b0c5:b0:6f3:bb5e:54a8 with SMTP id bk5-20020a170906b0c500b006f3bb5e54a8mr3136287ejb.534.1654155619493;
        Thu, 02 Jun 2022 00:40:19 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j3-20020a170906094300b0070ad296e4b0sm371503ejd.186.2022.06.02.00.40.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 00:40:19 -0700 (PDT)
Message-ID: <591767ee-e349-7a17-a9e9-b95d0500c7c1@linaro.org>
Date:   Thu, 2 Jun 2022 09:40:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v1] dt-bindings: dsp: mediatek: add mt8186 dsp document
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220422071534.15653-1-tinghan.shen@mediatek.com>
 <c0a188e5-8a8c-d4a3-5a3d-9b9dd85d8f44@linaro.org>
 <eb4deff1a01c09783518bbaff8fe4e4c4ca6fa5b.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <eb4deff1a01c09783518bbaff8fe4e4c4ca6fa5b.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2022 08:44, Tinghan Shen wrote:
>>> +  mbox-names:
>>> +    items:
>>> +      - const: mbox0
>>> +      - const: mbox1
>>
>> These should be rather some meaningful names, e.g. "rx" and "tx".
> 
> The mbox name has to align with the adsp ipc driver.
> The adsp ipc driver is using 'mbox%d' for mailbox channels.
> 
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/commit/?id=9db69df4bdd37eb1f65b6931ee067fb15b9a4d5c
> 
> 	chan_name = kasprintf(GFP_KERNEL, "mbox%d", i);
> 
> 	/* ...snip... */
> 
> 	adsp_chan->ch = mbox_request_channel_byname(cl, chan_name);
> 
> Is it ok to continue using these names?

It is a bit confusing... how did that driver got merged recently without
bindings? Why bindings are separate?

The bindings always come together in one patchset with the driver
implementing them. Bindings are though a separate patch, yet still
followed by the driver which uses them.

I do not see any compatibles in that driver, which suggests there is no
other binding using it. If that's correct, then you need to change the
driver.

Best regards,
Krzysztof
