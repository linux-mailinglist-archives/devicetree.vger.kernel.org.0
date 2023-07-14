Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C28C6753053
	for <lists+devicetree@lfdr.de>; Fri, 14 Jul 2023 06:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234935AbjGNEGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jul 2023 00:06:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234088AbjGNEGN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jul 2023 00:06:13 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2E8F270D
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 21:06:11 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-98de21518fbso198294666b.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 21:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689307570; x=1691899570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OhXtvp/zRAWBJ0SRD1//Z0vGji/AeBOfa8eITzagFso=;
        b=BaLeZTGAqpbaU3GKInyx/D9zF/NqlDBhjiRNppVso2A/PWEsBEYzSNLLv6yDcS006g
         VvaPG1nYcdaHApdojA1IJJElUDg64k3n41iAj9OBUMzuiCMsBXYf8r40Wevl0raIyjrl
         eVaJpsWsQdOUrcfkc/On48tfHkszV33Wtr/MLAzrjSAFzSFIeVrWNkGUF4fSDrMsgMyX
         Nm4ZCFp8vrDaGxLSAH15H7eMKrdmfBMt1vFUaQ0WX+yF72axfurovvpSRnjhUlsP3vXM
         Ovb/LRqpVMd/ZTyIz3X2Y8W1O3tcZnUUibTI71OEo5gOnhUwebEpwvcPyte/ztqjqDvj
         3Cxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689307570; x=1691899570;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OhXtvp/zRAWBJ0SRD1//Z0vGji/AeBOfa8eITzagFso=;
        b=i0PX4RgfbCNY8LRXcm4uGol/mc6ZTAZtsCDrdj5mohbDpP5fN2dQaqIabZkFoxVnTK
         oa9umfsSXJlFAlJwd0YAiQ3lj9Fc4nBKDW5COe46NqHKdkLVLSh0Ge0p+bLJTDOgHUoL
         Z/cDVU2Lvj1qmP4QCrg36tuI3agTAddQLIhhj+smTUJEb1sLgfSU5Wj1FmKYirnzVpuz
         peK3CR03KAOba5ySl1HruqaXD22ygnTddL+TVY1U2BvXlCBTacCkL8CwCr2X2NUTrAko
         qA989BumJMamZjg2s8vPyl4eWC69jOe4o2xdLSClG9Q+7aJtAPV4E+N0zayfq5ptpiql
         2yFg==
X-Gm-Message-State: ABy/qLble39O6dD9f0uk0y+PzZRyMYyHOOGisb0rF4KO3/otgLBFIvQH
        D6MH/OVMPFyRLpK5bSB/mL80aFE4ELFSOVvQSwU=
X-Google-Smtp-Source: APBJJlGthjsylu+XhmKtFdqslsAhtLju7rg1Nv7E+9U6jVt7QgHJy5U+NAoOVj+RHfmpZTL1Xjls7Q==
X-Received: by 2002:a17:907:2bd0:b0:993:e695:b589 with SMTP id gv16-20020a1709072bd000b00993e695b589mr3161326ejc.20.1689307570243;
        Thu, 13 Jul 2023 21:06:10 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id i22-20020a1709063c5600b009875a6d28b0sm4872351ejg.51.2023.07.13.21.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 21:06:09 -0700 (PDT)
Message-ID: <2b105135-883c-4c7b-5f18-2d6e959c3655@linaro.org>
Date:   Fri, 14 Jul 2023 06:06:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 0/3] dt-bindings: net: davicom,dm9000: convert to DT
 schema
To:     Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Marek Vasut <marex@denx.de>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org
References: <20230713152848.82752-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230713152848.82752-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 17:28, Krzysztof Kozlowski wrote:
> Hi,
> 
> Memory controller bindings have to be updated before we can convert
> davicom,dm9000 to DT schema.
> 
> Please take it via net-next.

But as usually I forgot to add "net-next" in patch subject. I really
remembered about it till last moment... maybe I will just take it via
memory-controllers in such case.

Best regards,
Krzysztof

