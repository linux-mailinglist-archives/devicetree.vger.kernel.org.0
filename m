Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E81D243E94B
	for <lists+devicetree@lfdr.de>; Thu, 28 Oct 2021 22:06:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231220AbhJ1UJQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 16:09:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230323AbhJ1UJQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 16:09:16 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3C6CC061570
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 13:06:48 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id o83so9957431oif.4
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 13:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=KVRfsimkWUEZptb7hkmDMtMpCdgpCWW8uqCnTwZpW3E=;
        b=WgIqAL7etiXifRVOCm/amfVqCPNxk/675phW2mAUxUQYuUnbQWocj/oPXB8hiwSRt/
         saEniCT9gaHuf1Gzy6/KPBewx/HZn8iS/2Wn+zTiEBP/q2C3BwX389q3cUZDHBuVF8ta
         cFx0AhX+vl4m1zJ044cWZXwbBAHfhTu8ajNQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=KVRfsimkWUEZptb7hkmDMtMpCdgpCWW8uqCnTwZpW3E=;
        b=q26Jk32s/9WPg0UZlnekqdwNRkJOFkLnnEni/EoK29WPfv2WBfjJ+b0Bg43RXm+LeB
         olHT27qUp0lG6IU+TjGUB4SQzfP4i/77p1Wt2d9K/UELtyFZY1u+90KoapS0tgD4j6Pj
         z4aPhsYEIEh9xNqpzgDUOKcf6eObaUz5PErN91byk1UgaVpqkPz8ia4qD0HpygeFX5JN
         ZumtX0h0xK+0Kjmk6xA/X5n1MSpq/mVf7vWDaYpUG5hjAxAq8hEBk8pifSdKl0gRqBcs
         O2qNjoxK/wv6nNX35NDrt+pfUDRtIpditYxON431yhNlnkZxz/rtIOMc3UuHOeHy00pv
         ByYQ==
X-Gm-Message-State: AOAM533mHiaIxVvONED6IhEeGJPhaPYzwhM3kbYkLaEHHXpFyY/tzETL
        M+y3D+6O4LFWVJRM0VAacUJsbczDWojya4jusAgPZA==
X-Google-Smtp-Source: ABdhPJyDMkJfAb9CKB4+6pFPCPjZyl0dMti1UM60CmviAxtLto2yWoP41QAU9XFXuf9W2WOPbaopy5BTw9m+kaT/zl0=
X-Received: by 2002:a05:6808:23c2:: with SMTP id bq2mr10535612oib.32.1635451608322;
 Thu, 28 Oct 2021 13:06:48 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Oct 2021 13:06:47 -0700
MIME-Version: 1.0
In-Reply-To: <1635434072-32055-3-git-send-email-quic_c_skakit@quicinc.com>
References: <1635434072-32055-1-git-send-email-quic_c_skakit@quicinc.com> <1635434072-32055-3-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 28 Oct 2021 13:06:47 -0700
Message-ID: <CAE-0n52Khm6osNxb_nPTbpJpRwkOX17B=Sfw84S=fC1WeSEGCQ@mail.gmail.com>
Subject: Re: [PATCH V3 2/4] dt-bindings: mfd: pm8008: Add pm8008 regulator node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, collinsd@codeurora.org,
        subbaram@codeaurora.org, Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2021-10-28 08:14:30)
> Add pm8008-regulator node and example.
>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> ---

With s/regulator/regulators/ in the compatible string

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
