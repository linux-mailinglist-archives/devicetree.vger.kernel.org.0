Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 714A77202F2
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 15:17:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236063AbjFBNRJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 09:17:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236080AbjFBNRG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 09:17:06 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D63B3E4C
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 06:16:55 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-96f50e26b8bso311793866b.2
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 06:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685711814; x=1688303814;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OWKKScIs76KUhUju57F1WBq/kEE/WaubIYmlIJkcXeM=;
        b=djg1I3aMWrXwh42gt+Z1jP8HZRSPHKiD/O7q572NXS2NstJBFkf74hP1hqDpFvm93Y
         S6rtZ0hSvDt36ie3UCI0m9WQnXbsNumG6nSch+IYQuOtC7w8PCiKzpzcbZ22OA8qj4NH
         D5ZimQPwP1o+5OTH5SX93sFAvP4kx0FLlkLxgZSiRVeiVWd429YmS9Jr2yRZNUlqRpWr
         XDbnj7tWmzvagBl1nQOMkWYJVN9WEPIyp2VQcp+vgJxHzdafj3yIWjekFqcnGfcrVcXy
         oWeHsdXPttjn29t/JHXr+i6tuTUAP2mJV5ZlR9/PDl9IpawjmQQwb6SYJJad2ovGmOlP
         Ds/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685711814; x=1688303814;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OWKKScIs76KUhUju57F1WBq/kEE/WaubIYmlIJkcXeM=;
        b=l7fkvwQeGf3F+YffJf3PcGaWZv1Y+cjsHfOQ/n/G01htHM7p3K4WyqQgojo3VZB6kN
         67VeCJVm3nBoC4IFidRuDpoNCuWulkQR3CgH7K8eT/egi87ceB1oHOTwE2+TsKb5ILJ1
         zX3CVYdxj2up9jxDqdsuVqEjj2kNtAI+DQzgxL9XYffrffhGc6hhYNwHHcgKn9NDQML6
         A68QR3l4qtje+SL1btQwIe7oyUClZ92yiEq31A7125fRDYDK9U8OUvtPjG3u9mrnL2IS
         NTxbDqmebObma3bdDRST7wDhOoPwTeHDOyLoZeF43XuTUJX/gOKirWLBX2gF7B6JWoQp
         mWlw==
X-Gm-Message-State: AC+VfDwdSrTd71yblGSJsTU0dfQPyc3/cdUHfUEZ/0FnE2NG4rWRwIXF
        NUuytqxw/QMy+7jilsFhBieOoQ==
X-Google-Smtp-Source: ACHHUZ7MMAyTZGii1bYOWthzbVZRd2pV1jULI1a2xgUG69SJwoyDeW8SFaGdCjP8JrcL40Z/J/mbOA==
X-Received: by 2002:a17:907:94c7:b0:96f:aed9:2535 with SMTP id dn7-20020a17090794c700b0096faed92535mr10956707ejc.9.1685711814507;
        Fri, 02 Jun 2023 06:16:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id o12-20020a170906358c00b00966447c76f3sm766394ejb.39.2023.06.02.06.16.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jun 2023 06:16:54 -0700 (PDT)
Message-ID: <7c431f4c-3212-c297-8cc4-9280124f4746@linaro.org>
Date:   Fri, 2 Jun 2023 15:16:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH V2 3/5] dt-bindings: vendor-prefixes: add Indiedroid
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, lucas.tanure@collabora.com,
        kever.yang@rock-chips.com, yifeng.zhao@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, Chris Morgan <macromorgan@hotmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
 <20230531161220.280744-4-macroalpha82@gmail.com>
Content-Language: en-US
In-Reply-To: <20230531161220.280744-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Resending as my previous email probably got lost. If you got it twice,
apologies.

On 31/05/2023 18:12, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Indiedroid is a sub-brand of Ameridroid for their line of single board
> computers.
> https://indiedroid.us/
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

