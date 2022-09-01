Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20F465A8A50
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 03:11:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230064AbiIABLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 21:11:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbiIABLH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 21:11:07 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EADA8DB7D8
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 18:11:04 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id ay39-20020a05600c1e2700b003a5503a80cfso535576wmb.2
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 18:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=U5H4yHvZ8EpKf3hoE+C92drJbmtSiBYMR1LeKV8jCr4=;
        b=UUtjR+LJwDgtIwyb/GuaN+b+/DHKUPy1eYWlkTCQkI60M7xlDKrz9W08J7CSvqbxYW
         3gRc2ZKdsY6xvAojbs6sRCnFK86TfIynkU8OAz2k6YQPGOFhfZdybwYw5viQLsoZdbv8
         MVWr5ap0wbGfg2eaQHqInIetntLqy6oc9asMQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=U5H4yHvZ8EpKf3hoE+C92drJbmtSiBYMR1LeKV8jCr4=;
        b=J0jdCqYUzHshjO//W+Bxvn/a693lby8kESfw/OEECv+I3R/9Sei+787C5tvhiTHJrx
         RdTt8BrtTtS+/ulPwvwKbhUyNvMM3F7YATzPQYA9DzSeYqj01h4l9Y1jwTGuZCel7Dgm
         Ej1WF7AfJw/XwwPulmOr+ERKBbv3pejLCU7uU6H283mCzYZ8VMBtxzkDUK1ksXo/xI+e
         91UC6gQWu4dgvuOhKOi3RvTvK5HV4qhhLm/aYbXSRir8i9JUm0XwSPsJYd2qCMVjqiJQ
         D3j27yb6ucAVacqH+UBwEG7p20fpoVVr+8j3icqPf/aOPt3BkzhlC60uyPSJsuj6v6kI
         6EJQ==
X-Gm-Message-State: ACgBeo3uBImTPAaKiUkYnSZxZrQTB+pLVBG6wa/gjOq3b5usaWeKxb+k
        jP5LXRXxI/2fdDgsi93DdLRgjrx8OOMpQiD0J/G3Tw==
X-Google-Smtp-Source: AA6agR6xZ6HG8INPrFI8X7DCRIiq/fwfey7iZ6P5uMwQSLiO37iSm+fuF9trN+iEkGT9Pj6XUeeRG5dHSVwKF9Qni84=
X-Received: by 2002:a7b:ce09:0:b0:3a6:6561:d9d5 with SMTP id
 m9-20020a7bce09000000b003a66561d9d5mr3464083wmc.62.1661994663135; Wed, 31 Aug
 2022 18:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220831013359.1807905-1-jwerner@chromium.org>
 <20220831013359.1807905-4-jwerner@chromium.org> <983c1224-8174-3534-a276-d1ab1f9968a4@linaro.org>
In-Reply-To: <983c1224-8174-3534-a276-d1ab1f9968a4@linaro.org>
From:   Julius Werner <jwerner@chromium.org>
Date:   Wed, 31 Aug 2022 18:10:51 -0700
Message-ID: <CAODwPW_70kdn4XTCs_vhbWwjEXS8E8zC9MTa6-szb5SayvcSag@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: memory: Add jedec,lpddr4 and
 jedec,lpddr5 bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Julius Werner <jwerner@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Doug Anderson <dianders@chromium.org>,
        Jian-Jia Su <jjsu@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
> > index 0c7d2feafd77c8..e1182e75ca1a3f 100644
> > --- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
> > +++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
> > @@ -53,9 +53,13 @@ properties:
> >        - 512
> >        - 1024
> >        - 2048
> > +      - 3072
> >        - 4096
> > +      - 6144
> >        - 8192
> > +      - 12288
> >        - 16384
> > +      - 24576
> >        - 32768
>
> Either you limit now LPDDR2 and LPDDR3 to old values or instead add this
> bigger list to LPDDR4 and LPDDR5 (if it works that way).

The problem is that each spec has its own set of valid values, e.g.
LPDDR3 only defines 4GB, 8GB, 16GB and 32GB, and then LPDDR4 inserted
the 6GB, 12GB and 24GB options in between there. I don't think there's
a way to exactly describe the valid values for each version without
having a whole separate enum list for each. Do you think checking for
that is important enough to be worth having all that extra duplication
between the schemas? I don't think it adds that much (e.g. a value for
an individual memory part can still be wrong even if it is one of the
valid values for that type, so how much use is this validation
anyway?), but I can split it out if you want to.

> > +  serial-id:
> > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    description:
> > +      Serial IDs read from Mode Registers 47 through 54. One byte per uint32
> > +      cell (i.e. <MR47 MR48 MR49 MR50 MR51 MR52 MR53 MR54>).
> > +    minItems: 8
>
> No need for minItems.

Can you explain why? I'm okay with taking these out, but it is a real
constraint so I'm not sure why we shouldn't be describing it here?
(The serial ID always has exactly 8 bytes, an ID with less than 8
would not be valid and probably a typo.)
