Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AF38556ED9
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 01:07:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376878AbiFVXHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 19:07:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235359AbiFVXHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 19:07:13 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30F343F8A9
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 16:07:12 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id i19-20020a4ad093000000b004256ad0893fso308228oor.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 16:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=RZMSJ/mPopNz20DjkFCGoOR0DjNJu0ReQuyg8RsZs5I=;
        b=dY4Q+yk6qCUQnttSR71RfA0zfg7dG0C6z/ke8zSPPNSmJHy/c2bpMSQwh6cgh7EGDt
         CrL0olB7bRHhuh9gK4XFBy8qdaIIvA05r/Eqi/BbCqA00wZuNQbVnYJ9LUizUKTr7tFP
         CehiJ8okXfIOepGuo8fSyPIqntG7GUulLMfrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=RZMSJ/mPopNz20DjkFCGoOR0DjNJu0ReQuyg8RsZs5I=;
        b=xe5Uh9H00MbxOxc7FVt53BEob07lIA8jwATJ1LvBDSJzfhaIA+5wg68nZOEk0aaYkx
         ROTjMUf9tKfs2qujmLaD1b1C9MdkuHFqytZBwf/eplrYKKB2Jzha3YlnHtKgG74gBV1P
         S4JF/KkMG5pmsgl2cfJFWZcEPaiuMLnLoVUVWcjpKiAcFKolgoayV3+4l2sVpo7lFN22
         4uTXahctivDjFI/yGeUMfsWt473opwma1J7fhXBNWxrCocaXk+qutXTTLyHKCurEiN1N
         NQ2ZAbeTlI7lSJdJQtf7AqsE36kLq2hR9VIm+o+0BIB04sBYPsOwEmesJCJ3D7X9EGWc
         a6+A==
X-Gm-Message-State: AJIora9M0CdkQSLIfkNTLg4XzmY0JrbLeaXVWMmmUgmy9kGTvXTzFEWg
        FK0vpsgHBryjDcb0KOpKH8OTgXdWZIHSgl9KqIINTA==
X-Google-Smtp-Source: AGRyM1ttSY8mam9MakCXQBl0Wcnhs2Eq1XDHdV3tla7Vyx4FbmzRqmJiV4eZX1RbevsB6heHmrVvGv/v/lWdjsBJbPU=
X-Received: by 2002:a4a:ca95:0:b0:41c:e2c:ab2d with SMTP id
 x21-20020a4aca95000000b0041c0e2cab2dmr2414660ooq.1.1655939231472; Wed, 22 Jun
 2022 16:07:11 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 22 Jun 2022 19:07:11 -0400
MIME-Version: 1.0
In-Reply-To: <20220622215805.1121982-1-joebar@chromium.org>
References: <20220622215805.1121982-1-joebar@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 22 Jun 2022 19:07:11 -0400
Message-ID: <CAE-0n53Yg_89EnGFhDKUKsqDEXOeqwFDN0=meKsvehbKkf_KAw@mail.gmail.com>
Subject: Re: [PATCH v10 0/5] arm64: dts: qcom: sc7180: Add five new
 trogdor-based boards
To:     "Joseph S. Barrera III" <joebar@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Joseph S. Barrera III (2022-06-22 14:58:00)
> This series adds five new trogdor-based boards to upstream.
> The patches should be applied *after* applying
> https://lore.kernel.org/all/20220602190621.1646679-1-swboyd@chromium.org/
> (arm64: dts: qcom: Remove duplicate sc7180-trogdor include on lazor/homestar)
>
> The patches do *not* expect
> https://lore.kernel.org/all/20220518172525.3319993-1-swboyd@chromium.org/
> (sc7180-trogdor: Split out keyboard node and describe detachables)
> to be applied.

Sounds fine to me. I'll pull in this series and rebase my patch atop.
