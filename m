Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 055DF661A1F
	for <lists+devicetree@lfdr.de>; Sun,  8 Jan 2023 22:42:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233690AbjAHVm4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 16:42:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236199AbjAHVmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 16:42:51 -0500
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35DAAC740
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 13:42:48 -0800 (PST)
Received: by mail-qt1-f181.google.com with SMTP id jr11so6495243qtb.7
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 13:42:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kBkL4MHOVQ4rqedtscgtSMWgLgbMEwYAlkY7tNqlYFk=;
        b=kJm/DLHXAInzLSSh8S/DTLJrSL2zGH1dqYtqKpIvVp+owAcRT/RuyoYImz2ZlHj8ON
         6Ufw87AnTGxO+ggUrQLsUHBVACaGun/JbWHw8LG9BdMfbDP1fDlcRN+KAPsiKYzym70o
         cutn6O4+rohJzCeNHLEDWQvxhtRuXdQ9mBSp0Ju7IC2eya5XBi2sY5VU/PdTg3fKj/SV
         2NsRIffNSknPyM2qMR5+/HRzIuxrPVOE9Sqra1b5lPqfJC5yBuloy0hCpxQD+Ra0RStl
         BhBvCZ0s4gbK7hXbNbN8c1cBEVBoAFjR5sLaidoV+Ogrbv75buOx8rQzff+TljeSZpjf
         J7mQ==
X-Gm-Message-State: AFqh2koky18x0IE3aT95sRJ//lCPiJbmVNvaMFP+/MbSVWFEaE0/C1BE
        XEPpv6ITimllUu7+ii4hBw==
X-Google-Smtp-Source: AMrXdXv/ARPMaf5G8QtdMZZRttYUIZJobJ/fyKMYXm+aic6+H2yV2nopEZ+HB6l/ccLzmAMiF3ay8A==
X-Received: by 2002:ac8:74cc:0:b0:3a5:306f:b124 with SMTP id j12-20020ac874cc000000b003a5306fb124mr85482350qtr.10.1673214167300;
        Sun, 08 Jan 2023 13:42:47 -0800 (PST)
Received: from robh_at_kernel.org ([2605:ef80:80a5:9b51:39ae:24d1:33f3:811e])
        by smtp.gmail.com with ESMTPSA id h4-20020ac87764000000b003a7f4c69334sm3670099qtu.24.2023.01.08.13.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 13:42:46 -0800 (PST)
Received: (nullmailer pid 318622 invoked by uid 1000);
        Sun, 08 Jan 2023 21:42:42 -0000
Date:   Sun, 8 Jan 2023 15:42:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        ob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH 2/2][v3] arm64: dts: imx8mm-evk: add revision-B EVK
Message-ID: <167321415947.318525.17558598400883919553.robh@kernel.org>
References: <20230104130511.1560237-1-johannes.schneider@leica-geosystems.com>
 <20230104130511.1560237-3-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230104130511.1560237-3-johannes.schneider@leica-geosystems.com>
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 04 Jan 2023 14:05:12 +0100, Johannes Schneider wrote:
> the current EVKB come with LPDDR4, and a different PMIC
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 132 ++++++++++++++++++
>  2 files changed, 133 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> 

Acked-by: Rob Herring <robh@kernel.org>
