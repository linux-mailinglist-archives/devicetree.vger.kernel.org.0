Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71B2F51DAD0
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 16:40:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236606AbiEFOok (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 10:44:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1442295AbiEFOoj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 10:44:39 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3BE439BB8
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 07:40:55 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-deb9295679so7388885fac.6
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 07:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=F82bZ9DmI62a6GWEEGersqAdKfD7GSoQLwzO2u5c+7Q=;
        b=EZyLNnvq88yM5iivGZeAhz9yUVcV+I/8pU1Bkf8ifgeGEcKCmanjgFOxfEnRGtpik0
         gnOangLfle/l8mqcajj8i2O5PFzENnsaCfNOnMTjApkQRkMic5hXELKUKuexPHHsh4xh
         xhpBnTM+W+CQ6Ju0zQFm5BWqvCb3sEyPNAylg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=F82bZ9DmI62a6GWEEGersqAdKfD7GSoQLwzO2u5c+7Q=;
        b=uld7NMtlYwZ2i/LYPVCXkjHiMEZvZ0wuxHxbA9SsQtcIfg8vYlehFoeAZRYukwsETG
         xhg/b1xbsWyC/XSDo8kvGG3MFETEyea030+D88Prvx44/svvSaKH7rIilrnwQIdAtPMn
         pC3e8OUuOc2XZ3wBifTr2H8wdcSQUKScH4Z2og2aZPRfHdIF/4ilUy/BbZv/h4CZEJA9
         TzTIs4N3/fwAL5Goga4zzxlO2F7XGNA7niNQ98Rt/iQ3MAqkj5q7SBb+IMNZnzwuigt/
         6RkWvIVy2OaS2Dm/1HNCYL7YKu0Ic+8Fpe8oNoQfUKKrb0QhKfav9Q1OcUudFYYX3ImZ
         fYhQ==
X-Gm-Message-State: AOAM532dXB3b5CpgRV3jzzUHB8tUd0G3MLb5+OLc0UrjkWnVLT6qzryh
        etSNRgWbrJJib9Q6bziXFg40AyWaVpYPZILDhbqzeQ==
X-Google-Smtp-Source: ABdhPJxN0yptjNkxQGuaxRHu1excLtNj9MDZpVR1yVH8NLGHwEiPJNV3RJgc5+rmGuPNF6+nXeKc5DjH0O901xDuADY=
X-Received: by 2002:a05:6870:558e:b0:e1:db7c:26aa with SMTP id
 n14-20020a056870558e00b000e1db7c26aamr1469962oao.63.1651848054799; Fri, 06
 May 2022 07:40:54 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 6 May 2022 10:40:54 -0400
MIME-Version: 1.0
In-Reply-To: <1651742739-12338-3-git-send-email-quic_c_skakit@quicinc.com>
References: <1651742739-12338-1-git-send-email-quic_c_skakit@quicinc.com> <1651742739-12338-3-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 6 May 2022 10:40:54 -0400
Message-ID: <CAE-0n52E6kgXuRRnwcm+koc_5C9OV2Ttwua=9mQLc8VafHg=cw@mail.gmail.com>
Subject: Re: [PATCH V11 2/9] dt-bindings: mfd: pm8008: Change the address cells
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_collinsd@quicinc.com, quic_subbaram@quicinc.com,
        quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2022-05-05 02:25:32)
> Change the address cells as '2' so that the first cell
> describes the i2c address offset of the clients.
> This helps us to define the child nodes of all
> clients under the same parent mfd node, instead of
> adding separate mfd DT nodes.
>
> Change the gpios reg value accordingly.
>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
