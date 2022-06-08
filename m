Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29327543F83
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 00:59:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiFHW7F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 18:59:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231620AbiFHW7E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 18:59:04 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 882B94FC61
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 15:59:03 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id b142so1064451qkg.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 15:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=X9hlImzyEvBxvl0tBCS9rvUZQGqdth4+UM0LIHHP/pc=;
        b=qY+gKBjBgfP092SAeHRL4sRZ4XAGmRJK1yLkZ/bIXSH/CnhFAyg+dNJ030tm5BNXgY
         TWxVnmD/BONZSUFczbaTBBCNtSp928utbjynS6qnIUN/xy85AKs3cszkXM9LyiC/sYj6
         jCzurspWKF9AlY4lYaRMsKgA84iKor9D6Hju7E1YDwWOANaC6ybTVvH57QV7jwJTsg2E
         sYIdnfADedR6+Olp0fJsePKCT4W6FYPi6XRmDJousdkgkZglntONzt1ERrtGIrFLGtkl
         76ByOL8Br1PGC//d1JhvdrbsheodSJH9lTJ+jUCTqFXlVrQQ54dTWKDxBMxEXU0OW/7b
         zt/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=X9hlImzyEvBxvl0tBCS9rvUZQGqdth4+UM0LIHHP/pc=;
        b=ZEoCBSRecY9yY50W5ZrKiRzStSgcMRJlyAjdF27Sxsy4cbRJ6Gmm7u1uLcQFsOl2l6
         2+FP5M9Mzp/L/cLB6Rh50aUUr0XJKBDk0of04A+idrtBkv5Vfd9/ar+PViJ9yl3f0uvD
         MATcHsKFMHcnmu1OZpogV4LoXaG6UwcRRZcJvK2kXiv28VfivvKwUEXc8E162euWdG/Q
         LOiU91B4QPlmgwe+JojNmcYXokB8NdblQNT2JWbLXTpMLttO6NciLC2ilZolTWlcWauO
         oSFNonuRuDzb/rNStmXvtF7+ZqSdeTd4SEVMx5XtnlsyrIOTs0AtAVjmX8/r3UtfNkk4
         /IBw==
X-Gm-Message-State: AOAM533nkHREXVw3d4YQm99YV3Nj0sXiaeZuHOmW9IKRuquE1dVyRpPI
        MfqzLxw7DClZ6iS2hVsfdZgf4aJq/v7aLOptmvEc2Q==
X-Google-Smtp-Source: ABdhPJwloqlLrxryB81tH2mmTWtotD1MwJqZdjuhJ822FbZIJ5roIbw1TX8CMKFMm0yFALwyZTgjVd6J1q7pOTTD9Ls=
X-Received: by 2002:a37:a83:0:b0:6a6:7e4d:41dc with SMTP id
 125-20020a370a83000000b006a67e4d41dcmr23472964qkk.59.1654729142674; Wed, 08
 Jun 2022 15:59:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
 <20220608120723.2987843-8-dmitry.baryshkov@linaro.org> <CAE-0n517WyGbmN86=q5Qx06ektgKFNdY1N5fgkH7ZM6AhGJ+9A@mail.gmail.com>
In-Reply-To: <CAE-0n517WyGbmN86=q5Qx06ektgKFNdY1N5fgkH7ZM6AhGJ+9A@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 9 Jun 2022 01:58:51 +0300
Message-ID: <CAA8EJpp5OzD+GXosia=O87AThqCEA8jAV9fCxRhQ6FnLck8fyA@mail.gmail.com>
Subject: Re: [PATCH v2 07/12] drm/msm/hdmi: enable core-vcc/core-vdda-supply
 for 8996 platform
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 9 Jun 2022 at 00:02, Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Dmitry Baryshkov (2022-06-08 05:07:18)
> > DB820c makes use of core-vcc-supply and core-vdda-supply, however the
> > driver code doesn't support these regulators. Enable them for HDMI on
> > 8996 platform.
>
> The 'vdda-supply' name makes me think this is another scenario where the
> phy isn't powering on the analog supply when it should be and so the
> controller driver is doing it instead. Is that the case here?

Good question. There are different HDMI pins on 8996, with slight
disagreement between the schematics and the datasheet.
vcca_hdmi/vdd_hdmi1: 0.925V, Power for HDMI circuits =E2=80=93 low voltage
vdda_hdmi/vdd_hdmi2: 1.8V, Power for HDMI circuits =E2=80=93 high voltage
vdda_hdmi_pll/vdd_pll3, 1.8V, Power for PLL circuits

I'm not sure which are required for the PHY and which are required for
the core HDMI. However I'd note that we have a generic tendency of
duplicating pins between the HDMI and the PHY devices. Compare this
with 8064, where core-vdda-supply is also used both by the hdmi-tx and
hdmi-phy devices. I think we unify 8x74/84 with 8996 and allow
powering up the HDMI correctly even if it results in duplication
between the -phy and -tx parts.


--=20
With best wishes
Dmitry
