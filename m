Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59DD463FD70
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 02:03:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231771AbiLBBDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 20:03:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231667AbiLBBDE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 20:03:04 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45F91C4CC4
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 17:03:04 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id x13-20020a17090a46cd00b00218f611b6e9so3774505pjg.1
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 17:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tpw6yasw7S31vPMupKVt0K1/ngbUIVusYE1FoPx9x14=;
        b=LQRIaGJOxGLYV9blRe9nmNV76r3rZGH0iYgfthKcp5cCquONyQQCwt92ZTZzuJyzfi
         WYD+FjSg1VPxMgwWWWI4wlVYF3Aqd6rZWbrbjWgAM0RIBvIUzlXGMeZPJSSTpabFn68w
         euCsqw8c7WOhZ+HMCDsSiblEMLhmiofiF3C8+J7OWM1s092r5qbnRaFRAD7Np5DGMXDv
         l0V91ehppWKKMGpyHHFFDuofekf9bTXDaXGQsQ2UbCE2DkBxZPLAPPhP+o26INVcE2DM
         bzP3fcKCsbJ9JkmJDMb/1WXKgJao2e69qRElU7GDZgP8vMR6QMbCRMqbrS/JBVsTRuig
         kzDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tpw6yasw7S31vPMupKVt0K1/ngbUIVusYE1FoPx9x14=;
        b=5H3eQC3YfcFmmkvKwI6RPirPPW7aE0RJJsNFrz7NdcTXlA7Sxc5+JwNpbKm6JQ40OE
         dWtu/RRIsEbXHa7PYTZqx3V9zFPm8DUI5fm2muxHiKo06CdSHhpaIifJqr75P2/t3WSQ
         QNcDnjOK0uCwBN0WWpv4tLKyvNRgZQSAYBFDgZwiOuX9KXY1NgX3hixRvEytCzsqBLos
         dAoM+Gb00sxPg+2EPuWTD/V/7lKlU6YnNGyrN2cR5JGhVZbts71Ih5X0CD/4ianOJM/V
         9zV8rDKIF+ij2+9WohsYRgrblQrfDo62nAIrav1Jf828CGm/PoyQoUqPmNcdEeQULseM
         Qjvw==
X-Gm-Message-State: ANoB5pk6uFP0O3l1MAUb7SVmVxF5Jzl2OcIA28XN+NUomRwUeUwWaFyY
        re62Tp6+4sjymzvPj/fs6hiDIXOgjvLHkbt2gh0=
X-Google-Smtp-Source: AA0mqf4RH88AmiYR53IqRNi6jhilKSAkqCBeFLz27DN97X2H3EtNgibV0YlINLsL3cfSd8CRNYooeCRZ2IaV4zTq2UI=
X-Received: by 2002:a17:902:a514:b0:189:97c3:6382 with SMTP id
 s20-20020a170902a51400b0018997c36382mr18387971plq.168.1669942983639; Thu, 01
 Dec 2022 17:03:03 -0800 (PST)
MIME-Version: 1.0
References: <20221201003109.448693-1-tharvey@gateworks.com> <20221201003109.448693-2-tharvey@gateworks.com>
In-Reply-To: <20221201003109.448693-2-tharvey@gateworks.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 1 Dec 2022 22:02:52 -0300
Message-ID: <CAOMZO5CaP=-Ei4T6WyzjUKMGEaOXvdNp2_pFutc5JeYX=GGCrw@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: imx6qdl-gw5904: add dt props for populating
 eth MAC addrs
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vladimir Oltean <vladimir.oltean@nxp.com>
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

Hi Tim,

On Wed, Nov 30, 2022 at 9:31 PM Tim Harvey <tharvey@gateworks.com> wrote:
>
> Add device-tree props to allow boot firmware to populate MAC addresses.
>
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
