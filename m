Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D61E554BC9
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 15:51:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352952AbiFVNvZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 09:51:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232302AbiFVNvY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 09:51:24 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EF321F623
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 06:51:23 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id c13so19542717eds.10
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 06:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1tMe+AiU8DKRx6/oa1fADyFtfsdt5zf5zus2rlM628Y=;
        b=WLrqEPTDWCxELbbCYBkNzQrlci4iuDiO0DU2ioBN9DwcW7jQ7pOE+5VP1zoWQnflXZ
         dTaN6XDGRWpJSvQIkolJpH6dMOgXlqqiGej5wPGxL+YAggm3OuMAv0cl4q4wDs6QtzrH
         M5G/FfnuufzkHuYqhYgUb2JRvxkQexCB3PTug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1tMe+AiU8DKRx6/oa1fADyFtfsdt5zf5zus2rlM628Y=;
        b=J98XV3tfohYCpdbcnyBAu+RnQm4HvA9iUdDpdA7THkPhR4A8Dk3QIiHjmmwB3w8k95
         bo1PT8XkES27ayYX2dRJoqEiWbO/VBIkL8MXo0L7+wxPuQA3qTMT3Iry+kDRBQyoXXB5
         GKyXAWooMTUAf6zsHjt8FEv3poFZGxwlHLu+JnobDWmYGVoOIcEhGmFbp9nK6GkmVgVm
         2askhrmQXWn8EGaBmeTuUhLBRAUNB8JhyQEp85fE9E7IBtTopiFYijSjtr6BJtNPmIME
         Vx5ensrDDNvcKmfwSWeE7zlvoc79u3S6b4YaZ+eBnOc4Gv+c4jmmjPDOenKK78l9rrYz
         E+sQ==
X-Gm-Message-State: AJIora/bI1Kis7/ZpUCwi2UmYVFPCaAhxSTsLMmXXilBN4ZcrW1u5xBe
        HGLkMcCUF+xFGCs1X3pbI/MeljnZSKqrig==
X-Google-Smtp-Source: AGRyM1udd9svphEOFzNCLbKXwfCv3DEYZXp1Nc/vok4YyTUX3DD68tuF/yrAXhBpxxbvF2u3WZjMsw==
X-Received: by 2002:a05:6402:84a:b0:423:fe99:8c53 with SMTP id b10-20020a056402084a00b00423fe998c53mr4145402edz.195.1655905881836;
        Wed, 22 Jun 2022 06:51:21 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id y11-20020a17090614cb00b00712057b037fsm8973522ejc.167.2022.06.22.06.51.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 06:51:20 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id n1so23275886wrg.12
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 06:51:20 -0700 (PDT)
X-Received: by 2002:a05:6000:1c0d:b0:216:c9f4:2b83 with SMTP id
 ba13-20020a0560001c0d00b00216c9f42b83mr3489538wrb.405.1655905879653; Wed, 22
 Jun 2022 06:51:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220520143502.v4.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
 <20220520143502.v4.4.I1318c1ae2ce55ade1d092fc21df846360b15c560@changeid> <e5a7367b-af35-b382-0f2a-e68fe07a4123@linaro.org>
In-Reply-To: <e5a7367b-af35-b382-0f2a-e68fe07a4123@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 Jun 2022 06:51:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V9nfJq0_Xvfwid8ev1m9zW2n0zRPSo6fPepHOks8E=PA@mail.gmail.com>
Message-ID: <CAD=FV=V9nfJq0_Xvfwid8ev1m9zW2n0zRPSo6fPepHOks8E=PA@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] dt-bindings: arm: qcom: Add / fix sc7280 board bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        patches@lists.linux.dev,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Julius Werner <jwerner@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@codeaurora.org>,
        LKML <linux-kernel@vger.kernel.org>
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

Hi,

On Wed, Jun 22, 2022 at 1:27 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/05/2022 23:38, Douglas Anderson wrote:
> > This copy-pastes compatibles from sc7280-based boards from the device
> > trees to the yaml file. It also fixes the CRD/IDP bindings which had
> > gotten stale.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> > It should be noted that these match the sc7280 boards as of the top of
> > the "for-next" branch of the tree
> > git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git
> >
> > (no changes since v2)
> >
> > Changes in v2:
> > - Use a "description" instead of a comment for each item.
>
> What's the plan for these patches? This is one was reviewed, the 5/5 had
> comments. Is there going to be resend or pick up?
>
> Some other folks work depends on this.

I thought patch 5/5 was waiting on Bjorn to say whether he wanted a
change or was happy the way it was.

In general this series, like all of the Qualcomm dts patches at the
moment, is blocked waiting for Bjorn to have time to land things. I'm
assuming that if Bjorn wants the 5th patch changed then he will still
land the first 4 patches and then I can make changes to 5/5 and send
it as a standalone patch.

-Doug
