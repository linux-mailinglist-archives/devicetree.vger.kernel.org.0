Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97E16729F55
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:56:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231828AbjFIP4h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:56:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238095AbjFIP4c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 11:56:32 -0400
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 209A13A98
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 08:56:26 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-777ac169033so113694839f.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 08:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686326183; x=1688918183;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KqAimDvnh6CPASJWE79N/CEnDvYL3nhLI7BR9MCv+68=;
        b=BF57r8A4HEY28sjgViBf2OnCR98DgvGGocGLPip/A2SsuaaBg2HLYLf4TslS2ag8rQ
         VAg1cF+l+XCTTKGxdwMOBnHyaOAcGsnnoZ0RO5O+CRnaCTpOD9PM4gp82+DnGYY5Qxsw
         JRZZqErayvJUW2+2hkS8eW+JizoeMj9poU2js=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686326183; x=1688918183;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KqAimDvnh6CPASJWE79N/CEnDvYL3nhLI7BR9MCv+68=;
        b=WututkrLadZk8RUMw5K6tpLXE2/kAb+0fMBYxnvJ1JO9b73KDrcjHXIZ+dQSvgjU3m
         sLsbzCy8sgu7Kw9owNPxbcANklcXj257+2LQvcLystcMZEtBYR/d6ENc4NMFIeNgU8+K
         evsBEEk8O3abk2o5fYCHkc2NaL/DCVaCnj1zNwYa2WBnxAhcfOO+JGS628CXSMfb3052
         WM0DyuRUjo2mLJfvpbsYBDFSw989fW+b05g08LS7tIx0qo3TlDHaRsWk+vCSMaqP4NHm
         9xgBWF8kdr/HTibGtcHWD2BONfhOEhi8pustSjMnLZvD5ip9UvNGORbet33MXMTPqcSY
         lV+w==
X-Gm-Message-State: AC+VfDxpnvErQnVx9wLgyuq0b8E7YrqcoDP/6DHLDNuk+4l92HjaBuKG
        mRq1CkOl/xPANs/KRgCbK1tUCsLakqtiDXZsR1U=
X-Google-Smtp-Source: ACHHUZ42zq/jgIW3gb64PFzX05i2WKxbmwfGmVqDX55tiTdB3pFzbwYfLGBx/oh7BrljaqrF4bt1dw==
X-Received: by 2002:a92:c686:0:b0:334:de38:d600 with SMTP id o6-20020a92c686000000b00334de38d600mr1512340ilg.3.1686326183559;
        Fri, 09 Jun 2023 08:56:23 -0700 (PDT)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com. [209.85.166.179])
        by smtp.gmail.com with ESMTPSA id o14-20020a92d38e000000b00331a5fcd648sm1176606ilo.68.2023.06.09.08.56.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 08:56:22 -0700 (PDT)
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-33d928a268eso285735ab.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 08:56:22 -0700 (PDT)
X-Received: by 2002:a05:6e02:1c0c:b0:33d:5640:f315 with SMTP id
 l12-20020a056e021c0c00b0033d5640f315mr375551ilh.25.1686326181977; Fri, 09 Jun
 2023 08:56:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230608130147.2835818-1-yangcong5@huaqin.corp-partner.google.com>
 <20230608130147.2835818-2-yangcong5@huaqin.corp-partner.google.com> <77dce4ec-89aa-8802-b169-744f6c11b177@linaro.org>
In-Reply-To: <77dce4ec-89aa-8802-b169-744f6c11b177@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 9 Jun 2023 08:56:10 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UxQPWm6BNSeTAJWq1Cc8qFL2WTJHFiOrca5mnTEPHMvQ@mail.gmail.com>
Message-ID: <CAD=FV=UxQPWm6BNSeTAJWq1Cc8qFL2WTJHFiOrca5mnTEPHMvQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: HID: i2c-hid: ilitek: Introduce
 bindings for Ilitek ili9882t
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, dmitry.torokhov@gmail.com, jikos@kernel.org,
        benjamin.tissoires@redhat.com, hsinyi@google.com,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jun 9, 2023 at 8:50=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> > +  vccio-supply:
> > +    description: The 1.8V supply to the touchscreen.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - vccio-supply
> > +
> > +additionalProperties: false
>
> Why do you disallow all properties from toouchscreen.yaml? Aren't they
> applicable?

This matches what hid-over-i2c.yaml does. It only picks
`touchscreen-inverted-x` and `touchscreen-inverted-y` from the common
file, which aren't needed here. I assume that the rest of the things
from the common file can be probed using the i2c-hid protocol?

-Doug
