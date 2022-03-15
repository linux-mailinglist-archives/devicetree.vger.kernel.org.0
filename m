Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 043154DA236
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 19:19:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245389AbiCOSUp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 14:20:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235913AbiCOSUo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 14:20:44 -0400
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A48715A099
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 11:19:32 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id q1-20020a4a7d41000000b003211b63eb7bso25275843ooe.6
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 11:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=4IEVr2/1gmxz+oM90fTexwyYRQMcLIoaK4jm7NRfQlQ=;
        b=FNl9ikIv1DqtHmS69pAApjaDZQ9Fz7pb2R35X2MRHlbMB+PbGcrEcdGg/0/T5Ngz7c
         /TXMQPH+4xzB/K+TlKxuQuLegBdmzE6dmfwBQSb8qQ9HmYOkSFcgLvHXY4wyoB5lOLwg
         WjyHcHYfRULGP0T0PxmQV4NvwJBeeLjJzCeRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=4IEVr2/1gmxz+oM90fTexwyYRQMcLIoaK4jm7NRfQlQ=;
        b=mJ3NBJMocAZZnK8zQd+jjKaoDLkrt6CyMQKBHtAbvCXMx7mdEcjMKe25T0pszZkR8a
         I9Nc+2XLmuupbp3HEMs6apcnxyIs2PfkQ73oq/pNlmxr9ejlMja/+aqCXc3Ylv4VsVMh
         ndnY0V4ChtHwTconLX/rne2nzIPxIKqS3lQSE9X14x2fyv5xEH5s9uwU2QkUA19U3IUc
         8L1iEi/K+ho3M9Xyk/5R5sjWbxO3jjOEEWMKXTMbL0eiTtJeDa8ObsVqxORA49t12iME
         MFgLeu4daF+83BR+0ATZFhSMZbob31V+YnSrjOPDXTDIWP3nj5FCqPSEis+ZsC06SxU+
         8dxQ==
X-Gm-Message-State: AOAM533XZrjllq9sCLJe2isYTm2eA3PecYxFbf4lOZMrPooIJhGLs5s2
        dljwMJZjNIs7qrx6HqqYr+MRri9msWatwizSNrKOFQ==
X-Google-Smtp-Source: ABdhPJxIBr0uQ0VDrctXdxeshiyHfGexxl3DQxRYwtQ5R/HWtKD2D3bvz5ZVe3ncqnb/4N7AD2HjXN7/rM/6cuHlqqg=
X-Received: by 2002:a05:6870:c0cb:b0:da:2bcc:aa09 with SMTP id
 e11-20020a056870c0cb00b000da2bccaa09mr2128832oad.63.1647368371730; Tue, 15
 Mar 2022 11:19:31 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 15 Mar 2022 13:19:31 -0500
MIME-Version: 1.0
In-Reply-To: <20220315173042.1325858-2-gwendal@chromium.org>
References: <20220315173042.1325858-1-gwendal@chromium.org> <20220315173042.1325858-2-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 15 Mar 2022 13:19:31 -0500
Message-ID: <CAE-0n51+Vyco+drQzF79bE06_UTKHHc3J5Q1wMvxEntqEBpyug@mail.gmail.com>
Subject: Re: [PATCH 1/7] iio: sx9324: Fix register field spelling
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-15 10:30:36)
> Field for PROX_CTRL4 should contain PROX_CTRL4.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>

Any Fixes tag? It's a typo though so not really a big deal.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
