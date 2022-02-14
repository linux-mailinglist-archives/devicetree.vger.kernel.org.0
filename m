Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18FCA4B52FB
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 15:18:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355041AbiBNORv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 09:17:51 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355048AbiBNORt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 09:17:49 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F7514A3F8
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 06:17:41 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id d27so27113252wrc.6
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 06:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ln2uKU+vMAyRV7UsLvWBhWdQgf4eoy4B8mnlBh7Uf4U=;
        b=T3wz3eCfR4tmrh0J4vy9sCp8J/jWIy5urKk6OO+cbCvyUbRGqP+i7nWcAg+4+AFO56
         efMVlkNlLVf5dyJ55keCtaW5IeVN/wZa6mDMknpCo9YrruU3Na5DTtj/E64R8K+MyatB
         GaYPPqu0t+7A+Ly1FCB5CGYul82Nyi3QWjgLOqC1Wx3LNNuOiqq19axcbeRXvlJLtyIT
         wAbGVXVwM92TBH+Gu7+1O0EHWUbcGE938fc7zurGcZnjA3okbevlx5hklAnzhxNyL5zM
         nt76eOh6Sg2mkJEgeTiXPIkMBHJh39svmpY2XgJhs6jWeND7ORQ67Hohn+YByQkCEGOJ
         XP7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ln2uKU+vMAyRV7UsLvWBhWdQgf4eoy4B8mnlBh7Uf4U=;
        b=Y40ynDi6obRxrPRgv69nD1Br5h1LlZkXfi5cEKqD6NERsBYvlyrCVSg/h+mKVZMekR
         hfQsTQQpyssrElDej4ZuudbZKGcvdvFgLFWDWGgICyJBBh7ETnj4TjYUWkZChZnV0hwc
         nKraC40vEk6i/0nXKAE/y8DeoFu7TQKMU09X5aE6BPGHHKByytKcB3KUYPb0pqknFYAF
         v2WoXd+cjK+s3Lm/v9YpOa9qrc/UW7M+dfp9knUnnitRbVo9+WDs+JRiGn/8K3/bAZgE
         g8HWmB3ThdWcK6ZsWTeX3Jff85Xc1cvgd1lkIO+mavVMECP30IBAeQ4q36buG2fXWuRA
         2Pqw==
X-Gm-Message-State: AOAM531bGagqwhU984sgjwz+Fyvk4Lp1YS3eIxUEZOLEZMBgBk02URqq
        5fsloE0KKdgRgmadaTPiT8ZAHw==
X-Google-Smtp-Source: ABdhPJzuSHlgADVOkpRdKXvOYxCnoS/c5megiAinBNNs6xCgR6iJuRaS9XBuz50TVKdsIMN2FiYdDQ==
X-Received: by 2002:adf:dc08:: with SMTP id t8mr11534462wri.40.1644848259878;
        Mon, 14 Feb 2022 06:17:39 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id y10sm11966398wmi.47.2022.02.14.06.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 06:17:39 -0800 (PST)
Date:   Mon, 14 Feb 2022 14:17:37 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/4] dt-bindings: power: supply: maxim,max14577:
 convert to dtschema
Message-ID: <YgpkgSmxAWCNHW9l@google.com>
References: <20220111174337.223320-1-krzysztof.kozlowski@canonical.com>
 <20220111174337.223320-3-krzysztof.kozlowski@canonical.com>
 <20220112112905.n6zb36kwop2kfm2n@earth.universe>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220112112905.n6zb36kwop2kfm2n@earth.universe>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jan 2022, Sebastian Reichel wrote:

> Hi,
> 
> On Tue, Jan 11, 2022 at 06:43:35PM +0100, Krzysztof Kozlowski wrote:
> > Convert the Charger bindings of Maxim MAX14577/MAX77836 MUIC to DT
> > schema format.  The existing bindings were defined in
> > ../bindings/mfd/max14577.txt.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> 
> I expect this to be merged through MFD:
> 
> Acked-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Do you need a PR?

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
