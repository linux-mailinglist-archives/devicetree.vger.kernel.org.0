Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F9CF518CE1
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 21:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241756AbiECTO1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 15:14:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241750AbiECTOY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 15:14:24 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01BCE3F8A9
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 12:10:50 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-ed9a75c453so7584364fac.11
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 12:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Lqovqzyrj4FPxzelch4DRi6Pl2EqzvWsu8MI7U4iZa0=;
        b=f4qUVEfoOyzFhZf4oo3iRHKT59e3kQrHMPLGjPFxJwEn415fl+b6exqppPX60fm96w
         ojqVoEwWjN8Ns7JJ5j/NjsE9fq6/mtHlkovkJTPP7RyPHudyA3OKfUp/oHbv+moQhbIJ
         3mvsuc9iHWKxxu2J1bDaKGy8IgHjST0RbqKOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Lqovqzyrj4FPxzelch4DRi6Pl2EqzvWsu8MI7U4iZa0=;
        b=QaE6uREfwlAMm+0xHLVlqv+VoiLhw4KQ4wSsGWUbDZ6V3g3MaTxrCFLSqNAtegSMpc
         N01aSXSjQLQcWCluuU3jTkZvAo+3Z/vqZ/Zs2s77dgXwEMsfa648HDo4EfJKLSxDBnM4
         VAmJlE7eLd6/0DJM8ivH9PKaxlgQBkcTYCcTpR131KG9+Js5zgOQ9BHx6FA+FVS+gTUw
         CvvK0/SKHw+LvPeBNfs5J9Y7QeUqjjgTmxgDmwd8ISmzAC+M7gILgDsSGODazrxt3GFY
         WUyZLQ31lE/GIrgJ2WFoM5mimvL2b+CBUDefSPwBsJesf5c0qjDOuWZHLlShTcfZX6Mx
         ZeFA==
X-Gm-Message-State: AOAM530vG3/wVkeuuL/WOtY8KsOTbX2e0Sp70pkQ2JWI/AR7T+Z8rrBp
        4o2u/BMYiqznyEHKj0hVkGfZcp3xxucGjpEhKorz8A==
X-Google-Smtp-Source: ABdhPJyMNM8SO6j8B7hJfADgjT9GxhSYWURtNqrRY3Iuhd85Iu0eDnTtgsFnYceGWG+mpwAV8GXyjfLFJsrV1wXez7s=
X-Received: by 2002:a05:6870:40c1:b0:ed:9a12:3f95 with SMTP id
 l1-20020a05687040c100b000ed9a123f95mr2268247oal.193.1651605049357; Tue, 03
 May 2022 12:10:49 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 3 May 2022 15:10:48 -0400
MIME-Version: 1.0
In-Reply-To: <20220429220144.1476049-8-gwendal@chromium.org>
References: <20220429220144.1476049-1-gwendal@chromium.org> <20220429220144.1476049-8-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 3 May 2022 15:10:48 -0400
Message-ID: <CAE-0n509DaRxXu2dRd9kVfnd_J8P2A3w=9sdVZ7nx7g199bTCQ@mail.gmail.com>
Subject: Re: [PATCH v5 07/10] dt-bindings: iio: sx9324: Add input analog gain
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-04-29 15:01:41)
> Allow setting the configure the input analog gain.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
