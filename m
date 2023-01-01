Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 766FA65AC1D
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 23:54:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbjAAWyx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 17:54:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjAAWyw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 17:54:52 -0500
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B1DD10F4
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 14:54:50 -0800 (PST)
Received: by mail-yb1-f173.google.com with SMTP id g4so28779044ybg.7
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 14:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PyQhIcy+qKpHO8MYDSaydeoH+tZuYWSGRZbo4NXZgpc=;
        b=wiT33MJAYshw5CBRPBQWB7uX/9LjZMraJn/1vBbMIN7lYxQbtuPztgi4IGGbGQf99F
         yqr4sWEBfapAcyYDTv2h5Ql52gf+Tx8KN+241mvl2pLZnink473n6RlOZKl9ltmKvIko
         l2zmPyvA7I5l96oudQtK9Aov41UlmHPf0JEVlRydtZqsZKiOYZmjC1eIxOpnUEP982M2
         y80FMq5IMI0erERI/1CM6msEchBWt3/1Ig8HiG7f3ZLUYdviA1H3UIhc4JIDUNdB+q5Z
         Pxor5bGZdYnEAkcZNd7HgL9RsVikG+tDUPHgAREMTN/fSK1jHtou0Wy7YpNEJU94i72J
         olIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PyQhIcy+qKpHO8MYDSaydeoH+tZuYWSGRZbo4NXZgpc=;
        b=LrNpCutc2tzJZD8xH8ca3w70/ivbjj7lI+Vh+6xlLr3nbIBGR/W1NRjfSmL5LIV/AB
         n5geu1t+jwQslIUPmconSi3YHwVm31AFhUmJUSDE0UvspEy+UGCvuKPxOEcr7JNDEAUy
         rTJRA9vf4udR0tBHMUwsTfCEnaQEFr8WKVvIk8IP/wT1kjehamO92eHgD6vOaf0AUqkQ
         KrvX2L8fz6lab6YIayegXSyYSc2iz7ofiR79wdD+xlHpMi/fXT/IqvSRTZfyYKp+KT4T
         fMBXpxOnjrj3B4XcfGMh8Feo/bKYnyb4bDNrjVXHaKYDo70XFGH7lZuNLMPql3vaidUc
         EDKg==
X-Gm-Message-State: AFqh2kpTsnzoypCOy/XxkE81pGvajFutEKxmwK817EwGQM0AHeTfkl50
        GhzCa2E2vtJBa4JXRfe8TyKWllF+oMmHq8VOg9kEzA==
X-Google-Smtp-Source: AMrXdXvNbbqTiimbIBZw68lliERvmW8WmO8H9EJmJqFNORVAh+pz6Dtj5wDhIB8JOrh0n/vzEebq05WrzQYAgZ9kjh0=
X-Received: by 2002:a25:aa0d:0:b0:76d:bea0:8a05 with SMTP id
 s13-20020a25aa0d000000b0076dbea08a05mr3152875ybi.153.1672613629740; Sun, 01
 Jan 2023 14:53:49 -0800 (PST)
MIME-Version: 1.0
References: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
 <20230101184651.807900-3-dmitry.baryshkov@linaro.org> <CAOMZO5AaEb9dDF_mLusSFPFVGBMiapMEfaGa1C5S4asexpFoZw@mail.gmail.com>
In-Reply-To: <CAOMZO5AaEb9dDF_mLusSFPFVGBMiapMEfaGa1C5S4asexpFoZw@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 2 Jan 2023 00:53:38 +0200
Message-ID: <CAA8EJppKYEHysF37QSEQaUUaXbMwP4oFTkxcvoBGaEh+qV_Aog@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: imx: Add support for SK-iMX53 board
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2 Jan 2023 at 00:51, Fabio Estevam <festevam@gmail.com> wrote:
>
> On Sun, Jan 1, 2023 at 3:46 PM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
>
> > +       mdio {
> > +               #address-cells = <1>;
> > +               #size-cells = <0>;
> > +
> > +               phy0: ethernet-phy@0 {
> > +                       reg = <0>;
> > +                       device_type = "ethernet-phy";
>
> I forgot to comment on this one in the previous review:
>  device_type = "ethernet-phy" does not look like a valid property.

Well, it's used by the kernel, but I can drop it.

>
> > +&vpu {
> > +       status = "okay";
> > +};
>
> This can be removed, as the vpu node is not disabled in imx53.dtsi.

Ugh. I thought that I removed it after v1 based on your feedback.

-- 
With best wishes
Dmitry
