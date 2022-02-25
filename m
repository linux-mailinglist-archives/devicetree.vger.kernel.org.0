Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F9E54C4E17
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 19:54:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233485AbiBYSy7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 13:54:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233495AbiBYSy6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 13:54:58 -0500
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 760451C1ECF
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 10:54:26 -0800 (PST)
Received: by mail-oo1-f45.google.com with SMTP id y15-20020a4a650f000000b0031c19e9fe9dso7447918ooc.12
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 10:54:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VKZjkX6nQSWyEnlM4i4Wy6fhLvxnUjS5u2SI3FXbOG8=;
        b=El2q4nklSTfYk1Qw7FNte6az7ZxlzgjIiJFzl0FLIYUwY7Sn/XdJ24M7Jji3QJUvdi
         m/CKriNXZ0NJZ/qIj7MLNEzoCymUSuyxo3vy0rXbb8DtTi+6ngXnW67BMJhYrAM5NBOv
         33KSDcVVb7Mq/zAptdhtZSI/tFK9eCvqkZLjUH4tNnTIbF2lbTNxP15LM5eg9JW6mr0J
         Pm8ZDoWN9wTB302K0sgoCo2c5eSEC5t8xtlT0a6nGP+rgyb+9lxLIqlxMXcDnN2gTkjB
         ktjKYsNxQibqEcQpVO29i9KkDCI8UKL0i0Zteowjos9bgWxl7usnEpjQ6/PN7JWHeEkJ
         HkeQ==
X-Gm-Message-State: AOAM533dD2sz2+C+prQCelt9l5GKP0wKSdgwj2l7td2+QKEENRNO9GMr
        sS/htLDkOVDuYKDFfkTkHQ==
X-Google-Smtp-Source: ABdhPJwJm8V6j7U2zZWrW8DFlgOuefrkqyl12SJ8xtjyQgSMXgk3MTMmFkY49jQtp4HWqtEDgnQTjA==
X-Received: by 2002:a05:6871:4218:b0:d3:6dbd:a969 with SMTP id li24-20020a056871421800b000d36dbda969mr2029456oab.53.1645815265813;
        Fri, 25 Feb 2022 10:54:25 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id f21-20020a4ada55000000b0031c16df28f9sm1391285oou.42.2022.02.25.10.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 10:54:25 -0800 (PST)
Received: (nullmailer pid 1242852 invoked by uid 1000);
        Fri, 25 Feb 2022 18:54:24 -0000
Date:   Fri, 25 Feb 2022 12:54:24 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Data Modul i.MX8M Mini eDM SBC
Message-ID: <Yhkl4FyaY3534EQL@robh.at.kernel.org>
References: <20220221001738.148257-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220221001738.148257-1-marex@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 21 Feb 2022 01:17:37 +0100, Marek Vasut wrote:
> Add DT compatible string for Data Modul i.MX8M Mini eDM SBC board
> into YAML DT binding document. This system is an evaluation board
> for various custom display units.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
