Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5EB58C488
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 10:01:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235829AbiHHIBL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 04:01:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233892AbiHHIBK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 04:01:10 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B1F6CE0B
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 01:01:08 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id v5so4402958wmj.0
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 01:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc;
        bh=XgIigxlvWZMQqCjJS49j0eq5Bs0i0vm38e4sch1dLyU=;
        b=JLxA2r/vKBddjAFnA0iByDpkYahD00iC/Kqs4lVTdiLH/xEfnhcAvg9PCTHpUCQwM8
         SiRUO2URAkGEjyQVXrZx11IOR/UNTecEmUxdtY6hUINWjDuU9DsR6iWg4GRZj62DrcPS
         cOqAyKycoe4gLPXB1QHZEx9n6R7rSBQzWEUxFZaRwOZOw+ewnGzxj2jbzjENdLbHT5ui
         7SlOE/DV1GkZFLR6fSv0uMtB0xQvPum1OXauFbzfJO2PbUIfFOeA+of4Q9oTK/7F/GoA
         ggkhpdax0tcsAkobxjLhdK5c6tTZK1M6ZKV8GmsBczgAJQ+hfm6JmOXUG2jF+kDgRzL4
         n+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=XgIigxlvWZMQqCjJS49j0eq5Bs0i0vm38e4sch1dLyU=;
        b=rXv0T43EG8oWjtrQFGxr9rX2MLr6U24vpjSnR1tRyU5KME9CQ1hjv1MGAai5ILIhrp
         O4iDvv2Fl+v5zN9n8p5sYzHjq7uCHkcusgnSVvtDuPC6PvkN+HqmAIapbC61c9X9ffd5
         Agi2Dr0Lp8i0Kmts29OUqkkiPi6a5jMIFMcUofeaD+7NAkin9QchzsLu+0euZg3YuZ0c
         jBE6nnb2mGX9LJBc/yITPlzToWdztYeU8/SSJoJEs6DoOJzZSuiAHohrlLKmNvIiCHHC
         st9NUxRBX7g2IA87yXHEh7EEbulv7LjXXlZdplyHdCczhleLrixeDcgyRpYGAen1q0Vn
         HjBw==
X-Gm-Message-State: ACgBeo1CcYtGgu27x6F1t3NQ+Rl0PYoqenAv1sSm0nKC4ebPAUShPaAg
        UNcHZcvyObLHgQJ0xyX1Zb69aQ==
X-Google-Smtp-Source: AA6agR7WQFe0bXDA0PQdyrfC+QSx3YTMKYDWh5jIX95HDQ+HpgEuLC+fNtHVrYBYDip8By3pV7/x4A==
X-Received: by 2002:a05:600c:21d4:b0:3a3:150a:7ed2 with SMTP id x20-20020a05600c21d400b003a3150a7ed2mr11848507wmj.166.1659945666723;
        Mon, 08 Aug 2022 01:01:06 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id i18-20020a1c5412000000b003a5125049c9sm6373705wmb.9.2022.08.08.01.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 01:01:06 -0700 (PDT)
Date:   Mon, 8 Aug 2022 09:01:04 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Ben Dooks <ben.dooks@sifive.com>
Cc:     linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        jarkko.nikula@linux.intel.com,
        William Salmon <william.salmon@sifive.com>,
        Jude Onyenegecha --subject-prefix=PATCH v3 
        <jude.onyenegecha@sifive.com>, Lee Jones <lee@kernel.org>
Subject: Re: DesignWare PWM support for device-tree probing
Message-ID: <YvDCwOPLoSdxorhZ@google.com>
References: <20220805165033.140958-1-ben.dooks@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220805165033.140958-1-ben.dooks@sifive.com>
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FSL_HELO_FAKE,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 05 Aug 2022, Ben Dooks wrote:

> This series is tidying up and adding device-tree support for the
> DesignWare DW-APB-timers block.
> 
> Changes:
> 
> v3:
> - change the compatible name
> - squash down pwm count patch
> - fixup patch naming
> 
> v2:
> - fix #pwm-cells count to be 3
> - fix indetation 
> - merge the two clock patches
> - add HAS_IOMEM as a config dependency

Can you use the front-cover option provided by Git please Ben?

It gives you proper formatting and a diff-stat that is very useful.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
