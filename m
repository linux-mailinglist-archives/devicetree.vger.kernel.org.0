Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32D574C9951
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 00:28:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234396AbiCAX30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 18:29:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232607AbiCAX3Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 18:29:25 -0500
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71FA22E0A3
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 15:28:43 -0800 (PST)
Received: by mail-qv1-xf35.google.com with SMTP id w7so235088qvr.3
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 15:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VNaBUvhJPCTRWF5/zJjQeON1Z5NfOzXWX9Lpo+um65Q=;
        b=LfjujM0z8Yytm86m8JS2eeYHuGlmQCrZt3M4KVtYFSZv93ns94MC9V21Rdia3A/p/R
         ytGFw79bo8/031XW4fQJXahvaCL9+v+pxaf+ZUjuvCCOCaKbBem2Q29l9erMuavHkKZW
         uYNY99JbxSIUs32W8WqQQtc+K7rhcj9p64YtV1N3uyRptK7MD3F0PCd1qBh7ffL23eDC
         UDcHTn+BIgQyryI5Nat3px/l/we1BoxX4CjfmUVg5dzWeHQaaZN9Zwoc9KmEL1Kukc18
         vActe1Co0+48OzMiY/u35N+bN9A45qMW0r+5p/Lsrp/8nEoAV2aUhGzoSC3GVJh3GU0q
         +2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VNaBUvhJPCTRWF5/zJjQeON1Z5NfOzXWX9Lpo+um65Q=;
        b=Xivxap66ghbQUeviLp0MkGWtTvCHCClUFeLA2abM4jb0HTXI5tA8NgULfzQz9Xwshy
         askZeUMP1zAXl8btrX1dR7FyAxnMpjMLT3OsjE/j8z5zBN/TKYsBEDGW6mpZmpJKkgCL
         Jcdq3umfWY5yYDiNAmoaJ0zc8MkdiVbf3QJPFejI7T0UR3MZZ1RaTtwt/XN6UzOVrPiI
         k7sYBATytSITUq/5pWip2nJu4+0CqSWyRi/mCQuRqkJRBwiNdpnH7U1MIspvNtqLPyE/
         Z/mlb0TEouPxDNumhKMkHcE/dyEgPX2jT5FEuNcqVn3f49TXdOtwGoHgi1yfMNYDUd7N
         Lhyw==
X-Gm-Message-State: AOAM533dwTf823zxkZYfIuEHbg18oCYk76a4DYOxGnOMB69HIUQsOvXW
        6fi+CnDUIPlJXV8ii+ZUWZSYtWPt56eSmap6JUe+jg==
X-Google-Smtp-Source: ABdhPJwz8rUgUrs1yf6BQ4V64Nw+vGZS/tZlDmQMYQT70EZlT/W6mkHrTPZGt4ZxEgfq/D8A1hU1lbIk5X+ku4E2f6Q=
X-Received: by 2002:a0c:e841:0:b0:435:188c:16f6 with SMTP id
 l1-20020a0ce841000000b00435188c16f6mr2172506qvo.73.1646177322668; Tue, 01 Mar
 2022 15:28:42 -0800 (PST)
MIME-Version: 1.0
References: <1644852547-10067-1-git-send-email-loic.poulain@linaro.org>
 <1644852547-10067-2-git-send-email-loic.poulain@linaro.org>
 <CAL_JsqKg06h818-kMDrtROzHn8zPcjwgzWAE_q=egXPJHmg=-w@mail.gmail.com> <CAA8EJprnALcK8HObkNqkgW6t4gpLHf9LuS1-mEHJJqt6va=zxQ@mail.gmail.com>
In-Reply-To: <CAA8EJprnALcK8HObkNqkgW6t4gpLHf9LuS1-mEHJJqt6va=zxQ@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 2 Mar 2022 02:28:31 +0300
Message-ID: <CAA8EJppAFpVN2OP7yc8y+NXvJ3uMqiTBXRUg1Z7zgCWksyzfbg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: msm: disp: add yaml schemas for
 QCM2290 DPU bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Loic Poulain <loic.poulain@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        devicetree@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2 Mar 2022 at 02:23, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Tue, 1 Mar 2022 at 20:35, Rob Herring <robh@kernel.org> wrote:
> >
> > On Mon, Feb 14, 2022 at 9:29 AM Loic Poulain <loic.poulain@linaro.org> wrote:
> > >
> > > QCM2290 MSM Mobile Display Subsystem (MDSS) encapsulates sub-blocks
> > > like DPU display controller, DSI etc. Add YAML schema for DPU device
> > > tree bindings
> > >
> > > Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
> > > ---
> > >  v2: no change
> > >  v3: no change (resent with reviewed-by + freedreno list)
> > >
> > >  .../bindings/display/msm/dpu-qcm2290.yaml          | 214 +++++++++++++++++++++
> > >  1 file changed, 214 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
> >
> > This is now failing in linux-next. Please fix or revert:
>
> I can not reproduce it here, with the linux-next from 20220301 and
> dtschema 2022.1

Ugh. Excuse me. Reproduced the issue.

>
> >
> > Error: Documentation/devicetree/bindings/display/msm/dpu-qcm2290.example.dts:81.3-82.1
> > syntax error
> > FATAL ERROR: Unable to parse input tree
> > make[1]: *** [scripts/Makefile.lib:386:
> > Documentation/devicetree/bindings/display/msm/dpu-qcm2290.example.dt.yaml]
> > Error 1
> >
> > Rob
>
>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry
