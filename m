Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C76CA543E12
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 23:00:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234812AbiFHVA1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 17:00:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234794AbiFHVA0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 17:00:26 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E29CF40A3C
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 14:00:25 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-f2a4c51c45so28770996fac.9
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 14:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=RfojhM+HvhoFUnCUYXubG1c+YnDVOjxUgDJWQ5CNrD8=;
        b=Zbg5T0Ft2Qyes3tF93Q6J0IzPyCQhYKtIWw0jw6DstsqqYQV1A/dk+2CMasNFSbRvB
         4c0u2mufR0ywsmnFBOkHTL0n5Fg+v3ZSb40aysn12VBT5NzbFrfKUHDL/jQZXUw23KRE
         qt5+O6JXDBXfWdg0zBNwFvXEibj0LTQqci6zg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=RfojhM+HvhoFUnCUYXubG1c+YnDVOjxUgDJWQ5CNrD8=;
        b=4ORzHDmiGSVRva7L/P6hbxYcbPnJwh+JCveK4yopEOn3CEMO/DdiGgtlXH4yXUQVCt
         Kngl4rGqE8c6Tt9miFIv+AHMUlBoQdRHIl5her6Oeh0wkL4CBhTOx1H7ct1JVtWMdJ3h
         xKizWIefNKzkkHwNxhYsHk26g0aUdBhoNBTgGUlyXdAPaYNEAwjFC3WSq25wlh15m9Hv
         kLsRPNz6yQdeYvTdy/J+GhoNMso6hUI5fzfhmOQrPY/WpGIFfnaU7+o/p51GGnL/F1Ge
         qW0ZQVcMrMawSdTw3m26lMdlP8f/DXG0kuy/9grqNmsXpp/siBUoJsCB1Rcv9aohhXJf
         4twQ==
X-Gm-Message-State: AOAM531cJ9j9JDNxkv1cF+f2LK6oanpbabLrVNfoEkwx0esIYVhn1jyI
        OMGj7O9uO3LOZItywx1UNUBTuIaDmeNmPwo7vVSAUA==
X-Google-Smtp-Source: ABdhPJwFBJUEkULzJAaH7LxPz94JppRi9Mr0BKxOSBfhv34a+e+Ti2dPDnik5hKcgov0hA6wVNLtyuNw8WJ6wXaJ0Y8=
X-Received: by 2002:a05:6870:240d:b0:f1:b878:e97c with SMTP id
 n13-20020a056870240d00b000f1b878e97cmr3374939oap.193.1654722025105; Wed, 08
 Jun 2022 14:00:25 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jun 2022 14:00:24 -0700
MIME-Version: 1.0
In-Reply-To: <20220608120723.2987843-9-dmitry.baryshkov@linaro.org>
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org> <20220608120723.2987843-9-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 8 Jun 2022 14:00:24 -0700
Message-ID: <CAE-0n53BuO91fZEQzTmhOmNxvdmLBfJaf7cu77FGU5hZgme2RQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/12] drm/msm/hdmi: drop empty 'none' regulator lists
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-06-08 05:07:19)
> Several platform configs use empty 'none' regulator arrays. They are not
> necessary, as the code will use corresponding _cnt field and skip the
> array completely. Drop them now.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
