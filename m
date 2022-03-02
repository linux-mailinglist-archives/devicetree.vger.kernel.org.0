Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 742024C9A91
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 02:39:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238929AbiCBBkM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 20:40:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230148AbiCBBkL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 20:40:11 -0500
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4D03A0BF2
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 17:39:28 -0800 (PST)
Received: by mail-oo1-xc35.google.com with SMTP id h16-20020a4a6f10000000b00320507b9ccfso308695ooc.7
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 17:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=c8c86OEqOSehxlQhPxGLo0iioV8oYfqJEJFuDjvqLWo=;
        b=hIE/VP6awfGy025Pee+jBTHAeWWsN2/N4U2oVA29EZ6sUVlp6ZS33TimoWvJ74FSJl
         WZUZTV8acVAWTHoaqZANsb9aRlIwGrgMCvpZqNmF1+R+V9lXm60GkhdkUYnagxGNYtpG
         zICC0orF/OdRvUeQ0kK3GMm5zET7oci0WXlsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=c8c86OEqOSehxlQhPxGLo0iioV8oYfqJEJFuDjvqLWo=;
        b=qzQUBrnYnqPNn7tZiZgSI7WKpmtw8CKE7VLwSA0XG4ax2E+UjS1sdfmWyL+pgAn54y
         zQqbStch51P99qX0I8TPtSreu6y5Fo9/ExkXYtdANPItR5sRY63KUNrPQlnRzAyCOD79
         sX9VW57xjVmj+SItJB3VEKZe+Pl841EVuOR7rM0vm7c2wiMXrcHNUyUPdqqA8TiHONOS
         Ns9YVs1UivxVSE8b0g99NOh0pfBRAyFp9riLVW/ZftRjhjibkquZjnGCf+JGurozSWKX
         q3n4ZZyF+MuhMLAKPGeZjjBqqqgwA8E0zjY+VQG27zhpUX72tlMlAPt/6GZg6jm/79Ad
         i3xQ==
X-Gm-Message-State: AOAM531HaIIipS+LMHUDkasuPHyI24PkCnAVNbXGbEkzw9lmPdl+gY5G
        A/xFwoMN75+erjGoXg1ueVc0q8mfI6NBMwVIgN+NrQ==
X-Google-Smtp-Source: ABdhPJzrJISuUSwYLe5NX4z7wkzXV0rSJsqIg1aIyyv6HslMpOfb1uyj0QJbf+YVMB9TH0G981YvTpkC/Lu/VyeRMmA=
X-Received: by 2002:a05:6870:3c18:b0:d7:22ed:20b0 with SMTP id
 gk24-20020a0568703c1800b000d722ed20b0mr7908109oab.32.1646185168324; Tue, 01
 Mar 2022 17:39:28 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 1 Mar 2022 17:39:28 -0800
MIME-Version: 1.0
In-Reply-To: <20220302005210.2267725-4-dmitry.baryshkov@linaro.org>
References: <20220302005210.2267725-1-dmitry.baryshkov@linaro.org> <20220302005210.2267725-4-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 1 Mar 2022 17:39:27 -0800
Message-ID: <CAE-0n53S4q5JN3a1ypwaR8kEKbJVjmLZVgY_O0+T3KY5eXjesg@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sdm845: Drop flags for mdss irqs
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-03-01 16:52:09)
> The number of interrupt cells for the mdss interrupt controller is 1,
> meaning there should only be one cell for the interrupt number, not two.
> Drop the second cell containing (unused) irq flags.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
