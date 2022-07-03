Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6BB056494D
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 20:36:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232501AbiGCSgw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 14:36:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232625AbiGCSgw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 14:36:52 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32794B8D
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 11:36:50 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id a39so8544893ljq.11
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 11:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=TGT3kemIADeYuBglcNi+xV1YmiL3GEhdQWJAey+jFZs=;
        b=IJHZjhEvjM7xn+M97PxbjLdIL1P8bn/vLB3QE/2+Exuo1PZlTtCalfXapjeebQ2bDS
         rAxB8yPwIwHKYDfFMfxCrl/FKqtn9NUvb0WGsfaqU21vHErtUzwnLpg4crlhRUJLIpKG
         7M1f06cyvAMOVLgmbR64boTZ47u0/iaGMWtRb3dXX/OJTYW4izJtWKOO7pLvMWswcd8k
         pAor3sPsk8EXdZY7De+uzepLu6ZRUzs7i6wu5TXk3u4zbffXXehdHY2FXoQWz5u9B8uB
         dClvJAsLck4o4SZhSpdNyPxHBO7GlQT9FWyLCOpRmQTBQBhciTBaP9s/oRIJipIiBmZo
         OoaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TGT3kemIADeYuBglcNi+xV1YmiL3GEhdQWJAey+jFZs=;
        b=cRsx5lqiBRMGuWrOcwJMPUof/1i3uYoOYcYwztTN6um240IMX2bJ9B1tapIICjzDuf
         Uwc7I8vsV+VzZ2wCV6TgvFbPW+PNxmuqx8dosIOTPtGyiJOM00VPYgeOS1UyVH6SKari
         18lVZopbgb7qJ+8Kn9rbPEx9nl5hKgCeZnJvxpsjo0zmm1/YHCaPcLOxwfIfWwIOU53w
         8rTWiRD7zN7+7OKypW9WZGRC0bjtgHLa/Zl/wx/t8aP2gHUw1iiXE4hxrqnYLzeeW0QZ
         ib7QxIlhKBtOM9vRkVyHQ5DoleBULZ+9Pw53864wLC6fNQSrV3EqnsTfzlBsuiYow6My
         jTfg==
X-Gm-Message-State: AJIora+tWduAmFvxL9A8h8JESyUIqvHIwZ3xc5ivZbsj4fnsmgZhuhn1
        42Ik4/8sJcgoGsW43iMft0dNXg==
X-Google-Smtp-Source: AGRyM1tzYDkz4rWP9yNev9qT7Qcg6s33MZmMeeOloPJCJbSyqikwGGw6UR+ON582tM5uWIhDAbgxsA==
X-Received: by 2002:a2e:54a:0:b0:25a:6e2b:1096 with SMTP id 71-20020a2e054a000000b0025a6e2b1096mr15028892ljf.456.1656873408568;
        Sun, 03 Jul 2022 11:36:48 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id d7-20020a05651221c700b0047255d2111csm4818566lft.75.2022.07.03.11.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 11:36:47 -0700 (PDT)
Message-ID: <badc0116-f9dd-bd02-1e6a-54cdfbde8ce1@linaro.org>
Date:   Sun, 3 Jul 2022 20:36:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 0/2] dt-bindings: hwinfo: group devices and add
 s5pv210-chipid
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20220703183449.12917-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220703183449.12917-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/07/2022 20:34, Krzysztof Kozlowski wrote:
> Hi,
> 
> As suggested by Rob [1], I organized a bit bindings for SoC devices having
> similar purpose - chip identification.
> 
> These sometimes are put under nvmem directory, although in that case the
> purpose is usually broader than just chipid.

And the missing [1] link is:

https://lore.kernel.org/all/20220701173524.GA1185040-robh@kernel.org/


Best regards,
Krzysztof
