Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A869565AC2D
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 00:00:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229849AbjAAXA4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 18:00:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjAAXAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 18:00:55 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1464A101F
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 15:00:53 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id i127so23783778oif.8
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 15:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oYXa3fZkTVmlMNxXy/pTlZ4t7PnzbIiCXYYU+gJKOSg=;
        b=iLbhu3Lljnc4is/6BQe8KrFyqoH8MnkfqwwH4sfztZBsJlrF7DvjEKzJqHeuCnvdXv
         v4ClZmUrtsf5aoj2gQbPu1JGJEGToDIw8M1GZHvo/+w2glmpXuUK+VLml+2DPJFPmeyY
         5T7JuMGMj25frEgfQcV6rGFfR7VwBT04JLICxxQXUKyoF5DbW3eI3SKR421XrOdTBR/9
         dmLQk7NDAxaVpZaW6jYzVa1aXC7tytzopVU9zWmJX1MhAkOrLhUrUmk+PXFCjbbc5gMY
         aXNPsVXydN+wTvcoHjSt3+1MtyojEVT4atsH5f+hpMwI7w2zuBku+GjSuWRRAZL4Bneb
         W+WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oYXa3fZkTVmlMNxXy/pTlZ4t7PnzbIiCXYYU+gJKOSg=;
        b=I54t6EFA7B78P8Q2Z5WfLTXJe4p8lJySm7uEKMuUZUDkenZdBYXUiEeg/e7hKk5wQ7
         wrWIMjz0AvYY4bW9p4xk1+ZMbAIHjawjwYnTKK/Ie3Py7cNskcnL9qSevnbEuJhAQC2a
         qVQmI0EhGB9xPLJGosjrzkqLDQfV1hWqoRw6/yrOSdXIqt1ZWBHPEYZO2igulgPHwMBJ
         6c/IxMlM8tWT2LPMyoj5Ye7hoWfaVjLB5ajZ2GZkI8e0xXafOpSB1sU0XTmvQHS4cTUt
         /PhJ3VdufBK82kWvrzeSgu5FcT4tmr5USk8vyVcHKwQOxMek7aMMulYLNOine/GYe235
         RACw==
X-Gm-Message-State: AFqh2krfjI5JG6cxKwEWeVgrCHgOcVhot3VR0+L9oJX2sFdC+bqbP9uh
        JrAzA6c8rdyk6atUkSaZoIWHCyoyuPR6PIBXc0uMgK/5FDU=
X-Google-Smtp-Source: AMrXdXsELgnJ8aXjVkfv5i83Qn6EeKpikhLe4H3wftoCzWCuJBi+bqQThUeGt7NFZi98IwzP9V2RFBXCgjLGz7nUoWg=
X-Received: by 2002:a17:90b:485:b0:219:720c:29cb with SMTP id
 bh5-20020a17090b048500b00219720c29cbmr3734576pjb.76.1672613492422; Sun, 01
 Jan 2023 14:51:32 -0800 (PST)
MIME-Version: 1.0
References: <20230101184651.807900-1-dmitry.baryshkov@linaro.org> <20230101184651.807900-3-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230101184651.807900-3-dmitry.baryshkov@linaro.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Sun, 1 Jan 2023 19:51:21 -0300
Message-ID: <CAOMZO5AaEb9dDF_mLusSFPFVGBMiapMEfaGa1C5S4asexpFoZw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: imx: Add support for SK-iMX53 board
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 1, 2023 at 3:46 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:

> +       mdio {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               phy0: ethernet-phy@0 {
> +                       reg = <0>;
> +                       device_type = "ethernet-phy";

I forgot to comment on this one in the previous review:
 device_type = "ethernet-phy" does not look like a valid property.

> +&vpu {
> +       status = "okay";
> +};

This can be removed, as the vpu node is not disabled in imx53.dtsi.
