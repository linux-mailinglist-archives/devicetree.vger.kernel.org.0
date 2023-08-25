Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 329717887BD
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 14:46:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238920AbjHYMpz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 08:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244831AbjHYMpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 08:45:46 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22E11BC9
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:45:44 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99c0cb7285fso113484766b.0
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692967543; x=1693572343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rQ0SgZiq5KFAr2TbSxDALER8JptMDZobii3MJo2oJy8=;
        b=SKCF9Ty+RQwW9lmD5QtXXQ+UBg4Jvo4XjvR6LuN8lKF0rjFVf/V50BmvVY7S6UzAkY
         slegOaEcQslnM0MWFeB5u1iSqYoPQ97qEGSXG9VnGQEfjEG7Tn3ELd+Vty5CItUQjwQx
         9Vmh/cLor6XLqX1JnhsI14FJ7ksIUkJC9cq9bqYX59Id9FWcVSLH9Bt+Fi5k3O6PMjeu
         VOo+J78M+aDBZ7MPtZNKrb4eE8Vmqi4r3AW87UyhDUx79mAKoPuNVgngGCUM9FYG1Wgn
         /Mdsr/oNfbt5jkRseczomdsE5/AZeInAE83fv5KNXXW1dsGfkuuN7nWYNRBiAaKJOJVv
         sWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692967543; x=1693572343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rQ0SgZiq5KFAr2TbSxDALER8JptMDZobii3MJo2oJy8=;
        b=S/AMB7u/jXd4cgfmZNbDGq9zS7eZG0p5fkcrV5qlqYaF9/5WkWWwzobKHZysJwxWd4
         k+CDX1U4JeWIZQHD9H5Q6nJM020IFGnl5+6k7lWiTDKjkMzntDJ58dvh1iLMLeRTLAe7
         ZXevApniWJq+pmPDICTrjlQ2ehi6IyrbEvkhnoYEhHIxuFOWsbDDQj0WZB9XRqYxrwP+
         dgp3gT/JkW6mkjQBXLUtVyDvFujoUCHocXFcafaTkdZlWUGhzISCaN9eXy9eD663iGRD
         9tP0h4Qhcm7UvwCmKLlwAy+xPjBp1aVp2Gqkh2XXmq5H06ULOSAUaBM0EM4M5F1RmlTk
         ACRw==
X-Gm-Message-State: AOJu0YxdcoOZK037LgwEgM0Jtm3eE9X/9jnkAV9zwnsGoH0oKWN6qfhD
        5nEv+jb7w0xxWZ66AYssqvmzAA==
X-Google-Smtp-Source: AGHT+IFmbF6kHF5CYgFTKY9kVpnNOGbd+UEWj7xjgzYue0Vd5bafoXveZinyizShKcfYmkNqIGGl1w==
X-Received: by 2002:a17:906:5a4f:b0:9a1:be5b:f499 with SMTP id my15-20020a1709065a4f00b009a1be5bf499mr7597963ejc.24.1692967543365;
        Fri, 25 Aug 2023 05:45:43 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id v17-20020a17090606d100b0098669cc16b2sm925954ejb.83.2023.08.25.05.45.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 05:45:42 -0700 (PDT)
Message-ID: <2856de1b-36cd-1d56-734a-401def967870@linaro.org>
Date:   Fri, 25 Aug 2023 14:45:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] dt-bindings: mips: loongson: Add LS1B demo board
Content-Language: en-US
To:     Keguang Zhang <keguang.zhang@gmail.com>,
        linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20230825124115.1177577-1-keguang.zhang@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825124115.1177577-1-keguang.zhang@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2023 14:41, Keguang Zhang wrote:
> Add compatible for LS1B demo board.

Where is the user of this binding? We do not add bindings without users.


Best regards,
Krzysztof

