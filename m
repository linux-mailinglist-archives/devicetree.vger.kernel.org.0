Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17E604E3936
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 07:54:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237063AbiCVGw2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 02:52:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237045AbiCVGw1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 02:52:27 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC9622DCF
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:51:00 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id r8so362118oib.5
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=QrbBYOLA9ifSEP/uvpbhaqBxiOrq+G2Kyb2zf7z7ANs=;
        b=geYdgU0DJ/v5LE7OmyCm/f0ayfPQX8kbx7A3QKvBHlqm/D+guTGxs1yvTyMuq9WdSL
         WHsmW7hW32i1gSk0kaWqGvcZlpSCygyOeqKKQD5gEA4Xqc41+2Qlp7fA95XwZ6ttRSbT
         xXDv3U/lWtuiIX4XyujAgsmxeLl/DsC9zFhiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=QrbBYOLA9ifSEP/uvpbhaqBxiOrq+G2Kyb2zf7z7ANs=;
        b=TWR6pBVc+/6UHDMvnWYfajmltjB+GwvAbHG1lqYoeI67djfYSpdIAtWXYIC5DToCJa
         15GwK4EFej4pyrbqW4J0nyVSfq4Gwj3WGmYc0xi8/zCZ0oRDGJDJ4RHu/xg/vE2Cl090
         ixIw1baRcNsYR0pvpNhzVHfxtP8jn+Ko9E1Zi54qO4UqIjNIwDZkfSbYoHEoirIzooXF
         yg7SS5IEesMEWaOnPVYFmygT2KllJJd5jAY3VZCqtfPpt3MWjkNfi5/zynJjd1WKLynE
         1fvA3TDmONRtsqKW2aVnLbZXYHpk9g1oOEhia+unEXI+FyCoXQsNPl8dAK/Fb96V9Uk+
         TycQ==
X-Gm-Message-State: AOAM530xvr273foi3UNxhw8fyGmnaHranqqEwmRFUTLhIknZ5EW0DtxC
        cprNnF5PAPY/28Oy34RmTp2xUuCxLEGvsMSnYeCsi6qJ++4=
X-Google-Smtp-Source: ABdhPJwLY0Rbcvg23sepDbfePMByVRNH79Xehhp2Q5o8mywLFsuYHBi5FM1Rvr4oUqYcDMNs56OTbQjwEbZxmCgS6Ic=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr1254431oie.193.1647931860140; Mon, 21
 Mar 2022 23:51:00 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 22 Mar 2022 07:50:59 +0100
MIME-Version: 1.0
In-Reply-To: <20220322062504.1019504-3-gwendal@chromium.org>
References: <20220322062504.1019504-1-gwendal@chromium.org> <20220322062504.1019504-3-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 22 Mar 2022 07:50:59 +0100
Message-ID: <CAE-0n52LLdYf7ZHVZ1JU2xjzCX2RbMacRWbxa02i7jOp=C95_w@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] iio: sx9324: Fix register field spelling
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-21 23:24:58)
> Field for PROX_CTRL4 should contain PROX_CTRL4.
>
> Fixes: 4c18a890dff8d ("iio:proximity:sx9324: Add SX9324 support")
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
