Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3C485B17E5
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 11:00:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231406AbiIHJAW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 05:00:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230362AbiIHJAU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 05:00:20 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4873E956AC
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 02:00:19 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id bx38so19039997ljb.10
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 02:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Ly9IEYTInP8tS6e927ZRVIe99VpHkJBnPnaAyl8oAUQ=;
        b=NfJYCPTU0FSTkctPFB601rskf+uu1n4QI7Ee/ejRS5GsPfHvoJ0DwKNQ58zs8Lwt1U
         dQBSVO4jGReIsIffEyNBr+p8XgiSlQr/Red47hz7EB1QlsJaW/ZjTworgo3tCCn18BaJ
         xqKO69a8CfFieoSNKv0N/dgCXa8dJUhuRcejnewhfalw0FizXCCxWY/E2sa9gSTWa0dm
         VpaeKdUu7LZHLbKHbYdlLVBg7iO0VOvddIbZOr8sPt00Nr2Fw6ELhQYJB2/I0zGI+PYb
         shiQLOBh/fy4bk+IIZdFdcBt0YNi4UutinHvjBY3XulereemLXZJeW4V4jyl/5pm0X/f
         2Y6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Ly9IEYTInP8tS6e927ZRVIe99VpHkJBnPnaAyl8oAUQ=;
        b=vYWdy5woUfpDEfWfmC+sLTRs06qLUUOFr7E7Ys5IlLSYNrp8e1qc98I+l4H+1Omphe
         jUBwHwMnwqoRB9ZZffulcc07bwiz4llIYiXOFFCN6vlCMmbz+wr82tdWlmhf2ey0XbCr
         9c2J2k93Is0RHj1LvTL8qd/2F/eBr3FYUZjcwAI7RqarSigJtMt3jkyHSs11Xd98G0Cx
         /hQtWe+B2lXCykanV5ArOW2whvjD5vgtf1JHAxyzxBgcKPJxGwfA/SD1nzlQT7cOxkqp
         95Rl2sgU5wqMyAsq6DClRjDm8UvmifGmHU1ofZoym4VRjCInu7FNuyYELDZqxq/FSz8a
         r9jw==
X-Gm-Message-State: ACgBeo0FCfLL6YwqX0bsytc+KPgvkM1NQZbEweG7UULAmkO1jnO53f6g
        IieHgSDPrapL3LLRApVuKmXqnw==
X-Google-Smtp-Source: AA6agR6y9hLVMc5n964fka1mBct1yqVVvdizyIoXKoRfIG/TFKTZIAwVYcC1/xRy+j7g4Vwkz3AL+A==
X-Received: by 2002:a2e:8188:0:b0:25e:4ae6:5503 with SMTP id e8-20020a2e8188000000b0025e4ae65503mr2044547ljg.412.1662627617599;
        Thu, 08 Sep 2022 02:00:17 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m9-20020a056512358900b004979df1c1fasm1468931lfr.61.2022.09.08.02.00.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 02:00:17 -0700 (PDT)
Message-ID: <d5c88236-6c6b-2583-7f96-55e7a428d1b7@linaro.org>
Date:   Thu, 8 Sep 2022 11:00:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [v2 1/2] dt-bindings: net: rockchip-dwmac: add rv1126 compatible
Content-Language: en-US
To:     Anand Moon <anand@edgeble.ai>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        David Wu <david.wu@rock-chips.com>
Cc:     Jagan Teki <jagan@edgeble.ai>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907210649.12447-1-anand@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907210649.12447-1-anand@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 23:06, Anand Moon wrote:
> Add compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> ---
> v2: add missing compatible string to property
>     added reviewed by Heiko Stuebner.
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
