Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 509164D072E
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 20:04:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244931AbiCGTEz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 14:04:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242961AbiCGTEy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 14:04:54 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 454A26E56F
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 11:03:59 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 17F7D3F60B
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 19:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646679838;
        bh=J4AWHeY6kJDoGGWSDU0TUvtoqIxvWQeYEQ4e5H5diOY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=hfwauzVEnqFSTqovwMDhWrtwwPu3wIMljO/FaNvTtg0C4ZLbbFFXvolHwx74dAWSg
         zpFOK+NbWsMKBUptMutpwJhMO5C1O5HOW1nri1zgnHYo/YSwQM1HyW9AruHjSWPIn1
         UrSjathh7hGP2APHBb3yYfH44XkGtgQKpkGURlZwqklAJYX2Oea1Dj5roArdYYa6RX
         BjxKprh1gwhQNBeiCKv2ZRlUeNnTz3AcWXtAZvhMd59mhQaqXLBC9jmvBeqLdpS8RK
         0r30OGbmiVEvFV6UHF9nogVjDvZRH6PamoDjSCwdZraU/ncmUOFEzDjEUctdOdreLq
         /QtJfcVpDBl8Q==
Received: by mail-ed1-f71.google.com with SMTP id l8-20020a056402028800b0041636072ef0so3136281edv.13
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 11:03:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=J4AWHeY6kJDoGGWSDU0TUvtoqIxvWQeYEQ4e5H5diOY=;
        b=p7hQIzHG13kbma0oTXMMyg2XE8t0iQE2Dtq1GhIupBRvBRFWQoWESArgaOU6KXOWX1
         yn9JWcME5Z508xVrlCJCZnQ9S6wClu1De7umKUZraC1KTKg0EuXNJ5xclvq1fRWJCwiZ
         ge81g+ArT6Ryoo+x/9XFP0JMNLOIrxHagvJZPr0kd2dNRf6V6u6teFLSz63k5OZLUAl1
         Xeed3f0FhpNQD5PihJpUzlOvrSEY5OwSPylGILzcuRZq6tNnilqwGSR7jgSl3zY867+Y
         G6aNzEx1G2dZ+YbCBXVFGTIjxa0eSA6F8xbUnXvmIFERj82hd2HFOHQ7evCCbDXndCxn
         SFJw==
X-Gm-Message-State: AOAM533FOYRMIeHWwYT0zcyNfKz2WEhKDa+ylWgwBSCxThPPX3zoBUUm
        nQgE/jlBIAAgvC9Sj5COIApe7Llrf/2lRv1ScSa/a0UhY/on7b2yXc7lPzVQvMjtR6QxgRETK2T
        fyzPzX6x9PXd6/oYc2wf+M4Kd7mw7w17MO+ud/8Y=
X-Received: by 2002:a50:aa87:0:b0:40f:28a0:d0d6 with SMTP id q7-20020a50aa87000000b0040f28a0d0d6mr12475406edc.368.1646679837655;
        Mon, 07 Mar 2022 11:03:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxKC+brW6i/AxkVvgIwi5JIxVP90rh2B8pfzbYSF4MakKIPVSeOvoB5oYLiqCOs67+OJ+fNaA==
X-Received: by 2002:a50:aa87:0:b0:40f:28a0:d0d6 with SMTP id q7-20020a50aa87000000b0040f28a0d0d6mr12475384edc.368.1646679837477;
        Mon, 07 Mar 2022 11:03:57 -0800 (PST)
Received: from [192.168.0.143] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id n15-20020a05640206cf00b0041655b577f1sm1268973edy.25.2022.03.07.11.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Mar 2022 11:03:56 -0800 (PST)
Message-ID: <a728aaa0-bde9-b9a9-971a-2e4b52f2b7bf@canonical.com>
Date:   Mon, 7 Mar 2022 20:03:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 4/4] cpufreq: mediatek: add platform data and clean up
 voltage tracking logic
Content-Language: en-US
To:     Tim Chang <jia-wei.chang@mediatek.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, fan.chen@mediatek.com,
        louis.yu@mediatek.com, roger.lu@mediatek.com,
        Allen-yy.Lin@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        hsinyi@google.com,
        Jia-Wei Chang <jia-wei.chang@mediatek.corp-partner.google.com>
References: <20220307122151.11666-1-jia-wei.chang@mediatek.com>
 <20220307122151.11666-5-jia-wei.chang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220307122151.11666-5-jia-wei.chang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2022 13:21, Tim Chang wrote:
> 1. add required header files and remove unnecessary header files.
> 2. some soc needs different min/max voltage shift and voltage tracking
>    attributes. make these variables into platform data to support
>    future soc.
> 3. add need_voltage_tracking variable to platforma data. if true, it
>    indicates soc is required to realize the voltage tracking between
>    voltage of sram and voltage of cpu by software approach. otherwise,
>    the voltage tracking is realized by hardware approach.
> 4. add opp frequency look-up function as mtk_cpufreq_get() and
>    registered in cpufreq framework.
> 5. update voltage_tracking() logic and drv_init(). in drv_init(), it
>    always sets highest opp voltage before return. it could prevent from
>    high-freqeuncy-low-voltage issue if two or more clients using the
>    same regulator.

One change at a time.

> 
> Signed-off-by: Jia-Wei Chang <jia-wei.chang@mediatek.corp-partner.google.com>

Your SoB does not match from field.

Best regards,
Krzysztof
