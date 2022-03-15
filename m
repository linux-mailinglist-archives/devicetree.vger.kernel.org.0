Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8F4F4DA3AF
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 21:05:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351540AbiCOUGx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 16:06:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351483AbiCOUGw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 16:06:52 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EC6B56234
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:05:39 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id z8so485209oix.3
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=/o3xropamkzFBKoPxtFZcdplai1eBlHVrBe67ySlDPw=;
        b=JLsHnoJ1+BP7StMAJyFdbBu/1fjFr9cuCKBxFd4S1z/X3eH2LsIbcdWp0pnymDHOkb
         decoFea4hQgZNycvQeJRtOCJXk48+DqXeHoK08LV7/kW2DISenIpiDRQm5HZHG9PQZGV
         wqYHWL+hN7+jOGU9daeOM61ccLYopC/WuhxrY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=/o3xropamkzFBKoPxtFZcdplai1eBlHVrBe67ySlDPw=;
        b=Jw9ISeDjMUitE8ZjlO+8gYmDr650IqcUZdOd4f6G6vttLJt8lwQKobYpQxJq+l6NB9
         1BEyJkeBWKBlmE65ilc8La2VS3oD86aeUBJ7SFges2Ifk4pGVml0xc7Roed3/nwyM9ep
         Cig7WrIMnlxkV3+A8a+5CcO0hj7Cv/4qEWkB3d+LDXUbQJeqDeIfk867mdEupbXNjfha
         9DsgtCQlfHm1i/nzz/rGlXCOLUUmXhsC3ns8edZX2pwA7LVpFGxWz9yWQkgXxC/7cERl
         vCvd/fyocE2GnMpI4brVdFUM59fVWSSweAOgE6VYikR34JFJIvHBm7vaMVhFZoYJlM+1
         GWUg==
X-Gm-Message-State: AOAM530aC3qiqwV5XG4K5QtLAr1qbPbeWpjty2mu2xkcAgtPF5ueQq0m
        AuCu9wopA4toXKULt6wTj+IbhQC+eAl4rcDA8RUs2g==
X-Google-Smtp-Source: ABdhPJzwxMSXgtiNKaV9w6N9EEl7NomfZoRdCu1gupIWYa8T+jMIeBOYHIntW0syvZTNE6KreyPn0CRVNQztgox+pOo=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr2347731oie.193.1647374738637; Tue, 15
 Mar 2022 13:05:38 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 15 Mar 2022 13:05:38 -0700
MIME-Version: 1.0
In-Reply-To: <20220315173042.1325858-3-gwendal@chromium.org>
References: <20220315173042.1325858-1-gwendal@chromium.org> <20220315173042.1325858-3-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 15 Mar 2022 13:05:38 -0700
Message-ID: <CAE-0n52Lp9-F_DxHrb1aMQaiSU2qpuW6jKCp6qQ8FXyJ87WApg@mail.gmail.com>
Subject: Re: [PATCH 2/7] dt-bindings: iio: sx9324: Add precharge resistor setting
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-15 10:30:37)
> Allow configure the resistance used during precharge.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---
>  .../bindings/iio/proximity/semtech,sx9324.yaml           | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> index b8a6ee16854ff..cd8ed50f2882a 100644
> --- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> +++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
> @@ -126,6 +126,14 @@ properties:
>        UINT_MAX (4294967295) represents infinite. Other values
>        represent 1-1/N.
>
> +  semtech,input-precharge-resistor:

It is clearer when the units are in the name of the property.

	semtech,input-precharge-resistor-kohms
