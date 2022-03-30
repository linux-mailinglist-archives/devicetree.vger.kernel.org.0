Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EFC4C4EBC5F
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 10:08:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241829AbiC3IKk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 04:10:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232101AbiC3IKj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 04:10:39 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B51A02E6A4
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 01:08:54 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id h4so15669424edr.3
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 01:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+bFDAM4i/mghEhHfOqiWM3FM1dQ0+91OvIs26MogX8A=;
        b=SFMAg8b/ke6ZRcvV67EvgWEeK7ykJWqswG5EpvT2o1xqTRtbd1mjTPL5mzf5NOpo/9
         sv67NlHrMwvo/5p5vpITcbO5StJOLdIQZ8q8/G/wp3y1gtWdZEOLFmv2NbSYceQpyRa0
         ldo4IR2Q157UiXXwsyC7r8Kf2c09VyZE4lXvVljWlsaN3v80w4JoeMBeiYJ2HhW/Ehk+
         PDahMEwBRntaazsVVLLCCzUgqoFBmD4kSBba+oUwAHu2GRNIjQXck1DP9F37lvXkMs8z
         +tN4bzuCtN2aRac/a1mlX/oUcM4V+34X7MyD/imRyplhlBI1inZ+uA7IJDY+1JBY95bM
         giOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+bFDAM4i/mghEhHfOqiWM3FM1dQ0+91OvIs26MogX8A=;
        b=If5i+I/lrs+KSRJwv18UdxbhTsjbDhpXB/5H+dXVSDRDHFSjTP22dWqYvpgmoyUOhq
         wBmWy1BwG9JpzYj8FpEnK11fHADRvY7EWiXKuO3Gtiq6NZejbWxxo3SWbkmPFQqzcRPz
         ZRbfWiz2+iF5sp5p9wXQEBygWEaQ2oomOrfsTntFMLBotA6V84vC0dWzFFlT9VY6njzD
         UM4l0PmAAtDnAtiCjsg0ggxo2dUbCwJZkOMgXwYf/NCtdvqcvDwpLpMlWSw43kV1o+Jl
         u6s4ckIJ2Gr5wcmZYZwsa/DgeDEUCfREFYMM607TY07O31bBeH15ZJGx5uB/PZ9B14CB
         gB2A==
X-Gm-Message-State: AOAM532c5I79rHpn3l1hpzyhJ9/EJ+xT3KbVpODrcAr59Me38KL2p3fV
        rrjxy/ofDUL8jC05qQ+QUz+png==
X-Google-Smtp-Source: ABdhPJzpp8L+xtLq8L0IBcEiffxlbItbjgy88ADPX1RL1JQXUj/i60p49qaIu94HDmWs+yXlqBS6Xw==
X-Received: by 2002:a05:6402:350d:b0:419:5099:1f10 with SMTP id b13-20020a056402350d00b0041950991f10mr9295464edd.144.1648627733303;
        Wed, 30 Mar 2022 01:08:53 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id d1-20020a17090694c100b006da91d57e93sm7852869ejy.207.2022.03.30.01.08.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 01:08:52 -0700 (PDT)
Message-ID: <b787a640-f26b-5642-13d3-c9d013b48b18@linaro.org>
Date:   Wed, 30 Mar 2022 10:08:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: uniphier-ahci: Fix missing
 reset-names
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648617651-9004-4-git-send-email-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648617651-9004-4-git-send-email-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 07:20, Kunihiko Hayashi wrote:
> UniPhier AHCI PHY controller needs to specify 6 reset lines, so this adds
> missing "phy" to reset-names and increases maxItems of resets.
> 
> Fixes: 34f92b67621f ("dt-bindings: phy: uniphier-ahci: Add bindings for Pro4 SoC")
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml   | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
