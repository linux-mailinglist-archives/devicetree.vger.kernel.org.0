Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE53F4AE7F3
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 05:07:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234507AbiBIEHV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 23:07:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347123AbiBIDjH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 22:39:07 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63C60C061355
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 19:30:31 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id u3so1177548oiv.12
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 19:30:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=m7oHOuveJzjB7zvN+hnuLSMzifBzu2e4cvQ37V0Sy9A=;
        b=zKyNoykcWlkOvjq4MXCQFnnpEJpSXjz6mXNsIViMdMi4Re077tJaldvugsVIbDOoUz
         8S0Qa/9u4yMCj1l9nJozv1FaGbtW0iNQJdfarvVxwTD1gpRt/pBoaytm4UBPSe+jGQBU
         HTC//PBNbvwS4oxIzuZ3wtPkSR+zgBgUJX3he32KxOGtC84PS6qHZbwbbfCCl7cKddcm
         VKuhX/gxSXzlBCMD4LwpnI4IdBiZUYjpksgAsP1woDb1oNXUVatk+DP3a/s9xKiVrcK7
         0dKnmO1zLZkrHXfFTXEcne/QpL6TVg1CDiF+qIUOsyYzeC3/0o26aMpYiUC1/f9xtG0g
         FcYQ==
X-Gm-Message-State: AOAM5319ApYbYtEtpjuo/AYpZ9a3u3hRZlLxVDb4XSfX0ejy/AYjqwqM
        ASMm8VTLSRNaExm+X+4ySw==
X-Google-Smtp-Source: ABdhPJwQW+Z7UZFyx5cKb/tU/AIPO7Ff6qsz6P71dMzoL3waysd8bq9+j1OieOPYWxiCOUyE2Qan5A==
X-Received: by 2002:a05:6808:189f:: with SMTP id bi31mr117634oib.5.1644377428874;
        Tue, 08 Feb 2022 19:30:28 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id c6sm6025419ooo.19.2022.02.08.19.30.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 19:30:28 -0800 (PST)
Received: (nullmailer pid 3582798 invoked by uid 1000);
        Wed, 09 Feb 2022 03:30:27 -0000
Date:   Tue, 8 Feb 2022 21:30:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        dri-devel@lists.freedesktop.org, Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 15/27] dt-bindings: display: rockchip: dw-hdmi: Add
 regulator support
Message-ID: <YgM1U+4wqcky0KQy@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-16-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-16-s.hauer@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 26 Jan 2022 15:55:37 +0100, Sascha Hauer wrote:
> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs
> needed for the HDMI port. Add the binding for these supplies.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
