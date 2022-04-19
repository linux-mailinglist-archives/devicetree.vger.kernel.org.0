Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF61506D0A
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 15:03:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239056AbiDSNFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 09:05:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238368AbiDSNFj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 09:05:39 -0400
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 131FA377D6
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 06:02:57 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id bj24so12554114oib.11
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 06:02:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=qv/oyZZ1znyqLPpIkj8Lq4GR6l5XQoJYLae0bdGpW6U=;
        b=HCeUgNlmkdBc+ODYHZznMKMF6HpXmi4KRKcQUPwwUikc0B0BwcG8VoeyEkJWOdwoss
         duo3RfP3Tod9puvoOPAT83torN9AoXcs2ac9PjkJOhwDU1Zoz5ecuDe6djaoeigO0c8C
         R/Je0w7jNeqIpjNqUJxka5fmkQj9m+rcK2qni/60pZUSTw4Ut5EIdn625R0B0QMw41go
         eszm58vyXQmk19+EqfF8X3pOGgKIXs2daG05h+wGJiDTLwntPupVu7hrMRr+NMKG5Vrr
         9O32b+SZwbfG6mlH3TS5nmlUajREIDyN+7o3osZOVnZuxj44KNNCcyLtPuT3L9imZW9A
         SjyA==
X-Gm-Message-State: AOAM531Q15/WglAFTP/7YbqrXB1xJHanwOe8ii3uGnraaAYIQyZfnCUV
        ELi6fEeh/+DPNK54M+Cu+lU62WQKRQ==
X-Google-Smtp-Source: ABdhPJxPIXrdg+d4CyLvkBcQkrQEO5P2D9nZoaZikGfuWr1ZRFOGI9EWRFqKPu3oKf+dECcRBDS/iQ==
X-Received: by 2002:a54:4489:0:b0:322:5e01:13e6 with SMTP id v9-20020a544489000000b003225e0113e6mr6829355oiv.102.1650373376330;
        Tue, 19 Apr 2022 06:02:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c14-20020a4ad20e000000b0033a371fa815sm2767762oos.37.2022.04.19.06.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 06:02:55 -0700 (PDT)
Received: (nullmailer pid 2228590 invoked by uid 1000);
        Tue, 19 Apr 2022 13:02:55 -0000
Date:   Tue, 19 Apr 2022 08:02:55 -0500
From:   Rob Herring <robh@kernel.org>
To:     Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] of: overlay: do not break notify on NOTIFY_OK
Message-ID: <Yl6y/22XcrRTaQJF@robh.at.kernel.org>
References: <20220404074055.95618-1-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220404074055.95618-1-nuno.sa@analog.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 04 Apr 2022 09:40:55 +0200, Nuno Sá wrote:
> We should not break overlay notifications on NOTIFY_OK otherwise we might
> break on the first fragment. As NOTIFY_OK is not zero, we need to
> account for that when looking for errors.
> 
> Fixes: a1d19bd4cf1fe ("of: overlay: pr_err from return NOTIFY_OK to overlay apply/remove")
> Signed-off-by: Nuno Sá <nuno.sa@analog.com>
> ---
>  drivers/of/overlay.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!
