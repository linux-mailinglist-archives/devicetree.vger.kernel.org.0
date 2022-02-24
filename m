Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 200E14C27C8
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 10:15:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232295AbiBXJOu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 04:14:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232654AbiBXJOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 04:14:49 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 994B41B8CBB
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 01:14:20 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id l19so1343350pfu.2
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 01:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QH6vcKmOjHclGPrSiGYzmgW08USM5b8guwSq/ZDDFXg=;
        b=GvXbX9L95/PoxktaE3BrW+ifYmtZ7mqj7Q90j5F7WQ2Lf9lmglmjTzl5TEAJxfyF3a
         umd7gQHbgS6eTuMcVb9U/uKq7j6oTAVbbOTXMyFxaSptsFyJugbARNL4ZmXF+XbZuQ8H
         Yd6qMDEMQaGc2yplLbkktBFbWAvJm2qLvT/l+0fo78NeKSuRkhnC2+Md3bDWi6s7z7Uw
         XyBbjmSGg2ZzBRJOnEFqWkX2g6LxNyiDdf296u8vhkWcMSsXL2i0I34s7X+xcFJwNNdd
         fU1Qarl3CYNNv0H1hQeaMUyB7QTh7GE4AatVVluAyNTcaaT+mGEWxjd1VJvvw0a4It4C
         gqQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QH6vcKmOjHclGPrSiGYzmgW08USM5b8guwSq/ZDDFXg=;
        b=RBZ1OJ+l8enSGZbgYeNWpidkHAsqtotQs0pr1tfppUVEz8JCqm5uj+Vhhd2sj4ZA0g
         Xt694oAL5LdY3D7Klh0wX5G60RC21bqzNNEpaoPDiS+a+ryB0HSrOjPhrST0gM+FzQtH
         Ep+HTKmBdMcon+L3f1WKECFUTOjIVfs9i/agvH+Z+EKNBSU8OGyN4yPhwnM7+mfHvhpe
         9Bjo8Zs5sV7ezjVGi7/h0yA3xCtnDXV7ZjyplmgV+aKiY+BPmaNO+U2DlAFolIM36/8w
         Z/a3IKr9FAYl7qOP4LiuzsVXedGFMaGOpZdb9FJ+a6zr1xUbBoCX5a4A8E5sIeH+nVS/
         kfrw==
X-Gm-Message-State: AOAM532vdNbWjPBlpzVd+xWLOxwH7cd02m5NDu9082VCXZAd8QMfHG/k
        +LbIhwmpRGgIYbD+/Lg16BQB/g==
X-Google-Smtp-Source: ABdhPJyyoPkkvnwKNV7OXnyeehTEBcSsUUIcZZsw3NCCEKUpNeCt/u+qbNyfjrNBnBGRxIhmiA8HMw==
X-Received: by 2002:a63:9351:0:b0:375:8d1a:4766 with SMTP id w17-20020a639351000000b003758d1a4766mr760971pgm.102.1645694060173;
        Thu, 24 Feb 2022 01:14:20 -0800 (PST)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id k11sm2459550pfu.150.2022.02.24.01.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 01:14:19 -0800 (PST)
Date:   Thu, 24 Feb 2022 14:44:18 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Lukasz Luba <lukasz.luba@arm.com>
Cc:     linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
        rafael@kernel.org, daniel.lezcano@linaro.org, nm@ti.com,
        sboyd@kernel.org, mka@chromium.org, dianders@chromium.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 2/4] OPP: Add "opp-microwatt" supporting code
Message-ID: <20220224091418.wodurdfhzyrtqepg@vireshk-i7>
References: <20220224081131.27282-1-lukasz.luba@arm.com>
 <20220224081131.27282-3-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220224081131.27282-3-lukasz.luba@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24-02-22, 08:11, Lukasz Luba wrote:
> Add new property to the OPP: power value. The OPP entry in the DT can have
> "opp-microwatt". Add the needed code to handle this new property in the
> existing infrastructure.
> 
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  drivers/opp/core.c     | 20 ++++++++++++++++++
>  drivers/opp/of.c       | 47 ++++++++++++++++++++++++++++++++++++++++--
>  include/linux/pm_opp.h | 12 ++++++++++-
>  3 files changed, 76 insertions(+), 3 deletions(-)

Also update drivers/opp/debugfs.c please.

-- 
viresh
