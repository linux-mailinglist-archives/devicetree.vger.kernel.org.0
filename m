Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA08F4C81F4
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 05:10:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232201AbiCAEKz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 23:10:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231809AbiCAEKy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 23:10:54 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D4DA5881D
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 20:10:14 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id u16so12997627pfg.12
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 20:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=hpq5GjZQptAKkSMdcyQQi01o9oZPsYgMqwCWekmi7Sw=;
        b=mYhpr1HhK5yiockpEnRo39R84MNVHzkyfh4CMNhCboaf9hf5Ppb92sKJPhWXue2cUs
         8ip8D+dWTx/OQ2Bie4OmdqgD6uib7SBwoTIaw6b4zJVUbNKiOZ/AW2pTuFHMf/YXYmxB
         cUHtaOwrr/qu2w9+8F5Ea36SQXpx5hpusCTwi8msGuCvgmS3f4a0lPa6D788YUvY52o4
         3UGGmyoNbyBspSInI7Eiy81mCMIUUyvakq51xmZdYL13bNTsDrZRqf44avBMAvm2hXjT
         oiXA1IMjF+J1wSZqtKBM6n+UZ3tmactKaq3GDUCr2Rd8fm97UpqBTPeylr9QTmDtKFNm
         dD7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hpq5GjZQptAKkSMdcyQQi01o9oZPsYgMqwCWekmi7Sw=;
        b=v3z1UzuwJDTSM6a2rMzIz+dlgGie6jNW3R3HxuzmPkLaNLT1+D4o8KBGD0FFBhVbYL
         X55vaFQMCjxwNVxyOC0MbeRQCXpBqrVHIPJJC7BzmM6yi69ARvlZK7Rvikv2qWn19DZG
         jTdBGFFCYaCznOrETX1XflQnVRbyypzYD0bbP2DyMUl2a4INIhTbUeBSCLA0lc8LAKj0
         cXhTzKHVPDlgBlcLw84WagtoGUQ8him/bx7UXdFjpyASe9CKER9BB28kUOGsD4El6prm
         cBaPJawSCHgjks9HB0s0tZELY7PB3Jnu49p/ZxYVGU8Hlh6ADa+ptE8NrrxY8rGFCgp2
         KLZA==
X-Gm-Message-State: AOAM531TPf0aeUo1ltPuAXJGqQPi+O+xNARTw9QkQc2gaaWZ5valnAPD
        RlMEStElotzJUmI1Ica1n/HPkQ==
X-Google-Smtp-Source: ABdhPJxr5ZEqJaOMmcWja5H0Gd1DkSWwOqBmNmOEwJfnm+P7g8ImFFG77VVs0E0czWTsglqGhk6PSA==
X-Received: by 2002:a05:6a00:887:b0:4f2:6d3f:5b53 with SMTP id q7-20020a056a00088700b004f26d3f5b53mr25552345pfj.21.1646107813698;
        Mon, 28 Feb 2022 20:10:13 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id j13-20020a056a00130d00b004f1025a4361sm15254811pfu.202.2022.02.28.20.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 20:10:13 -0800 (PST)
Date:   Tue, 1 Mar 2022 12:10:07 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, vkoul@kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 5/8] arm64: dts: qcom: sm8450: Fix qmp ufs phy node
 (use phy@ instead of lanes@)
Message-ID: <20220301041007.GH269879@dragon>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-6-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-6-bhupesh.sharma@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 28, 2022 at 06:00:16PM +0530, Bhupesh Sharma wrote:
> Fix the 'make dtbs_check' warning:
> 
> arch/arm64/boot/dts/qcom/sm8450-qrd.dt.yaml: phy@1d87000:
>  'lanes@1d87400' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Reviewed-by: Shawn Guo <shawn.guo@linaro.org>
