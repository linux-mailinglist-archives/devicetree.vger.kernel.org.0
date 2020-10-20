Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63C9A294239
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 20:38:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437542AbgJTSiN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Oct 2020 14:38:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437527AbgJTSiM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Oct 2020 14:38:12 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FAA1C0613D3
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 11:38:12 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id h20so3107576lji.9
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 11:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VPHy2iOCVRnPTfeb/Xot34qh9SylFH4zQ2qtnuy+mZY=;
        b=d489tptTRMiPFgd13GYy1drjFSbt2x0wlqQlFfkw0IrDKhcEd3aUB54X0/dX9PcAPP
         UToVMTjQ5R4J2HlJ8Hb8j7unmMXTwGtWhVFrXYG5jHDQHZ8B7OM6OQFfsuZYd54lys83
         STxBgKr8Rf9vB4HSlpaSETe0mtLtvJEedL89c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VPHy2iOCVRnPTfeb/Xot34qh9SylFH4zQ2qtnuy+mZY=;
        b=cAMqmGeqbPJKMo+PL055TGNkqbfW6GaQ/YiMDE5pfxzw7mlU/B9lm8yCGgHTImMrwX
         F/SgX/4bJOrW40TD2gU5i/JzskN7nsbUcnlHSp2pHTEwEd1ELIHs+hJ7gKGpraRDTfu0
         rJSE6+ki91C32okDKN4DZplioI1mSMcZaid3TQSo4s8dT+SSehvUsuK+p8xBQvlakZ40
         TPpqVxQ+71C4hPLQFzhAinU0dTOmV/VwJdbGXLHR5jp4grIXHjKgBzjtrmhNFL9URNF2
         Xk5Kh2+WKYOb/i7k+CZtqxKXsUhi2IgcC4npte6wCbQM/hmS9AMKvT3HksKn1wFjofvh
         MtwQ==
X-Gm-Message-State: AOAM533DrM7F385sdyhQ5a0jN8ORGNtl5r4O4DkDDkCF0yTHAGgG96tI
        3RAr6fQqbZ2glPjn2qXR/LS5zM3Hze856w==
X-Google-Smtp-Source: ABdhPJx63Y04j/WARtylopr0YXoMH6+ZbOb3U53II5XR4MhCZ/Eh5kxkDtNQMkmX2MJqEsrIB3XCMA==
X-Received: by 2002:a05:651c:1119:: with SMTP id d25mr1783098ljo.357.1603219090239;
        Tue, 20 Oct 2020 11:38:10 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id f184sm429771lfd.253.2020.10.20.11.38.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 11:38:09 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id 77so3377295lfl.2
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 11:38:09 -0700 (PDT)
X-Received: by 2002:a19:c883:: with SMTP id y125mr1330347lff.485.1603219088467;
 Tue, 20 Oct 2020 11:38:08 -0700 (PDT)
MIME-Version: 1.0
References: <1602786476-27833-1-git-send-email-sibis@codeaurora.org>
In-Reply-To: <1602786476-27833-1-git-send-email-sibis@codeaurora.org>
From:   Evan Green <evgreen@chromium.org>
Date:   Tue, 20 Oct 2020 11:37:31 -0700
X-Gmail-Original-Message-ID: <CAE=gft4FrAm_QHKm_dF6G0R8fkfJrYFYPMrRu0nPNrQtZ83skw@mail.gmail.com>
Message-ID: <CAE=gft4FrAm_QHKm_dF6G0R8fkfJrYFYPMrRu0nPNrQtZ83skw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180-trogdor: Fixup modem memory region
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Doug Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 15, 2020 at 11:28 AM Sibi Sankar <sibis@codeaurora.org> wrote:
>
> The modem firmware memory requirements vary between 32M/140M on
> no-lte/lte skus respectively, so fixup the modem memory region
> to reflect the requirements.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>

Reviewed-by: Evan Green <evgreen@chromium.org>
