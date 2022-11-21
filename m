Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DA17632BF7
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 19:20:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbiKUSUd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 13:20:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbiKUSUb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 13:20:31 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F963C76B0
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 10:20:30 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id y14-20020a17090a2b4e00b002189a1b84d4so5643891pjc.2
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 10:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rUvU6OEfSgOgV90lNE3OyREzRIMADu+N0DuF09M2GsU=;
        b=SgPkuMF1IJePZ4kDlRVVEA1//qeMWY6/d1jeHFNWADKG121aZfE1BFujlvCNdfZWdk
         06Cfk5rcY9ULQhTkMePwP0Z4gfB4qbW3D9idqcBiCRnELk48IrE6ZBoINn94+a3GPCgC
         NVYeLbw6jUuhACSDWLCr3+Ql7HE8uhV3uDLHsPRNuvL6zSxUo9BJiDIc/W/KcCugBPx5
         L0+xh175q906enpGR71opBGd6OMaubX1WzZfGPSIlgKInbRbKoVCVLfQKQTZFi2hITza
         NIpZB3ZkKH574Y6OQpmTmJ3ZFsiVUD7PFfPowhfS/U1Y6figkt/vtTIe05NMNvVGtt8f
         5UZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rUvU6OEfSgOgV90lNE3OyREzRIMADu+N0DuF09M2GsU=;
        b=OgmhbU6vTTusYk5b7ramz1SwMSNootLPxyzzXFKoEtMwdJtoinylJVh74Tf3LJyP0F
         un8dxImwzasWJQHmeRH2GCL8WnrwAmjDevtDAsh3Y84qkLyhQfZ+H3E29/oGKQh/4lEo
         RN6OA9OlBSpbTTwT+I1pvlpNxSGHhdr5UPZqYLQbO383mHm/sA+Io6uAXN044i4re094
         dVGBXhfaeYfBqsVLUKsdhJh6NuT9HBur2uTS/V2M3NnoNM6rReqVRvkVVFla2XRuP41f
         sh4SlAP1B1YJ+PCgw7wNf/zYG42dKDW4/UeaKBSMSVbUGXV8aZbb2C7ZraRXjoDfHWwm
         6NJw==
X-Gm-Message-State: ANoB5pnsFc1XyfnXc81AHxuUA0HxvfeGXtpTVgDO5MSWo125F7K0e9Qa
        7d1znOmN0v3izvU1Md2GqXd16A==
X-Google-Smtp-Source: AA0mqf7yyP1/YcozCO+5/Ps6F02tyWRvSUU8z+Ribfe8dzDyGQaPbidQBPZAtOYeirhiKku32is/WA==
X-Received: by 2002:a17:90a:7e87:b0:212:f810:a846 with SMTP id j7-20020a17090a7e8700b00212f810a846mr28500649pjl.71.1669054829597;
        Mon, 21 Nov 2022 10:20:29 -0800 (PST)
Received: from localhost ([75.172.139.56])
        by smtp.gmail.com with ESMTPSA id d125-20020a623683000000b0056da8c41bbasm8956905pfa.161.2022.11.21.10.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 10:20:28 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Bernhard =?utf-8?Q?Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, mcoquelin.stm32@gmail.com,
        alexandre.torgue@foss.st.com, matthias.bgg@gmail.com
Subject: Re: [PATCH 1/9] pinctrl: mediatek: common: Remove check for
 pins-are-numbered
In-Reply-To: <20221121015451.2471196-2-bero@baylibre.com>
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-2-bero@baylibre.com>
Date:   Mon, 21 Nov 2022 10:20:28 -0800
Message-ID: <7hv8n88903.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bernhard Rosenkr=C3=A4nzer <bero@baylibre.com> writes:

> Remove the check for the unnecessary pins-are-numbered Devicetree propert=
y.
>
> Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@baylibre.com>

Acked-by: Kevin Hilman <khilman@baylibre.com>
