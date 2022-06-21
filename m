Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D82A8553B4E
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 22:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353370AbiFUUQf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 16:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353258AbiFUUQe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 16:16:34 -0400
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9350B29C9B
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 13:16:33 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id i17so15448787qvo.13
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 13:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7d0mbHgm/3CHKa8+yNo/eKtCHXnWmc1BFBITjPRRp8E=;
        b=t+wXwST+5EJh5elrY/WUgT6GlZnU/umVv8mn3vwcWseSOZbCzRRFDq39OIRnxoV4yr
         GFKsraeHF+WItzZTrlOQTK0dmPObFNfuMJ8ndpzIlRBHaEFX0f/4g3ldeVedN50Pm9h3
         WtxKPkSW4C0LVS96CqYmrGI1FVWCdpJK8Ra2wEuLVr2GYt8ANFBqAjATpCIotUx+ytYP
         5GrdwU8FXWue73mB44qJb3XDO6LNp3lKrQSrXTHAkPbMJdqVTmGQpZmUyS5TX3dGbEYI
         Twx/K3ecPzjdTnvbWBO1W12fKFbD2T3nK7w+J5e46ZPntnLINaPgIN8N5HOzSh+hG+g1
         dClw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7d0mbHgm/3CHKa8+yNo/eKtCHXnWmc1BFBITjPRRp8E=;
        b=5bO5h+Uixdo3wV9h4jflPeCZT5BF2GbjS+FeRkzZbzq+RS5+g23G0uM+0YlQhqG7KA
         jB65tooNt3V/suBqf/I5Rdf3TbfaYmpndV0LGOQykJRM6eW36sNXaiu4wWZyjx5sL8GN
         ur3kJ7wBB4bGeeDwSDOLW7wxJjfkMobTC57QH/rhmWvVENQcxiykW/bOnX4cKZKoTQqI
         IK+ogrIuwx4SOoKRGSjX0PrEmQiMKtxE65DVoOFsCZ0OBdluGjiUExRDekd11ZfknngQ
         v2vHnJKAWK0GKEkKLtDWxpWZXWY1nXRnNSFSbMoh0GhZk37knVIA1v+cRzk7bVQu8Daj
         3xTw==
X-Gm-Message-State: AJIora90Wn51VHqOqTuxMvcA0NJriWP+4/nhDtyzu9Q0cB1nnUs/mAW5
        R5ZWQMRRSb0KtSSDoVhF226YxYe03N479PHj4Yz1VIwN4Q65OKIs
X-Google-Smtp-Source: AGRyM1u7re2hm6js0oXZPsDS+sYWHON14Tm9/zGOd8X3vNsZpjkLMZyW3dwzRVhTuBHWkJYUUfWiRXOQDWlNNsoS+wU=
X-Received: by 2002:a05:622a:34a:b0:304:f25a:ecf0 with SMTP id
 r10-20020a05622a034a00b00304f25aecf0mr17285qtw.62.1655842592542; Tue, 21 Jun
 2022 13:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220621195512.1760362-1-robimarko@gmail.com>
In-Reply-To: <20220621195512.1760362-1-robimarko@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 21 Jun 2022 23:16:21 +0300
Message-ID: <CAA8EJprka5FfOeBkrvOHDSf=d8stmQNpgSUfi3BmTxSiG0Rc_w@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] phy: qcom-qmp-pcie: make pipe clock rate configurable
To:     Robert Marko <robimarko@gmail.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
        vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 Jun 2022 at 22:55, Robert Marko <robimarko@gmail.com> wrote:
>
> IPQ8074 Gen3 PCIe PHY uses 250MHz as the pipe clock rate instead of 125MHz
> like every other PCIe QMP PHY does, so make it configurable as part of the
> qmp_phy_cfg.
>
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
> Changes in v4:
> * Set 125MHz as the default if not set in qmp_phy_cfg
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>

-- 
With best wishes
Dmitry
