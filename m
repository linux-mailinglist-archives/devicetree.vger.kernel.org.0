Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD41E733212
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 15:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345589AbjFPNVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 09:21:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345578AbjFPNVi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 09:21:38 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A5DF30FB
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 06:21:35 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9828a7a39d1so94666066b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 06:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686921694; x=1689513694;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4obAAk0BoGAaW3u1fWGGFf/15YXzFhiUmqeZXPbCsPA=;
        b=DUmMH1S5039K8hrw6oSzBJ94iZ7fzWPBqcBfn14yrvIL368lGRLezRZ7Rp7MiXAZgF
         8qESImqiRHECgDwg8x07O2B9mcR497UxyWeoaxePNz6N1ZR8HJr9rtIL2NYpqXx+PpY+
         ZDihe4UWtfRuHRYcgWsaT2w23LPVPqjkiQDh5TvcjzHlzkL/9fMZD/vJSw7eRUuWnu/J
         l4TQSL7cKb/Nv4pgTUcAlDX3hgum4y7mMn1WY3GQYpS/zOLE+BGufRytMNEhvuxTY3xq
         Q1bF5pUgwaVndv//cgC4iaCpuI6A63AsPJKzEgM2zcxHGmlDCdZ0eD9nyn7qzBzaLMCK
         U8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686921694; x=1689513694;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4obAAk0BoGAaW3u1fWGGFf/15YXzFhiUmqeZXPbCsPA=;
        b=cjLdFUq4C6GS0o5/I/hlcljegjSI2n4HNWINOyVzgnRc744aGpeFOtY3J4ez1hX25F
         OAHV7WuJ5lo6E0blSGgz33rYJtPcA8y5JX3BcUv3dbKeVAZrvtTEskWSonBxw8I7gZQp
         oos9R3r2qa31/sjkngC6lyGk9zLhwhngC4uAKBCQfz1lUNJ+ipFbODs/pBI3jjOfp01x
         KT8hSP+OuiAus8ewq5ikYyVDZvF+o7IwHZwywbkFZlvJGjUdJFeqXYmgzC3gNGJt1O6r
         LIyMVyaF8KZxUbBVbDx7nd6AVwJzKeFotXFH92LFZsEZmVgwNsE1+YE3I4EWSqboa0dH
         oCGg==
X-Gm-Message-State: AC+VfDxWDTYj/nWvxMnHkaye7Gt4do2oLGuGLvTYFO1XMqnc2cpRVguQ
        Lb26qiRA0NjcmktwzpjQ0c7e0g==
X-Google-Smtp-Source: ACHHUZ6447IkkiggOhVcGfFjuRpE3Hay/TpdtlIxOv5sOErH6nUepViqignEts2J6KRPzjzihyvNQg==
X-Received: by 2002:a17:907:96a3:b0:982:1936:ad20 with SMTP id hd35-20020a17090796a300b009821936ad20mr2202323ejc.2.1686921693829;
        Fri, 16 Jun 2023 06:21:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id q2-20020a1709060e4200b00982362776cbsm5312720eji.118.2023.06.16.06.21.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 06:21:33 -0700 (PDT)
Message-ID: <fc9cf506-76e5-1567-1ab6-194874594727@linaro.org>
Date:   Fri, 16 Jun 2023 15:21:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 2/7] arm64: dts: imx93-11x11-evk: added ele-mu
Content-Language: en-US
To:     Pankaj Gupta <pankaj.gupta@nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, gaurav.jain@nxp.com,
        linux-kernel@vger.kernel.org
References: <20230616181144.646500-1-pankaj.gupta@nxp.com>
 <20230616181144.646500-3-pankaj.gupta@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616181144.646500-3-pankaj.gupta@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 20:11, Pankaj Gupta wrote:
> adde support for ele-mu for imx93-11x11-evk.
> 
> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>


>  #include <dt-bindings/clock/imx93-clock.h>
> @@ -788,5 +788,15 @@ media_blk_ctrl: system-controller@4ac10000 {
>  			#power-domain-cells = <1>;
>  			status = "disabled";
>  		};
> +
> +		ele_mu: ele-mu {
> +			compatible = "fsl,imx93-ele";
> +			mboxes = <&s4muap 0 0 &s4muap 1 0>;
> +			mbox-names = "tx", "rx";
> +			fsl,ele_mu_did = <3>;
> +			fsl,ele_mu_id = <2>;
> +			fsl,ele_mu_max_users = <4>;
> +			status = "okay";

Can you do some internal review first?

Best regards,
Krzysztof

