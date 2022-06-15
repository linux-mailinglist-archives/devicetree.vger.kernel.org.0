Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62F8054D4E8
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 01:00:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350797AbiFOW7t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 18:59:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350800AbiFOW7q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 18:59:46 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E6B0220FF
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 15:59:44 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id v17-20020a17090a899100b001ead067eaf9so190709pjn.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 15:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=W7KtWBS50ekoMEzPWCbHw+o6fFZol8BiRTA9sLfON20=;
        b=rrNz7B18ZF9JtDD2wcmFJPIkp6Nbmr161/Ck/5m9KX2u3lc5AYqpH8dQ6kRFP2mjuG
         UxkjYpDbLXong34yLPvr1PzyabO81SVHSyM/+KoxeLTJv3a49TtlxWUiY2JmtKm+Nbkb
         A2v7gURlx/Yca4+O5RZ6/ougoSfgQ24rH37CE/YLQc5tALsyn2inq/Ppiz2PilQvh1LO
         AhPlQBBu9hrbW8oWxhm1gAe00RfuULVRzc1iKdYhwKZDJKDBfDJ8gqIb8cU7Gmhd8XxM
         0jwtSYHOu/vsu/26L2jhWchLtnS7pkpua5c5WAkufWssi1mlJacMltq0kxRWq9EHLVRm
         uYpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=W7KtWBS50ekoMEzPWCbHw+o6fFZol8BiRTA9sLfON20=;
        b=ODJjVxg8hcS64LV1vBPBxiM6bigV/tON553xx5wvRNZlP3AcoqK6H1ClQmccT4QukK
         ilFWeWBpPhk6o3yX1XTHGlcdD4TwxJ3x94DcJCuJYQqmQZUdWBUCoKIAxnEmMyMDn1Si
         8HYDmikpoJ0sxJELBtPaNQj0JunudDu222NNlEHac69VmK7mxzTNAM62Igw1Zag8rSO9
         LLe30u+CzxwMRI6qFNbhmmec9H1OQKqQc+dRUrnO3Vb0fRnyo15ZfNybBROV4XhqYtj2
         Fk2lo+H/hUnOTH2cTxedmXFIZ5Lu5i7tXAsqw8NkTtFYQDTtN/fDxJvjeQ+gJtoqhdOs
         y8pg==
X-Gm-Message-State: AJIora86hbYDt0LUIASyolp286tTg03e/6WgnDtWurcRCgt9W1i4A4LG
        MiPjYHsMmfdgwy+WCm5adJI5WA==
X-Google-Smtp-Source: AGRyM1t5bkEgdmg9PKAPOtpCEZ34quxBEH2zKI7LVwx49lsf3kAgAf4e30EJ2r6E6+OA5RTGQOdKLg==
X-Received: by 2002:a17:90a:e601:b0:1e8:ad01:1eaa with SMTP id j1-20020a17090ae60100b001e8ad011eaamr12736765pjy.81.1655333983733;
        Wed, 15 Jun 2022 15:59:43 -0700 (PDT)
Received: from google.com ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id g10-20020a170902934a00b0015e8d4eb2easm122977plp.308.2022.06.15.15.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 15:59:43 -0700 (PDT)
Date:   Wed, 15 Jun 2022 23:59:41 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Saravanan Sekar <sravanhome@gmail.com>
Cc:     sre@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jic23@kernel.org,
        lars@metafoo.de, andy.shevchenko@gmail.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-iio@vger.kernel.org
Subject: Re: [PATCH 2/6] dt-bindings: mfd: Add mp2733 compatible
Message-ID: <YqpkXYAtXtvzX44J@google.com>
References: <20220614151722.2194936-1-sravanhome@gmail.com>
 <20220614151722.2194936-2-sravanhome@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220614151722.2194936-2-sravanhome@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Jun 2022, Saravanan Sekar wrote:

> Add new compatible for mp2733 mfd driver.
> 
> Signed-off-by: Saravanan Sekar <sravanhome@gmail.com>
> ---
>  Documentation/devicetree/bindings/mfd/mps,mp2629.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
