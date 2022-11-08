Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D3A2621481
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 15:02:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234930AbiKHOCN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 09:02:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234960AbiKHOBy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 09:01:54 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4942268291
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 06:01:53 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id f27so38872978eje.1
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 06:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=L7nl5lQt3BtRFyNK7IkAchdMRyk+9zHRzSrbcY6TD8c=;
        b=l3XRs4BBknDJDKcETah7sUuEbPcdxn4s2yZW7N6Rbv4y2svECGuzeyIELoGPYUGPL/
         ovpSS4xTGv76X/FvVvf/NLN4iFUDalLixA+D3efiUbXDlVeEdcm9QKbsF89TtjI4/KOA
         VGRRHbC0LygVfkFP44M6QvPmTUkp6IpkiDLT9R+My2Z2CK3Gi7UW0VjrcMwDgmahljlY
         GIiqSuO4H1Y9kk1JjqL0v9pdOSidPEZPWeXSLSZ9ZovmUC587W1cybF8Yvo/pj7xrI+X
         kB5p+bdGUpZRRqt663wVP/E4rk3/elYWgzMd3O/X1kPydbkiZ2DCpJD4dV8zsdxZzluH
         nQmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L7nl5lQt3BtRFyNK7IkAchdMRyk+9zHRzSrbcY6TD8c=;
        b=Zj4TLReYTP1ElhrXPOoRcvLE9FAfB4P2MmVcVFVW0oWTt3uefuH0qExISClmo9Qb/b
         V9KO4erVPH9/a6j9zjTmSQbcXFY2sxaTlqkSsoDttlFj5P2Mcq67QfqR4svD9s2wWS58
         RZ/2nMdWwqyF/8fWdGFbQ6ouEmoZPEduYhl3vjO54YqZpMB2xYDe3OIgCLxjQNSCbWZq
         mS/nDL4GSminnh5xY4g/bKcByyUoV1+VfnPqkK9QVQj190HJd6iB3sMXi1Fwem0pQSIj
         UoTFlon2jgyhZACZC71LoEhCrJyCRzYR3q4IMTwSMOlPQ00t33nfBAVLPqM2W5c9Hy90
         W7fg==
X-Gm-Message-State: ACrzQf1mW9sGv3sdTvMS1dP2oa1IgE73KgMF9RZgck0OnvPvSd2DBS4Q
        ghByN5nD/ipxXKyI8mcdU2LC7TPxftt1rsVtYqoDKg==
X-Google-Smtp-Source: AMsMyM6OersG+l3AkXV9lPpbOJTXe23AD2+kpKtn+WjIUc+U1IdpyJbjtgntS1SWh/nhgtfEvq6Url57kdNjqLqNAm0=
X-Received: by 2002:a17:907:c1e:b0:7ae:31a0:571e with SMTP id
 ga30-20020a1709070c1e00b007ae31a0571emr21276844ejc.690.1667916111765; Tue, 08
 Nov 2022 06:01:51 -0800 (PST)
MIME-Version: 1.0
References: <20221103141155.1105961-1-jagan@edgeble.ai> <20221103141155.1105961-4-jagan@edgeble.ai>
In-Reply-To: <20221103141155.1105961-4-jagan@edgeble.ai>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 15:01:40 +0100
Message-ID: <CACRpkdYEW4z6EZ7UC9wT3NtRVnE=0L6AAHJDxtu5Jb-UrB+WSA@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] drm: panel: Add Jadard JD9365DA-H3 DSI panel
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 3, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:

> Jadard JD9365DA-H3 is WXGA MIPI DSI panel and it support TFT
> dot matrix LCD with 800RGBx1280 dots at maximum.
>
> Add support for it.
>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v3:
> - updatd to WXGA
> - use JD9365DA_CMD_DCS and JD9365DA_CMD_DELAY

My comments on v2 have not been addressed, for example I asked to
remove the delay from sequences and just use an explicit delay and
to then use the existing sequence sending macro.

Yours,
Linus Walleij
