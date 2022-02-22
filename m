Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 518634BF4EF
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 10:45:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230242AbiBVJqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 04:46:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229747AbiBVJqQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 04:46:16 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 801D2158DB0
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 01:45:50 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id gf13-20020a17090ac7cd00b001bbfb9d760eso1871956pjb.2
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 01:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7YUt1Bzzrbhj+KqpEfpgPk+QAhGaQ2Pl/pyXgZlOhkE=;
        b=MuPXClcdIvlugdYtVXS63Gbpm6U8xTgEQN/weZiCp4OggzvpHDhYvnXuTaAEDE4odO
         tRl4Th6BBhfuNLSFC8IMXJIN6goHOMupMGhKkBW2AnOU65dhQQVZzFh3Bzx8icfxJ9d/
         pvQqG9u0gnLL2abo1C8/QIOo7/Cu+yadS6tiqeKd9zUhVlQTeEwxHBcH1+LbgN/47N/B
         DUKdFtYZKfSQ40WyCRFa6Xbvh/fKLlpjrDZpali1jFnaEIP5yH4JeBF6RcHgFxiUIMXg
         tE7qJ2F3YhZFbYuAR/HBGjBprXLyMWK3PQLNNuY3QXtjzqpfRaxV5+Qd23xO6j1/nRVI
         FB7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7YUt1Bzzrbhj+KqpEfpgPk+QAhGaQ2Pl/pyXgZlOhkE=;
        b=Lvvf/OUaeu2DmcR3hqB3RRBF/O0UmXzFhEx3hNfyGR2GUEIOWY9/rfi1OHOiTP2tsO
         uXuDfA6awmKpFL0zf8OJi9eaVf8pZPMncoyDMJa/e8FCzBhxUDa5vJ5p4OufvGHEH9qD
         o0uZzgJn7X/ci/X3AGw9KHljFUaOxXUK6Q8VlUICoXq2IYpZYOhs1g6PLP4d0rHfnzto
         n6iR1blmp8eBZYG0Ix9X6N49W43A8/EzgYIju8K8ORZ7kw0w5sF+ABpFyCUC7KmRfUvB
         B6Gpjw8t7yJHbf13BMGPIssn/7G0BXVg7mEFAHnl7SR+gNQ8UFJPpA3D4p+Xkjn4gYQ7
         AXZA==
X-Gm-Message-State: AOAM531y7Qb4N7N09BeExBCAPYBXkymh+ko7ZmAsYoSU1Q0ne3Rl3acO
        O7YTOkbPXsbZZHOjbMzHz5aUOw==
X-Google-Smtp-Source: ABdhPJwCT2L7uXHT3P17ywkXjt7g6V82aZC/wT2Y9QyKoEfn7RnXiewoeWB/lOFsqSCr9FAOIxKcdQ==
X-Received: by 2002:a17:90b:1e4b:b0:1bc:4d46:55a7 with SMTP id pi11-20020a17090b1e4b00b001bc4d4655a7mr3252395pjb.151.1645523150020;
        Tue, 22 Feb 2022 01:45:50 -0800 (PST)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id t7sm16003401pfj.138.2022.02.22.01.45.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 01:45:49 -0800 (PST)
Date:   Tue, 22 Feb 2022 15:15:47 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
        rafael@kernel.org, daniel.lezcano@linaro.org, nm@ti.com,
        sboyd@kernel.org, mka@chromium.org, dianders@chromium.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [RFC][PATCH 1/2] dt-bindings: power: add Energy Model bindings
Message-ID: <20220222094547.tgj4bciq6rez62nk@vireshk-i7>
References: <20220221225131.15836-1-lukasz.luba@arm.com>
 <20220221225131.15836-2-lukasz.luba@arm.com>
 <20220222030337.ijnfrh367illmidr@vireshk-i7>
 <147e48e5-e310-cd8f-ba8c-ff32e3094be3@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <147e48e5-e310-cd8f-ba8c-ff32e3094be3@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-02-22, 08:06, Lukasz Luba wrote:
> I'm not sure if that would be flexible enough to meet the requirement:
> power for each OPP might be different in one board vs. other board.

Don't DT files overload values from board files all the time ? Why wouldn't the
same apply for OPP table as well ?

> AFAIK the OPP definition is more SoC specific.

This isn't about OPP definition as well, but just that if DT allows you to
override or not. I think it will.

-- 
viresh
