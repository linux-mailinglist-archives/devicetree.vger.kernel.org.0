Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AB0C54D41D
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 00:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345493AbiFOWBn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 18:01:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235490AbiFOWBn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 18:01:43 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 194B356217
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 15:01:41 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id h1so11503814plf.11
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 15:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=kJzZPwhMKjOWBCIigpbSF9J8bajdVzfVoc3uDXQW95Q=;
        b=Cj08PqxuzpVVhXXh9YrJ4jX+ng1DznIaTS8jjwd8bJDdUt+McGQf9d60X+SFrohetr
         xQPXCAn3LLqD4bAo8U2YhlKsIoCrDwme576BY+Tw0ixfkHRXey2jKP2TXWrw1TXjBO6Y
         NZYkNEZyZa7dT3QgDHHqT2k5gsNjsb7dVnkRwcGrKBcGY7G3dlsvqAU8yonj0Zae8qS1
         gftbfrFL+3WB9gd39pJsJS9bBrharUYJGEWA4lkuDtIM01pO2ryKr6fWuCvK5fk+47Ce
         gTt+LOZiHhHKHx2P9Hs+xjTFaTUwo2ykiSy1xz72/yUPL0Y2n0YQONASgzfTtcPyX1TS
         iVZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=kJzZPwhMKjOWBCIigpbSF9J8bajdVzfVoc3uDXQW95Q=;
        b=RzaJ7utmM2z9GUQWRuImazPxZDg0JWSWKA50Ra4Kc9CmnTaW8Pw2z9Te9fhmHsBqVT
         ykLoAHPf1YrtmFhUKX8/x/T/aiZg2JIIWCb9ZuwgTueeEZPGxFPhxP0aWa+QqwVnYF2x
         X1rLoR2CqDeXUQOVedjgbtTu9Y8yCe9TXu5jTml8QNSjkHE2FELvEHuA4dx1T7elQsu3
         4YG1rESGVOaAr/0aDdJM578usZF7+2PRLQBG7+Zazc1K017xOdJ5sY5njF4dv+GlxwW9
         dWD/1AS0liMc4Uf3VtxWam3gTZvTrcY3+nerlVSkSfbaMpiSjf5MhyzV7tx+G2IvvLut
         QM5A==
X-Gm-Message-State: AJIora8cRio7gO9rixg81sc5WdHtmg+bRc2tSvpxE4o8A1VhgACeWY6k
        HG8XLdBDhpqHccbNUokrNJfljg==
X-Google-Smtp-Source: AGRyM1tB/7rxj1PsrZbLttdzJ6N39++gXEeBXcuBdRQ9WFZYl1LBho6PCNK+K4HVQ1fuZnvJNAs8qw==
X-Received: by 2002:a17:903:2645:b0:167:92f1:15c0 with SMTP id je5-20020a170903264500b0016792f115c0mr1589014plb.100.1655330500612;
        Wed, 15 Jun 2022 15:01:40 -0700 (PDT)
Received: from google.com ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id q22-20020a17090a431600b001eae86cf683sm63878pjg.42.2022.06.15.15.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 15:01:40 -0700 (PDT)
Date:   Wed, 15 Jun 2022 23:01:38 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: mfd: stm32-timers: Document how to
 specify interrupts
Message-ID: <YqpWwqNBgfK5nHr0@google.com>
References: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 May 2022, Uwe Kleine-König wrote:

> The timer units in the stm32mp1 CPUs have interrupts, depending on the
> timer flavour either one "global" or four dedicated ones. Document how
> to formalize these in a device tree.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
> Changes since v3:
>   - Do the things Rob suggested in reqly to v1 which I didn't notice
>     until Fabrice told me in reply to v3.
> 
>  .../devicetree/bindings/mfd/st,stm32-timers.yaml  | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
