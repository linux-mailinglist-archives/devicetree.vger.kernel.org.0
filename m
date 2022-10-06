Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BAA05F615D
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 09:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229897AbiJFHGz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 03:06:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiJFHGx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 03:06:53 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 037032B260
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 00:06:52 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id by36so1177770ljb.4
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 00:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=9mXNHzVsTEVd4935gfs6itkkTtXeUwH+rKIsrH0IphA=;
        b=m3VBjRSHJ3vBNgKD1XqaNRXrJhDyLwgu4IYJoJdczIXENYvuMqanwMtuz0I+56aQW0
         VxD03n6CHVIEl8rU3Muj6ubWiI+eBy2borRnlLhWMzwWkQHN8NzJAdPpPRpFfzf3LorV
         XE4VsGCONaFzfjL1DvkVoDWLEv2DyVnvMmlIvh6IFOx3SWlSkBL/dC5ZXchmgK8ezV/b
         TydjWWDUGvXneDerdL58e6kXDtttURX9HKSxSPIjTjDbHBPK5Au0QFe5Qra+t0TWe3gA
         Fmahy8C7lQQZswkBv3GnXZMuLoIfo857LGraeEDnuzw5hnKeh7YTHv0gDLfTdV1jtBod
         0ecA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=9mXNHzVsTEVd4935gfs6itkkTtXeUwH+rKIsrH0IphA=;
        b=xMVd6j1KxHNaDq1HtZ7SiVi0m+c36mlnCB9fgWK0eIyRmSadyUzNTDrxyrrp1lPKns
         LoQxHdWWiDQMn4EIBY4ODJdu/U5eTGDrum7Xg92OJZvhntosk908KSEBGATGLwARZK+c
         KgtmzdHwTQz8G8FVn8e1TLwaQODC9xVT8bJ10X6F9KZPu+HGjwiVpzk0LX2n9Ti/tjJ9
         WfxH7mN6/uhpYGGT+LbwEcyh00SDmeqF6xC0KCf2PCgFtBckOXtA8Mu2FI2qG31lrQ37
         7acA5e5piepXPPh+AagLbCdiiW4pi22SFwiLSpqVwe37WdA2G7hi+rE5Iyt40T9O/7O0
         t4fA==
X-Gm-Message-State: ACrzQf20XsmZfOLoA6WjskfQJcHP20rN8kvvL5QRx9Ap401g8pgaQgiJ
        HdOBgSDRAo2SQ6ajROfr+X4ZXA==
X-Google-Smtp-Source: AMsMyM6+yDM1ZMdH/zd3pXzG8dDRC6Zf7oHMK+3sqCskkXS5zdXqyvSMe5z/xvbwPsBETQMXnf9ulQ==
X-Received: by 2002:a2e:a370:0:b0:26d:d69f:5aff with SMTP id i16-20020a2ea370000000b0026dd69f5affmr1227102ljn.319.1665040010345;
        Thu, 06 Oct 2022 00:06:50 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g22-20020a05651222d600b00485caa0f5dfsm2601158lfu.44.2022.10.06.00.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Oct 2022 00:06:49 -0700 (PDT)
Message-ID: <8d26031e-c595-5d4a-7874-4d3a14834755@linaro.org>
Date:   Thu, 6 Oct 2022 09:06:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v1 1/2] greatlakes: dts: Add Facebook greatlakes (AST2600)
 BMC
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>,
        krzysztof.kozlowski@linaro.or
Cc:     patrick@stwcx.xyz, garnermic@fb.com,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20221006063527.2007802-1-Delphine_CC_Chiu@Wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221006063527.2007802-1-Delphine_CC_Chiu@Wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/10/2022 08:35, Delphine CC Chiu wrote:
> Document the new compatibles used on Facebook Greatlakes
> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>
> ---

This is v2, not v1.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

