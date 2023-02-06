Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70AFB68C694
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 20:16:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230220AbjBFTQZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 14:16:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230160AbjBFTQX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 14:16:23 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 753D92B0AC
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 11:15:55 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso9660066wms.4
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 11:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ASOZTaYA0fPeH4V0w0/DNjsNUMl04wnF0KiVjBDE8js=;
        b=FkRZnbBXMV+2QXm2YTQ1vwr+2L5cJrDiMLarDO+RZG5x6kNysr4xYb5uZTTEyvxYBN
         Z/zIs7S0voagwKnVjSmFMJ3tmYdhsdFIJSwneonn7Sstj/FDhQOkmBzic7wMKIMJDDIx
         /WlMw01YiHvRrrfO9oSM3UAFyGphvfyDBSk8Z4sK94hz2psrYVJzEnHJGFdV+Cc9tPRz
         RSuZBBbqxCcMVyj10vrrnO43yK/xD+g6rqlyQ5FlQBRvtrfb8bIMcBkVxpM98CrFBNj2
         Aei7gpB+5s/jr8mUWpNluRjXpoeu4SUVkvLcVIga80lrSviPcHmNAEND+xjlJi4w+/pb
         TTlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ASOZTaYA0fPeH4V0w0/DNjsNUMl04wnF0KiVjBDE8js=;
        b=QpH5cd42+ehdtimbUNQXWDHnEWFZGGU0t/cdc3r7rXcNUsv1ZFjF85lK3tnALizoWN
         TBmqm0qdtcKfEmMjtsR5/ui337/efPNWAVWswyhPo07hT/EWI9fmBB87Qu1WNcC1SsgV
         jSAKU4cH/HVQlhmZN2wH57PKUp1QCEaK8HSokum8EEAd8exwYYNuPTKKXNRERPymHEpP
         VNOq5vFwznC6homAZsyo2oUQZNZ3YYCcHQkYJQki8ab+QIayRtv+ZsPjJ2WU7qye7gvS
         PptXr/SB1wnoHBVl8hOSPvdaT8hTCcmdFMSFmXhbfcEntKBmRyDg2+teXlsQNR0aF1Dg
         px0Q==
X-Gm-Message-State: AO0yUKX8w7ru+1ZqzomBJSQ8A/SqoV4P8b6lwzNjIP92YFQGGMW9y28P
        UJXY7T1e5NsFGlLNwREc+SqBUA==
X-Google-Smtp-Source: AK7set97CwxTF4+mcJ4gp9ZLuFRVhrwVBA51yp8Mc0iz4oDZXFiH93F59Or07hUeP2uEl5+p8AFg1Q==
X-Received: by 2002:a05:600c:13c8:b0:3df:50eb:7cd9 with SMTP id e8-20020a05600c13c800b003df50eb7cd9mr731884wmg.14.1675710952530;
        Mon, 06 Feb 2023 11:15:52 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b12-20020a5d4d8c000000b002c3e63c030bsm4224376wru.93.2023.02.06.11.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 11:15:52 -0800 (PST)
Message-ID: <364e2bd0-c411-7a71-4005-dd24e8d0f0a6@linaro.org>
Date:   Mon, 6 Feb 2023 20:15:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 5/7] ASoC: dt-bindings: meson: convert axg spdif input
 to schema
Content-Language: en-US
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230206153449.596326-1-jbrunet@baylibre.com>
 <20230206153449.596326-6-jbrunet@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230206153449.596326-6-jbrunet@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/02/2023 16:34, Jerome Brunet wrote:
> Convert the DT binding documentation for the Amlogic axg spdif input to
> schema.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

