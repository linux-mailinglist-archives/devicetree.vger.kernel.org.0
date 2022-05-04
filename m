Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68B4951A32F
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 17:07:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233560AbiEDPLB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 11:11:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351880AbiEDPLA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 11:11:00 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AC092B18E
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 08:07:22 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id n10so3464209ejk.5
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 08:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SlBkoO1sK5p6C20wzTnNNu31b+DHcR3rosTKprOdHs4=;
        b=NG/g7+GoQkuRMr4Owok4yF0WlWRYzGFoO4aL/2lfoyecYNKbnXea3E5U1IerqsE0+d
         RzJK2AYlmvlObdC2gMvsC3ZIQuviWFYpdIKcgoAmAshyqvw77oj/6wDK7eb2NJibvRvA
         +itEyj2X5jjLjhGHaeqs+90rhCpCTlnyAteMh1Jn0dz45LYMOINi/XN87uwdL7i3KYPM
         aYkQb6d8WTwDwm0sJVa5r5sHcTB2JwqkEZ5aJgDrDWH+y97Zi7LE84Kj5tkEb6pP+jvf
         /lJThvZHZMz9gCv1EfiVpTkqHIOcUIpc6oH8eAK8v/1oMXNAzy90Qw4LPu1Mao2NZfgS
         BAFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SlBkoO1sK5p6C20wzTnNNu31b+DHcR3rosTKprOdHs4=;
        b=okIOChczpKwm657m1ZB0ywtOevhAQ/174vZ116FMbEfQav3c7a4KhahNbT54eERRK3
         IJcKbsXQTzZir/WXMValjc9lGKXUEHNpAco+utQHG6t9KjziDnTWousZDX08Cz4xQpb5
         Eijd9ieVNfqQv0JFmu0/S5Nueb/o7NeZ9fyxhvyzK4xvqGw7fY58iWjn63Onf+Gw6Rz0
         seSbmtHkpdVaGOHGvddzenUUi7uzAtdugbIrrRtRPqZ4AiOwCDHfF5bER1IyewBXg6zx
         mYFvq1xx13xlUZ+aKdziFU1sz3JJsZPZlkTh4UQDbAwNAOeE/Einhc0aPQva7VJtRtev
         ewag==
X-Gm-Message-State: AOAM533qaGm8idgDUmWPdQS8hU8Up5vk81wQu7PmVdx0fCkyg+14Ivui
        jij1j1mn3cmrwe0GJ5vWIdl5ig==
X-Google-Smtp-Source: ABdhPJzNR3dty6xg+9nnvi7tgssQ0/Gt/9NPLgoDdq2XQDhe0Sr7Ik0M13Ay/4y+wuygaAnEDSwF5A==
X-Received: by 2002:a17:907:2cc2:b0:6f3:7657:7eb3 with SMTP id hg2-20020a1709072cc200b006f376577eb3mr21514299ejc.403.1651676840683;
        Wed, 04 May 2022 08:07:20 -0700 (PDT)
Received: from [192.168.0.215] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gv1-20020a1709072bc100b006f3ef214dd2sm5849972ejc.56.2022.05.04.08.07.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 May 2022 08:07:20 -0700 (PDT)
Message-ID: <e9494c4b-55c9-b4a6-b836-fd47fa717290@linaro.org>
Date:   Wed, 4 May 2022 17:07:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 1/3] dt-bindings: Add Sercomm (Suzhou) Corporation
 vendor prefix
Content-Language: en-US
To:     Mikhail Zhilkin <csharper2005@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Karim <Karimdplay@gmail.com>, M <x1@disroot.org>
References: <20220503154254.2339744-1-csharper2005@gmail.com>
 <20220503154700.2339796-1-csharper2005@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220503154700.2339796-1-csharper2005@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2022 17:47, Mikhail Zhilkin wrote:
> Update Documentation/devicetree/bindings/vendor-prefixes.yaml 

This is visible from the diff, so just "Add sercomm vendor prefix  for ...."

to include
> "sercomm" as a vendor prefix for "Sercomm (Suzhou) Corporation".
> Company website:
> Link: https://www.sercomm.com/
> 
> Signed-off-by: Mikhail Zhilkin <csharper2005@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)


Best regards,
Krzysztof
