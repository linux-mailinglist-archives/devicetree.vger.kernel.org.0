Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BE214E3944
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 08:00:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237172AbiCVHBL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 03:01:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237190AbiCVHBJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 03:01:09 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C2A8CD4
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:59:42 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-de3f2a19c8so926801fac.1
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=wQMNwE6ESbefTgDmxoPtoyYCOs9JLJxTZo6KLlBofKg=;
        b=WcHtNu2HY7TrdDJ2An0AnYW6M1gQ5Noy2TVf/PCNETnmI2NVyMsDw/nSgVtJvR0heQ
         NFbJKBzwW+SjCJHgFt/BQtww7Hrpj0pAt4nxWhvfx77j3yhlKFGVDTM+kQ/VotU/5sIk
         lvqjdm4GR0FlIS+F4Ki3jv+nUTFJcaagnlJ20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=wQMNwE6ESbefTgDmxoPtoyYCOs9JLJxTZo6KLlBofKg=;
        b=r1DwMpU40rRLo7vgVPcmg8TkMb1htVP+0oIdqdI7qbslEw8JH3yGG+dg52Nv1PYY+W
         IT6zKrfq5qPLwemix4+FTmsTDNj38+gahMT7xgqtwTk6iamgZivtiYUrZijXVavT6k9c
         bKLf5SmjiMklGJh0Pdpwl8RtDFVhNIa6r2Khi4zaabZcNMzdt7XFJDnDX3/2g6+ID9xl
         bye8HmJyv5Zr4kcu7ThK0L4AmI2QOlpFvBbWllzMuly0RJBLHU1lzNVv3Yo3R7UW+/jA
         v8qrxKLKMdZT7xb/+hORvAa6OL92Koba3NJHqg28n0/A3mcmE9lET2TiFOD6++Y2eyr4
         XBnw==
X-Gm-Message-State: AOAM530hAy58jRjqLXr/cV6/t2r0uLCEU7UM1bqWSxyNV4rFTtdbM9cs
        9CW7PCnlrr9bkzVIkIiWekmH1nX1+ccdZ21MJSlR7w==
X-Google-Smtp-Source: ABdhPJxB1UIm8oVmNew/LJfSg2xbqHU6waLiizgbaQ+1iECMDsLYMKm3npS67bnr1wUvG4Yr7XUUWrsN4NPTTwY+FqU=
X-Received: by 2002:a05:6870:46ac:b0:de:5d48:9d27 with SMTP id
 a44-20020a05687046ac00b000de5d489d27mr5596oap.63.1647932380579; Mon, 21 Mar
 2022 23:59:40 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 22 Mar 2022 07:59:40 +0100
MIME-Version: 1.0
In-Reply-To: <20220322062504.1019504-7-gwendal@chromium.org>
References: <20220322062504.1019504-1-gwendal@chromium.org> <20220322062504.1019504-7-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 22 Mar 2022 07:59:40 +0100
Message-ID: <CAE-0n52PX3ds8pqiSWRfCOg3L5cZ9=SViKYG=xciMcpmu6=Qfw@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] iio: sx9324: Add Setting for internal compensation resistor
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-03-21 23:25:02)
> Based on device tree setting, set the internal compensation resistor.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
