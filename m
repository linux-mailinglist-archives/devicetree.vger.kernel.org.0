Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1ED2A56CF7B
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 16:43:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229518AbiGJOnj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 10:43:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbiGJOng (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 10:43:36 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6B3727B
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 07:43:30 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id r9so3561760ljp.9
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 07:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=19MhE5ZfrhXv+XYWE6FLNmmTUzoahjHoCzilM+giJ+k=;
        b=a6NBszHDHT2cYh8kUOScD2ibqpT7ddU8tPcRl7sHY3jNSJ67rLDQhZaKXkmpA9VE4J
         djRGj6ZfDFIzZ3DaWFRWpNWAQKCeVRmgoxOaE5GXzYb7UqQDz4k8eJXO6qeo0GjeervX
         09kLWWT8N2WdlFT8TWP2nz0zll+8m50DANAXC316JkJvnYWJVSALekLWrpwcjz0XJIpE
         uT+7UF5KJSTFq9hJ2zH95LlIPbOCiTG6e+OcfIY1Nh210xV0hyFi6mOYmCquA9um8YAw
         bDTQTHHesldrsCGKGNQjAmmGh0Kpkotdrsw7tKmwupKa7ISfRoiBR9TwGb9tVCUNa6a1
         nq8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=19MhE5ZfrhXv+XYWE6FLNmmTUzoahjHoCzilM+giJ+k=;
        b=qCKKwBHA+2Y72qrwuC0bagqKYQKVXyv5zanLOy4wYJR0C7VEkbH0zyzt0tsHbdtvol
         P81SuXpN2k/lk/4lPAJi7XgVlCWAbLedIYReE505ELphYTpMKAxpllfcJeg14rh7P/0G
         +yfTS5FZeeUNAex2FeejRASdiOmxcF+asaACUQwb9RWz4apohJDlrWb9VR/PXyqebV3L
         WvkAkrdhPf7EesC8Molu0ENv2X4paHD/P4Q5f7+v2Xfo6AUQ6VH8LsGmdk9LmQg6TCBZ
         XFETw1DJV6Jp3VInQv9+73jMwdBJpednSA4GHirNe1S8d3OE/yyweSzLqfbHW4DjuhcB
         40mw==
X-Gm-Message-State: AJIora+BQfjQIrH9qFvewlolc1ORWQBFDEI5V//wIx03hDGU2r0CbNg7
        pgpPgqgtlslD5TrDaTsC61dv7s+SblVafT2M
X-Google-Smtp-Source: AGRyM1tJ59Oz9cXf8kXE8WHZfYzZXD2CdrY2JUdL5IwSncxq0RpO5KsqvhUTSVlUVMmSv/rTAHqY9A==
X-Received: by 2002:a2e:a54a:0:b0:25a:6609:835a with SMTP id e10-20020a2ea54a000000b0025a6609835amr7310297ljn.408.1657464209307;
        Sun, 10 Jul 2022 07:43:29 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cac-200.bb.online.no. [88.92.172.200])
        by smtp.gmail.com with ESMTPSA id c21-20020a056512325500b0047255d21132sm960283lfr.97.2022.07.10.07.43.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jul 2022 07:43:28 -0700 (PDT)
Message-ID: <b2bf6fed-2f98-da42-076f-9a4ef3b13fd5@linaro.org>
Date:   Sun, 10 Jul 2022 16:43:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/6] dt-bindings/display: ingenic: Add compatible string
 for the JZ4760(B)
Content-Language: en-US
To:     Paul Cercueil <paul@crapouillou.net>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Christophe Branchereau <cbranchereau@gmail.com>,
        list@opendingux.net, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20220708205406.96473-1-paul@crapouillou.net>
 <20220708205406.96473-2-paul@crapouillou.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220708205406.96473-2-paul@crapouillou.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/07/2022 22:54, Paul Cercueil wrote:
> Add compatible strings for the LCD controllers found in the JZ4760 and
> JZ4760B SoCs from Ingenic.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
