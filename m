Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA09F63224C
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:36:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231276AbiKUMgj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:36:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231331AbiKUMg2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:36:28 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA2FE2F652
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:36:24 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id z4so5059130wrr.3
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DFZS31orYUzmE7Oui/y7eLseJom8bGmCVAt+PCCfPxg=;
        b=fW5Mp6sgNTEJLfxwwpa6BIHYLAfya0or8LXwcsASGLmIq9mn1KR9RFWRL/2tWjqqAV
         lqiutzi4AG6MRhTQ4IXBpyEUf/lrKm1bRXVYDE3J7USVRAEZzfY5DHPpfA2sCaPCz9FR
         1WKF62zxbCIT5Eol+OpNmMlDQltt4rdDe5l+YyWNMe1KBTtDcWeeG53oEoI7TpRmWqAW
         MII2+ZrqXss/yMjy24JnfZcXyO+8ZYJG5p9S4xVSnRP/JZExG+jmX0i+siq4xk+M+X4q
         aK1N6gZkupNjcummiw+CrMzd8Cvr7+ctnrzsM/Xui4t94xPO8j0cXaGHiw1p0HvCi3u1
         fuFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DFZS31orYUzmE7Oui/y7eLseJom8bGmCVAt+PCCfPxg=;
        b=2BHE5YGfwEJO7dd2bMAO5nVPOrf4byXFYwM2jjsAND7ipViezc5/aM82Z5VKRgMgWw
         Gg43s9lUJzFbv8MKGa9Lk2ZPwPiBgBbusQVbZGdXmuCj9pAxjufl5+vZi7bMp8GKbacw
         lV5jY13Ontiy4ROVl3LqkMQJjLnZth2cYqXe0CfgPUdFSWkth28N0UrOxW4FFPLzW+M8
         pVjL9VQltDjBWxTRXfX43YoBaxardhs3fUHR44nNXtfL4V06jfWu6jFqLTh+5Vd5HpF5
         REATxH3cOGW1MfGjYlAD1zv5mY9afPevEV8LTikWQ61ypSehTARa4WWuUcnF7K3SNlg/
         tlOg==
X-Gm-Message-State: ANoB5plmeCrm/lrrXX1PwKpDGpIYJpzhh7QbYKqV+PdsZCnJNiVhbT2r
        u46K8uwqdhgqcKlhUPe56ME=
X-Google-Smtp-Source: AA0mqf5gaD4WIQX2sbEeb8QjK494DhuNzsLQ1Cu8gU+8er0XjItCmVLNx0maWmXAjD+rlO90gKR4Qw==
X-Received: by 2002:a5d:5a95:0:b0:241:65d4:8b41 with SMTP id bp21-20020a5d5a95000000b0024165d48b41mr10628536wrb.470.1669034183276;
        Mon, 21 Nov 2022 04:36:23 -0800 (PST)
Received: from [192.168.1.131] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id 6-20020a05600c024600b003b50428cf66sm13335494wmj.33.2022.11.21.04.36.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:36:22 -0800 (PST)
Message-ID: <f3697559-efd0-b3f9-9d64-17d2f8131a97@gmail.com>
Date:   Mon, 21 Nov 2022 13:36:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 3/9] dt-bindings: pinctrl: mediatek,mt65xx: Make
 pins-are-numbered optional
Content-Language: en-US
From:   Matthias Brugger <matthias.bgg@gmail.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-4-bero@baylibre.com>
 <8afd5100-9cef-50bd-2b53-e1a550973835@linaro.org>
 <5b28a9b0-3c31-75bd-3161-0ff9bddf0c54@gmail.com>
In-Reply-To: <5b28a9b0-3c31-75bd-3161-0ff9bddf0c54@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/11/2022 13:32, Matthias Brugger wrote:
> 
> 
> On 21/11/2022 09:00, Krzysztof Kozlowski wrote:
>> On 21/11/2022 02:54, Bernhard Rosenkränzer wrote:
>>> Don't list the pins-are-numbered property as required
>>>
>>> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
>>> ---
>>
>> And how about making them deprecated? (deprecated: true)
>>
> 
> I think that's we want to do.
> 

Also squash 8/9 into this patch.
Same comments holds for 4/9.

Regards,
Matthias
