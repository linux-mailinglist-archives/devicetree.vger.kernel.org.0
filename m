Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5A20427367
	for <lists+devicetree@lfdr.de>; Sat,  9 Oct 2021 00:08:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243533AbhJHWKm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 18:10:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231819AbhJHWKm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 18:10:42 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64E05C061570
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 15:08:46 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id w10-20020a056830280a00b0054e4e6c85a6so4315361otu.5
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 15:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=eRM/GW7Nz2OFw2k17twQGnIo0wF+tOa2AlGFVMS86EM=;
        b=F0dXedi0IAD47x8czJsAGMXrivcfwYxv4pkmpOdt840ykD/TvJNwmnRHgY3tYnVuAV
         9rK2pF290E+2PCT6YQz0gOaYFRhycaDZZi3lAmei0A1L+wMl7EC9I9SmUT7P9iA1oLcA
         sRYqEVqquRbwepfOiBt6WkbATF8yFjWaMxQ1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=eRM/GW7Nz2OFw2k17twQGnIo0wF+tOa2AlGFVMS86EM=;
        b=mrMubHzB/Ed9yXmNnDiEQl1sKNNcEd9nog9TFH4Jn8qupPe1k/zshB+Wjp0+jUP1VW
         Peacywe750nwxrb7L5pknyadJtp8XdErdrAhKibV0kIwWFpH3ccx9TorqcTfnL/B++/1
         vJvj6l4U07EMo554adphHWAPaUhCb7l27UBM7ym6TjDbZL8G5TKPtYXOr1U6IEr9MR2H
         dx/gzjfLjXVqdXFrEf3RzXA+reXF6BAJ6vnxlp9sTh+bR5d3axmvezWN41zQ3Mkd9FMD
         cMnTidG8HA32v3VP8/enTzgcRAkB8JOxs+I3woBF0NG4m7KG8ENpCQGyZsIeAsIboUNl
         AB0w==
X-Gm-Message-State: AOAM5311jyM3X7C8v0GIwouxFq3S+8EvJrIKcqMVBeqTu+ts4tyt1Jln
        KWIwsNqWRhFRoXwtnqI62JAfQi6Fc5JIj79tvWslWA==
X-Google-Smtp-Source: ABdhPJz+XzsxfBUPNSFtRuDtmegWrFGX/Yeg7TOOT9hLgVYsP64+/r5mtnoQas58CTF5G3R7gSZlZ6JOVqs0ba2v9aE=
X-Received: by 2002:a9d:12f4:: with SMTP id g107mr6848914otg.77.1633730925558;
 Fri, 08 Oct 2021 15:08:45 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 8 Oct 2021 18:08:44 -0400
MIME-Version: 1.0
In-Reply-To: <20211008113839.v3.2.I187502fa747bc01a1c624ccf20d985fdffe9c320@changeid>
References: <20211008113839.v3.1.Ibada67e75d2982157e64164f1d11715d46cdc42c@changeid>
 <20211008113839.v3.2.I187502fa747bc01a1c624ccf20d985fdffe9c320@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 8 Oct 2021 18:08:44 -0400
Message-ID: <CAE-0n50UhQ75iDcdVDu6V6jv9tXLsyaW5NRJ6i=caf0uMNcueA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: sc7180: Support Parade ps8640 edp bridge
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>
Cc:     dianders@chromium.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-10-08 11:39:35)
> Add a dts fragment file to support the sc7180 boards with the second
> source edp bridge, Parade ps8640.
>
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
