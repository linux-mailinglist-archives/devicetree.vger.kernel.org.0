Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DC3063AD0F
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 16:57:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232483AbiK1P5E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 10:57:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232499AbiK1P46 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 10:56:58 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48F36248DF
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 07:56:57 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id vv4so26985380ejc.2
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 07:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a7q68kau0RV2x8gL+tmu6PcA/HYPOgKxaU2pNTg0GXA=;
        b=euLCC7CR9Jl7rkMMHOhUpssm4kmlW2foQRCR/L7TKKrlRHiJNnLQtHhXEHfFsZGr8j
         qBLfBlsohFgpc0hJBpOXYahZwQll2ogRFq7laO0UxZwykOWOjiIDvc9OfmbvMf4fPTQe
         mAkB7BpJQB2OwLfUFNnne7zMhgpD2Hvi8x7Do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a7q68kau0RV2x8gL+tmu6PcA/HYPOgKxaU2pNTg0GXA=;
        b=008NCJAGFe09rgj/POedBC1J16WdwyJVxXHrA7eiC6b+xDVFYkyRLmWoJvA6yWzdsG
         m0QvBYhhbYL36Q+b90VhRuxM273rc3u+5/c72ECHB/UM4JgcWzAgPYknQQlsbMHobzER
         9AAHeH/Dh4saJJjIVSFmKHeLPgxVAAx0M63kVD+rl05VC24BU+IPle8AWO5bQIH2Z/hc
         aDmzM215jfTLM9p7+U0BPj2GHwg97OAaPCthMiYbcHjYzoQXPsZeZs85enHmUGtJCpuw
         1EDEi/TT8bEX+ZCfz1d9hAgVm+qMzUotXaZGfV81M4Ykv7G6fwMiXiTdBLz1MNfq1hMV
         hUzQ==
X-Gm-Message-State: ANoB5plP6ITA/Wk/q1+xF2hvYXQzTbckmUxgEvp6lgVdA19Sx44M8pYL
        jDLBzApNfbWJ+Y5he+0PXI3+tx3OBmzis1f+
X-Google-Smtp-Source: AA0mqf5w8uSzFpZEYyGbGVow6MqS45viixJp38yoEOdk8nkImGQLbwyodSKofdPeUS8BMEtiQvTQWw==
X-Received: by 2002:a17:906:3596:b0:7bc:6070:23e0 with SMTP id o22-20020a170906359600b007bc607023e0mr15675265ejb.465.1669651015583;
        Mon, 28 Nov 2022 07:56:55 -0800 (PST)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com. [209.85.128.54])
        by smtp.gmail.com with ESMTPSA id b4-20020a056402138400b0046146c730easm5289592edv.75.2022.11.28.07.56.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 07:56:54 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so8699765wmi.3
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 07:56:53 -0800 (PST)
X-Received: by 2002:a05:600c:1e12:b0:3cf:9ad3:a20e with SMTP id
 ay18-20020a05600c1e1200b003cf9ad3a20emr27655311wmb.151.1669651013219; Mon, 28
 Nov 2022 07:56:53 -0800 (PST)
MIME-Version: 1.0
References: <20221124115712.v4.1.Idfcba5344b7995b44b7fa2e20f1aa4351defeca6@changeid>
 <CAPao8GK93KMrtaXw7mNWOCE60zk=uCENLfBXhNRVxJXEnnaGFg@mail.gmail.com>
 <f58866c8-0164-2e59-4ff3-f9a4f9334e49@linaro.org> <CAPao8GKbdK79Z7w91x0T6JW9v6VFoeYSaXGGAuzB_=ukR9g0_w@mail.gmail.com>
 <b54cd0a4-7ee8-e8c0-ceda-18b29588d535@linaro.org>
In-Reply-To: <b54cd0a4-7ee8-e8c0-ceda-18b29588d535@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 28 Nov 2022 07:56:41 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X9C8nLDrEpZE2tLtq6Brn9cd-15+1JWFOL4cPYdJs5Dg@mail.gmail.com>
Message-ID: <CAD=FV=X9C8nLDrEpZE2tLtq6Brn9cd-15+1JWFOL4cPYdJs5Dg@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: qcom: Add zombie
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     =?UTF-8?B?5qWK5a6X57+w?= <ecs.taipeikernel@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Bob Moragues <moragues@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>, Harvey <hunge@google.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Gavin.Lee@ecs.com.tw,
        Darren.Chen@ecs.com.tw, Abner.Yen@ecs.com.tw, Vicy.Lee@ecs.com.tw,
        Jason.Huang@ecs.com.tw
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Nov 24, 2022 at 3:27 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 24/11/2022 12:20, =E6=A5=8A=E5=AE=97=E7=BF=B0 wrote:
> > Hi Krzysztof, Matthias,
> >
> > How to use "get_maintainers.pl"?
> >
> > I find this script in path "<MyCodebase>/kernel/v5.15/script", and outp=
ut
>
> This looks like v5.15 kernel which is heavily outdated. Please never
> work on such kernels when interacting with upstream. The rule is you
> work on either last mainline kernel (v6.1-rc6), maintainers for-next
> branch (you should know who is the maintainer of subsystem you submit
> to, get_maintainers.pl gives this information) or on moderately recent
> linux-next. For bigger patchsets there might be exceptions for these
> rules, but it's not the case here.

Just to add context here, it's a fairly standard workflow for ChromeOS
kernel engineers to work in a "versioned" kernel directory but still
checkout and work with the upstream kernel. I'm sure it's confusing to
anyone not used to working with the ChromeOS source tree and build
system. Sorry! :( So the fact that Owen is in a directory called
"v5.15" doesn't mean that he's actually working with the v5.15 kernel.
The fact that Bjorn's address is correct in his CC list implies to me
that he's actually got a proper upstream kernel.

I had previously [0] instructed Owen to send against Bjorn's tree, so
hopefully it's correct.

[0] https://lore.kernel.org/r/CAD=3DFV=3DVd4UFabWeEsd7cDhhpnFkjTuYhc38zwAbf=
yxq2AHnhYA@mail.gmail.com/

-Doug
