Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B82866DC881
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 17:30:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229995AbjDJPaS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 11:30:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229766AbjDJPaP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 11:30:15 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0380C524C
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 08:30:11 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id ud9so13103613ejc.7
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 08:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681140609;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h8Pyn429W1/wp1DI5s9de8EnnQwfVf1lqFb2czkxkME=;
        b=F3fk/SBMp8tAOXilQTsptvctAzvKRopbIV1fWonXvr5RdOGFL/6XqAqBoFL3cWsG8c
         9K9tktPHrW1oTcFrE53rBSck4a9CVoidSXwRh6o9cpq3q9bFoal3+TIPoP9s/FjfurfC
         q7JkdmRBv1BFl2fZZBTFTy86CV7LAWXeBmAt6mtLKwlsPnEZFZECT/4HjNnnlnKvGxaO
         JQ57CGdREsx8YHhpwzaDJ/9GWLT85TB+/IJBio9WmgHHmzyxAZr4lGSwEIA70hIgoCNh
         aqJeJIL7YRWFmyhcfCr2EmmPZWaxm4Ps5MEnGqWA5RnaDyxL7cf4qU4nj3B2osOU5ibh
         eD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681140609;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h8Pyn429W1/wp1DI5s9de8EnnQwfVf1lqFb2czkxkME=;
        b=dlKh2K3aBcFXEiHl9Fh9sb4pfHtCfje6l6loyM9OBwtko2b1u8OWaTJesCdIBio5C4
         CGylIVoPawvgi4xLiyJUWqmbCiLdYgsWIgmlRCJ9Fu6RH9+aS08AxI9ikz/rAwyjiT2F
         7TJChc3c0AC92Mcp+Y8Zjs9bKSy0EN8iOIiYto3KNmfLw1cfm9ppVNm31Epfa1ggqyOg
         /ikWBK4KgkQTOEX9dd892UZPcnjQ0gF5l0axDNVqjwYX/XC7d6uvwRbcl770T3yHdPtT
         1eGeSWvEjPFczKdbWZzLl32Wyk/1eJs/bzwx15Uv59BanWpUtZ9dfl9y+K/F1Mr+ecT1
         RuFA==
X-Gm-Message-State: AAQBX9espfQTEGTOLnoiB2PBdvTNQMjpHkDxCo2VpZQZnTgISyGpVE6x
        B2jujsNbPrrHRq3xMcaLKd0S1w==
X-Google-Smtp-Source: AKy350b3hxrDKBGR1lzxxof8ns1PA89D/99bVkbjAasQmU+Zs94T6DtaBtUrAOVGBmPLtDth1gX5Kg==
X-Received: by 2002:a17:906:c78f:b0:931:636e:de5a with SMTP id cw15-20020a170906c78f00b00931636ede5amr6331879ejb.31.1681140609418;
        Mon, 10 Apr 2023 08:30:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:eacd:ffa4:1df7:3870? ([2a02:810d:15c0:828:eacd:ffa4:1df7:3870])
        by smtp.gmail.com with ESMTPSA id hg15-20020a1709072ccf00b0094e002dd3bbsm84738ejc.224.2023.04.10.08.30.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 08:30:08 -0700 (PDT)
Message-ID: <565d0cdd-14b3-1b17-c978-4f4ae557e71c@linaro.org>
Date:   Mon, 10 Apr 2023 17:30:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/8] regulator: dt-bindings: fcs,fan53555: Add support
 for RK860X
Content-Language: en-US
To:     Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Joseph Chen <chenjh@rock-chips.com>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20230406194158.963352-1-cristian.ciocaltea@collabora.com>
 <20230406194158.963352-2-cristian.ciocaltea@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406194158.963352-2-cristian.ciocaltea@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 21:41, Cristian Ciocaltea wrote:
> Add compatibles to support Rockchip RK860X regulators.
> 
> RK8600/RK8601 are pretty similar to the FAN53555 regulators, while
> RK8602/RK8603 are a bit different, having a wider voltage selection
> range.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

