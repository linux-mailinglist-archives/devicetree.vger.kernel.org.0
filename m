Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C02C764E9DE
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:00:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230383AbiLPLAZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:00:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229754AbiLPLAX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:00:23 -0500
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 176FF532D2
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:00:23 -0800 (PST)
Received: by mail-qt1-x830.google.com with SMTP id cg5so2329728qtb.12
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=k1MArKAOM+urebegyWsy4WNkzN1RERPKIZE7UIlq5Ls=;
        b=O+egyYiNPXuY7maexntNNrb9vVTa13ZU+tuiL1zrp4rciqHdF9qEXG57HR9eN0DAtC
         17SNouJipCmzrRYIYjNQwSN7dO68erJwv7Ja0do+EusGrbevsCsvIsojMUG0FgR23gXA
         013TSs636Xg7VGoEO1IXd2W02ifGk772/OGTI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k1MArKAOM+urebegyWsy4WNkzN1RERPKIZE7UIlq5Ls=;
        b=ogXDxA1TzDh605fPOTtNFRyogNZh7cDfbBblxJW+H2ECLO+YkMW+1yoV3qB7qM0Wgw
         k1m5HFMNAj0cOk5ZACr6wVI1yZbs1t8hOgdI96R48zR4RXrBdDDdQDP24Q7wz/KT1Dlv
         qx/7GU8WCf6EKNqiN7jgyq6KmHiKNs1pyG6m3YpI7hcNZzrDXzOgSxmb83cSp8Ci8vuc
         HBn00tk+F8Uf/8kKixqa1d83t1GJtIRNa6pNck1Y19Ih6xOgPyqiVZ1odvwOEpjlhMNz
         8ojXGUWAfIuS6YRi7aDIXRD5kn9fA1be2UFQF9g4dnrcxoELnn7ORYb4RIi+/IehO+US
         KkYQ==
X-Gm-Message-State: ANoB5pkWOFpqZVh1/xTeUSqJ0USOl7KHgxQFkDV6KNirO5uYf5Tn75w+
        7FJi741Yb1Pjg6No3+uJbgz3eEOgGZ92rtPAwj8Zyw==
X-Google-Smtp-Source: AA0mqf4xtARx2pPM0l3bTE0DN6T5GabCjvxl7BAtHhBMi/dSJDbNIxBrO80BUq106XsPBtl75V/YCMEHVFJB2bD4f6k=
X-Received: by 2002:ac8:4a87:0:b0:3a7:f5e4:87dc with SMTP id
 l7-20020ac84a87000000b003a7f5e487dcmr5617640qtq.562.1671188422166; Fri, 16
 Dec 2022 03:00:22 -0800 (PST)
MIME-Version: 1.0
References: <20220527045353.2483042-1-hsinyi@chromium.org> <CAJMQK-jWwDm4dy-ELzJ5gzLby37Ztqn9qhGT9zqFhmowdok51g@mail.gmail.com>
 <e7f8b106-b71e-eac9-c2a0-83579382f0f4@linaro.org>
In-Reply-To: <e7f8b106-b71e-eac9-c2a0-83579382f0f4@linaro.org>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 16 Dec 2022 18:59:56 +0800
Message-ID: <CAJMQK-h=H9c+sEhVs27PH4CGvefjNuXcLbXCuSkiekL-C9eucA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: kukui: Split out keyboard node and
 describe detachables
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 16, 2022 at 6:58 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 16/12/2022 11:54, Hsin-Yi Wang wrote:
> > On Fri, May 27, 2022 at 12:54 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >>
> >> Kukui devices krane, kodana, and kakadu use detachable keyboards, which
> >> only have switches to be registered.
> >>
> >> Change the keyboard node's compatible of those boards to the newly
> >> introduced "google,cros-ec-keyb-switches", which won't include matrix
> >> properties.
> >>
> >> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> >> ---
> >
> > hi Matthias,
> >
> > Kindly ping on this patch. Thanks.
>
> It's a merge window, so for what do you ping now?
>
Okay I should ping after the merge window.

> Best regards,
> Krzysztof
>
