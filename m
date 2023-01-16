Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78F8666D0A9
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 22:05:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232314AbjAPVFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 16:05:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231138AbjAPVFn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 16:05:43 -0500
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B4DE1BADD
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 13:05:42 -0800 (PST)
Received: by mail-yb1-xb2d.google.com with SMTP id 20so12594651ybl.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 13:05:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Qi16rqRfpVxEIDPG8yaq6fMfKHFwbsCk0KPMN6hDEDQ=;
        b=PBMJZDaOQp1JclDMa/01hpziebOYPox2et3WTjTnSzGSEMZvGQT1Lbv+hPf02Z0MA4
         0YJH3/pd6X4vxKQqgqv5nogChYwIYBG5F4FgkPoydW22jCYyGZtcA3n0P2UhYdZElG+l
         r6a1c+qvdYN2mMWj/Fy9mdWXfJO5pZ5jbH4GdqPE+pXNYhKmzx3U2VUIM2XI/qftzDAH
         cFOoP+buTHBEH2OS7tk9Mitg01rfy/YYIszs6dzkiVnbByiIMeSfL/M3Nqt9o9oCA5/5
         AuIuWCxo05EF4CVHbfqRneJ5lPJqEwYcSTKKR79omXvE+St8fCQKd1ocTM8u6jbNA2wx
         STiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qi16rqRfpVxEIDPG8yaq6fMfKHFwbsCk0KPMN6hDEDQ=;
        b=CML2NPjpAfORo5mLC+8uNGMtzf5zBCwWgVxxDpkxbj6ZtNIs3/UtT/0jCcOEGmhwXK
         uK4RHJKVUlPmW/zVlOzfD8hgS8G/fvjCPuXfrtUGSps/g1vr5zv/na1FNgympkF9I/M0
         tIRMi1pyotgj/HWqOUK3Zhhy3gxrgrs5sCGZe5iPBWr/faaHpPJz5g6ECuWUQPixP5zG
         6CpBmvy5Io76xcbCusq6VIjkLXwaDo1oN0ByJsxD406MKy8SZm57VdS8RbsL7r26OKeG
         D3bRctIarWNYUE0RdAKrWtUjamhDeiDJiKJcQ+D1Of532nLZPy/E1ox8KNHxAQhRzeLw
         v4kg==
X-Gm-Message-State: AFqh2krQX9FC8okfFA/8fkj/9tDiFxs5OyzvCKQJd7sVzTDZUNO9+tQK
        1mB8VNa/pcQpRvBHbm99+pm+kRMJgw3evMDunzrCoN8/tCHoXg==
X-Google-Smtp-Source: AMrXdXvUFbKj/8VK1PqxF3SoqqhT54oJaVtabwef3rW+11qq+8X4WHWpCQjx3gPW4zHB70/sxyRjqRKMlHRycFgU+3s=
X-Received: by 2002:a25:9002:0:b0:7c2:d9f1:3b04 with SMTP id
 s2-20020a259002000000b007c2d9f13b04mr147791ybl.516.1673903141353; Mon, 16 Jan
 2023 13:05:41 -0800 (PST)
MIME-Version: 1.0
References: <20230116204751.23045-1-ansuelsmth@gmail.com> <20230116204751.23045-6-ansuelsmth@gmail.com>
In-Reply-To: <20230116204751.23045-6-ansuelsmth@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 16 Jan 2023 23:05:30 +0200
Message-ID: <CAA8EJprEOaduAd_OwpbW0m4aWwoFxNVqExTtMhTK4giPMkBGFA@mail.gmail.com>
Subject: Re: [PATCH v7 5/7] ARM: dts: qcom: add and fix clock configuration
 for kpss-gcc nodes
To:     Christian Marangi <ansuelsmth@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 16 Jan 2023 at 22:48, Christian Marangi <ansuelsmth@gmail.com> wrote:
>
> Add missing clock configuration by adding clocks, clock-names
> and #clock-cells bindings for each kpss-acc-v1 clock-controller
> node for apq8064 and msm8960 to reflect Documentation schema.
> Add missing #clock-cells binding and remove useless clock-output-names for
> ipq806x dtsi.
>
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>




-- 
With best wishes
Dmitry
