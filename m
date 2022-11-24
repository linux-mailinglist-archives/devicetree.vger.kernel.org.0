Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C01F8637783
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 12:22:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229472AbiKXLWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 06:22:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229455AbiKXLWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 06:22:38 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1E3E10557
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 03:22:36 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id q7so1632777ljp.9
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 03:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8+cj6UQ7LN+Ky9R0eZIQB58xP67HWLXBq+iNNjkXTo8=;
        b=B68erQZs5QUzFsysngKLpWreeOybSHkqNpRrg5yd409xD3gxY8Cxj9jBZhDvbeth6V
         NM7K5ZVlUV1R7Ntd3Lh676iigj/jWgcQVgBy0Lb6JmImMzNjtgqcvHqpD2djB5Z8GgBQ
         XqStNCey8YB0Zt0DHsQ5sT4zoD/GyE2ySX0JRFTtlt0bLdOYphH/cuvQ84s5roS323T4
         ne9R9A1sZddpT5JafMRiUq3R9foL0/PxS8gs+gMb8562NWmEQFSh0B5U4zDh2IxcR1Vb
         C5IInCsKNVQjb7q4YKrgZ0eU/uoxKKAmziu30kuR/CbBvdGIR2eVQqI2JlVi+Sswh7Nh
         XCPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8+cj6UQ7LN+Ky9R0eZIQB58xP67HWLXBq+iNNjkXTo8=;
        b=RAAfph2f3h0+REe7XZ/U+kP/YweWtatp1i6WfmNYMfLkzlr2OePxmBHq4wj29417nY
         aYsB6ljQp+vB16pf3xiEjho96K1vYQ/Slz0MrpHjWuCfTpOnIQyT1GSnVXRWNV29+grR
         961RxYvjJ9rBwEd6Sq31k9V/p6xYZlYfY7aC8Rm5bqG1Lid/h6K5A3y6hgery+IkyFW7
         +mzc5ddPbdz1ylt6HlU5muBI0hTSu0B6JgME3kc9MOFr2mOAfuUzeDnKfZ/sv09xXy5Y
         XUi6WIBNPEmFbCu6Wv7G9trJYcPN6RiTHdkZfnDdErUWfDFAjmmqEe3QAq6JPsj0eUqO
         AvtQ==
X-Gm-Message-State: ANoB5plQ3IHMf0xLiJk55DgS7ym0Xfu7nvmmfrzfW1t3OAymTa9JyAMb
        t2n28tLeXBT7srDwurFRdQflKA==
X-Google-Smtp-Source: AA0mqf4y/FJMl46TjVTTvWIot3f0zrc/aKiyh8AORhiv4ocwxXwR4jdUF70O0w4hYlYg1SvG/sZylg==
X-Received: by 2002:a2e:3217:0:b0:279:7ece:b6b2 with SMTP id y23-20020a2e3217000000b002797eceb6b2mr1663959ljy.128.1669288955222;
        Thu, 24 Nov 2022 03:22:35 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d26-20020a19385a000000b00498f3ebffb2sm95170lfj.25.2022.11.24.03.22.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 03:22:34 -0800 (PST)
Message-ID: <9de56bba-1df8-3504-0b9a-f5617517b327@linaro.org>
Date:   Thu, 24 Nov 2022 12:22:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v8 2/8] dt-bindings: timer: rk-timer: Add rktimer for
 rv1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>
References: <20221123183124.6911-1-jagan@edgeble.ai>
 <20221123183124.6911-3-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221123183124.6911-3-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 19:31, Jagan Teki wrote:
> Add rockchip timer compatible string for rockchip rv1126.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

