Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE0807975DF
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 18:00:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236707AbjIGQAe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 12:00:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238886AbjIGP6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:58:49 -0400
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2BA620937
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:45:51 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-58dce1f42d6so31119817b3.0
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694101507; x=1694706307; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RbK6fKvS9Fgoje98ZfydB5ImVNxTq9WKZiMHsHIMJYc=;
        b=dLKLswAmLmGYkTY7rUjy0OJ1BAqRMr6VzoJ2ROcGnR8peqLxVrRIthGhlPJTMudXil
         xu5swkpM4jY72PB8t3RyjAtlGHy0UEPXNiMljSKB8q7asavQ+jD3l39crT3egFx9NtSE
         1tyH3ZO60sZJVcpLsKkqaEfBjdKHzFcuzzchtew388f9yuzIuQkrhnoe/ko340/oOsLB
         fwCtwDgyM0L/Ftns3PzFgQUjsmkjk5La09F8LozLvtk2OcIGdMuCHFAN5ocsXm6YmAag
         D2YYn7/neNc7dxeEW4vGgGQlDvr7gesXPO8RH+hUCPlvcsA2shpDO5n9TY/Ob9nIdWzf
         8V2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694101507; x=1694706307;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RbK6fKvS9Fgoje98ZfydB5ImVNxTq9WKZiMHsHIMJYc=;
        b=MFkglinmMQLBo5Raq0ZRKGfkhj95CXzFTl+NNMWtOnOrs5tufipsUMoAFW3NsJD+sA
         jlam2ptDNWr3MdyuHNgCaTq+Rw73WB3XZtBQkWd+aMWihojlaPVjANi+aiCOaeYPT3vQ
         zZt2y6ElDi6iEXntW4FIjAGd7nw0matQhj+CB0MMnNmkJYPEyKIYHdY/wuR2lXjUgA8d
         b31aK9Kr9A/44Be74q6+Rik/nE/YVl93bg1Y7JfHOFUputmUINqwaBreYxajjTaNA+M8
         iFC2MCGK4kgg0nGup7zWK2X35yKdKZZASpLaEJxx3RvUASOyBLeLL75xAjwg+rCu85yZ
         6Mgg==
X-Gm-Message-State: AOJu0YzKJIMT0dVvncGL/0PG8CR0ykPjiLsmL2TWUVO3iJWoyxpNJtcL
        Rn/o14FTTFjDGc/U+JwRTTcEE6m1QJcNNPdDEMhvTSDf2gsswbgk
X-Google-Smtp-Source: AGHT+IHu6D0PjyoNN/3icMZDTJRryJCp5e4gDUZ/wy83CohE7b2nsJzK7Ge1NIZAUgYV6LutVWZGRWBUmBFmeDVHGrc=
X-Received: by 2002:a05:6902:154d:b0:d72:8a65:394f with SMTP id
 r13-20020a056902154d00b00d728a65394fmr3971430ybu.18.1694094049986; Thu, 07
 Sep 2023 06:40:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1693996662.git.quic_varada@quicinc.com> <543183ecfba929683c1b8d7ff24d75df489ef0cf.1693996662.git.quic_varada@quicinc.com>
In-Reply-To: <543183ecfba929683c1b8d7ff24d75df489ef0cf.1693996662.git.quic_varada@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 7 Sep 2023 16:40:39 +0300
Message-ID: <CAA8EJprSHCx6TQ=-iEV6L55b69yYKANCJmGSqN+YVSv1dSCAqg@mail.gmail.com>
Subject: Re: [PATCH v1 03/10] clk: qcom: apss-ipq-pll: Fix 'l' value for ipq5332_pll_config
To:     Varadarajan Narayanan <quic_varada@quicinc.com>
Cc:     ilia.lin@kernel.org, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        quic_kathirav@quicinc.com, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 7 Sept 2023 at 08:22, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> The earlier 'l' value of 0x3e is for 1.5GHz. Not all SKUs support
> this frequency. Hence set it to 0x2d to get 1.1GHz which is
> supported in all SKUs.
>
> Fixes: c7ef7fbb1ccf ("clk: qcom: apss-ipq-pll: add support for IPQ5332")
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
