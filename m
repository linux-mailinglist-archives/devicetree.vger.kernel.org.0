Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8E87749485
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 06:03:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232804AbjGFEDh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 00:03:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjGFEDg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 00:03:36 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3D2C19A0
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 21:03:35 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6b74791c948so233938a34.3
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 21:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688616215; x=1691208215;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FYnNIawbku4DKzQ1lg5ea0ay/M1V65V06UjetuXA9iA=;
        b=m0mCMyE1InXnqQ5cdii/3F7YbEoSK9lxA+z+DQdZTCfCx8cXChj8jRFysYNlLPMEAe
         EptgGsCkDLVwc4TzxOPyiJY0RfeO17V+Of1nSUEmvNq0zgf+8VEFmJVxIZuNjyQ8wtcP
         DZru+OMi/twpsdDVsIA/y1fSYVd0IJIYbi77ufYGez2Aj3f4lqGVrLsrBppNJFmEy0AQ
         3AQ2zZSaWxkkQhc2jhlgo9NRpxi2/0ljjvSbK1oY0yuwgj3qzZGtyRs9TXS2GHo3HdLn
         9E2J+F0p2vIrbu26KS4Mca5vOmuA8XX+F/HjF7XNyFoA5bWQrynh87gmX2sTdqRtGktl
         khUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688616215; x=1691208215;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FYnNIawbku4DKzQ1lg5ea0ay/M1V65V06UjetuXA9iA=;
        b=Z/RYO0z31qtO/seHin2O2l72gHwA16YSADjr5CVPGKspDw00MhaHcBIq4uiIMJtebr
         PolXij9Q3xHidzVEN394K+/PpMNpxT6W2af/KsAP4+sQdp6aFvzUVbede+srFAMcjiFm
         P0+GtudFYS73CaPreW7IHrgHhqIQsY+X8brCtIW8xpBeAP4RLCpefXI983T4B6UzlQca
         d5u9goA03UQM+dPz+WbdUx9qnK9YD67uQXVcUfsiMGDxSvUhdVOg6DBn/B4U5MKy0rDO
         ZMJksf6UCioFxXnv4izc+8DKfqqupCBKL39lxswkzIYnQ1jG6QtJvMjLFHiV5zZ5pYEB
         h1gA==
X-Gm-Message-State: ABy/qLbKfM+9XT1RQx1x3fsiRlu4LAyIRn3nGq/xfLiP0wriybTqlcAe
        6V7ylx9pdr8l6CMVO/8a8fN+dg==
X-Google-Smtp-Source: APBJJlEqmZLxNQQuzUk///fUNFmjd1X6nxiU+4HGt0ELa+ZA5RK91Tyw0++U5t+sxlKc/LKULTeoPg==
X-Received: by 2002:a05:6358:4196:b0:134:d122:b681 with SMTP id w22-20020a056358419600b00134d122b681mr580552rwc.20.1688616215142;
        Wed, 05 Jul 2023 21:03:35 -0700 (PDT)
Received: from localhost ([122.172.87.195])
        by smtp.gmail.com with ESMTPSA id fk25-20020a056a003a9900b0063f0068cf6csm263890pfb.198.2023.07.05.21.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 21:03:34 -0700 (PDT)
Date:   Thu, 6 Jul 2023 09:33:31 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Viresh Kumar <vireshk@kernel.org>,
        Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] ARM: dts: st: add missing space before {
Message-ID: <20230706040331.izqrdsq7wfrm6fqp@vireshk-i7>
References: <20230705150033.293832-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230705150033.293832-1-krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05-07-23, 17:00, Krzysztof Kozlowski wrote:
> Add missing whitespace between node name/label and opening {.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/st/spear1310.dtsi                    |  2 +-
>  arch/arm/boot/dts/st/spear1340.dtsi                    |  2 +-

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
