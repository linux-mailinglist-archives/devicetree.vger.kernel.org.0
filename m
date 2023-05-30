Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47AE6716112
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 15:06:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231626AbjE3NGt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 09:06:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230466AbjE3NGs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 09:06:48 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1940A3
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 06:06:46 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9707313e32eso861534066b.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 06:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685452005; x=1688044005;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pyEiBp7G0BWjKYeaw0AYTpK5977K4NW+0tY29ZrvnUc=;
        b=PEh3UZ77pPRcsbiTRjQwVhtdu7TGoVZMnhmcKAC0tVco3ohTIxcExnWzhrclOwVTbv
         XmKjq7Rm1kvzHmrl5dwBSKHqEB00KI2+U2+StT5aw8FFZMcCQxMLw2qkFeNiZxhgSpuD
         HG0coP43ITHnBx2tjOkD377IOOe5IWsxo5fCDkK84egeqbaj7Ln88+genOpGNkELKzbx
         6ycUfkbfxk9UMiE6mHpQ6sYN4gAVBolKufqVQ9aFdoii/OHHkG1hrP3MnnojxPjwMaNS
         nrVEuCVWkhWBTkY/jHLQdTXpdu0FGNzFHg9WnihTFfHkRLtqF3HJBXWCrRBiD3NFPMt6
         Rr0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685452005; x=1688044005;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pyEiBp7G0BWjKYeaw0AYTpK5977K4NW+0tY29ZrvnUc=;
        b=anOf6oXOj1iAGUWFosNPNMaNy0xHlLvl+9Wtujhds3rOu0dF0c/+grup/SbtpJNaq9
         HNMShXdg9gMl3XCNzH1/ftylcGLZ5c4CXY/APzcABo2R9qT3JbabtOi0dxqyuyDYpXpI
         1krQQelRDyN5lXp4crc/ovvvp2RPH26BybOrenwIzqtW1wldj7dN00zCqLgCU6HvBIxf
         N/2PJoRKBbHU3vfx1L12DEKVf1HmVZu2PuePa7XGFkGj1kaK6TegAMzdSdHFH9GHIRRf
         wmSgkBx89NxRzXXfMxAiXI1FUjWpSp3twUoimQeHDKA4+p0hHGOgZW8GMIQfFk0lTcS/
         BAIQ==
X-Gm-Message-State: AC+VfDwp2YchaOoTtHzrr/AVr2A1Hn2bTiwkb8FHUD2bOUDl+th1qOVu
        9MC+ZnPG65JmOfqkWg/9Eq2QS7HLZrf3+YoSjO5cyQ==
X-Google-Smtp-Source: ACHHUZ7zmrUraMjIP6pacQEVn2BPptz1oqTfMyOmHbo8JdTPK5y+cMrCu3u3mwd7aA5qaXaIhMsr+A==
X-Received: by 2002:a17:906:9b89:b0:96f:bcea:df87 with SMTP id dd9-20020a1709069b8900b0096fbceadf87mr2517694ejc.42.1685452005231;
        Tue, 30 May 2023 06:06:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id q9-20020a170906940900b009545230e682sm7391732ejx.91.2023.05.30.06.06.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 06:06:44 -0700 (PDT)
Message-ID: <1f9ed4d4-6c3d-b1ea-dcd7-c543127c5329@linaro.org>
Date:   Tue, 30 May 2023 15:06:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ARM: dts: imx: Use 'eeprom' as node name
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230529200645.801626-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230529200645.801626-1-festevam@gmail.com>
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

On 29/05/2023 22:06, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Devicetree node names should be generic. Use 'eeprom' as node name
> to avoid devicetree check warning from at24.yaml.
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

