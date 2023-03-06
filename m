Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B9A46ABB5E
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 11:14:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230401AbjCFKOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 05:14:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230135AbjCFKNn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 05:13:43 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56ECD3C15
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 02:13:16 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id k37so5299836wms.0
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 02:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V0dZrCyZVePxq5BUU/YkTwP3QyVp97gUFcbVu16exZQ=;
        b=VAMbs2MseNBShP/wYO7DA2LAXa9iQlURyyw2UcYxBUWgG1SUSHRAerNFWwn+z0f/o7
         4W7fCfgIBC4yFyHNbODj7SqT2jgH6Gpx08FaIUvXoLlL8tZt5GwwYstRBNJkevp2ZRxn
         9X3DpoRzIXo1hZCwoPE7aJpi7fKO1KAiUW9ljeRaDunHB5XhVI6p8h7p+BPco8Gt12+g
         P/TN8V73RFa/+VbdF6bG5g8ITB3YTiNfDc9fzz1b3u7Dpw9BpT0Vz+rQKUURCnrr/R80
         KBDgXbBqCtH0lzDe0ThStkYhzA/fgwiS2sAcPzHaNxTHxTiSB3gou5QeJRksi1FwF3VF
         +3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V0dZrCyZVePxq5BUU/YkTwP3QyVp97gUFcbVu16exZQ=;
        b=R9qxggqMDQAsliX38Tf6gYwFXnwIZbFbLwrIIK0BSTiHFm33knVZsSN1m55TF33zh1
         gUEQl0d0pDHOD0iEC/Wu8q+ngNTAqzuvEKgxve49/pGiB+xj/MoT4nMqUyLaCrEPODps
         d+8DGksTSwYCXrvW96rbYFON4KAjNrcY20zhGBfQNZS75nCqQGPubiFbd3qMy36x2Pq6
         9Tg94y40E4rF4VQhLrabvW2UeIqH8WR1SbECZy8LXgnRqmLiKWLU1yEM20N8y1OVmcae
         cD4fl4nKA/mCaUSq1JPlKnwb55QJMSYw5Z2Trsv2P8v4VHT01g/yfLfS8obFbbNuOGIb
         X4/Q==
X-Gm-Message-State: AO0yUKVMLua9aLGpVNBNmOwfjKfi/2t7t3NXGn3mqjyDgA1bjXhj3YNo
        cHetHczEKDgEyYKWnATpG4c4lg==
X-Google-Smtp-Source: AK7set8pw6NSScyjKceJ3BvlYig59ULCK8zSwQcbBmWA6SGBC1dwfoZQ6UoO/+GVzY+PU3FI4YVnqA==
X-Received: by 2002:a05:600c:4448:b0:3ea:82a9:3644 with SMTP id v8-20020a05600c444800b003ea82a93644mr8323670wmn.34.1678097590052;
        Mon, 06 Mar 2023 02:13:10 -0800 (PST)
Received: from [192.168.0.20] (ip-87.net-80-236-117.rev.numericable.fr. [80.236.117.87])
        by smtp.gmail.com with ESMTPSA id p13-20020a056000018d00b002c5691f13eesm9251879wrx.50.2023.03.06.02.13.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 02:13:09 -0800 (PST)
Message-ID: <a328c1c5-7cec-4499-8e5f-92d8cc233d38@baylibre.com>
Date:   Mon, 6 Mar 2023 11:13:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v9 0/5] thermal: mediatek: Add support for MT8365 SoC
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Rob Herring <robh@kernel.org>,
        Markus Schneider-Pargmann <msp@baylibre.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Michael Kao <michael.kao@mediatek.com>
References: <20221018-up-i350-thermal-bringup-v9-0-55a1ae14af74@baylibre.com>
 <afa4aacd-bacf-a545-3973-474286fd4b9c@linaro.org>
Content-Language: en-US
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
In-Reply-To: <afa4aacd-bacf-a545-3973-474286fd4b9c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel,

On 1/27/23 22:59, Daniel Lezcano wrote:
> On 27/01/2023 16:44, Amjad Ouled-Ameur wrote:
>> This patchset adds thermal support for MT8365 SoC.
>>
>> MT8365 has 4 thermal sensors, one for CPUs and the rest for debug/dev
>> purposes. The CPU thermal zone uses passive cooling device with
>> CPU{0..3}.
>>
>> Changes in v9:
>> - Use delay between bank init and the thermal zone device register.
>> - Link to v8: https://lore.kernel.org/r/20221018-up-i350-thermal-bringup-v8-0-23e8fbb08837@baylibre.com
>>
>> Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
>> ---
>> Amjad Ouled-Ameur (2):
>>        thermal: mediatek: add callback for raw to mcelsius conversion
>>        thermal: mediatek: add delay after thermal banks initialization
>>
>> Fabien Parent (2):
>>        dt-bindings: thermal: mediatek: add binding documentation for MT8365 SoC
>>        thermal: mediatek: add support for MT8365 SoC
>>
>> Markus Schneider-Pargmann (1):
>>        thermal: mediatek: control buffer enablement tweaks
>>
>>   .../bindings/thermal/mediatek-thermal.txt          |   1 +
>>   drivers/thermal/mtk_thermal.c                      | 117 +++++++++++++++++----
>>   2 files changed, 96 insertions(+), 22 deletions(-)
>> ---
>
> Applied, with some changes and the subject fixed:
>
Any news about this patchset ?

Kindly,

Amjad

> Subject format for thermal is: thermal/drivers/<thedriver>: [A-Z]*.
>
> Thanks
>
>   -- Daniel
>
