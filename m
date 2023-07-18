Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40476757AEA
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 13:51:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231624AbjGRLvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 07:51:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231610AbjGRLvp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 07:51:45 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABE73C0
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 04:51:44 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51e619bcbf9so7755110a12.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 04:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689681103; x=1692273103;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3quue5muaabi4CozXaKq5cpAvjxqIHPBQ6qXUTBWbdw=;
        b=ai7bmqZWsoaWrpXI4H8t8ZMrZD7gYqG8TxIaP6A/L/kVtcTnV3PDNmK7VH1sFevrn4
         pHZiJp2X6jGyxaaHBuB1/HjuHO8HCfWE5CFmt2QoXooyNuTL8mgOBUHtHhhDfcVR40p/
         3nSifm44M09L5YisCb3cyB5olsUuOx+o5WH9gElgndkdtR1pTRnMqI/tp0yrzI7vZEBa
         o+IhS3jFBmJSo33v6lDFeMbClfSfmu/1bVJ6cxadTubj4bNhYhywI6fEN/HEprvlcjf0
         ZLY4mKnS4vFVx7r5DVL9BsL4g41wko3/QBY3GKAMhFTsWCq2rJUp8xb1X7He2pX+PapL
         5Y7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689681103; x=1692273103;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3quue5muaabi4CozXaKq5cpAvjxqIHPBQ6qXUTBWbdw=;
        b=OHO3H1pjcKSrjkvX2X2ZaaG/WxA+4EE8Wh9UuAu83lt8h5x40v5fHyXJydRP0+RuC2
         yZeHGzf3znxa17NSONaWegHG34j8vzZsRnJDki4CJVHDtG2y3dhQLAERYvnQl4/MyH+e
         vNIUVqpaO9dsvveYRLDUBu6PMZqz9+kIQHosgrx3gkiIJsD/MBAtAUSZQqy3eLucIcLk
         17FJvP0PcMOoquEyttdOZZxm9++k86+0BrRdOKwgzC1E2eBhPj8dGEB3I5PQWlWR8iu9
         SDJoW3WlYNT1AC5SZ6MCgwbb/WZCRRhk4lqx9D4sjMs2AkCTXJhhE5CUGXYMPUScSshm
         1LZA==
X-Gm-Message-State: ABy/qLYzmUBg1J1zsXAPYtp10WMJTfXSK/TdHqNujczuvCK8CFzDDSVC
        27abviLO87amISikxaMCcAPVIw==
X-Google-Smtp-Source: APBJJlEPo8s5sbjPHwSDG/7oatXTr5mKLCpvbizDsLHDd6nf2YqkStcYaR8mA4ooxcBG7nnqL/dqUw==
X-Received: by 2002:aa7:c6d3:0:b0:51b:d567:cfed with SMTP id b19-20020aa7c6d3000000b0051bd567cfedmr14504401eds.5.1689681102733;
        Tue, 18 Jul 2023 04:51:42 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id c15-20020aa7df0f000000b005219de74217sm1110977edy.43.2023.07.18.04.51.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jul 2023 04:51:42 -0700 (PDT)
Message-ID: <5cc44894-2309-b432-72e4-e65bcebb2b06@linaro.org>
Date:   Tue, 18 Jul 2023 13:51:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 3/3] arm64: dts: Add node for chip info driver
Content-Language: en-US
To:     William-tw Lin <william-tw.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Kevin Hilman <khilman@kernel.org>
Cc:     Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20230718112143.14036-1-william-tw.lin@mediatek.com>
 <20230718112143.14036-4-william-tw.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230718112143.14036-4-william-tw.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2023 13:21, William-tw Lin wrote:
> Add dts node for socinfo retrieval. This includes the following projects:
> MT8173
> MT8183
> MT8186
> MT8192
> MT8195

Please
wrap
your
lines. :)

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

Anyway, your commit suggests even more that you add driver. Drivers do
not have place in DTS nor in bindings. Your code in patch 2 is very poor
quality, so considering this "driver approach" I think you just send
some random downstream driver. Don't.

Entire concept is NAK.



Best regards,
Krzysztof

