Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 672364F6A54
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 21:47:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232689AbiDFTtw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 15:49:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232718AbiDFTtU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 15:49:20 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 125D01B60C5
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 10:15:04 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-e1dcc0a327so3651591fac.1
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 10:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=VUvsFRXdnODZKGcjXacP5xYly85SJLsHolRi3GEeMEk=;
        b=IqM2gvqJXbSlwCZ1nCGiMNaV/V6154o5ooWajrySKFselP+9HKRphA+lFCn/oafPND
         UDn3skfeVIgCcrjxhMVOlvknPPif6tj92+f3KzyoDd0fdd/BeDh8Z4Th/3YE485zf8N/
         9esvOEeeEsN60sMpsShkaqHQ6QCok8BFunYzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=VUvsFRXdnODZKGcjXacP5xYly85SJLsHolRi3GEeMEk=;
        b=OXDnIDhhcH8Ky38ik9enLSppATy1oPkL0ORLFHwI7LDDEjzE6JY7vKENreIkWDy9HV
         fjxTj6BogRHfldut9F8v++E+4NHYLO1VzwWkdJx3fT+TqV7rtuXW481/M1tk4Nylc18I
         HP3qIxJOuP1FMaLRVk9uvKy+MtrQ09ZdzmK9qrPGOheJljBwnHCH4MndE8SGxn4UrmPS
         MLL2tzE3CxhcvIyKVjnbU3pRq22scqWXdo0a7O3Tokcwcv8/qR/JNFAFiZeca5DsUGl8
         CFrr+oMeRjXPn2bOgdILtSCO6ORx419QGk++2/PYC8+XDRTNJOHO3OgC3c1oiHFXJ1iQ
         ATHg==
X-Gm-Message-State: AOAM531LiyZBhAIOQ3TIC2p4nKLKMHx/3IRu6VE3aGrNa3CfspuV4zON
        tzX5k3hwNE/yYZjeGyenJwzNjqhXUCaS6xjzvo549w==
X-Google-Smtp-Source: ABdhPJyWCnoJLM+mVOZDkUB1efFITw4rk4gh1nxH/vK3Drg2ciT/91mIGMSekik/i1CD2tE9L98UNQUdSHR90D2XfVI=
X-Received: by 2002:a05:6870:e314:b0:e1:e5f0:d777 with SMTP id
 z20-20020a056870e31400b000e1e5f0d777mr4239864oad.193.1649265303091; Wed, 06
 Apr 2022 10:15:03 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 6 Apr 2022 10:15:02 -0700
MIME-Version: 1.0
In-Reply-To: <20220406165011.10202-7-gwendal@chromium.org>
References: <20220406165011.10202-1-gwendal@chromium.org> <20220406165011.10202-7-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 6 Apr 2022 10:15:02 -0700
Message-ID: <CAE-0n52dSSk8QFwGX65j-mWvT7DDcpgOA26mH5v8xuwJ8Kmh6Q@mail.gmail.com>
Subject: Re: [PATCH v4 6/8] iio: sx9324: Add Setting for internal compensation resistor
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-04-06 09:50:09)
> Based on device tree setting, set the internal compensation resistor.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
