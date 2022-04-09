Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89F4B4FA8B9
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 15:46:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242247AbiDINso (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 09:48:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233272AbiDINsn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 09:48:43 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 822339D0C5
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 06:46:36 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id l26so22412259ejx.1
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 06:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+XyNRW/l0jJ+Y/IrKpe8HRBR60t3UvVTtiQLW83IWfE=;
        b=hCviDOktJ9lpvcQpltWvA475M8EZ6J2NXrExnyy2qisTizDTA5x/R4rJQK7hO1XCgK
         qWLKRIL0HzNxwslxcTUzfM2OdqazMNmtWr7hEKGawKsNQCtoWGKBZuxgl/iQzu43OpmV
         wwzSG6XAnnFjBJoFrZZNTGm9RoPHr1R7W6YmwUXbjCmSKHltM05z8auSkqlFWvAVTGdT
         woUk04dRHCg8JNrDaCxekT385wMWOAVaKGdCGyO7x29yqwCyuGjTfQ3AJukJXitP43xM
         cDDhB6ETTM2eaiokXuyoddP3UlsxKYfJdGB7ex2CXqdy1Dp9bf37OhiFALrHIdLs6tos
         CS2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+XyNRW/l0jJ+Y/IrKpe8HRBR60t3UvVTtiQLW83IWfE=;
        b=hrwMomm4uP+HespoAgrT1RnF1vSSW679NHx+uU20YwFsRcklSHTh3HHwQb2ilcoGpM
         TVAMi/3wZurpIy3avYMCQTxQb6zDNRxx7SUSDO4DNgKJ3LkDUS/9BCtsMLZPr3k12PIi
         AanMq4FJpAGn2RnlfWQ5UEi1a/s7JXYBeALwnEtS2yH3laEj28t5viQRDNG/Ygm+/R8e
         OvghWpLXa4QAI5MFou10uJUvQ5fn5zv3FjmO14a0DzqkrNrAxbiChQSrWh9FDca1AVrY
         o38Xpfj5ZLcYsFaH1WrecgvhY50dvC5tyZdQSVwI/sgcJZpI9KcB3I7rmBKHljh3FP9d
         6V+w==
X-Gm-Message-State: AOAM532uMsa7claR6ionLbdIBpy9V+ycqCwBRzCTVGj3sjoq3aGUieRJ
        TfocQc7eWbhoeCZfyz7ALRRqiA==
X-Google-Smtp-Source: ABdhPJwJqM+CUyXCktrnrGvmubRDadUfAc+cYtxqSZq03ERzhKQq1EUXTh+eLhuYObcundzB4YaeUw==
X-Received: by 2002:a17:906:2991:b0:6cd:ac19:ce34 with SMTP id x17-20020a170906299100b006cdac19ce34mr22810415eje.746.1649511995079;
        Sat, 09 Apr 2022 06:46:35 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id a18-20020a1709063e9200b006e0527baa77sm9760255ejj.92.2022.04.09.06.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Apr 2022 06:46:34 -0700 (PDT)
Message-ID: <fb521d87-2d52-c15c-83c0-1b62bf1b1cc4@linaro.org>
Date:   Sat, 9 Apr 2022 15:46:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 05/18] MIPS: DTS: jz4780: fix pinctrl as reported by
 dtbscheck
Content-Language: en-US
To:     "H. Nikolaus Schaller" <hns@goldelico.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Cercueil <paul@crapouillou.net>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mips@vger.kernel.org, letux-kernel@openphoenux.org
References: <cover.1649443080.git.hns@goldelico.com>
 <1941bc4ed553b27f399ad00ea61ff2b0237d14e3.1649443080.git.hns@goldelico.com>
 <e905896e-335d-a88a-1961-d17b92e46585@linaro.org>
 <530E0F7F-FC03-45DD-BF87-D049D3108AD3@goldelico.com>
 <c84b5ec0-0193-ab62-1985-25bc2baa9f05@linaro.org>
 <B5EB5983-DA9F-4631-B737-2B1417CF9054@goldelico.com>
 <f40e1a00-be4d-11c7-6a7c-6b50635a2960@linaro.org>
 <499848FD-3F64-4B5D-9259-5C9E1ED4E8AB@goldelico.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <499848FD-3F64-4B5D-9259-5C9E1ED4E8AB@goldelico.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/04/2022 15:41, H. Nikolaus Schaller wrote:
>>
>> No. I ask you to fix all pin-controller cases, for entire MIPS, not just
>> one.
> 
> Oops. Nope. I am a volunteer and neither your employee nor slave.

No one thinks differently and I am sorry that you felt it. Please accept
my apologies, if you get different impression. You understand though the
meaning of word "ask for something" and "order something" (the latter
which I did not use).

I just asked.

Best regards,
Krzysztof
