Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8854F4E7C07
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:21:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbiCZAAC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 20:00:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbiCZAAB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 20:00:01 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC6CD5E168
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 16:58:26 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id z9-20020a05683020c900b005b22bf41872so6607182otq.13
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 16:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=oEAPu3kqCzPDjpRiQu2QoVcgItEi89b8UR0caW9U3wU=;
        b=Am1W1DHZZhYTDDy6mSDmjkUPTRQgeyAyRDXHuhMK3OOx+b7KFsW6JK5moXcHcMo+1T
         Ad60xUl4KDdchvVSSjG5Jk0xT1CRvmgVPbF/VSMdir2JV0M2IfvzDYsPLMIcOts7XMG5
         Rqi+GG6fWhyu5zCfn9O7YtYzQwQyt20ZKBzkU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=oEAPu3kqCzPDjpRiQu2QoVcgItEi89b8UR0caW9U3wU=;
        b=CU5ZQizf55amvcTyIUwneEp8MxbZcn5fIxNiN0YYNYbT2P9o/C1dFfB4bWQ+LIkJeM
         Flt2hRO+DO5NV0LSok8dZUD819Zhmfy0WJN1GXYp3zn8p8fqtnSrEMSwHDB1bKQj9sew
         9I0WANHacFCeLG41fEOSKlrPcW01SmIsd38KcLcjpmaqZ9Na97Er+zNk5Try81Il1THB
         PPutSGbAljuFH6o4ocjJB5LnUOPn9oxzPe4WdcDGgbErv+NE3K3Cabb2BmTBmqSAU/S1
         YCrvAtc4qdJ4iIj8bn2i6+auLnYFqcdsG1OJbllBHQw7k/lBE6XynBZCfLX8rOicmEO1
         6olw==
X-Gm-Message-State: AOAM5315t1m5v2Bh2Kk3OgWTZMm2shS7hZRe2jdCsEI73kX4oHmx4FXM
        J/Miwf1BWgxPtLor8fuoq8xFcToNYpOME/c5m54HVw==
X-Google-Smtp-Source: ABdhPJx2hcI5xF7G4bZWFQCj7Q9C0/U3BwzIq5515vfjYuVQ4Fe2FoMtK9M83R6v/iIkAYSxyv96Qg2U4zi1c/HYnT4=
X-Received: by 2002:a05:6830:61b:b0:5cc:e44:7dc3 with SMTP id
 w27-20020a056830061b00b005cc0e447dc3mr5543161oti.159.1648252706040; Fri, 25
 Mar 2022 16:58:26 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Mar 2022 18:58:25 -0500
MIME-Version: 1.0
In-Reply-To: <20220325220827.3719273-4-gwendal@chromium.org>
References: <20220325220827.3719273-1-gwendal@chromium.org> <20220325220827.3719273-4-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 25 Mar 2022 18:58:25 -0500
Message-ID: <CAE-0n52fTj5-EKx2wF6ZO58S1ooaDPfnygyWH3+Z7ZG-txt4Jw@mail.gmail.com>
Subject: Re: [PATCH v3 3/8] dt-bindings: iio: sx9324: Add precharge resistor setting
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-25 15:08:22)
> Allow configure the resistance used during precharge.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
